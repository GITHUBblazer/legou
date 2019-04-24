<?php
namespace app\api\controller;

class Cate
{
	// 获取顶级分类接口
    public function get_top_cate(){
        $topCateRes=db('cate')->field('id,cate_name')->where('pid','=',0)->order('sort DESC')->select();
        return json($topCateRes);
    }

    // 当前栏目信息接口
    public function get_cate_info($id){
        $cates=model('cate')->field('id,cate_name,thumb')->find($id);
        return json($cates);
    }

    // 获取二级子栏目接口
    public function get_son_cates($pid){
        $sonCateRes=model('cate')->field('id,cate_name,thumb')->field('id,cate_name,thumb')->where('pid','=',$pid)->order('sort DESC')->select();
        return json($sonCateRes);
    }
}
