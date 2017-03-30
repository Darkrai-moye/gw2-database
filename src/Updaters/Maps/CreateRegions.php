<?php
/**
 * Class CreateRegions
 *
 * @filesource   CreateRegions.php
 * @created      12.04.2016
 * @package      chillerlan\GW2DB\Updaters\Maps
 * @author       Smiley <smiley@chillerlan.net>
 * @copyright    2016 Smiley
 * @license      MIT
 */

namespace chillerlan\GW2DB\Updaters\Maps;

use chillerlan\GW2DB\Updaters\{MultiRequestAbstract, UpdaterException};
use chillerlan\TinyCurl\{ResponseInterface, URL};

class CreateRegions extends MultiRequestAbstract{

	public function init(){
		$this->starttime = microtime(true);
		$this->logToCLI(__METHOD__.': start');

		$sql = 'SELECT * FROM '.getenv('TABLE_GW2_MAP_FLOORS');

		if(!($floors = $this->DBDriverInterface->raw($sql)) || !is_array($floors)){
			throw new UpdaterException('failed to fetch floors from db, please run CreateFloors before');
		}

		$urls = [];

		foreach($floors as $floor){
			$regions = json_decode($floor->regions, true);
			if(is_array($regions) && !empty($regions)){
				foreach($regions as $regionID){
					$urls[] = new URL(self::API_BASE.'/continents/'.$floor->continent_id.'/floors/'.$floor->floor_id.'/regions/'.$regionID);
				}
			}
		}

		$this->DBDriverInterface->raw('TRUNCATE TABLE '.getenv('TABLE_GW2_REGIONS'));
		$this->DBDriverInterface->raw('TRUNCATE TABLE '.getenv('TABLE_GW2_MAPS'));

		$this->fetchMulti($urls);
		$this->logToCLI(__METHOD__.': end');
	}

	/**
	 * @param \chillerlan\TinyCurl\ResponseInterface $response
	 *
	 * @return mixed
	 */
	protected function processResponse(ResponseInterface $response){
		$info = $response->info;
		$data = $response->json;
		$maps = [];

		list($continent, $floor, $region) = explode('/', str_replace(['/v2/continents/', 'floors/', '/regions'], '', parse_url($info->url, PHP_URL_PATH)));

		foreach($data->maps as $map){
			$maps[] = $map->id;

			$sql = 'INSERT INTO '.getenv('TABLE_GW2_MAPS').' (`map_id`, `continent_id`, `floor_id`, 
				    `region_id`,`default_floor`, `map_rect`, `continent_rect`, `min_level`,
				    `max_level`) VALUES (?,?,?,?,?,?,?,?,?)';

			$this->DBDriverInterface->prepared($sql, [
				'map_id'         => $map->id,
				'continent_id'   => $continent,
				'floor_id'       => $floor,
				'region_id'      => $region,
				'default_floor'  => $map->default_floor,
				'map_rect'       => json_encode($map->map_rect),
				'continent_rect' => json_encode($map->continent_rect),
				'min_level'      => $map->min_level,
				'max_level'      => $map->max_level,
			]);

			$this->logToCLI('added map #'.$map->id.', continent: '.$continent.', floor: '.$floor.', region: '.$region);
		}

		$sql = 'INSERT INTO '.getenv('TABLE_GW2_REGIONS').' (`continent_id`, `floor_id`, `region_id`,`label_coord`, `maps`, `name_en`) VALUES(?,?,?,?,?,?)';

		$this->DBDriverInterface->prepared($sql, [
			'continent_id' => $continent,
			'floor_id'     => $floor,
			'region_id'    => $region,
			'label_coord'  => json_encode($data->label_coord),
			'maps'         => json_encode($maps),
			'name_en'      => $data->name,
		]);

		return true;
	}

}