Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THOQv-0007R7-Rs
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 00:27:59 +0000
Received: by pbcxa7 with SMTP id xa7so3258780pbc.36
 for <barebox@lists.infradead.org>; Thu, 27 Sep 2012 17:27:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120926074516.GJ1322@pengutronix.de>
References: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
 <1348613994-1793-5-git-send-email-vicencb@gmail.com>
 <20120926074516.GJ1322@pengutronix.de>
Date: Fri, 28 Sep 2012 02:27:54 +0200
Message-ID: <CAAMcf8CnnKG9WDk8PxsCjwcyVRTE11P1THeYtomAcfEawt0Jxg@mail.gmail.com>
From: vj <vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3842770547051922069=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/7] Add USB booting capabilities to OMAP
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============3842770547051922069==
Content-Type: multipart/alternative; boundary=047d7b10caf37443cb04cab82008

--047d7b10caf37443cb04cab82008
Content-Type: text/plain; charset=UTF-8

Hi Sascha,
 I've been playing with passing some data from first to second stage using
Jan's patches.
It worked fine, but in my case I want to store this data on a global
variable, which is cleared as it's in the BSS.
There is a clean workarround to this issue?

Thanks,
  Vicente.

On Wed, Sep 26, 2012 at 9:45 AM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> On Wed, Sep 26, 2012 at 12:59:51AM +0200, vj wrote:
> > ---
> >  arch/arm/cpu/cpu.c                              |   1 +
> >  arch/arm/lib/barebox.lds.S                      |  10 +
> >  arch/arm/mach-omap/Kconfig                      |  21 +
> >  arch/arm/mach-omap/Makefile                     |   1 +
> >  arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 146 +++++
> >  arch/arm/mach-omap/omap4_generic.c              |   2 +
> >  arch/arm/mach-omap/omap4_rom_usb.c              | 189 ++++++
> >  arch/arm/mach-omap/xload.c                      |  26 +
> >  scripts/.gitignore                              |   1 +
> >  scripts/Makefile                                |   3 +
> >  scripts/usbboot.c                               | 797
> ++++++++++++++++++++++++
> >  11 files changed, 1197 insertions(+)
> >  create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
> >  create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
> >  create mode 100644 scripts/usbboot.c
> >
> > diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
> > index 71ef8c0..05343de 100644
> > --- a/arch/arm/cpu/cpu.c
> > +++ b/arch/arm/cpu/cpu.c
> > @@ -89,6 +89,7 @@ void arch_shutdown(void)
> >               : "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc",
> "memory"
> >       );
> >  #endif
> > +     __asm__ __volatile__ ("cpsid i\n");
> >  }
> >
> >  #ifdef CONFIG_THUMB2_BAREBOX
> > diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
> > index a69013f..ff7b63d 100644
> > --- a/arch/arm/lib/barebox.lds.S
> > +++ b/arch/arm/lib/barebox.lds.S
> > @@ -97,6 +97,16 @@ SECTIONS
> >       __bss_start = .;
> >       .bss : { *(.bss*) }
> >       __bss_stop = .;
> > +#ifdef CONFIG_SHARE_USB_HANDLE
> > +    /*
> > +     * Reserve space for the USB handle
> > +     */
> > +     . = CONFIG_USB_HANDLE_HANDOVER;
> > +     . = ALIGN(4);
> > +     __usb_handle = .;
> > +     /* . += sizeof(struct usb); */
> > +     . += 84;
> > +#endif
>
> If I understand correctly the first stage loader puts some data here
> where a second stage barebox (configured with the same value for
> CONFIG_USB_HANDLE_HANDOVER) will pick it up.
>
> This seems to be a bit fragile. Fortunately Jan has posted a series
> that gives the control of the reset vector to the boards, which means
> that both stages do not have to agree on an addres, but instead a
> pointer can be passed from the first to the second stage.
>
> > +int usb_open(void)
>
> So this uses the OMAP4 ROM to do USB communication, right? The functions
> should have a omap_rom_* prefix then, otherwise it's not clear for a
> reader which context these functions have.
>
> The calling of the ROM code btw explains why the setting of VBAR breaks
> USB boot. The ROM probably uses the vectors.
>
> > +
> > +     n = rom_get_per_driver(&pusb->io, boot->device_type);
> > +     if (n)
> > +             return n;
> > +
> > +     pusb->dread.xfer_mode = boot->xfer_mode;
> > +     pusb->dread.options = boot->options;
> > +     pusb->dread.device_type = boot->device_type;
> > +
> > +     pusb->dwrite.xfer_mode = boot->xfer_mode;
> > +     pusb->dwrite.options = boot->options;
> > +     pusb->dwrite.device_type = boot->device_type;
> > +#else
> > +#ifdef CONFIG_MMU
> > +#error USB communications not working under MMU
>
> You can add the following to CONFIG_OMAP4_USB_BOOT instead:
>
>         depends on !MMU
>
> So that an invalid config is not allowed in the first place.
>
>
> > diff --git a/scripts/usbboot.c b/scripts/usbboot.c
>
> This should also be named omap4-usbboot.c, or maybe, if the works on
> other OMAPs, just omap-usboot.c
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--047d7b10caf37443cb04cab82008
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Sascha,<br>=C2=A0I&#39;ve been playing with passing some data from first=
 to second stage using Jan&#39;s patches.<br>It worked fine, but in my case=
 I want to store this data on a global variable, which is cleared as it&#39=
