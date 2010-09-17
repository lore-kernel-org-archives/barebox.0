Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwWbs-0003Ug-S2
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 08:47:57 +0000
Received: by iwn36 with SMTP id 36so2209733iwn.36
	for <barebox@lists.infradead.org>; Fri, 17 Sep 2010 01:47:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201008230916.16725.jbe@pengutronix.de>
References: <AANLkTin5C2PLPS26q5BjyBZC3Dt_aYCVWYifSNri8p+G@mail.gmail.com>
	<20100816091330.GN27749@pengutronix.de>
	<AANLkTi=i9OVu5g1i1_AXquB_TzX8uE9o6=vMTqmxmhRo@mail.gmail.com>
	<201008230916.16725.jbe@pengutronix.de>
Date: Fri, 17 Sep 2010 14:17:55 +0530
Message-ID: <AANLkTi=fzeCkt7-YedYGBJXkat5O3dkuyc0hGpKGK6Rq@mail.gmail.com>
From: kuldeep ghan <ghankp@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1447936587=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: changes for reducing DDR size
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============1447936587==
Content-Type: multipart/alternative; boundary=00221532cbbc6849430490709e00

--00221532cbbc6849430490709e00
Content-Type: text/plain; charset=ISO-8859-1

Yes I am using Non continuous memory. I have two variants of the boards. On
one type of board. I use two DDRs of 128MB each on CSD0 and CSD1. In that
case it works, also I see Linux utilizing 256MB memory.

On board with 32MB DDRs on CSD0 and CSD1 each, I see that ping commands
calls fec_send in fec_imx.c (FEC driver for imx27) and after enabling dma it
hangs.

Is there any change required for initiazation of DMA due change id DDR size
from 128MB to 32 MB on each chipselect CSD0 and CSD1.

On Mon, Aug 23, 2010 at 12:46 PM, Juergen Beisert <jbe@pengutronix.de>wrote:

> kuldeep ghan wrote:
> > [...]
> >  I am adding two device using armlinux_add_dram() each with 32MB size and
> > map_base address of 0xA0000000 and 0xB0000000 respectively.. Is that fine
> > or Can I have one device registered with map_base address of 0xA0000000
> and
> > 64MB size??
>
> You are using non continuous memory. I'm not sure, if that is handled in
> barebox correctly. Also Linux may have a problem with this kind of memory
> organization.
>
> jbe
>
> --
> Pengutronix e.K.                              | Juergen Beisert
> |
> Linux Solutions for Science and Industry      | Phone: +49-8766-939 228
> |
> Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555
> |
> Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/ |
>

--00221532cbbc6849430490709e00
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yes I am using Non continuous memory. I have two variants of the boards. On=
 one type of board. I use two DDRs of 128MB each on CSD0 and CSD1. In that =
case it works, also I see Linux utilizing 256MB memory.<br><br>On board wit=
h 32MB DDRs on CSD0 and CSD1 each, I see that ping commands calls fec_send =
in fec_imx.c (FEC driver for imx27) and after enabling dma it hangs.<br>
<br>Is there any change required for initiazation of DMA due change id DDR =
size from 128MB to 32 MB on each chipselect CSD0 and CSD1.<br><br><div clas=
s=3D"gmail_quote">On Mon, Aug 23, 2010 at 12:46 PM, Juergen Beisert <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:jbe@pengutronix.de">jbe@pengutronix.de</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, =
204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">kuldeep ghan wrot=
e:<br>
&gt; [...]<br>
<div class=3D"im">&gt; =A0I am adding two device using armlinux_add_dram() =
each with 32MB size and<br>
&gt; map_base address of 0xA0000000 and 0xB0000000 respectively.. Is that f=
ine<br>
&gt; or Can I have one device registered with map_base address of 0xA000000=
0 and<br>
&gt; 64MB size??<br>
<br>
</div>You are using non continuous memory. I&#39;m not sure, if that is han=
dled in<br>
barebox correctly. Also Linux may have a problem with this kind of memory<b=
r>
organization.<br>
<br>
jbe<br>
<font color=3D"#888888"><br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Linux Solutions for Science and Industry =A0 =A0 =A0| Phone: +49-8766-939 2=
28 =A0 =A0 |<br>
Vertretung Sued/Muenchen, Germany =A0 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-51=
21-206917-5555 |<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 =A0 =A0| <a href=3D"ht=
tp://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
</font></blockquote></div><br>

--00221532cbbc6849430490709e00--


--===============1447936587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1447936587==--
