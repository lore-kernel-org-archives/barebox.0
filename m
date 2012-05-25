Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXrKg-0001PV-6v
 for barebox@lists.infradead.org; Fri, 25 May 2012 10:01:20 +0000
Date: Fri, 25 May 2012 12:01:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120525100108.GM30400@pengutronix.de>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524171738.GZ30400@pengutronix.de>
 <CAONxwYP6+aGWNKzuQ1N2Ez5CZXwvWGcpgabYbxsfQiMwPGk=sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYP6+aGWNKzuQ1N2Ez5CZXwvWGcpgabYbxsfQiMwPGk=sQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 25, 2012 at 11:19:38AM +0200, Roberto Nibali wrote:
> Hi
> =

> On Thu, May 24, 2012 at 7:17 PM, Sascha Hauer <s.hauer@pengutronix.de>wro=
te:
> =

> > On Thu, May 24, 2012 at 03:18:13PM +0200, Roberto Nibali wrote:
> > > Hi Eric
> > >
> > > On Thu, May 24, 2012 at 2:58 PM, Eric B=E9nard <eric@eukrea.com> wrot=
e:
> > >
> > >
> > >
> > > I support WEIM configuration is done in the low level part, isn't it?
> >
> > You don't need to do it in lowlevel init, just before registering the
> > cfi device is enough. Usually it's good habit to do only the absolutely
> > necessary things in lowlevel init. Doing things later increases the
> > chance that you get useful debug output when something goes wrong
> >
> > I read the different board initialization routines over and over again,
> but can't find a common pattern. From what I see the lowlevel_init (which
> has been converted nicely into a C file), only AIPS, MAX, MPLL core clock,
> all clocks, SDRAM are initialized, but I have seen AIPS and MAX setups in
> core_init functions (eukrea_cpuimx35.c), as well as clock setups in
> console_init and other places. So, what's the bare minimum in lowlevel to
> set up? SDRAM/MDDR? What's the order of things?
> =

> I am merely asking because I have come a long way trying to debug an issue
> with weird I/O and clock behaviour on the ESDHC and other parts of my mx25
> device.

- MAX setup is not needed for barebox
- AIPS can most probably be done later aswell
- I'm unsure with the MPLL, that depends on whether the SDRAM clock
  depends on it.

You should only setup all dependencies for SDRAM and the SDRAM itself.
Everything else can be done later. What that is for the i.MX25 you
can see in the dcd, here from the Eukrea mx25:

struct imx_dcd_entry __dcd_entry_section dcd_entry[] =3D {
	{ .ptr_type =3D 4, .addr =3D 0xb8001010, .val =3D 0x00000004, },
	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92100000, },
	{ .ptr_type =3D 1, .addr =3D 0x80000400, .val =3D 0x12344321, },
	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xa2100000, },
	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x12344321, },
	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x12344321, },
	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xb2100000, },
	{ .ptr_type =3D 1, .addr =3D 0x80000033, .val =3D 0xda, },
	{ .ptr_type =3D 1, .addr =3D 0x81000000, .val =3D 0xff, },
	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x82216080, },
	{ .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x00295729, },
	{ .ptr_type =3D 4, .addr =3D 0x53f80008, .val =3D 0x20034000, },
};

So basically this means that the SDRAM does not seem to have any
dependencies.

All the things in lowlevel_init are then done when running from SDRAM
anyway (at least when doing a dcd based boot), so they can safely be
done later.

The next thing is that the clocks are correctly initialized before the
corresponding devices are registered.

So let's analyze Eukreas lowlevel init:


> void __bare_init __naked board_init_lowlevel(void)
> {
> 	uint32_t r;
> #ifdef CONFIG_NAND_IMX_BOOT
> 	unsigned int *trg, *src;
> 	int i;
> #endif
> 	register uint32_t loops =3D 0x20000;
> =

> 	/* restart the MPLL and wait until it's stable */
> 	writel(readl(IMX_CCM_BASE + CCM_CCTL) | (1 << 27),
> 						IMX_CCM_BASE + CCM_CCTL);
> 	while (readl(IMX_CCM_BASE + CCM_CCTL) & (1 << 27)) {};
> =

> 	/* Configure dividers and ARM clock source
> 	 * 	ARM @ 400 MHz
> 	 * 	AHB @ 133 MHz
> 	 */
> 	writel(0x20034000, IMX_CCM_BASE + CCM_CCTL);

This may influence the timer clock, so it can be here.

> =

> 	/* Enable UART1 / FEC / */
> /*	writel(0x1FFFFFFF, IMX_CCM_BASE + CCM_CGCR0);
> 	writel(0xFFFFFFFF, IMX_CCM_BASE + CCM_CGCR1);
> 	writel(0x000FDFFF, IMX_CCM_BASE + CCM_CGCR2);*/

This brings the Clock gate registers to reset default. This may be a
good idea, but can be done later.

> =

> 	/* AIPS setup - Only setup MPROTx registers. The PACR default values are=
 good.
> 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> 	 * not forced to user-mode.
> 	 */
> 	writel(0x77777777, 0x43f00000);
> 	writel(0x77777777, 0x43f00004);
> 	writel(0x77777777, 0x53f00000);
> 	writel(0x77777777, 0x53f00004);

This can be done later. This is duplicated in many boards and is always
the same. Look for example at the i.MX53 code, there we have
imx53_init_lowlevel() which sets up the AIPS. This is common for all
i.MX53 and is called from an initcall. Similar could be done for i.MX25
aswell, if somebody is willing to implement it.

> =

> 	/* MAX (Multi-Layer AHB Crossbar Switch) setup
> 	 * MPR - priority for MX25 is (SDHC2/SDMA)>USBOTG>RTIC>IAHB>DAHB
> 	 */
> 	writel(0x00002143, 0x43f04000);
> 	writel(0x00002143, 0x43f04100);
> 	writel(0x00002143, 0x43f04200);
> 	writel(0x00002143, 0x43f04300);
> 	writel(0x00002143, 0x43f04400);
> 	/* SGPCR - always park on last master */
> 	writel(0x10, 0x43f04010);
> 	writel(0x10, 0x43f04110);
> 	writel(0x10, 0x43f04210);
> 	writel(0x10, 0x43f04310);
> 	writel(0x10, 0x43f04410);
> 	/* MGPCR - restore default values */
> 	writel(0x0, 0x43f04800);
> 	writel(0x0, 0x43f04900);
> 	writel(0x0, 0x43f04a00);
> 	writel(0x0, 0x43f04b00);
> 	writel(0x0, 0x43f04c00);
> =

> 	/* Configure M3IF registers
> 	 * M3IF Control Register (M3IFCTL) for MX25
> 	 * MRRP[0] =3D LCDC           on priority list (1 << 0)  =3D 0x00000001
> 	 * MRRP[1] =3D MAX1       not on priority list (0 << 1)  =3D 0x00000000
> 	 * MRRP[2] =3D MAX0       not on priority list (0 << 2)  =3D 0x00000000
> 	 * MRRP[3] =3D USB HOST   not on priority list (0 << 3)  =3D 0x00000000
> 	 * MRRP[4] =3D SDMA       not on priority list (0 << 4)  =3D 0x00000000
> 	 * MRRP[5] =3D SD/ATA/FEC not on priority list (0 << 5)  =3D 0x00000000
> 	 * MRRP[6] =3D SCMFBC     not on priority list (0 << 6)  =3D 0x00000000
> 	 * MRRP[7] =3D CSI        not on priority list (0 << 7)  =3D 0x00000000
> 	 *                                                       ----------
> 	 *                                                       0x00000001
> 	 */
> 	writel(0x1, 0xb8003000);

Same as above.

> =

> 	/* Speed up NAND controller by adjusting the NFC divider */
> 	r =3D readl(IMX_CCM_BASE + CCM_PCDR2);
> 	r &=3D ~0xf;
> 	r |=3D 0x1;
> 	writel(r, IMX_CCM_BASE + CCM_PCDR2);

This is necessary for external NAND boot. The NAND controller comes up
with a low speed which makes the copying of the image
(CONFIG_NAND_IMX_BOOT below) slow. This is optional but has to be done
here to get a faster boot.

> =

> 	/* Skip SDRAM initialization if we run from RAM */
> 	r =3D get_pc();
> 	if (r > 0x80000000 && r < 0x90000000)
> 		board_init_lowlevel_return();

Here we bail out for second stage boots (and also internal bootmode
where we are already running from SDRAM

> =

> 	/* Init Mobile DDR */
> 	writel(0x0000000E, ESDMISC);
> 	writel(0x00000004, ESDMISC);
> 	__asm__ volatile ("1:\n"
> 			"subs %0, %1, #1\n"
> 			"bne 1b":"=3Dr" (loops):"0" (loops));
> =

> 	writel(0x0029572B, ESDCFG0);
> 	writel(0x92210000, ESDCTL0);
> 	writeb(0xda, IMX_SDRAM_CS0 + 0x400);
> 	writel(0xA2210000, ESDCTL0);
> 	writeb(0xda, IMX_SDRAM_CS0);
> 	writeb(0xda, IMX_SDRAM_CS0);
> 	writel(0xB2210000, ESDCTL0);
> 	writeb(0xda, IMX_SDRAM_CS0 + 0x33);
> 	writeb(0xda, IMX_SDRAM_CS0 + 0x1000000);
> 	writel(0x82216080, ESDCTL0);

RAM init for external bootmode, has to be done here.

> =

> #ifdef CONFIG_NAND_IMX_BOOT
> 	/* skip NAND boot if not running from NFC space */
> 	r =3D get_pc();
> 	if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
> 		board_init_lowlevel_return();
> =

> 	src =3D (unsigned int *)IMX_NFC_BASE;
> 	trg =3D (unsigned int *)TEXT_BASE;
> =

> 	/* Move ourselves out of NFC SRAM */
> 	for (i =3D 0; i < 0x800 / sizeof(int); i++)
> 		*trg++ =3D *src++;
> =

> 	/* Jump to SDRAM */
> 	r =3D (unsigned int)&insdram;
> 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
> #else
> 	board_init_lowlevel_return();
> #endif

Finally copy the image from NAND SRAM to SDRAM, only needed for external
NAND boot.

Often the whole lowlevel stuff is setup in early assembly code. This has
mostly historical reasons and 'hey, this is hardcore stuff we configure
here, we must do it early and we must do it in assembly'. Much of the
lowlevel stuff we have in barebox is just copied from a working U-Boot
or redboot setup and never touched again, hence the slightly chaotic
situation.

Hope I could help you a bit.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
