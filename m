Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXqSR-0005Ji-0k
 for barebox@lists.infradead.org; Fri, 25 May 2012 09:05:16 +0000
Received: by yhjj52 with SMTP id j52so454019yhj.36
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 02:05:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120524153119.6d724afc@eb-e6520>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 25 May 2012 11:04:52 +0200
Message-ID: <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1474128039010059055=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

--===============1474128039010059055==
Content-Type: multipart/alternative; boundary=14dae93403d77f5f5f04c0d8aaca

--14dae93403d77f5f5f04c0d8aaca
Content-Type: text/plain; charset=ISO-8859-1

Hi Eric

> > well NAND boot + nand rootfs works fine here (cpuimx25) and I assume
> > > NAND boot + sd rootfs would work as sd is properly detected during
> boot.
> > >
> > > Yep, I believe it's more a question of me setting the parameters
> correctly
> > upon boot. But without a proper low level init (which I don't have
> because
> > I do not really understand all the details of the low level code), there
> > are other factors which could inhibit the proper boot, as you mention
> below.
> >
> if your sd's partitions are detected by the kernel you must be able to
> boot a rootfs on it it's just a bootargs problem (and kernel
> configuration to have the right FS included).
>

That's my understanding too, however it does not work at the moment. But
what's really important is that I have NOR support when loading barebox as
first stage boot loader from SD card.


> > I suppose WEIM configuration is done in the low level part, isn't it?
> Where
> > would I find an appropriate example? I have been reading all the fsl
> > board's low_level codes, but have a hard time figuring out how to apply
> it
> > to my board.
> >
> > With regard to the IOMUX, I was under the impression that it does not
> > matter much, since after low level code run, the execution path is:
> >
> >         late_initcall()
> >         mem_initcall()
> >         device_initcall() --> add_cfi_flash_device()
> >         console_initcall() --> mxc_iomux_v3_setup_multiple_pads()
> >         core_initcall()
> >
> > So CFI/NOR detection happens before IOMUX setup, at least that's what I
> > have gathered for my board copying from various other examples in
> barebox.
> > What would the correct code execution path be from the architectural
> point
> > of view?
> >
> nothing prevents you from moving mxc_iomux_v3_setup_multiple_pads to
> device_initcall as done in
>
> http://git.pengutronix.de/?p=barebox.git;a=blob;f=arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c;h=1b8f618138023b88893a024ddc0c078b7b9f2325;hb=c48de4beee21c3a5573cec084123c33ae08f6f7a
>
> Thanks, I have done this now, looks much cleaner. Stil, I wonder about the
order of things when powering and booting up the mx25 in general.

        lowlevel -> AIPS -> MAX (MPR, SGPCR, MGPCR) -> M3IF -> MPLL clock
-> other clocks
        late_initcall -> fec_init
        mem_initcall -> imx25_mem_init
        device_initcall -> devices_init
        console_initcall -> console_init
        core_initcall -> core_setup


> for the weim setting you may need to do something similar to what is
> done on line 187 of :
>
> http://git.pengutronix.de/?p=barebox.git;a=blob;f=arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c;h=63e87c9551c440edab572f5252a503ba4d533161;hb=c48de4beee21c3a5573cec084123c33ae08f6f7a
>
>
Now that piece certainly was missing, but how the heck did you find out
those register values? Where did you get the information about writing to
chip select 0 and selecting:

CSCR0U: 0x00008F03
CSCR0L: 0xA0330D01
CSCR0A: 0x002208C0

I have patched mx25-regs.h accordingly and added an equivalent call using
the same register values:

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h
b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 73307c4..8225832 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -72,6 +72,7 @@
 #define CCM_LTR1 0x44
 #define CCM_LTR2 0x48
 #define CCM_LTR3 0x4c
+#define CCM_MCR 0x64

 #define PDR0_AUTO_MUX_DIV(x) (((x) & 0x7) << 9)
 #define PDR0_CCM_PER_AHB(x) (((x) & 0x7) << 12)
