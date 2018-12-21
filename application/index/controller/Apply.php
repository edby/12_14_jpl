<?php
namespace app\index\controller;

class Apply extends BaseHome
{
    public function index()
    {
        $pwd=session("pwd");
        if(empty($pwd)){
           
            $this->redirect('pwd');
        }else{
            $uid=session("userid");
            $reu=db("user")->where("uid=$uid")->find();
            $this->assign("reu",$reu);
            if($reu['level'] < 6){
                $les=$reu['level']+1;
            }else{
                $les='';
            }
            
            $this->assign("les",$les);
          return $this->fetch();
        }
    }
    public function pwd()
    {
        return $this->fetch();
    }
    public function check()
    {
        $uid=\session("userid");
        $re=db("user")->where("uid=$uid")->find();
        if($re){
            $u_pwds=\md5(\input('u_pwds'));
            $pwds=$re['u_pwds'];
            if($u_pwds == $pwds){
                \session("pwd",$pwds);
                $this->success("认证成功",url('index'));
            }else{
                $this->error("密码错误",url('index'));
            }
        }else{
            return array('code'=>2,'url'=>url('Index/Login/out'));
        }
    }
    public function change()
    {
        $uid=session("userid");
        $reu=db("user")->where("uid=$uid")->find();
        
        if($reu['level'] < 6){
            echo '1';
        }else{
            echo '0';
        }
    }
    public function user_apply()
    {
        $uid=session("userid");
        $reu=db("user")->where("uid=$uid")->find();
        $this->assign("reu",$reu);
        if($reu['level'] < 6){
            $les=$reu['level']+1;
        }else{
            $les='';
        }
        $this->assign("les",$les);

        $rel=db("level")->where("level=$les")->find();
        $this->assign("rel",$rel);

        $list=array();
        $pid=$reu['pid'];
        $re1=db("user")->where("uid=$pid")->find();
        if($re1){
            $list[0]['le']=$re1['u_name'];
            $list[0]['id']=$re1['uid'];
            $pid2=$re1['pid'];
            $re2=db("user")->where("uid=$pid2")->find();
            if($re2){
                $list[1]['le']=$re2['u_name'];
                $list[1]['id']=$re2['uid'];
                $pid3=$re2['pid'];
                $re3=db("user")->where("uid=$pid3")->find();
                if($re3){
                    $list[2]['le']=$re3['u_name'];
                    $list[2]['id']=$re3['uid'];
                    $pid4=$re3['pid'];
                    $re4=db("user")->where("uid=$pid3")->find();
                    if($re4){
                        $list[3]['le']=$re4['u_name'];
                        $list[3]['id']=$re4['uid'];
                        $pid5=$re4['pid'];
                        $re5=db("user")->where("uid=$pid4")->find();
                        if($re5){
                            $list[4]['le']=$re5['u_name'];
                            $list[4]['id']=$re5['uid'];
                            $pid6=$re5['pid'];
                            $re6=db("user")->where("uid=$pid6")->find();
                            if($re6){
                                $list[5]['le']=$re6['u_name'];
                                $list[5]['id']=$re6['uid'];
                            }
                        }
                    }
                }
            }
        }
        $this->assign("list",$list);
        $cou=count($list);
        $this->assign("cou",$cou);
     //   var_dump($list);exit;
        if($list){
          //  $aa=($reu['level']-1);
            $name=$list[0];
        }else{
            $name['le']="系统管理员";
            $name['id']=0;
        }

       

        $this->assign("name",$name);
       // var_dump($list);exit;
        return $this->fetch();
    }
    public function save()
    {
        $pid=\input('pid');
        $uid=session('userid');
        $reu=db("user")->where("uid=$uid")->find();

        $les=$reu['level']+1;
       
        $level=db("level")->where("level=$les")->find();

        $data['u_id']=$uid;
        $data['p_id']=$pid;
        $data['level']=$reu['level'];
        $data['levels']=$les;
        $data['money']=$level['money'];
        $data['time']=time();

        $rea=db("apply")->insert($data);

        $id=db("apply")->getLastInsID();

        $this->redirect("apply_success",array('id'=>$id));


    }
    public function apply_success()
    {
       $re=db("lb")->where("fid=4")->find();
       $this->assign("re",$re);

       $id=\input('id');
       $rea=db("apply")->alias('a')->where("id=$id")->join("user b","a.p_id=b.uid")->find();
       
       $this->assign("rea",$rea);
       return $this->fetch();
    }


















}