;s in the BSS.<br>
There is a clean workarround to this issue?<br><br>Thanks,<br>=C2=A0 Vicent=
e.<br><br><div class=3D"gmail_quote">On Wed, Sep 26, 2012 at 9:45 AM, Sasch=
a Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de" tar=
get=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On W=
ed, Sep 26, 2012 at 12:59:51AM +0200, vj wrote:<br>
&gt; ---<br>
&gt; =C2=A0arch/arm/cpu/cpu.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 1 +<br>
&gt; =C2=A0arch/arm/lib/barebox.lds.S =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A010 +<br>
&gt; =C2=A0arch/arm/mach-omap/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A021 +<br>
&gt; =C2=A0arch/arm/mach-omap/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 1 +<br>
&gt; =C2=A0arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 146 +++++<br>
&gt; =C2=A0arch/arm/mach-omap/omap4_generic.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| =C2=A0 2 +<br>
&gt; =C2=A0arch/arm/mach-omap/omap4_rom_usb.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| 189 ++++++<br>
&gt; =C2=A0arch/arm/mach-omap/xload.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A026 +<br>
&gt; =C2=A0scripts/.gitignore =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 1 +<br>
&gt; =C2=A0scripts/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
3 +<br>
&gt; =C2=A0scripts/usbboot.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 797 +++++++++=
+++++++++++++++<br>
&gt; =C2=A011 files changed, 1197 insertions(+)<br>
&gt; =C2=A0create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb=
.h<br>
&gt; =C2=A0create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c<br>
&gt; =C2=A0create mode 100644 scripts/usbboot.c<br>
&gt;<br>
&gt; diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c<br>
&gt; index 71ef8c0..05343de 100644<br>
&gt; --- a/arch/arm/cpu/cpu.c<br>
&gt; +++ b/arch/arm/cpu/cpu.c<br>
&gt; @@ -89,6 +89,7 @@ void arch_shutdown(void)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : &quot;r0&quot;, &qu=
ot;r1&quot;, &quot;r2&quot;, &quot;r3&quot;, &quot;r6&quot;, &quot;r10&quot=
;, &quot;r12&quot;, &quot;lr&quot;, &quot;cc&quot;, &quot;memory&quot;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 );<br>
&gt; =C2=A0#endif<br>
&gt; + =C2=A0 =C2=A0 __asm__ __volatile__ (&quot;cpsid i\n&quot;);<br>
&gt; =C2=A0}<br>
&gt;<br>
&gt; =C2=A0#ifdef CONFIG_THUMB2_BAREBOX<br>
&gt; diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S<b=
r>
&gt; index a69013f..ff7b63d 100644<br>
&gt; --- a/arch/arm/lib/barebox.lds.S<br>
&gt; +++ b/arch/arm/lib/barebox.lds.S<br>
&gt; @@ -97,6 +97,16 @@ SECTIONS<br>
&gt; =C2=A0 =C2=A0 =C2=A0 __bss_start =3D .;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 .bss : { *(.bss*) }<br>
&gt; =C2=A0 =C2=A0 =C2=A0 __bss_stop =3D .;<br>
&gt; +#ifdef CONFIG_SHARE_USB_HANDLE<br>
&gt; + =C2=A0 =C2=A0/*<br>
&gt; + =C2=A0 =C2=A0 * Reserve space for the USB handle<br>
&gt; + =C2=A0 =C2=A0 */<br>
&gt; + =C2=A0 =C2=A0 . =3D CONFIG_USB_HANDLE_HANDOVER;<br>
&gt; + =C2=A0 =C2=A0 . =3D ALIGN(4);<br>
&gt; + =C2=A0 =C2=A0 __usb_handle =3D .;<br>
&gt; + =C2=A0 =C2=A0 /* . +=3D sizeof(struct usb); */<br>
&gt; + =C2=A0 =C2=A0 . +=3D 84;<br>
&gt; +#endif<br>
<br>
</div></div>If I understand correctly the first stage loader puts some data=
 here<br>