@@ -107,6 +108,22 @@
 #define CSCR_L(x)     (WEIM_BASE + 4 + (x) * 0x10)
 #define CSCR_A(x)     (WEIM_BASE + 8 + (x) * 0x10)

+/* Chip Select Registers */
+#define IMX_WEIM_BASE WEIM_BASE
+#define CSxU(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x00) /* Chip Select x
Upper Register    */
+#define CSxL(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x04) /* Chip Select x
Lower Register    */
+#define CSxA(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x08) /* Chip Select x
Addition Register */
+#define EIM  __REG(IMX_WEIM_BASE + 0x60) /* WEIM Configuration Register
  */
+
+#ifndef __ASSEMBLY__
+static inline void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned
lower, unsigned addional)
+{
+        CSxU(cs) = upper;
+        CSxL(cs) = lower;
+        CSxA(cs) = addional;
+}
+#endif /* __ASSEMBLY__ */
+
 /*
  * Definitions for the clocksource driver
  *

But it still does not work. What could be missing? How can I find out more
about which chip select I need? I'm practically married to the MX25-RM
documentation, but still, it's one heck of a large piece of documentation.
I found the following example (using cs2), but I am not sure this helps:

@; config WEIM to Async access with EDC, OEA, RWA, RWN, EBC, 16 bit port
and PSR WRITE WEIM_CSCR2U, 0x12020802

WRITE WEIM_CSCR2L, 0x80330d03

@ ; config Flash to WRAP 8 mode (by half word accesses) WRITE_H
(CS2_BASE_ADDR+0x2384), 0x60 @ ; offset = 0x11c2 << 1 for 16 bit port
WRITE_H (CS2_BASE_ADDR+0x2384), 0x03

WRITE_H (CS2_BASE_ADDR+0x0), 0xff @ ; Flash to read mode

@ ; config to WEIM Sync access with WRAP8, 16 bit port WRITE WEIM_CSCR2U,
0x13510802
WRITE WEIM_CSCR2L, 0x80330d03

Could it be that I am missing an iomux setting? Clock missing? I am fairly
certain that my NOR is at CS0, so the above example from the RM does not
help much, I suppose.

Best regards
Roberto

--14dae93403d77f5f5f04c0d8aaca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Eric<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv class=3D"im">&gt; &gt; well NAND boot + nand rootfs works fine here (cpu=
imx25) and I assume<br>


&gt; &gt; NAND boot + sd rootfs would work as sd is properly detected durin=
g boot.<br>
&gt; &gt;<br>
&gt; &gt; Yep, I believe it&#39;s more a question of me setting the paramet=
ers correctly<br>
&gt; upon boot. But without a proper low level init (which I don&#39;t have=
 because<br>
&gt; I do not really understand all the details of the low level code), the=
re<br>
&gt; are other factors which could inhibit the proper boot, as you mention =
below.<br>
&gt;<br>
</div>if your sd&#39;s partitions are detected by the kernel you must be ab=
le to<br>
boot a rootfs on it it&#39;s just a bootargs problem (and kernel<br>
configuration to have the right FS included).<br></blockquote><div><br></di=
v><div>That&#39;s my understanding too, however it does not work at the mom=
ent. But what&#39;s really important is that I have NOR support when loadin=
g barebox as first stage boot loader from SD card.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"im">&gt; I suppose WEIM configuration is done in the low leve=
l part, isn&#39;t it? Where<br>
&gt; would I find an appropriate example? I have been reading all the fsl<b=
r>
&gt; board&#39;s low_level codes, but have a hard time figuring out how to =
apply it<br>
&gt; to my board.<br>
&gt;<br>
&gt; With regard to the IOMUX, I was under the impression that it does not<=
br>
&gt; matter much, since after low level code run, the execution path is:<br=
>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 late_initcall()<br>
&gt; =A0 =A0 =A0 =A0 mem_initcall()<br>
&gt; =A0 =A0 =A0 =A0 device_initcall() --&gt; add_cfi_flash_device()<br>
&gt; =A0 =A0 =A0 =A0 console_initcall() --&gt; mxc_iomux_v3_setup_multiple_=
pads()<br>
&gt; =A0 =A0 =A0 =A0 core_initcall()<br>
&gt;<br>
&gt; So CFI/NOR detection happens before IOMUX setup, at least that&#39;s w=
hat I<br>
&gt; have gathered for my board copying from various other examples in bare=
box.<br>
&gt; What would the correct code execution path be from the architectural p=
oint<br>
&gt; of view?<br>
&gt;<br>
</div>nothing prevents you from moving mxc_iomux_v3_setup_multiple_pads to<=
br>
device_initcall as done in<br>
<a href=3D"http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm=
/boards/eukrea_cpuimx25/eukrea_cpuimx25.c;h=3D1b8f618138023b88893a024ddc0c0=
78b7b9f2325;hb=3Dc48de4beee21c3a5573cec084123c33ae08f6f7a" target=3D"_blank=
">http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm/boards/e=
ukrea_cpuimx25/eukrea_cpuimx25.c;h=3D1b8f618138023b88893a024ddc0c078b7b9f23=
25;hb=3Dc48de4beee21c3a5573cec084123c33ae08f6f7a</a><br>


<br></blockquote><div>Thanks, I have done this now, looks much cleaner. Sti=
l, I wonder about the order of things when powering and booting up the mx25=
 in general.</div><div><br></div><div>=A0 =A0 =A0 =A0 lowlevel -&gt; AIPS -=
&gt; MAX (MPR, SGPCR, MGPCR) -&gt; M3IF -&gt; MPLL clock -&gt; other clocks=
</div>

<div><div>=A0 =A0 =A0 =A0 late_initcall -&gt; fec_init</div><div>=A0 =A0 =
=A0 =A0 mem_initcall -&gt; imx25_mem_init</div><div>=A0 =A0 =A0 =A0 device_=
initcall -&gt; devices_init</div><div>=A0 =A0 =A0 =A0 console_initcall -&gt=
; console_init</div><div>=A0 =A0 =A0 =A0 core_initcall -&gt; core_setup</di=
v>

</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
for the weim setting you may need to do something similar to what is<br>
done on line 187 of :<br>
<a href=3D"http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm=
/boards/eukrea_cpuimx27/eukrea_cpuimx27.c;h=3D63e87c9551c440edab572f5252a50=
3ba4d533161;hb=3Dc48de4beee21c3a5573cec084123c33ae08f6f7a" target=3D"_blank=
">http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm/boards/e=
ukrea_cpuimx27/eukrea_cpuimx27.c;h=3D63e87c9551c440edab572f5252a503ba4d5331=
61;hb=3Dc48de4beee21c3a5573cec084123c33ae08f6f7a</a><br>

<font color=3D"#888888"><br></font></blockquote><div><br></div><div>Now tha=
t piece certainly was missing, but how the heck did you find out those regi=
ster values? Where did you get the information about writing to chip select=
 0 and selecting:</div>

<div><br></div><div>CSCR0U: 0x00008F03</div><div>CSCR0L: 0xA0330D01</div><d=
iv>CSCR0A: 0x002208C0</div><div><br></div><div>I have patched mx25-regs.h a=
ccordingly and added an equivalent call using the same register values:</di=
v>

<div><br></div><div>diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.=
h b/arch/arm/mach-imx/include/mach/imx25-regs.h</div><div>index 73307c4..82=
25832 100644</div><div>--- a/arch/arm/mach-imx/include/mach/imx25-regs.h</d=
iv>

<div>+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h</div><div>@@ -72,6 +=
72,7 @@</div><div>=A0#define CCM_LTR1<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>0x44</div><div>=A0#define CCM_LTR2<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>0x48</div>

<div>=A0#define CCM_LTR3<span class=3D"Apple-tab-span" style=3D"white-space=
:pre">	</span>0x4c</div><div>+#define CCM_MCR<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">		</span>0x64</div><div>=A0</div><div>=A0#define=
 PDR0_AUTO_MUX_DIV(x)<span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">	</span>(((x) &amp; 0x7) &lt;&lt; 9)</div>

<div>=A0#define PDR0_CCM_PER_AHB(x)<span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span>(((x) &amp; 0x7) &lt;&lt; 12)</div><div>@@ -107,6 =
+108,22 @@</div><div>=A0#define CSCR_L(x) =A0 =A0 (WEIM_BASE + 4 + (x) * 0x=
10)</div>

<div>=A0#define CSCR_A(x) =A0 =A0 (WEIM_BASE + 8 + (x) * 0x10)</div><div>=
=A0</div><div>+/* Chip Select Registers */</div><div>+#define IMX_WEIM_BASE=
 WEIM_BASE</div><div>+#define CSxU(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0=
