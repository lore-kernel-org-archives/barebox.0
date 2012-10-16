Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f49.google.com ([209.85.219.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TO3Hg-00021t-Uy
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 09:17:58 +0000
Received: by mail-oa0-f49.google.com with SMTP id l10so6250820oag.36
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 02:17:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121016084658.GH5803@game.jcrosoft.org>
References: <20121016080209.GA19402@greatfirst.com>
 <20121016084658.GH5803@game.jcrosoft.org>
Date: Tue, 16 Oct 2012 11:17:55 +0200
Message-ID: <CAB_54W4acHCCot06K9MvK31WU_Hbhsco6MSQQ2hmunBnkHGdcA@mail.gmail.com>
From: Alexander Aring <alex.aring@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2040569243758440123=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: sandbox whith oftree on making error
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

--===============2040569243758440123==
Content-Type: multipart/alternative; boundary=bcaec54c52fc15a9c104cc29a139

--bcaec54c52fc15a9c104cc29a139
Content-Type: text/plain; charset=UTF-8

Hi,

maybe we can add a simulated gpio driver in sandbox?

Regards
Alexander Aring

2012/10/16 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> On 16:02 Tue 16 Oct     , zzs wrote:
> > my code baseed 7423f13
> >
> > when making sandox with command oftree on then I got the flowwing
> > build error:
> >
> > CC      drivers/of/gpio.o
> > In file included from /home/zzs/work/repos/barebox/drivers/of/gpio.c:6:0:
> > /home/zzs/work/repos/barebox/include/gpio.h:4:22: fatal error:
> asm/gpio.h: No such file or directory
> > compilation terminated.
> > make[3]: *** [drivers/of/gpio.o] Error 1
> > make[2]: *** [drivers/of] Error 2
> > make[1]: *** [drivers] Error 2
> > make: *** [_all] Error 2
> >
> > My building commandline like this:
> >     CROSS_COMPILE= ARCH=sandbox make O=objtree sandbox_defconfig
> >     CROSS_COMPILE= ARCH=sandbox make O=objtree xconfig
> >         .... turn oftree on
> >     CROSS_COMPILE= ARCH=sandbox make O=objtree
> >
> > I think this is a bug
> I'm not sure oftree make sense on sandbox
>
> but anyway the sandbox have no gpio support
>
> so gpio.c can not be compiled
>
> Best Regards,
> J.
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

--bcaec54c52fc15a9c104cc29a139
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>maybe we can add a simulated gpio driver in sandbox?<br><br>Rega=
rds<br>Alexander Aring<br><br><div class=3D"gmail_quote">2012/10/16 Jean-Ch=
ristophe PLAGNIOL-VILLARD <span dir=3D"ltr">&lt;<a href=3D"mailto:plagnioj@=
jcrosoft.com" target=3D"_blank">plagnioj@jcrosoft.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 16:02 Tue 16 Oct =C2=A0=
 =C2=A0 , zzs wrote:<br>
&gt; my code baseed 7423f13<br>
&gt;<br>
&gt; when making sandox with command oftree on then I got the flowwing<br>
&gt; build error:<br>
&gt;<br>
&gt; CC =C2=A0 =C2=A0 =C2=A0drivers/of/gpio.o<br>
&gt; In file included from /home/zzs/work/repos/barebox/drivers/of/gpio.c:6=
:0:<br>
&gt; /home/zzs/work/repos/barebox/include/gpio.h:4:22: fatal error: asm/gpi=
o.h: No such file or directory<br>
&gt; compilation terminated.<br>
&gt; make[3]: *** [drivers/of/gpio.o] Error 1<br>
&gt; make[2]: *** [drivers/of] Error 2<br>
&gt; make[1]: *** [drivers] Error 2<br>
&gt; make: *** [_all] Error 2<br>
&gt;<br>
&gt; My building commandline like this:<br>
&gt; =C2=A0 =C2=A0 CROSS_COMPILE=3D ARCH=3Dsandbox make O=3Dobjtree sandbox=
_defconfig<br>
&gt; =C2=A0 =C2=A0 CROSS_COMPILE=3D ARCH=3Dsandbox make O=3Dobjtree xconfig=
<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 .... turn oftree on<br>
&gt; =C2=A0 =C2=A0 CROSS_COMPILE=3D ARCH=3Dsandbox make O=3Dobjtree<br>
&gt;<br>
&gt; I think this is a bug<br>
</div>I&#39;m not sure oftree make sense on sandbox<br>
<br>
but anyway the sandbox have no gpio support<br>
<br>
so gpio.c can not be compiled<br>
<br>
Best Regards,<br>
J.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
</div></div></blockquote></div><br>

--bcaec54c52fc15a9c104cc29a139--


--===============2040569243758440123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2040569243758440123==--
