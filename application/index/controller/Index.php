<?php
namespace app\index\controller;

class Index  extends BaseHome
{
    public function index()
    {
        //用户信息
        $uid=session('userid');
        $re=db("user")->where("uid=$uid")->find();
        $this->assign("re",$re);

        
        
        return $this->fetch();
    }
    public function hello()
    {
        //友情链接
        $link=db("lb")->where("fid=1")->paginate(12);
        $this->assign("link",$link);

        //用户信息
        $uid=session('userid');
        $re=db("user")->where("uid=$uid")->find();
        $this->assign("re",$re);

        //联盟公告
        $news=db("news")->where("status=1 and groom=1")->order(['sort'=>'asc','id'=>'desc'])->paginate(3);
        $this->assign("news",$news);

        //游戏规则
        $game=db("about")->where("id=1")->find();
        $this->assign("game",$game);

        //级别详情
        $level=db("level")->order("level desc")->select();
        $this->assign("level",$level);

        $rea=db("about")->where("id=3")->find();
        $this->assign("rea",$rea);

        //会员信息
        $uid=session("userid");
        $reu=db("user")->where("uid=$uid")->find();
        $this->assign("reu",$reu);

        $le=$reu['level'];
        $les=($le+1);
        $rel=db("level")->where("level=$les")->find();
        $this->assign("rel",$rel);
        $this->assign("les",$les);

        //升级信息
        $apply=db("apply")->where(array('p_id'=>$uid))->paginate(3);
        $this->assign("apply",$apply);
        return $this->fetch();
    }
}
