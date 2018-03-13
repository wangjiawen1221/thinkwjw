<?php
namespace Home\Controller;
use Common\Controller\HomeBaseController;
class UserController extends HomeBaseController {

    // 第三方平台登录
    public function oauth_login(){
        $type=I('get.type');
        import("Org.ThinkSDK.ThinkOauth");
        $sdk=\ThinkOauth::getInstance($type);
        redirect($sdk->getRequestCodeURL());
    }

    // 第三方平台退出
    public function logout(){
        session('user',null);
        session('admin',null);
    }

    // 判断是否登录
    public function check_login(){
        if(isset($_SESSION['user']['id'])){
            echo 1;
        }else{
            echo 0;
        }
    }

    //自助登入
    public function login(){
        $data = I('post.');
        $where['username'] = $data['username'];
        $where['password'] = $data['password'];
        $where['status'] = 1;
        //$where['password'] = md5($data['password']);
        $res = M('user')->field('id,username')->where($where)->find();
        if($res){
            session('user',null);
            //$_SESSION['user']['username'] = $res['username'];
            session('user.username',$res['username']);
            $this->success('登录成功',U('Home/Index/index'));
        }else{
            die();
        }
    }

}
