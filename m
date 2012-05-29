Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f177.google.com ([209.85.160.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZINj-0000Zy-FM
 for barebox@lists.infradead.org; Tue, 29 May 2012 09:06:24 +0000
Received: by ghbf11 with SMTP id f11so1810544ghb.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 02:06:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120525120858.77dd6e7a@eb-e6520>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 11:06:00 +0200
Message-ID: <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4607278888882466718=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

--===============4607278888882466718==
Content-Type: multipart/alternative; boundary=14dae9341241e5eebe04c1292545

--14dae9341241e5eebe04c1292545
Content-Type: text/plain; charset=ISO-8859-1

Hi Eric

> >
> http://git.pengutronix.de/?p=barebox.git;a=blob;f=arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c;h=63e87c9551c440edab572f5252a503ba4d533161;hb=c48de4beee21c3a5573cec084123c33ae08f6f7a
> > >
> > >
> > Now that piece certainly was missing, but how the heck did you find out
> > those register values? Where did you get the information about writing to
> > chip select 0 and selecting:
> >
> > CSCR0U: 0x00008F03
> > CSCR0L: 0xA0330D01
> > CSCR0A: 0x002208C0
> >
> you need the reference manual of the i.MX25 to know the meaning of
> these registers and the datasheet of your flash to know it's timings
> then you can calculate the value to put in the registers.
>
>
I have found them in an old uboot tree a previous person patched to have
working support for NOR on boot. The values are:

        { .ptr_type = 4, .addr = 0xB8002000, .val = 0x0000D003, },
        { .ptr_type = 4, .addr = 0xB8002004, .val = 0x00330D01, },
        { .ptr_type = 4, .addr = 0xB8002008, .val = 0x00220800, },

Still it does not work at all, it does not display anything upon boot. How
could I debug this? I have adapted the DCD header (not needed in my case)
according to what the old uboot patches did, I have also put this into my
lowlevel_init (which I have studied extensively over the weekend and I
start understanding much better):

/* Check 24.3.3.1 and 24.5.4.1.1 */
static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
uint32_t esdcfg)
{
uint32_t esdctlreg = ESDCTL0;
uint32_t esdcfgreg = ESDCFG0;

 if (base == 0x90000000) {
esdctlreg += 8;
esdcfgreg += 8;
 }

esdctl |= ESDCTL0_SDE;

writel(esdcfg, esdcfgreg);
 writel(esdctl | ESDCTL0_SMODE_PRECHARGE, esdctlreg);
writel(0, base + 1024);
 writel(esdctl | ESDCTL0_SMODE_AUTO_REFRESH, esdctlreg);
readb(base);
readb(base);
 writel(esdctl | ESDCTL0_SMODE_LOAD_MODE, esdctlreg);
writeb(0, base + 0x33);
 writel(esdctl, esdctlreg);
}

void __bare_init __naked board_init_lowlevel(void)
{
uint32_t r;
#ifdef CONFIG_NAND_IMX_BOOT
unsigned int *trg, *src;
#endif

        /* restart the MPLL and wait until it's stable */
        writel(readl(IMX_CCM_BASE + CCM_CCTL) | (1 << 27),
                                                IMX_CCM_BASE + CCM_CCTL);
        while (readl(IMX_CCM_BASE + CCM_CCTL) & (1 << 27)) {};

        /* Configure dividers and ARM clock source
         *      ARM @ 400 MHz
         *      AHB @ 133 MHz
         */
writel(0x20034000, IMX_CCM_BASE + CCM_CCTL);

/* Set up 16bit NOR flash on WEIM CS0 */
writel(0xB8002000, 0x0000D003);
 writel(0xB8002004, 0x00330D01);
writel(0xB8002008, 0x00220800);

 /* AIPS setup - Only setup MPROTx registers. The PACR default values are
good.
 * Set all MPROTx to be non-bufferable, trusted for R/W,
 * not forced to user-mode.
 */
writel(0x77777777, 0x43f00000);
 writel(0x77777777, 0x43f00004);
writel(0x77777777, 0x53f00000);
writel(0x77777777, 0x53f00004);

/* MAX (Multi-Layer AHB Crossbar Switch) setup
 * MPR - priority for MX25 is (SDHC2/SDMA)>USBOTG>RTIC>IAHB>DAHB
 */
writel(0x00043210, 0x43f04000);
writel(0x00043210, 0x43f04100);
 writel(0x00043210, 0x43f04200);
writel(0x00043210, 0x43f04300);
writel(0x00043210, 0x43f04400);
 /* SGPCR - always park on last master */
writel(0x10, 0x43f04010);
writel(0x10, 0x43f04110);
 writel(0x10, 0x43f04210);
writel(0x10, 0x43f04310);
writel(0x10, 0x43f04410);
 /* MGPCR - restore default values */
writel(0x0, 0x43f04800);
writel(0x0, 0x43f04900);
 writel(0x0, 0x43f04a00);
writel(0x0, 0x43f04b00);
writel(0x0, 0x43f04c00);

/* Configure M3IF registers
 * M3IF Control Register (M3IFCTL) for MX25
 * MRRP[0] = LCDC           on priority list (1 << 0)  = 0x00000001
 * MRRP[1] = MAX1       not on priority list (0 << 1)  = 0x00000000
 * MRRP[2] = MAX0       not on priority list (0 << 2)  = 0x00000000
 * MRRP[3] = USB HOST   not on priority list (0 << 3)  = 0x00000000
 * MRRP[4] = SDMA       not on priority list (0 << 4)  = 0x00000000
 * MRRP[5] = SD/ATA/FEC not on priority list (0 << 5)  = 0x00000000
 * MRRP[6] = SCMFBC     not on priority list (0 << 6)  = 0x00000000
 * MRRP[7] = CSI        not on priority list (0 << 7)  = 0x00000000
 *                                                       ----------
 *                                                       0x00000001
 */
writel(0x1, 0xb8003000);

/* enable all the clocks */
 /*
writel(0x1fffffff, IMX_CCM_BASE + CCM_CGCR0);
writel(0xffffffff, IMX_CCM_BASE + CCM_CGCR1);
 writel(0x000fdfff, IMX_CCM_BASE + CCM_CGCR2);
*/

/* Set DDR2 and NFC group driver voltages */
 writel(0x1000, IMX_IOMUXC_BASE + 0x454);
writel(0x2000, IMX_IOMUXC_BASE + 0x448);

/* Skip SDRAM initialization if we run from RAM */
r = get_pc();
 if (r > 0x80000000 && r < 0x90000000)
board_init_lowlevel_return();

writel(ESDMISC_RST, ESDMISC);

while (!(readl(ESDMISC) & (1 << 31)));

#define ESDCTLVAL (ESDCTL0_ROW13 | ESDCTL0_COL9 | ESDCTL0_DSIZ_15_0 | \
 ESDCTL0_REF4 | ESDCTL0_PWDT_PRECHARGE_PWDN | ESDCTL0_BL)
#define ESDCFGVAL (ESDCFGx_tRP_3 | ESDCFGx_tMRD_2 | ESDCFGx_tRAS_6 | \
 ESDCFGx_tRRD_2 | ESDCFGx_tCAS_3 | ESDCFGx_tRCD_3 | \
 ESDCFGx_tRC_9)

