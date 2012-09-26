Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TH0Fc-00072f-Pf
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 22:38:42 +0000
Received: by pbcxa7 with SMTP id xa7so1393592pbc.36
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 15:38:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120926070608.GG1322@pengutronix.de>
References: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
 <20120926070608.GG1322@pengutronix.de>
Date: Thu, 27 Sep 2012 00:38:36 +0200
Message-ID: <CAAMcf8Byso2Zu7JOYRD+ybd5HudjofONHL67T5Di9eAmmM5SjQ@mail.gmail.com>
From: vj <vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4057022033485870753=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/7] [RFC][PATCH] archosg9: add support for tablet
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============4057022033485870753==
Content-Type: multipart/alternative; boundary=f46d042ef475c188fc04caa27bf2

--f46d042ef475c188fc04caa27bf2
Content-Type: text/plain; charset=UTF-8

Hi Sascha,
 I'm not an expert in ARM assembly, so, if this is correct:
    u32 r=0;
    asm ("mrc p15, 0, %0, c12, c0, 0" : "=r" (r));
    printf("MRC p15, 0, <Rd>, c12, c0, 0 returns 0x%08X\n", r);
    r=-1;
    asm ("mrc p15, 0, %0, c12, c0, 0" : "=r" (r));
    printf("MRC p15, 0, <Rd>, c12, c0, 0 returns 0x%08X\n", r);
the return value is:
    MRC p15, 0, <Rd>, c12, c0, 0 returns 0x00030000
    MRC p15, 0, <Rd>, c12, c0, 0 returns 0x00030000
Which is the base address of "ROM exception vectors" and the address of the
"Reset" exception vector.
This is the value when omap_vector_init is disabled.

Hope this helps,
  Vicente.


On Wed, Sep 26, 2012 at 9:06 AM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> On Wed, Sep 26, 2012 at 12:59:47AM +0200, vj wrote:
> > Hello,
> > A this is my first contribution, so I'm basically requesting for
> comments.
> >
> > The attached patch adds support for Archos G9 tablet wich uses an
> OMAP4460 cpu.
>
> Nice :)
> I should have bought that one instead of a Acer.
>
>
> >
> > A question I have is what does omap_vector_init do?
> > It breaks usb-booting.
>
> I digged around a bit. The funny thing is that this was introduced with
> OMAP4 support and is only done on OMAP4. U-Boot instead has the following:
>
> > #if !defined(CONFIG_TEGRA2)
> > /*
> >  * Setup vector:
> >  * (OMAP4 spl TEXT_BASE is not 32 byte aligned.
> >  * Continue to use ROM code vector only in OMAP4 spl)
> >  */
> > #if !(defined(CONFIG_OMAP44XX) && defined(CONFIG_SPL_BUILD))
> >       /* Set V=0 in CP15 SCTRL register - for VBAR to point to vector
> >  * */
> >       mrc     p15, 0, r0, c1, c0, 0   @ Read CP15 SCTRL Register
> >       bic     r0, #CR_V               @ V = 0
> >       mcr     p15, 0, r0, c1, c0, 0   @ Write CP15 SCTRL Register
> >
> >       /* Set vector address in CP15 VBAR register */
> >       ldr     r0, =_start
> >       mcr     p15, 0, r0, c12, c0, 0  @Set VBAR
> > #endif
> > #endif        /* !Tegra2 */
>
> So in U-Boot it's done for every ARMv7 *except* OMAP4 (and Tegra)
>
> ARM has this information about it:
>
>
> http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0434b/CIHHDAIH.html
>
> > Purpose
> >
> >     Provides the exception base address for exceptions that are not
> >     handled in monitor mode.
> >
> > Usage constraints
> >
> >     The VBAR is:
> >
> >         * only accessible in privileged modes
> >         * only accessible in Secure state.
>
> I think this is necessary to move the exception vector from ROM to our
> own code. Does it work to read the VBAR register using the following
> instruction:
>
>         MRC p15, 0, <Rd>, c12, c0, 0 ; Read VBAR Register
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--f46d042ef475c188fc04caa27bf2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Sascha,<br>=C2=A0I&#39;m not an expert in ARM assembly, so, if this is c=
orrect:<br>=C2=A0=C2=A0=C2=A0 u32 r=3D0;<br>=C2=A0=C2=A0=C2=A0 asm (&quot;m=
rc p15, 0, %0, c12, c0, 0&quot; : &quot;=3Dr&quot; (r));<br>=C2=A0=C2=A0=C2=
=A0 printf(&quot;MRC p15, 0, &lt;Rd&gt;, c12, c0, 0 returns 0x%08X\n&quot;,=
 r);<br>
