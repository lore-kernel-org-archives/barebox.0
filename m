Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-f49.google.com ([209.85.210.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TIL2P-0003kr-VZ
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 15:02:34 +0000
Received: by dajq27 with SMTP id q27so1304359daj.36
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 08:02:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120930140225.GR26553@game.jcrosoft.org>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
 <CAA4bVAG-yzYGNb4mNGTT=hcz1EwAcgDZyKVWnZ-aM8AVaN3wmg@mail.gmail.com>
 <20120930140225.GR26553@game.jcrosoft.org>
Date: Sun, 30 Sep 2012 17:02:32 +0200
Message-ID: <CAAMcf8Aa00YqVG-87F1Lk+_oCHwrRCeCTKE7G9g_QDK1C2tMcw@mail.gmail.com>
From: vj <vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2396665554773935495=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

--===============2396665554773935495==
Content-Type: multipart/alternative; boundary=e89a8fb20834175a4704caec94f0

--e89a8fb20834175a4704caec94f0
Content-Type: text/plain; charset=UTF-8

In fact the interrupts get enabled at omap4_usbboot_open, it's required for
usb transfers.
For this reason the interrupts are disabled at barebox exit.

On Sun, Sep 30, 2012 at 4:02 PM, Jean-Christophe PLAGNIOL-VILLARD <
plagnioj@jcrosoft.com> wrote:

> On 16:14 Sun 30 Sep     , Antony Pavlov wrote:
> > On 30 September 2012 06:50, vj <vicencb@gmail.com> wrote:
> > > ---
> > >  arch/arm/cpu/cpu.c                              |   1 +
> > >  arch/arm/mach-omap/Kconfig                      |   7 +
> > >  arch/arm/mach-omap/Makefile                     |   1 +
> > >  arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 142 ++++++++
> > >  arch/arm/mach-omap/omap4_generic.c              |  13 +
> > >  arch/arm/mach-omap/omap4_rom_usb.c              | 186 +++++++++++
> > >  scripts/.gitignore                              |   1 +
> > >  scripts/Makefile                                |   4 +
> > >  scripts/omap4_usbboot.c                         | 416
> ++++++++++++++++++++++++
> > >  scripts/usb.h                                   |  61 ++++
> > >  scripts/usb_linux.c                             | 397
> ++++++++++++++++++++++
> > >  11 files changed, 1229 insertions(+)
> > >  create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
> > >  create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
> > >  create mode 100644 scripts/omap4_usbboot.c
> > >  create mode 100644 scripts/usb.h
> > >  create mode 100644 scripts/usb_linux.c
> > >
> > > diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
> > > index 71ef8c0..05343de 100644
> > > --- a/arch/arm/cpu/cpu.c
> > > +++ b/arch/arm/cpu/cpu.c
> > > @@ -89,6 +89,7 @@ void arch_shutdown(void)
> > >                 : "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr",
> "cc", "memory"
> > >         );
> > >  #endif
> > > +       __asm__ __volatile__ ("cpsid i\n");
> ???
>
> why do you add this?
>
> we never enable the interrupt
>
> and this is generic not omap4 must be in a seperate patch
>
>

--e89a8fb20834175a4704caec94f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

In fact the interrupts get enabled at omap4_usbboot_open, it&#39;s required=
 for usb transfers.<br>For this reason the interrupts are disabled at bareb=
ox exit.<br><br><div class=3D"gmail_quote">On Sun, Sep 30, 2012 at 4:02 PM,=
 Jean-Christophe PLAGNIOL-VILLARD <span dir=3D"ltr">&lt;<a href=3D"mailto:p=
lagnioj@jcrosoft.com" target=3D"_blank">plagnioj@jcrosoft.com</a>&gt;</span=
> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 1=
6:14 Sun 30 Sep =C2=A0 =C2=A0 , Antony Pavlov wrote:<br>
&gt; On 30 September 2012 06:50, vj &lt;<a href=3D"mailto:vicencb@gmail.com=
">vicencb@gmail.com</a>&gt; wrote:<br>
&gt; &gt; ---<br>
&gt; &gt; =C2=A0arch/arm/cpu/cpu.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
1 +<br>
&gt; &gt; =C2=A0arch/arm/mach-omap/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 7 +<br>
&gt; &gt; =C2=A0arch/arm/mach-omap/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 1 +<br>
&gt; &gt; =C2=A0arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 142 +++++=
+++<br>
&gt; &gt; =C2=A0arch/arm/mach-omap/omap4_generic.c =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A013 +<br>
&gt; &gt; =C2=A0arch/arm/mach-omap/omap4_rom_usb.c =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 186 +++++++++++<br>
&gt; &gt; =C2=A0scripts/.gitignore =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
1 +<br>
&gt; &gt; =C2=A0scripts/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=
=A0 4 +<br>
&gt; &gt; =C2=A0scripts/omap4_usbboot.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 416 ++++++++++++++++++++=
++++<br>
&gt; &gt; =C2=A0scripts/usb.h =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
 =C2=A061 ++++<br>
&gt; &gt; =C2=A0scripts/usb_linux.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 397 +++++++++=
+++++++++++++<br>
&gt; &gt; =C2=A011 files changed, 1229 insertions(+)<br>
&gt; &gt; =C2=A0create mode 100644 arch/arm/mach-omap/include/mach/omap4_ro=
m_usb.h<br>
&gt; &gt; =C2=A0create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c<br>
&gt; &gt; =C2=A0create mode 100644 scripts/omap4_usbboot.c<br>
&gt; &gt; =C2=A0create mode 100644 scripts/usb.h<br>
&gt; &gt; =C2=A0create mode 100644 scripts/usb_linux.c<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c<br>
&gt; &gt; index 71ef8c0..05343de 100644<br>
&gt; &gt; --- a/arch/arm/cpu/cpu.c<br>
&gt; &gt; +++ b/arch/arm/cpu/cpu.c<br>
&gt; &gt; @@ -89,6 +89,7 @@ void arch_shutdown(void)<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : &quot;r=
0&quot;, &quot;r1&quot;, &quot;r2&quot;, &quot;r3&quot;, &quot;r6&quot;, &q=
uot;r10&quot;, &quot;r12&quot;, &quot;lr&quot;, &quot;cc&quot;, &quot;memor=
y&quot;<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 );<br>
&gt; &gt; =C2=A0#endif<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 __asm__ __volatile__ (&quot;cpsid i\n&quot=
;);<br>
</div></div>???<br>
<br>
why do you add this?<br>
<br>
we never enable the interrupt<br>
<br>
and this is generic not omap4 must be in a seperate patch<br>
<br>
</blockquote></div><br>

--e89a8fb20834175a4704caec94f0--


--===============2396665554773935495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2396665554773935495==--
