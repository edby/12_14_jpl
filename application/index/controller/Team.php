<?php
namespace app\index\controller;

class Team extends BaseHome
{
    public function index()
    {
        $u_name=input('u_name');
        if($u_name){
            $re=db("user")->where("u_name='$u_name'")->find();
            if($re){
                 $uid=$re['uid'];
            }else{
                $uid=session("userid");
            }
        }else{
            $uid=session("userid");
        }
        
        $this->assign("uid",$uid);
 
        $arr=array('uid'=>-1);
        $arrs=array(
            'uid'=>-1,
            'uid'=>-1,
        );
        $cou2=0;
        $cou3=0;
        $cou4=0;
        $cou1=0;

        $list=db("user")->where("uid=$uid")->where("u_status=1")->select();
        foreach($list as $k => $v){
            $list2=db("user")->where("pid={$v['uid']}")->where("u_status=1")->limit("0,2")->select();
            $cou1+=count($list2);
            if(empty($list2)){
                $list2[]=$arrs;
            }
            if(count($list2) ==1){
                $list2[]=$arr;
            }
            if(!empty($list2)){
                 foreach ($list2 as $kk => $vv){
                     if($vv){
                        $list3=db("user")->where("pid={$vv['uid']}")->where("u_status=1")->limit("0,2")->select();
                     }                    
                    $cou2+=count($list3);
                              
                     if(empty($list3)){
                         $list3[]=$arrs;
                     }
                     if(count($list3) ==1){
                        $list3[]=$arr;
                    }                
                    if(!empty($list3)){
                       foreach($list3 as $kkk => $vvv){
                        if($vvv){
                            $list4=db("user")->where("pid={$vvv['uid']}")->where("u_status=1")->limit("0,2")->select();
                        }
                        
                        $cou3+=count($list4);
                            
                        if(empty($list4)){
                            $list4[]=$arrs;
                        }
                        if(count($list4) ==1){
                           $list4[]=$arr;
                       }
                         if(!empty($list4)){
                             foreach($list4 as $kkkk => $vvvv){
                                if($vvvv){
                                    $list5=db("user")->where("pid={$vvvv['uid']}")->where("u_status=1")->limit("0,2")->select();
                                } 
                                $cou4+=count($list5);
                             
                                if(empty($list5)){
                                    $list5[]=$arrs;
                                }
                                if(count($list5) ==1){
                                   $list5[]=$arr;
                               } 
                               $list4[$kkkk]['list5']=$list5;
                              
                             }
                            
                         }
                         $list3[$kkk]['list4']=$list4;
                      
                       }                        
                    }
                    $list2[$kk]['list3']=$list3;
                 
                 }
            }
            $list[$k]['list2']=$list2;
            $list[$k]['cou1']=$cou1;
            $list[$k]['cou2']=$cou2;
            $list[$k]['cou3']=$cou3;
            $list[$k]['cou4']=$cou4;
           
        }
     //var_dump($list);exit;
      $this->assign("list",$list);
        return $this->fetch();
    }
    public function regist()
    {
        $re=db("lb")->where("fid=2")->find();
        $this->assign("re",$re);
        $uid=input('uid');
        $this->assign("uid",$uid);
        return $this->fetch();
    }
    public function register()
    {
        $uid=input('uid');
        $reu=db("user")->where("uid=$uid")->find();
        if($reu){
            $re=db("lb")->where("fid=3")->find();
            $this->assign("re",$re);
            $code=time();
            $u_code=mb_substr($code,-6,6);
            $this->assign("u_code",$u_code);
            $this->assign("reu",$reu);
            return $this->fetch();

        }else{
            $this->redirect("index");
        }
        
    }
    public function save()
    {
        $pid=input('pid');
        $re=db("user")->where("u_code=$pid")->find();
        if($re){
            $u_name=input('u_name');
            $reu=db("user")->where("u_name='$u_name'")->find();
            if($reu){
                $this->error("此会员名已存在",url('index'));exit;
            }else{
                $data=array();
                $data['u_code']=input('u_code');
                $data['u_name']=input('u_name');
                $data['u_wx']=input('u_wx');
                $data['u_alipay']=input('u_alipay');
                $data['u_phone']=input('u_phone');
                $data['u_pwd']=md5(input('u_pwd'));
                $data['u_pwds']=md5(input('u_pwds'));
                $data['pid']=$re['uid'];
                $data['level']=1;
                $data['u_ztime']=time();
                $rea=db("user")->insert($data);
                if($rea){
                    $this->success("注册成功，快去激活吧",url('index'));
                }else{
                    $this->error("注册失败，请稍后再试",url('index'));
                }

            }

        }else{
            $this->error("系统繁忙，请稍后再试",url('index'));
        }
    }
    public function change()
    {
        $u_name=input('u_name');
        $reu=db("user")->where("u_name='$u_name'")->find();
        if($reu){
            echo '1';
        }else{
            echo '0';
        }
    }
    public function info()
    {
        $uid=input('id');
        $re=db("user")->where("uid=$uid")->find();
        if($re){
            $this->assign("re",$re);
            return $this->fetch();
        }else{
            $this->redirect("index");
        }
        
    }









}