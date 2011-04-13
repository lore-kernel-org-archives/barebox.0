Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9qyh-0007CA-Ft
	for barebox@lists.infradead.org; Wed, 13 Apr 2011 03:42:52 +0000
Received: by ewy3 with SMTP id 3so64403ewy.36
	for <barebox@lists.infradead.org>; Tue, 12 Apr 2011 20:42:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110413030149.GE4709@game.jcrosoft.org>
References: <BANLkTinHQSS1rnKifQ+VYyA27Af+vBYRkg@mail.gmail.com>
	<20110412042538.GA20619@jasper.tkos.co.il>
	<BANLkTikjDcO9Uj0+y2Sqq6Z=B3oOogjaCA@mail.gmail.com>
	<20110413030149.GE4709@game.jcrosoft.org>
Date: Tue, 12 Apr 2011 21:42:47 -0600
Message-ID: <BANLkTik4m6GxTeaBW6Nt6XO=xqwTwY8Y1Q@mail.gmail.com>
From: Marko Milutinovic <markomilutin@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0921904633=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: First time on this list
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

--===============0921904633==
Content-Type: multipart/alternative; boundary=20cf302d4cfe350c7a04a0c49a24

--20cf302d4cfe350c7a04a0c49a24
Content-Type: text/plain; charset=UTF-8

Hello,

I set my outgoing my in gmail to be UTF-8, is the message plain text now?  I
can't tell the difference on my side.

Ok so i figured out that one of my problems was that I was using the
"devfs_add_partition"
call wrong. The second parameter is an offset not the base address ... oops.
Now I can see env0 under devices.

It's still not able to load it but the error I'm getting is "envfs: wrong
magic on /dev/env0". I think this is just a matter of this section being
empty. Thanks for the help guys, I can probably figure it out from here.

One last question though, does this section have to be populated manually?
Do i have to explicitly load a env.bin file to my device and then copy it to
the env0 partition? Is there a way to have this loaded onto my main
bootloader .bin file when it gets compiled?

Thanks,
Marko

On Tue, Apr 12, 2011 at 9:01 PM, Jean-Christophe PLAGNIOL-VILLARD <
plagnioj@jcrosoft.com> wrote:

