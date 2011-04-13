Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9sBM-0007RJ-S4
	for barebox@lists.infradead.org; Wed, 13 Apr 2011 05:00:02 +0000
Received: by ewy3 with SMTP id 3so75026ewy.36
	for <barebox@lists.infradead.org>; Tue, 12 Apr 2011 21:59:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110413040912.GA14112@jasper.tkos.co.il>
References: <BANLkTinHQSS1rnKifQ+VYyA27Af+vBYRkg@mail.gmail.com>
	<20110412042538.GA20619@jasper.tkos.co.il>
	<BANLkTikjDcO9Uj0+y2Sqq6Z=B3oOogjaCA@mail.gmail.com>
	<20110413030149.GE4709@game.jcrosoft.org>
	<BANLkTik4m6GxTeaBW6Nt6XO=xqwTwY8Y1Q@mail.gmail.com>
	<20110413040912.GA14112@jasper.tkos.co.il>
Date: Tue, 12 Apr 2011 22:59:57 -0600
Message-ID: <BANLkTikpEdb-i8OjAqOVmN1rab4cAtrkWw@mail.gmail.com>
From: Marko Milutinovic <markomilutin@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1663938766=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: First time on this list
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

--===============1663938766==
Content-Type: multipart/alternative; boundary=0016e6d589632753c204a0c5ae0c

--0016e6d589632753c204a0c5ae0c
Content-Type: text/plain; charset=UTF-8

That works great!

Thanks for all the help.
Marko

On Tue, Apr 12, 2011 at 10:09 PM, Baruch Siach <baruch@tkos.co.il> wrote:

> Hi Marko,
>
> On Tue, Apr 12, 2011 at 09:42:47PM -0600, Marko Milutinovic wrote:
> > One last question though, does this section have to be populated
> manually?
> > Do i have to explicitly load a env.bin file to my device and then copy it
> to
> > the env0 partition? Is there a way to have this loaded onto my main
> > bootloader .bin file when it gets compiled?
>
> If you set CONFIG_DEFAULT_ENVIRONMENT and CONFIG_DEFAULT_ENVIRONMENT_PATH
> in
> your .config, then you have a default environment compiled into your
> Barebox
> image. Then, to save this default environment into your flash just run
> 'saveenv'.
>
> baruch
>
> > On Tue, Apr 12, 2011 at 9:01 PM, Jean-Christophe PLAGNIOL-VILLARD <
> > plagnioj@jcrosoft.com> wrote:
> >
> > > Hi,
> > >
> > >        could you send your board patch and the log of your console
> > >        so we can help you more
> > >
> > >        btw please do not post in HTML
> > >
> > > Best Regards,
> > > J.
> > > On 12:42 Tue 12 Apr     , Marko Milutinovic wrote:
> > > >    Hello,
> > > >    1. I don't think that I took any steps to save the environment.
> Not
> > > sure
> > > >    how to go about doing that. I have the 'env\bin\init' file under
> my
> > > board
> > > >    directory. I was under the impressions this would get built in
> > > >    automatically. Additionally in my init.c file for my board I have
> the
> > > >    following lines:
> > > >    devfs_add_partition("nor0", 0x01000000, 0x10000, PARTITION_FIXED,
> > > >    "self_raw");
> > > >    devfs_add_partition("nor0", 0x01010000, 0x1000, PARTITION_FIXED,
> > > "env0");
> > > >    2. When my board boots i get the following output lines
> > > >    Malloc space: .(rest of text ...)
> > > >    Stack space: (rest of text ...)
> > > >    Open /dev/env0 error2
> > > >    running /env/bin/init...
> > > >    not found
> > > >    barebox:
> > > >    Thanks
> > > >    Marko
> > > >
> > > >    On Mon, Apr 11, 2011 at 10:25 PM, Baruch Siach <baruch@tkos.co.il
> >
> > > wrote:
> > > >
> > > >      Hi Marko,
> > > >      On Mon, Apr 11, 2011 at 09:18:53PM -0600, Marko Milutinovic
> wrote:
> > > >      > I have barebox working almost fully on my board, except I
> can't
> > > get
> > > >      the
> > > >      > environment to load ... I have an env0 partition allocated and
> > > under
> > > >      my
> > > >      > board I have the /env/bin/init file. Anyone have any tips as
> to
> > > what I
> > > >      am
> > > >      > missing or can they point me to another resource?
> > > >
> > > >      More info is needed:
> > > >
> > > >      1. What did you do to save the environment?
> > > >
> > > >      2. What is your indication that the environment doesn't "load"?
> > > >
> > > >      baruch
> > > >      --
>
> --
>                                                     ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
>

--0016e6d589632753c204a0c5ae0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

That works great!<div><br></div><div>Thanks for all the help.</div><div>Mar=
ko<br><br><div class=3D"gmail_quote">On Tue, Apr 12, 2011 at 10:09 PM, Baru=
ch Siach <span dir=3D"ltr">&lt;<a href=3D"mailto:baruch@tkos.co.il">baruch@=
tkos.co.il</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Hi Marko,<br>
<div class=3D"im"><br>
On Tue, Apr 12, 2011 at 09:42:47PM -0600, Marko Milutinovic wrote:<br>
&gt; One last question though, does this section have to be populated manua=
lly?<br>
&gt; Do i have to explicitly load a env.bin file to my device and then copy=
 it to<br>