setup_sdram(0x80000000, ESDCTLVAL, ESDCFGVAL);
setup_sdram(0x90000000, ESDCTLVAL, ESDCFGVAL);

board_init_lowlevel_return();
}

Why can't I printf() from low_level?

I have also tried to what you did for your eukrea_cpuimx27.c:

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h
b/arch/arm/mach-imx/include/mach/imx25-reg
index 73307c4..8225832 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -72,6 +72,7 @@
 #define CCM_LTR1       0x44
 #define CCM_LTR2       0x48
 #define CCM_LTR3       0x4c
+#define CCM_MCR                0x64

 #define PDR0_AUTO_MUX_DIV(x)   (((x) & 0x7) << 9)
 #define PDR0_CCM_PER_AHB(x)    (((x) & 0x7) << 12)
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
lower, unsigned addional
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

No matter what I do, it just does not work.

Regards
Roberto

--14dae9341241e5eebe04c1292545
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Eric<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv class=3D"im">&gt; &gt; <a href=3D"http://git.pengutronix.de/?p=3Dbarebox=
.git;a=3Dblob;f=3Darch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c;h=3D63e=
87c9551c440edab572f5252a503ba4d533161;hb=3Dc48de4beee21c3a5573cec084123c33a=
e08f6f7a" target=3D"_blank">http://git.pengutronix.de/?p=3Dbarebox.git;a=3D=
blob;f=3Darch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c;h=3D63e87c9551c4=
40edab572f5252a503ba4d533161;hb=3Dc48de4beee21c3a5573cec084123c33ae08f6f7a<=
/a><br>