x00) /* Chip Select x Upper Register =A0 =A0*/</div>

<div>+#define CSxL(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x04) /* Chip Sel=
ect x Lower Register =A0 =A0*/</div><div>+#define CSxA(x) __REG(IMX_WEIM_BA=
SE + (cs * 0x10) + 0x08) /* Chip Select x Addition Register */</div><div>+#=
define EIM =A0__REG(IMX_WEIM_BASE + 0x60) /* WEIM Configuration Register =
=A0 =A0 */</div>

<div>+</div><div>+#ifndef __ASSEMBLY__</div><div>+static inline void imx25_=
setup_weimcs(size_t cs, unsigned upper, unsigned lower, unsigned addional)<=
/div><div>+{</div><div>+ =A0 =A0 =A0 =A0CSxU(cs) =3D upper;</div><div>+ =A0=
 =A0 =A0 =A0CSxL(cs) =3D lower;</div>

<div>+ =A0 =A0 =A0 =A0CSxA(cs) =3D addional;</div><div>+}</div><div>+#endif=
 /* __ASSEMBLY__ */</div><div>+</div><div>=A0/*</div><div>=A0 * Definitions=
 for the clocksource driver</div><div>=A0 *</div><div><br></div><div>But it=
 still does not work. What could be missing? How can I find out more about =
which chip select I need? I&#39;m practically married to the MX25-RM docume=
ntation, but still, it&#39;s one heck of a large piece of documentation. I =
found the following example (using cs2), but I am not sure this helps:</div=
>

<div><br></div>







<p class=3D"p1">@; config WEIM to Async access with EDC, OEA, RWA, RWN, EBC=
, 16 bit port and PSR WRITE WEIM_CSCR2U, 0x12020802</p>
<p class=3D"p1">WRITE WEIM_CSCR2L, 0x80330d03</p>
<p class=3D"p1">@ ; config Flash to WRAP 8 mode (by half word accesses) WRI=
TE_H (CS2_BASE_ADDR+0x2384), 0x60<span class=3D"Apple-tab-span">	</span>@ ;=
 offset =3D 0x11c2 &lt;&lt; 1 for 16 bit port WRITE_H (CS2_BASE_ADDR+0x2384=
), 0x03</p>


<p class=3D"p1">WRITE_H (CS2_BASE_ADDR+0x0), 0xff<span class=3D"Apple-tab-s=
pan">	</span>@ ; Flash to read mode</p>
<p class=3D"p1">@ ; config to WEIM Sync access with WRAP8, 16 bit port WRIT=
E WEIM_CSCR2U, 0x13510802</p>
<div>WRITE WEIM_CSCR2L, 0x80330d03</div><div><br></div><div>Could it be tha=
t I am missing an iomux setting? Clock missing? I am fairly certain that my=
 NOR is at CS0, so the above example from the RM does not help much, I supp=
ose.</div>

<div><br></div><div>Best regards</div><div>Roberto=A0</div></div>

--14dae93403d77f5f5f04c0d8aaca--


--===============1474128039010059055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1474128039010059055==--