&gt; the env0 partition? Is there a way to have this loaded onto my main<br=
>
&gt; bootloader .bin file when it gets compiled?<br>
<br>
</div>If you set CONFIG_DEFAULT_ENVIRONMENT and CONFIG_DEFAULT_ENVIRONMENT_=
PATH in<br>
your .config, then you have a default environment compiled into your Barebo=
x<br>
image. Then, to save this default environment into your flash just run<br>
&#39;saveenv&#39;.<br>
<font color=3D"#888888"><br>
baruch<br>
</font><div><div></div><div class=3D"h5"><br>
&gt; On Tue, Apr 12, 2011 at 9:01 PM, Jean-Christophe PLAGNIOL-VILLARD &lt;=
<br>
&gt; <a href=3D"mailto:plagnioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0could you send your board patch and th=
e log of your console<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0so we can help you more<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0btw please do not post in HTML<br>
&gt; &gt;<br>
&gt; &gt; Best Regards,<br>
&gt; &gt; J.<br>
&gt; &gt; On 12:42 Tue 12 Apr =C2=A0 =C2=A0 , Marko Milutinovic wrote:<br>
&gt; &gt; &gt; =C2=A0 =C2=A0Hello,<br>
&gt; &gt; &gt; =C2=A0 =C2=A01. I don&#39;t think that I took any steps to s=
ave the environment. Not<br>
&gt; &gt; sure<br>
&gt; &gt; &gt; =C2=A0 =C2=A0how to go about doing that. I have the &#39;env=
\bin\init&#39; file under my<br>
&gt; &gt; board<br>
&gt; &gt; &gt; =C2=A0 =C2=A0directory. I was under the impressions this wou=
ld get built in<br>
&gt; &gt; &gt; =C2=A0 =C2=A0automatically. Additionally in my init.c file f=
or my board I have the<br>
&gt; &gt; &gt; =C2=A0 =C2=A0following lines:<br>
&gt; &gt; &gt; =C2=A0 =C2=A0devfs_add_partition(&quot;nor0&quot;, 0x0100000=
0, 0x10000, PARTITION_FIXED,<br>
&gt; &gt; &gt; =C2=A0 =C2=A0&quot;self_raw&quot;);<br>
&gt; &gt; &gt; =C2=A0 =C2=A0devfs_add_partition(&quot;nor0&quot;, 0x0101000=
0, 0x1000, PARTITION_FIXED,<br>
&gt; &gt; &quot;env0&quot;);<br>
&gt; &gt; &gt; =C2=A0 =C2=A02. When my board boots i get the following outp=
ut lines<br>
&gt; &gt; &gt; =C2=A0 =C2=A0Malloc space: .(rest of text ...)<br>
&gt; &gt; &gt; =C2=A0 =C2=A0Stack space: (rest of text ...)<br>
&gt; &gt; &gt; =C2=A0 =C2=A0Open /dev/env0 error2<br>
&gt; &gt; &gt; =C2=A0 =C2=A0running /env/bin/init...<br>
&gt; &gt; &gt; =C2=A0 =C2=A0not found<br>
&gt; &gt; &gt; =C2=A0 =C2=A0barebox:<br>
&gt; &gt; &gt; =C2=A0 =C2=A0Thanks<br>
&gt; &gt; &gt; =C2=A0 =C2=A0Marko<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 =C2=A0On Mon, Apr 11, 2011 at 10:25 PM, Baruch Siach =
&lt;<a href=3D"mailto:baruch@tkos.co.il">baruch@tkos.co.il</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0Hi Marko,<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0On Mon, Apr 11, 2011 at 09:18:53PM -0600=
, Marko Milutinovic wrote:<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0&gt; I have barebox working almost fully=
 on my board, except I can&#39;t<br>
&gt; &gt; get<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0the<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0&gt; environment to load ... I have an e=
nv0 partition allocated and<br>
&gt; &gt; under<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0my<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0&gt; board I have the /env/bin/init file=
. Anyone have any tips as to<br>
&gt; &gt; what I<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0am<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0&gt; missing or can they point me to ano=
ther resource?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0More info is needed:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A01. What did you do to save the environme=
nt?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A02. What is your indication that the envi=
ronment doesn&#39;t &quot;load&quot;?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0baruch<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0--<br>
<br>
--<br>
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~. .~ =C2=A0 Tk Open Systems<br>
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D<br>
 =C2=A0 - <a href=3D"mailto:baruch@tkos.co.il">baruch@tkos.co.il</a> - tel:=
 <a href=3D"tel:%2B972.2.679.5364" value=3D"+97226795364">+972.2.679.5364</=
a>, <a href=3D"http://www.tkos.co.il" target=3D"_blank">http://www.tkos.co.=
il</a> -<br>

</div></div></blockquote></div><br></div>

--0016e6d589632753c204a0c5ae0c--


--===============1663938766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1663938766==--