&gt; &gt;<br>
&gt; &gt;<br>
&gt; Now that piece certainly was missing, but how the heck did you find ou=
t<br>
&gt; those register values? Where did you get the information about writing=
 to<br>
&gt; chip select 0 and selecting:<br>
&gt;<br>
&gt; CSCR0U: 0x00008F03<br>
&gt; CSCR0L: 0xA0330D01<br>
&gt; CSCR0A: 0x002208C0<br>
&gt;<br>
</div>you need the reference manual of the i.MX25 to know the meaning of<br=
>
these registers and the datasheet of your flash to know it&#39;s timings<br=
>
then you can calculate the value to put in the registers.<br><font color=3D=
"#888888"><br></font></blockquote><div><br></div><div>I have found them in =
an old uboot tree a previous person patched to have working support for NOR=
 on boot. The values are:</div>

<div><br></div><div><div>=A0 =A0 =A0 =A0 { .ptr_type =3D 4, .addr =3D 0xB80=
02000, .val =3D 0x0000D003, },</div><div>=A0 =A0 =A0 =A0 { .ptr_type =3D 4,=
 .addr =3D 0xB8002004, .val =3D 0x00330D01, },</div><div>=A0 =A0 =A0 =A0 { =
.ptr_type =3D 4, .addr =3D 0xB8002008, .val =3D 0x00220800, },</div>

</div><div><br></div><div>Still it does not work at all, it does not displa=
y anything upon boot. How could I debug this? I have adapted the DCD header=
 (not needed in my case) according to what the old uboot patches did, I hav=
e also put this into my lowlevel_init (which I have studied extensively ove=
r the weekend and I start understanding much better):</div>

<div><br></div><div><div>/* Check 24.3.3.1 and 24.5.4.1.1 */</div><div>stat=
ic inline void __bare_init =A0setup_sdram(uint32_t base, uint32_t esdctl,</=
div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>=
uint32_t esdcfg)</div>

