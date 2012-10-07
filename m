Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpdu-0007Aw-7m
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 12:07:35 +0000
Received: by mail-pb0-f49.google.com with SMTP id xa7so3511170pbc.36
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2012 05:07:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121007103027.GE1322@pengutronix.de>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-11-git-send-email-vicencb@gmail.com>
 <20121007103027.GE1322@pengutronix.de>
Date: Sun, 7 Oct 2012 14:07:28 +0200
Message-ID: <CAAMcf8CjJHfkLDBGzA4-Uny-9KJEv3nR3ozC0g+V65B28xLD6A@mail.gmail.com>
From: vj <vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6090259079966970050=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/11] mach-types: add ID for Archos G9 tablet
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============6090259079966970050==
Content-Type: multipart/alternative; boundary=047d7b15ab27e81f4a04cb76f2e4

--047d7b15ab27e81f4a04cb76f2e4
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 7, 2012 at 12:30 PM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> On Sat, Oct 06, 2012 at 12:33:12AM +0200, vj wrote:
> >
> > Signed-off-by: vj <vicencb@gmail.com>
> > ---
> >  arch/arm/tools/mach-types | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
> > index 325513f..a21da3b 100644
> > --- a/arch/arm/tools/mach-types
> > +++ b/arch/arm/tools/mach-types
> > @@ -4148,3 +4148,4 @@ msm8625_evt             MACH_MSM8625_EVT
>  MSM8625_EVT             4193
> >  mx53_sellwood                MACH_MX53_SELLWOOD      MX53_SELLWOOD
>       4194
> >  somiq_am35           MACH_SOMIQ_AM35         SOMIQ_AM35
>  4195
> >  somiq_am37           MACH_SOMIQ_AM37         SOMIQ_AM37
>  4196
> > +omap4_archosg9               MACH_OMAP4_ARCHOSG9     OMAP4_ARCHOSG9
>      5032
>
> Please no manual updates to this file, they will be overwritten once the
> next update from:
>
> http://www.arm.linux.org.uk/developer/machines/download.php
>
> comes in. I see that the Archos G9 does not have a machine id
> registered. You can register one yourself at:
>
> http://www.arm.linux.org.uk/developer/machines/
>
> btw is 5032 the id Archos uses or did you think it up yourself?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

5032 is chosen by Archos in it's Android kernel:
http://gitorious.org/archos/archos-gpl-gen9-kernel-ics/blobs/master/arch/arm/tools/mach-types

--047d7b15ab27e81f4a04cb76f2e4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Sun, Oct 7, 2012 at 12:30 PM, Sascha Hauer <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de" target=3D"_bl=
ank">s.hauer@pengutronix.de</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Sat, Oct 06, 2012 at 12:33:12AM =
+0200, vj wrote:<br>
&gt;<br>
&gt; Signed-off-by: vj &lt;<a href=3D"mailto:vicencb@gmail.com">vicencb@gma=
il.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0arch/arm/tools/mach-types | 1 +<br>
&gt; =C2=A01 file changed, 1 insertion(+)<br>
&gt;<br>
&gt; diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types<br>
&gt; index 325513f..a21da3b 100644<br>
&gt; --- a/arch/arm/tools/mach-types<br>
&gt; +++ b/arch/arm/tools/mach-types<br>
&gt; @@ -4148,3 +4148,4 @@ msm8625_evt =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 MACH_MSM8625_EVT =C2=A0 =C2=A0 =C2=A0 =C2=A0MSM8625_EVT =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4193<br>
&gt; =C2=A0mx53_sellwood =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0MACH_MX53_SELLWOOD =C2=A0 =C2=A0 =C2=A0MX53_SELLWOOD =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 4194<br>
&gt; =C2=A0somiq_am35 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MACH_SOMIQ_AM35 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SOMIQ_AM35 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A04195<br>
&gt; =C2=A0somiq_am37 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MACH_SOMIQ_AM37 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SOMIQ_AM37 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A04196<br>
&gt; +omap4_archosg9 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MACH_=
OMAP4_ARCHOSG9 =C2=A0 =C2=A0 OMAP4_ARCHOSG9 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A05032<br>
<br>
</div></div>Please no manual updates to this file, they will be overwritten=
 once the<br>
next update from:<br>
<br>
<a href=3D"http://www.arm.linux.org.uk/developer/machines/download.php" tar=
get=3D"_blank">http://www.arm.linux.org.uk/developer/machines/download.php<=
/a><br>
<br>
comes in. I see that the Archos G9 does not have a machine id<br>
registered. You can register one yourself at:<br>
<br>
<a href=3D"http://www.arm.linux.org.uk/developer/machines/" target=3D"_blan=
k">http://www.arm.linux.org.uk/developer/machines/</a><br>
<br>
btw is 5032 the id Archos uses or did you think it up yourself?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Sascha<br>
<br>
--<br>
Pengutronix e.K. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
Industrial Linux Solutions =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | <a href=3D"http://www.pengutronix.de/" target=3D"_blank">http://w=
ww.pengutronix.de/</a> =C2=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =C2=
=A0 =C2=A0|<br>
Amtsgericht Hildesheim, HRA 2686 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | Fax: =
=C2=A0 +49-5121-206917-5555 |<br>
</font></span></blockquote></div><br>5032 is chosen by Archos in it&#39;s A=
ndroid kernel: <a href=3D"http://gitorious.org/archos/archos-gpl-gen9-kerne=
l-ics/blobs/master/arch/arm/tools/mach-types">http://gitorious.org/archos/a=
rchos-gpl-gen9-kernel-ics/blobs/master/arch/arm/tools/mach-types</a><br>

--047d7b15ab27e81f4a04cb76f2e4--


--===============6090259079966970050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6090259079966970050==--
