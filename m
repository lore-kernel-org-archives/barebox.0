Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9iYH-000371-1S
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 18:43:02 +0000
Received: by ewy3 with SMTP id 3so2304574ewy.36
	for <barebox@lists.infradead.org>; Tue, 12 Apr 2011 11:42:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110412042538.GA20619@jasper.tkos.co.il>
References: <BANLkTinHQSS1rnKifQ+VYyA27Af+vBYRkg@mail.gmail.com>
	<20110412042538.GA20619@jasper.tkos.co.il>
Date: Tue, 12 Apr 2011 12:42:58 -0600
Message-ID: <BANLkTikjDcO9Uj0+y2Sqq6Z=B3oOogjaCA@mail.gmail.com>
From: Marko Milutinovic <markomilutin@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1024872149=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: First time on this list
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

--===============1024872149==
Content-Type: multipart/alternative; boundary=0016e6d58963ac0ac404a0bd0f59

--0016e6d58963ac0ac404a0bd0f59
Content-Type: text/plain; charset=ISO-8859-1

Hello,

1. I don't think that I took any steps to save the environment. Not sure how
to go about doing that. I have the 'env\bin\init' file under my board
directory. I was under the impressions this would get built in
automatically. Additionally in my init.c file for my board I have the
following lines:

devfs_add_partition("nor0", 0x01000000, 0x10000, PARTITION_FIXED,
"self_raw");
devfs_add_partition("nor0", 0x01010000, 0x1000, PARTITION_FIXED, "env0");

2. When my board boots i get the following output lines

Malloc space: .(rest of text ...)
Stack space: (rest of text ...)
Open /dev/env0 error2
running /env/bin/init...
not found
barebox:

Thanks
Marko


On Mon, Apr 11, 2011 at 10:25 PM, Baruch Siach <baruch@tkos.co.il> wrote:

> Hi Marko,
>
> On Mon, Apr 11, 2011 at 09:18:53PM -0600, Marko Milutinovic wrote:
> > I have barebox working almost fully on my board, except I can't get the
> > environment to load ... I have an env0 partition allocated and under my
> > board I have the /env/bin/init file. Anyone have any tips as to what I am
> > missing or can they point me to another resource?
>
> More info is needed:
>
> 1. What did you do to save the environment?
>
> 2. What is your indication that the environment doesn't "load"?
>
> baruch
>
> --
>                                                     ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
>

--0016e6d58963ac0ac404a0bd0f59
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<div><br></div><div>1. I don&#39;t think that I took any steps to sav=
e the environment. Not sure how to go about doing that. I have the &#39;env=
\bin\init&#39; file under my board directory. I was under the impressions t=
his would get built in automatically. Additionally in my init.c file for my=
 board I have the following lines:</div>
<div><br></div><div>devfs_add_partition(&quot;nor0&quot;, 0x01000000, 0x100=
00, PARTITION_FIXED, &quot;self_raw&quot;);</div><div>devfs_add_partition(&=
quot;nor0&quot;, 0x01010000, 0x1000, PARTITION_FIXED, &quot;env0&quot;);</d=
iv>
<div><br></div><div>2. When my board boots i get the following output lines=
</div><div><br></div><div>Malloc space: .(rest of text ...)</div><div>Stack=
 space: (rest of text ...)</div><div>Open /dev/env0 error2=A0</div><div>run=
ning /env/bin/init...</div>
<div>not found</div><div>barebox:</div><div><br></div><div>Thanks</div><div=
>Marko</div><div><br><br><div class=3D"gmail_quote">On Mon, Apr 11, 2011 at=
 10:25 PM, Baruch Siach <span dir=3D"ltr">&lt;<a href=3D"mailto:baruch@tkos=
.co.il">baruch@tkos.co.il</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Hi Marko,<br>
<div class=3D"im"><br>
On Mon, Apr 11, 2011 at 09:18:53PM -0600, Marko Milutinovic wrote:<br>
&gt; I have barebox working almost fully on my board, except I can&#39;t ge=
t the<br>
&gt; environment to load ... I have an env0 partition allocated and under m=
y<br>
&gt; board I have the /env/bin/init file. Anyone have any tips as to what I=
 am<br>
&gt; missing or can they point me to another resource?<br>
<br>
</div>More info is needed:<br>
<br>
1. What did you do to save the environment?<br>
<br>
2. What is your indication that the environment doesn&#39;t &quot;load&quot=
;?<br>
<br>
baruch<br>
<font color=3D"#888888"><br>
--<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ~. .~ =A0 Tk Open Systems<br>
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D<br>
 =A0 - <a href=3D"mailto:baruch@tkos.co.il">baruch@tkos.co.il</a> - tel: <a=
 href=3D"tel:%2B972.2.679.5364" value=3D"+97226795364">+972.2.679.5364</a>,=
 <a href=3D"http://www.tkos.co.il" target=3D"_blank">http://www.tkos.co.il<=
/a> -<br>

</font></blockquote></div><br></div>

--0016e6d58963ac0ac404a0bd0f59--


--===============1024872149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1024872149==--