<div>{</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>uint32_t esdctlreg =3D ESDCTL0;</div><div><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">	</span>uint32_t esdcfgreg =3D ESDCFG0;</div=
><div><br>

</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>if (base =3D=3D 0x90000000) {</div><div><span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">		</span>esdctlreg +=3D 8;</div><div><span class=3D"=
Apple-tab-span" style=3D"white-space:pre">		</span>esdcfgreg +=3D 8;</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>}</di=
v><div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:p=
re">	</span>esdctl |=3D ESDCTL0_SDE;</div><div><br></div><div><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(esdcfg, esdcfg=
reg);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(esdctl | ESDCTL0_SMODE_PRECHARGE, esdctlreg);</div><div><span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>writel(0, base + 1024);</di=
v><div>

<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(esd=
ctl | ESDCTL0_SMODE_AUTO_REFRESH, esdctlreg);</div><div><span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>readb(base);</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>readb(base);</di=
v>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(esdctl | ESDCTL0_SMODE_LOAD_MODE, esdctlreg);</div><div><span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>writeb(0, base + 0x33);</di=
v><div>

<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(esd=
ctl, esdctlreg);</div><div>}</div><div><br></div><div>void __bare_init __na=
ked board_init_lowlevel(void)</div><div>{</div><div><span class=3D"Apple-ta=
b-span" style=3D"white-space:pre">	</span>uint32_t r;</div>

<div>#ifdef CONFIG_NAND_IMX_BOOT</div><div><span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>unsigned int *trg, *src;</div><div>#endif<=
/div><div><br></div><div>=A0 =A0 =A0 =A0 /* restart the MPLL and wait until=
 it&#39;s stable */</div>

<div>=A0 =A0 =A0 =A0 writel(readl(IMX_CCM_BASE + CCM_CCTL) | (1 &lt;&lt; 27=
),</div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IMX_CCM_BASE + CCM_CCTL);</div><div>=A0=
 =A0 =A0 =A0 while (readl(IMX_CCM_BASE + CCM_CCTL) &amp; (1 &lt;&lt; 27)) {=
};</div>

<div><br></div><div>=A0 =A0 =A0 =A0 /* Configure dividers and ARM clock sou=
rce</div><div>=A0 =A0 =A0 =A0 =A0* =A0 =A0 =A0ARM @ 400 MHz</div><div>=A0 =
=A0 =A0 =A0 =A0* =A0 =A0 =A0AHB @ 133 MHz</div><div>=A0 =A0 =A0 =A0 =A0*/</=
div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>w=
ritel(0x20034000, IMX_CCM_BASE + CCM_CCTL);</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>/* Set up 16bit NOR flash on WEIM CS0 */</div><div><span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0xB8002000, 0x000=
0D003);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(0xB8002004, 0x00330D01);</div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>writel(0xB8002008, 0x00220800);</div><div><br>=
</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* AI=
PS setup - Only setup MPROTx registers. The PACR default values are good.</=
div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =
* Set all MPROTx to be non-bufferable, trusted for R/W,</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * no=
t forced to user-mode.</div><div><span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre">	</span> */</div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>writel(0x77777777, 0x43f00000);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(0x77777777, 0x43f00004);</div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>writel(0x77777777, 0x53f00000);</div><div><spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x77777=
777, 0x53f00004);</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>/* MAX (Multi-Layer AHB Crossbar Switch) setup</div><div><span cl=
ass=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * MPR - priority =
for MX25 is (SDHC2/SDMA)&gt;USBOTG&gt;RTIC&gt;IAHB&gt;DAHB</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> */</=
div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>w=
ritel(0x00043210, 0x43f04000);</div><div><span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">	</span>writel(0x00043210, 0x43f04100);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(0x00043210, 0x43f04200);</div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>writel(0x00043210, 0x43f04300);</div><div><spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x00043=
210, 0x43f04400);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* SG=
PCR - always park on last master */</div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">	</span>writel(0x10, 0x43f04010);</div><div><sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x10, =
0x43f04110);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(0x10, 0x43f04210);</div><div><span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span>writel(0x10, 0x43f04310);</div><div><span class=3D"App=
le-tab-span" style=3D"white-space:pre">	</span>writel(0x10, 0x43f04410);</d=
iv>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* MG=
PCR - restore default values */</div><div><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">	</span>writel(0x0, 0x43f04800);</div><div><span cl=
ass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x0, 0x43f0=
4900);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(0x0, 0x43f04a00);</div><div><span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>writel(0x0, 0x43f04b00);</div><div><span class=3D"Apple=
-tab-span" style=3D"white-space:pre">	</span>writel(0x0, 0x43f04c00);</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>/* Configure M3IF registers</div><div><span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span> * M3IF Control Register (M3IFCTL) fo=
r MX25</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * MR=
RP[0] =3D LCDC =A0 =A0 =A0 =A0 =A0 on priority list (1 &lt;&lt; 0) =A0=3D 0=
x00000001</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span> * MRRP[1] =3D MAX1 =A0 =A0 =A0 not on priority list (0 &lt;&lt; =
1) =A0=3D 0x00000000</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * MR=
RP[2] =3D MAX0 =A0 =A0 =A0 not on priority list (0 &lt;&lt; 2) =A0=3D 0x000=
00000</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	<=
/span> * MRRP[3] =3D USB HOST =A0 not on priority list (0 &lt;&lt; 3) =A0=
=3D 0x00000000</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * MR=
RP[4] =3D SDMA =A0 =A0 =A0 not on priority list (0 &lt;&lt; 4) =A0=3D 0x000=
00000</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	<=
/span> * MRRP[5] =3D SD/ATA/FEC not on priority list (0 &lt;&lt; 5) =A0=3D =
0x00000000</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * MR=
RP[6] =3D SCMFBC =A0 =A0 not on priority list (0 &lt;&lt; 6) =A0=3D 0x00000=
000</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</s=
pan> * MRRP[7] =3D CSI =A0 =A0 =A0 =A0not on priority list (0 &lt;&lt; 7) =
=A0=3D 0x00000000</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ----------</div><div><span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span> * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 0x00000001</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> */</=
div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>w=
ritel(0x1, 0xb8003000);</div><div><br></div><div><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">	</span>/* enable all the clocks */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/*</d=
iv><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>wr=
itel(0x1fffffff, IMX_CCM_BASE + CCM_CGCR0);</div><div><span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span>writel(0xffffffff, IMX_CCM_BASE=
 + CCM_CGCR1);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(0x000fdfff, IMX_CCM_BASE + CCM_CGCR2);</div><div><span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>*/</div><div><br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* Set DDR2 and =
