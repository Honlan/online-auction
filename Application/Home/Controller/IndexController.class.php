<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    	$this->display();
    }

    public function auction(){
    	$donation = M('item')->field('id,thumbnail,title')->where(array("category"=>"donation"))->order('highest desc')->select();
    	$children = M('item')->field('id,thumbnail,title')->where(array("category"=>"children"))->order('highest desc')->select();
    	$ceo = M('item')->field('id,thumbnail,title')->where(array("category"=>"ceo"))->order('highest desc')->select();
    	$this->donation = $donation;
    	$this->children = $children;
    	$this->ceo = $ceo;
    	$this->display();
    }

    public function detail(){
    	$id = I('id');
    	$item = M('item')->where(array('id'=>$id))->find();
    	$item['imgs'] = explode(',', $item['imgs']);
    	$this->item = $item;
    	$this->now = time();
    	$this->display();
    }
}