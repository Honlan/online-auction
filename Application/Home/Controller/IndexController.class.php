<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    	$this->display();
    }

    public function page2(){
        $this->display();
    }

    public function page3(){
        $this->display();
    }

    public function auction(){
    	$items = M('item')->field('id,thumbnail,title')->order('id asc')->select();
    	$this->items = $items;
    	$this->display();
    }

    public function detail(){
    	$id = I('id');
    	$item = M('item')->where(array('id'=>$id))->find();
    	$item['imgs'] = explode(',', $item['imgs']);
        $temp = [];
        foreach ($item['imgs'] as $key => $value) {
            if ($value != '') {
                $temp[] = $value;
            }
        }
        $item['imgs'] = $temp;
        $item['next'] = intval($item['highest']) + intval($item['step']);
        if ($item['next'] < intval($item['start']) + intval($item['step'])) {
            $item['next'] = intval($item['start']) + intval($item['step']);
        }
        $this->name = '';
        $this->mobile = '';
        $this->company = '';
        $this->position = '';
        if (isset($_SESSION['name'])) {
            $this->name = $_SESSION['name'];
        }
        if (isset($_SESSION['mobile'])) {
            $this->mobile = $_SESSION['mobile'];
        }
        if (isset($_SESSION['company'])) {
            $this->company = $_SESSION['company'];
        }
        if (isset($_SESSION['position'])) {
            $this->position = $_SESSION['position'];
        }
        echo $item['next'];
    	$this->item = $item;
    	$this->now = time();
    	$this->display();
    }

    public function result(){
        $this->items = M('item')->field('id,thumbnail,title,highest,owner')->select();
        $this->display();
    }

    public function price(){
        $data = array('itemId'=>I('itemId'),'itemTitle'=>I('itemTitle'),'name'=>I('name'),'mobile'=>I('mobile'),'company'=>I('company'),'position'=>I('position'),'price'=>I('price'),'timestamp'=>time());
        M('price')->data($data)->add();
        session('name',I('name'));
        session('mobile',I('mobile'));
        session('company',I('company'));
        session('position',I('position'));
        $name = I('name');
        $price = I('price');
        $item = M('item')->where(array('id'=>I('itemId')))->find();
        if ($price > $item['highest']) {
            M('item')->where(array('id'=>I('itemId')))->save(array('highest'=>$price,'owner'=>$name));
        }
        return json_encode(array('ok'=>true));
    }
}