=C2=A0=C2=A0=C2=A0 r=3D-1;<br>=C2=A0=C2=A0=C2=A0 asm (&quot;mrc p15, 0, %0,=
 c12, c0, 0&quot; : &quot;=3Dr&quot; (r));<br>=C2=A0=C2=A0=C2=A0 printf(&qu=
ot;MRC p15, 0, &lt;Rd&gt;, c12, c0, 0 returns 0x%08X\n&quot;, r);<br>the re=
turn value is:<br>=C2=A0=C2=A0=C2=A0 MRC p15, 0, &lt;Rd&gt;, c12, c0, 0 ret=
urns 0x00030000<br>
=C2=A0=C2=A0=C2=A0 MRC p15, 0, &lt;Rd&gt;, c12, c0, 0 returns 0x00030000<br=
>Which is the base address of &quot;ROM exception vectors&quot; and the add=
ress of the &quot;Reset&quot; exception vector.<br>This is the value when o=
map_vector_init is disabled.<br>
<br>Hope this helps,<br>=C2=A0 Vicente.<br><br><br><div class=3D"gmail_quot=
e">On Wed, Sep 26, 2012 at 9:06 AM, Sascha Hauer <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:s.hauer@pengutronix.de" target=3D"_blank">s.hauer@pengutronix=
.de</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wed, Sep 26, 2012 at 12=
:59:47AM +0200, vj wrote:<br>
&gt; Hello,<br>
&gt; A this is my first contribution, so I&#39;m basically requesting for c=
omments.<br>
&gt;<br>
&gt; The attached patch adds support for Archos G9 tablet wich uses an OMAP=
4460 cpu.<br>
<br>
</div>Nice :)<br>
I should have bought that one instead of a Acer.<br>
<div class=3D"im"><br>
<br>
&gt;<br>
&gt; A question I have is what does omap_vector_init do?<br>
&gt; It breaks usb-booting.<br>
<br>
</div>I digged around a bit. The funny thing is that this was introduced wi=
th<br>
OMAP4 support and is only done on OMAP4. U-Boot instead has the following:<=
br>
<br>
&gt; #if !defined(CONFIG_TEGRA2)<br>
&gt; /*<br>
&gt; =C2=A0* Setup vector:<br>
&gt; =C2=A0* (OMAP4 spl TEXT_BASE is not 32 byte aligned.<br>
&gt; =C2=A0* Continue to use ROM code vector only in OMAP4 spl)<br>
&gt; =C2=A0*/<br>
&gt; #if !(defined(CONFIG_OMAP44XX) &amp;&amp; defined(CONFIG_SPL_BUILD))<b=
r>
&gt; =C2=A0 =C2=A0 =C2=A0 /* Set V=3D0 in CP15 SCTRL register - for VBAR to=
 point to vector<br>
&gt; =C2=A0* */<br>
&gt; =C2=A0 =C2=A0 =C2=A0 mrc =C2=A0 =C2=A0 p15, 0, r0, c1, c0, 0 =C2=A0 @ =
Read CP15 SCTRL Register<br>
&gt; =C2=A0 =C2=A0 =C2=A0 bic =C2=A0 =C2=A0 r0, #CR_V =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @ V =3D 0<br>
&gt; =C2=A0 =C2=A0 =C2=A0 mcr =C2=A0 =C2=A0 p15, 0, r0, c1, c0, 0 =C2=A0 @ =
Write CP15 SCTRL Register<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 /* Set vector address in CP15 VBAR register */<br=
>
&gt; =C2=A0 =C2=A0 =C2=A0 ldr =C2=A0 =C2=A0 r0, =3D_start<br>
&gt; =C2=A0 =C2=A0 =C2=A0 mcr =C2=A0 =C2=A0 p15, 0, r0, c12, c0, 0 =C2=A0@S=
et VBAR<br>
&gt; #endif<br>
&gt; #endif =C2=A0 =C2=A0 =C2=A0 =C2=A0/* !Tegra2 */<br>
<br>
So in U-Boot it&#39;s done for every ARMv7 *except* OMAP4 (and Tegra)<br>
<br>
ARM has this information about it:<br>
<br>
<a href=3D"http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dd=
i0434b/CIHHDAIH.html" target=3D"_blank">http://infocenter.arm.com/help/inde=
x.jsp?topic=3D/com.arm.doc.ddi0434b/CIHHDAIH.html</a><br>
<br>
&gt; Purpose<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 Provides the exception base address for exceptions that =
are not<br>
&gt; =C2=A0 =C2=A0 handled in monitor mode.<br>
&gt;<br>
&gt; Usage constraints<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 The VBAR is:<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 * only accessible in privileged modes<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 * only accessible in Secure state.<br>
<br>
I think this is necessary to move the exception vector from ROM to our<br>
own code. Does it work to read the VBAR register using the following<br>
instruction:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MRC p15, 0, &lt;Rd&gt;, c12, c0, 0 ; Read VBAR =
Register<br>
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
</font></span></blockquote></div><br>

--f46d042ef475c188fc04caa27bf2--


--===============4057022033485870753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4057022033485870753==--