where a second stage barebox (configured with the same value for<br>
CONFIG_USB_HANDLE_HANDOVER) will pick it up.<br>
<br>
This seems to be a bit fragile. Fortunately Jan has posted a series<br>
that gives the control of the reset vector to the boards, which means<br>
that both stages do not have to agree on an addres, but instead a<br>
pointer can be passed from the first to the second stage.<br>
<br>
&gt; +int usb_open(void)<br>
<br>
So this uses the OMAP4 ROM to do USB communication, right? The functions<br=
>
should have a omap_rom_* prefix then, otherwise it&#39;s not clear for a<br=
>
reader which context these functions have.<br>
<br>
The calling of the ROM code btw explains why the setting of VBAR breaks<br>
USB boot. The ROM probably uses the vectors.<br>
<div class=3D"im"><br>
&gt; +<br>
&gt; + =C2=A0 =C2=A0 n =3D rom_get_per_driver(&amp;pusb-&gt;io, boot-&gt;de=
vice_type);<br>
&gt; + =C2=A0 =C2=A0 if (n)<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return n;<br>
&gt; +<br>
&gt; + =C2=A0 =C2=A0 pusb-&gt;dread.xfer_mode =3D boot-&gt;xfer_mode;<br>
&gt; + =C2=A0 =C2=A0 pusb-&gt;dread.options =3D boot-&gt;options;<br>
&gt; + =C2=A0 =C2=A0 pusb-&gt;dread.device_type =3D boot-&gt;device_type;<b=
r>
&gt; +<br>
&gt; + =C2=A0 =C2=A0 pusb-&gt;dwrite.xfer_mode =3D boot-&gt;xfer_mode;<br>
&gt; + =C2=A0 =C2=A0 pusb-&gt;dwrite.options =3D boot-&gt;options;<br>
&gt; + =C2=A0 =C2=A0 pusb-&gt;dwrite.device_type =3D boot-&gt;device_type;<=
br>
&gt; +#else<br>
&gt; +#ifdef CONFIG_MMU<br>
&gt; +#error USB communications not working under MMU<br>
<br>
</div>You can add the following to CONFIG_OMAP4_USB_BOOT instead:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 depends on !MMU<br>
<br>
So that an invalid config is not allowed in the first place.<br>
<br>
<br>
&gt; diff --git a/scripts/usbboot.c b/scripts/usbboot.c<br>
<br>
This should also be named omap4-usbboot.c, or maybe, if the works on<br>
other OMAPs, just omap-usboot.c<br>
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

--047d7b10caf37443cb04cab82008--


--===============3842770547051922069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3842770547051922069==--