NFC group driver voltages */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>write=
l(0x1000, IMX_IOMUXC_BASE + 0x454);</div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">	</span>writel(0x2000, IMX_IOMUXC_BASE + 0x448)=
;</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>/* Skip SDRAM initialization if we run from RAM */</div><div><spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>r =3D get_pc()=
;</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if (r=
 &gt; 0x80000000 &amp;&amp; r &lt; 0x90000000)</div><div><span class=3D"App=
le-tab-span" style=3D"white-space:pre">		</span>board_init_lowlevel_return(=
);</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>writel(ESDMISC_RST, ESDMISC);</div><div><br></div><div><span clas=
s=3D"Apple-tab-span" style=3D"white-space:pre">	</span>while (!(readl(ESDMI=
SC) &amp; (1 &lt;&lt; 31)));</div>

<div><br></div><div>#define ESDCTLVAL<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>(ESDCTL0_ROW13 | ESDCTL0_COL9 |<span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>ESDCTL0_DSIZ_15_0 | \</di=
v><div>

<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span> ESDCTL0=
_REF4 | ESDCTL0_PWDT_PRECHARGE_PWDN | ESDCTL0_BL)</div><div>#define ESDCFGV=
AL<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>(ESDCFGx=
_tRP_3 | ESDCFGx_tMRD_2 | ESDCFGx_tRAS_6 | \</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span> ES=
DCFGx_tRRD_2 | ESDCFGx_tCAS_3 | ESDCFGx_tRCD_3 | \</div><div><span class=3D=
"Apple-tab-span" style=3D"white-space:pre">			</span> ESDCFGx_tRC_9)</div><=
div>

<br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</=
span>setup_sdram(0x80000000, ESDCTLVAL, ESDCFGVAL);</div><div><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>setup_sdram(0x9000000=
0, ESDCTLVAL, ESDCFGVAL);</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>board_init_lowlevel_return();</div><div>}</div></div><div><br></d=
iv><div>Why can&#39;t I printf() from low_level?</div><div><br></div><div>
I have also tried to what you did for your eukrea_cpuimx27.c:</div>
<div><br></div><div><div>diff --git a/arch/arm/mach-imx/include/mach/imx25-=
regs.h b/arch/arm/mach-imx/include/mach/imx25-reg</div><div>index 73307c4..=
8225832 100644</div><div>--- a/arch/arm/mach-imx/include/mach/imx25-regs.h<=
/div>

<div>+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h</div><div>@@ -72,6 +=
72,7 @@</div><div>=A0#define CCM_LTR1 =A0 =A0 =A0 0x44</div><div>=A0#define=
 CCM_LTR2 =A0 =A0 =A0 0x48</div><div>=A0#define CCM_LTR3 =A0 =A0 =A0 0x4c</=
div><div>+#define CCM_MCR =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x64</div>

<div>=A0</div><div>=A0#define PDR0_AUTO_MUX_DIV(x) =A0 (((x) &amp; 0x7) &lt=
;&lt; 9)</div><div>=A0#define PDR0_CCM_PER_AHB(x) =A0 =A0(((x) &amp; 0x7) &=
lt;&lt; 12)</div><div>@@ -107,6 +108,22 @@</div><div>=A0#define CSCR_L(x) =
=A0 =A0 (WEIM_BASE + 4 + (x) * 0x10)</div>

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
setup_weimcs(size_t cs, unsigned upper, unsigned lower, unsigned addional</=
div><div>+{</div><div>+ =A0 =A0 =A0 =A0CSxU(cs) =3D upper;</div><div>+ =A0 =
=A0 =A0 =A0CSxL(cs) =3D lower;</div>

<div>+ =A0 =A0 =A0 =A0CSxA(cs) =3D addional;</div><div>+}</div><div>+#endif=
 /* __ASSEMBLY__ */</div><div>+</div><div>=A0/*</div><div>=A0 * Definitions=
 for the clocksource driver</div><div>=A0 *</div></div><div><br></div><div>=
No matter what I do, it just does not work.</div>

<div><br></div><div>Regards</div><div>Roberto</div></div>

--14dae9341241e5eebe04c1292545--


--===============4607278888882466718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4607278888882466718==--