> Hi,
>
>        could you send your board patch and the log of your console
>        so we can help you more
>
>        btw please do not post in HTML
>
> Best Regards,
> J.
> On 12:42 Tue 12 Apr     , Marko Milutinovic wrote:
> >    Hello,
> >    1. I don't think that I took any steps to save the environment. Not
> sure
> >    how to go about doing that. I have the 'env\bin\init' file under my
> board
> >    directory. I was under the impressions this would get built in
> >    automatically. Additionally in my init.c file for my board I have the
> >    following lines:
> >    devfs_add_partition("nor0", 0x01000000, 0x10000, PARTITION_FIXED,
> >    "self_raw");
> >    devfs_add_partition("nor0", 0x01010000, 0x1000, PARTITION_FIXED,
> "env0");
> >    2. When my board boots i get the following output lines
> >    Malloc space: .(rest of text ...)
> >    Stack space: (rest of text ...)
> >    Open /dev/env0 error2
> >    running /env/bin/init...
> >    not found
> >    barebox:
> >    Thanks
> >    Marko
> >
> >    On Mon, Apr 11, 2011 at 10:25 PM, Baruch Siach <baruch@tkos.co.il>
> wrote:
> >
> >      Hi Marko,
> >      On Mon, Apr 11, 2011 at 09:18:53PM -0600, Marko Milutinovic wrote:
> >      > I have barebox working almost fully on my board, except I can't
> get
> >      the
> >      > environment to load ... I have an env0 partition allocated and
> under
> >      my
> >      > board I have the /env/bin/init file. Anyone have any tips as to
> what I
> >      am
> >      > missing or can they point me to another resource?
> >
> >      More info is needed:
> >
> >      1. What did you do to save the environment?
> >
> >      2. What is your indication that the environment doesn't "load"?
> >
> >      baruch
> >      --
> >                                                          ~. .~   Tk Open
> >      Systems
> >
>  =}------------------------------------------------ooO--U--Ooo------------{=
> >        - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il-
>
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
>
>

--20cf302d4cfe350c7a04a0c49a24
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,<div><br></div><div>I set my outgoing my in gmail to be=C2=A0<span cl=
ass=3D"Apple-style-span" style=3D"font-family: arial, sans-serif; font-size=
: 13px; border-collapse: collapse; color: rgb(2, 19, 36); font-weight: bold=
; ">UTF-8</span><span class=3D"Apple-style-span" style=3D"font-family: aria=
l, sans-serif; font-size: 13px; border-collapse: collapse; color: rgb(2, 19=
, 36); ">, is the message plain text now? =C2=A0I can&#39;t tell the differ=
ence on my side.=C2=A0</span></div>
<div><font class=3D"Apple-style-span" color=3D"#021324" face=3D"arial, sans=
-serif"><span class=3D"Apple-style-span" style=3D"border-collapse: collapse=
;"><br></span></font></div><div><font class=3D"Apple-style-span" color=3D"#=
021324" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" style=
=3D"border-collapse: collapse;">Ok so i figured out that one of my problems=
 was that I was using the &quot;</span></font>devfs_add_partition&quot; cal=
l wrong. The second parameter is an offset not the base address ... oops. N=
ow I can see env0 under devices.</div>
<div><br></div><div>It&#39;s still not able to load it but the error I&#39;=
m getting is &quot;envfs: wrong magic on /dev/env0&quot;. I think this is j=
ust a matter of this section being empty. Thanks for the help guys, I can p=
robably figure it out from here.</div>
<div><br></div><div>One last question though, does this section have to be =
populated manually? Do i have to explicitly load a env.bin file to my devic=
e and then copy it to the env0 partition? Is there a way to have this loade=
d onto my main bootloader .bin file when it gets compiled?</div>
<div><br></div><div>Thanks,</div><div>Marko</div><div><br><div class=3D"gma=
il_quote">On Tue, Apr 12, 2011 at 9:01 PM, Jean-Christophe PLAGNIOL-VILLARD=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:plagnioj@jcrosoft.com">plagnioj@jc=
rosoft.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Hi,<br>
<br>
 =C2=A0 =C2=A0 =C2=A0 =C2=A0could you send your board patch and the log of =
your console<br>
 =C2=A0 =C2=A0 =C2=A0 =C2=A0so we can help you more<br>
<br>
 =C2=A0 =C2=A0 =C2=A0 =C2=A0btw please do not post in HTML<br>
<br>
Best Regards,<br>
J.<br>
<div><div></div><div class=3D"h5">On 12:42 Tue 12 Apr =C2=A0 =C2=A0 , Marko=
 Milutinovic wrote:<br>
&gt; =C2=A0 =C2=A0Hello,<br>
&gt; =C2=A0 =C2=A01. I don&#39;t think that I took any steps to save the en=
vironment. Not sure<br>
&gt; =C2=A0 =C2=A0how to go about doing that. I have the &#39;env\bin\init&=
#39; file under my board<br>
&gt; =C2=A0 =C2=A0directory. I was under the impressions this would get bui=
lt in<br>
&gt; =C2=A0 =C2=A0automatically. Additionally in my init.c file for my boar=
d I have the<br>
&gt; =C2=A0 =C2=A0following lines:<br>
&gt; =C2=A0 =C2=A0devfs_add_partition(&quot;nor0&quot;, 0x01000000, 0x10000=
, PARTITION_FIXED,<br>
&gt; =C2=A0 =C2=A0&quot;self_raw&quot;);<br>
&gt; =C2=A0 =C2=A0devfs_add_partition(&quot;nor0&quot;, 0x01010000, 0x1000,=
 PARTITION_FIXED, &quot;env0&quot;);<br>
&gt; =C2=A0 =C2=A02. When my board boots i get the following output lines<b=
r>
&gt; =C2=A0 =C2=A0Malloc space: .(rest of text ...)<br>
&gt; =C2=A0 =C2=A0Stack space: (rest of text ...)<br>
&gt; =C2=A0 =C2=A0Open /dev/env0 error2<br>
&gt; =C2=A0 =C2=A0running /env/bin/init...<br>
&gt; =C2=A0 =C2=A0not found<br>
&gt; =C2=A0 =C2=A0barebox:<br>
&gt; =C2=A0 =C2=A0Thanks<br>
&gt; =C2=A0 =C2=A0Marko<br>
&gt;<br>
&gt; =C2=A0 =C2=A0On Mon, Apr 11, 2011 at 10:25 PM, Baruch Siach &lt;<a hre=
f=3D"mailto:baruch@tkos.co.il">baruch@tkos.co.il</a>&gt; wrote:<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0Hi Marko,<br>
&gt; =C2=A0 =C2=A0 =C2=A0On Mon, Apr 11, 2011 at 09:18:53PM -0600, Marko Mi=
lutinovic wrote:<br>
&gt; =C2=A0 =C2=A0 =C2=A0&gt; I have barebox working almost fully on my boa=
rd, except I can&#39;t get<br>
&gt; =C2=A0 =C2=A0 =C2=A0the<br>
&gt; =C2=A0 =C2=A0 =C2=A0&gt; environment to load ... I have an env0 partit=
ion allocated and under<br>
&gt; =C2=A0 =C2=A0 =C2=A0my<br>
&gt; =C2=A0 =C2=A0 =C2=A0&gt; board I have the /env/bin/init file. Anyone h=
ave any tips as to what I<br>
&gt; =C2=A0 =C2=A0 =C2=A0am<br>
&gt; =C2=A0 =C2=A0 =C2=A0&gt; missing or can they point me to another resou=
rce?<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0More info is needed:<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A01. What did you do to save the environment?<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A02. What is your indication that the environment do=
esn&#39;t &quot;load&quot;?<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0baruch<br>
&gt; =C2=A0 =C2=A0 =C2=A0--<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~. .~ =C2=A0 Tk =
Open<br>
&gt; =C2=A0 =C2=A0 =C2=A0Systems<br>
&gt; =C2=A0 =C2=A0 =C2=A0=3D}----------------------------------------------=
--ooO--U--Ooo------------{=3D<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0- <a href=3D"mailto:baruch@tkos.co.il">baru=
ch@tkos.co.il</a> - tel: <a href=3D"tel:%2B972.2.679.5364" value=3D"+972267=
95364">+972.2.679.5364</a>, <a href=3D"http://www.tkos.co.il" target=3D"_bl=
ank">http://www.tkos.co.il</a> -<br>

<br>
</div></div>&gt; _______________________________________________<br>
&gt; barebox mailing list<br>
&gt; <a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead=
.org</a><br>
&gt; <a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=
=3D"_blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
<br>
</blockquote></div><br></div>

--20cf302d4cfe350c7a04a0c49a24--


--===============0921904633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0921904633==--
