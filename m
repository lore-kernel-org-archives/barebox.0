Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZIhd-0005Fi-Kx
 for barebox@lists.infradead.org; Tue, 29 May 2012 09:27:00 +0000
Received: by ggcs5 with SMTP id s5so2654251ggc.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 02:26:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120525100108.GM30400@pengutronix.de>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524171738.GZ30400@pengutronix.de>
 <CAONxwYP6+aGWNKzuQ1N2Ez5CZXwvWGcpgabYbxsfQiMwPGk=sQ@mail.gmail.com>
 <20120525100108.GM30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 11:26:34 +0200
Message-ID: <CAONxwYMVOxQ7+_B53hFi+mCA0rQzJJVmExb0vHdw6gc4gcTrkA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0444897018690604504=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0444897018690604504==
Content-Type: multipart/alternative; boundary=14dae9340e5771b30004c1296f3c

--14dae9340e5771b30004c1296f3c
Content-Type: text/plain; charset=ISO-8859-1

Hi Sascha

Thank you so much for taking your time explaining things the way you did.
It certainly cleared things up a lot, albeit it still does not work;
comment below.

> > I read the different board initialization routines over and over again,
> > but can't find a common pattern. From what I see the lowlevel_init (which
> > has been converted nicely into a C file), only AIPS, MAX, MPLL core
> clock,
> > all clocks, SDRAM are initialized, but I have seen AIPS and MAX setups in
> > core_init functions (eukrea_cpuimx35.c), as well as clock setups in
> > console_init and other places. So, what's the bare minimum in lowlevel to
> > set up? SDRAM/MDDR? What's the order of things?
> >
> > I am merely asking because I have come a long way trying to debug an
> issue
> > with weird I/O and clock behaviour on the ESDHC and other parts of my
> mx25
> > device.
>
> - MAX setup is not needed for barebox
> - AIPS can most probably be done later aswell
> - I'm unsure with the MPLL, that depends on whether the SDRAM clock
>  depends on it.
>

In my case I am fairly certain that SDRAM clock does not depend on MPLL. I
will be moving MAX and AIPS setup out of lowlevel init, so as to keep it
tiny.


> You should only setup all dependencies for SDRAM and the SDRAM itself.
> Everything else can be done later. What that is for the i.MX25 you
> can see in the dcd, here from the Eukrea mx25:
>
> struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
>        { .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
>        { .ptr_type = 4, .addr = 0xb8001000, .val = 0x92100000, },
>        { .ptr_type = 1, .addr = 0x80000400, .val = 0x12344321, },
>        { .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2100000, },
>        { .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
>        { .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
>        { .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2100000, },
>        { .ptr_type = 1, .addr = 0x80000033, .val = 0xda, },
>        { .ptr_type = 1, .addr = 0x81000000, .val = 0xff, },
>        { .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216080, },
>        { .ptr_type = 4, .addr = 0xb8001004, .val = 0x00295729, },
>        { .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
> };
>
> So basically this means that the SDRAM does not seem to have any
> dependencies.
>

This is the first time I have realized that the DCD actually represents
more or less what should be done in the lowlevel init. After carefully
reading what you explained and cross-checking with the old uboot, I have
come up with the following DCD:

struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
/* NOR flash, CS0_CSCRU, CS0_CSCRL, CS0_CSCRA */
{ .ptr_type = 4, .addr = 0xB8002000, .val = 0x0000D003, },
 { .ptr_type = 4, .addr = 0xB8002004, .val = 0x00330D01, },
{ .ptr_type = 4, .addr = 0xB8002008, .val = 0x00220800, },
 /* DDR2 init */
{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x0076e83a, }, /* initial value
for ESDCFG0 */
 { .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000204, }, /* ESD_MISC */
{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92210000, }, /* CS0 precharge
command */
 { .ptr_type = 4, .addr = 0x80000f00, .val = 0x12344321, }, /* precharge
all dummy write */
{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2210000, }, /* Load Mode
Register command */
 { .ptr_type = 1, .addr = 0x82000000, .val = 0xda, },   /* dummy write Load
EMR2 */
{ .ptr_type = 1, .addr = 0x83000000, .val = 0xda, },   /* dummy write Load
EMR3 */
 { .ptr_type = 1, .addr = 0x81000400, .val = 0xda, },   /* dummy write Load
EMR1; enable DLL */
 { .ptr_type = 1, .addr = 0x80000333, .val = 0xda, },   /* dummy write Load
MR; reset DLL */

{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92210000, }, /* CS0 precharge
command */
{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12345678, }, /* precharge all
dummy write */
 { .ptr_type = 4, .addr = 0xb8001000, .val = 0xA2210000, }, /* select
manual refresh mode */
{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, }, /* manual
refresh */
 { .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, }, /* manual
refresh twice */

{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2210000, }, /* Load Mode
Register command */
 { .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },   /* Load MR; CL=3,
BL=8, end DLL reset */
 { .ptr_type = 1, .addr = 0x81000780, .val = 0xda, },   /* Load EMR1; OCD
default */
 { .ptr_type = 1, .addr = 0x81000400, .val = 0xda, },   /* Load EMR1; OCD
exit */
{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216080, }, /* normal mode */
 /* IOMUX_SW_PAD setup */
{ .ptr_type = 4, .addr = 0x43FAC454, .val = 0x00001000, }, /*
IOMUXC_SW_PAD_CTL_GRP_DDRTYPE(1-5) */
 { .ptr_type = 4, .addr = 0x43FAC448, .val = 0x00002000, }, /*
IOMUXC_SW_PAD NFC voltage 1.8 */

/* CLKCTL */
 { .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, }, /* CLKCTL
ARM=399 AHB=133 */
};


> All the things in lowlevel_init are then done when running from SDRAM
> anyway (at least when doing a dcd based boot), so they can safely be
> done later.
>
> The next thing is that the clocks are correctly initialized before the
> corresponding devices are registered.
>

I have seen that some devices simply enable all clocks in lowlevel and some
enable the necessary ones at a later stage. To be sure, I have included
both versions in my setup, so I can assure that all the necessary clocks
are running on boot init.


> So let's analyze Eukreas lowlevel init:
>
>
> > void __bare_init __naked board_init_lowlevel(void)
> > {
> >       uint32_t r;
> > #ifdef CONFIG_NAND_IMX_BOOT
> >       unsigned int *trg, *src;
> >       int i;
> > #endif
> >       register uint32_t loops = 0x20000;
> >
> >       /* restart the MPLL and wait until it's stable */
> >       writel(readl(IMX_CCM_BASE + CCM_CCTL) | (1 << 27),
> >                                               IMX_CCM_BASE + CCM_CCTL);
> >       while (readl(IMX_CCM_BASE + CCM_CCTL) & (1 << 27)) {};
> >
> >       /* Configure dividers and ARM clock source
> >        *      ARM @ 400 MHz
> >        *      AHB @ 133 MHz
> >        */
> >       writel(0x20034000, IMX_CCM_BASE + CCM_CCTL);
>
> This may influence the timer clock, so it can be here.
>

I have copied this, since it was also done in the old uboot version that
works.


> >
> >       /* Enable UART1 / FEC / */
> > /*    writel(0x1FFFFFFF, IMX_CCM_BASE + CCM_CGCR0);
> >       writel(0xFFFFFFFF, IMX_CCM_BASE + CCM_CGCR1);
> >       writel(0x000FDFFF, IMX_CCM_BASE + CCM_CGCR2);*/
>
> This brings the Clock gate registers to reset default. This may be a
> good idea, but can be done later.
>

Ok, I have copied this.

>
> >
> >       /* AIPS setup - Only setup MPROTx registers. The PACR default
> values are good.
> >        * Set all MPROTx to be non-bufferable, trusted for R/W,
> >        * not forced to user-mode.
> >        */
> >       writel(0x77777777, 0x43f00000);
> >       writel(0x77777777, 0x43f00004);
> >       writel(0x77777777, 0x53f00000);
> >       writel(0x77777777, 0x53f00004);
>
> This can be done later. This is duplicated in many boards and is always
> the same. Look for example at the i.MX53 code, there we have
> imx53_init_lowlevel() which sets up the AIPS. This is common for all
> i.MX53 and is called from an initcall. Similar could be done for i.MX25
> aswell, if somebody is willing to implement it.
>

I like the imx53_init_lowlevel() approach a lot, it's very clean and helps
avoiding redundancy and maintenance costs. If I get my device to boot from
NOR, I might be inclined to give it a shot.


> >
> >       /* MAX (Multi-Layer AHB Crossbar Switch) setup
> >        * MPR - priority for MX25 is (SDHC2/SDMA)>USBOTG>RTIC>IAHB>DAHB
> >        */
> >       writel(0x00002143, 0x43f04000);
> >       writel(0x00002143, 0x43f04100);
> >       writel(0x00002143, 0x43f04200);
> >       writel(0x00002143, 0x43f04300);
> >       writel(0x00002143, 0x43f04400);
> >       /* SGPCR - always park on last master */
> >       writel(0x10, 0x43f04010);
> >       writel(0x10, 0x43f04110);
> >       writel(0x10, 0x43f04210);
> >       writel(0x10, 0x43f04310);
> >       writel(0x10, 0x43f04410);
> >       /* MGPCR - restore default values */
> >       writel(0x0, 0x43f04800);
> >       writel(0x0, 0x43f04900);
> >       writel(0x0, 0x43f04a00);
> >       writel(0x0, 0x43f04b00);
> >       writel(0x0, 0x43f04c00);
> >
> >       /* Configure M3IF registers
> >        * M3IF Control Register (M3IFCTL) for MX25
> >        * MRRP[0] = LCDC           on priority list (1 << 0)  = 0x00000001
> >        * MRRP[1] = MAX1       not on priority list (0 << 1)  = 0x00000000
> >        * MRRP[2] = MAX0       not on priority list (0 << 2)  = 0x00000000
> >        * MRRP[3] = USB HOST   not on priority list (0 << 3)  = 0x00000000
> >        * MRRP[4] = SDMA       not on priority list (0 << 4)  = 0x00000000
> >        * MRRP[5] = SD/ATA/FEC not on priority list (0 << 5)  = 0x00000000
> >        * MRRP[6] = SCMFBC     not on priority list (0 << 6)  = 0x00000000
> >        * MRRP[7] = CSI        not on priority list (0 << 7)  = 0x00000000
> >        *                                                       ----------
> >        *                                                       0x00000001
> >        */
> >       writel(0x1, 0xb8003000);
>
> Same as above.
>
> >
> >       /* Speed up NAND controller by adjusting the NFC divider */
> >       r = readl(IMX_CCM_BASE + CCM_PCDR2);
> >       r &= ~0xf;
> >       r |= 0x1;
> >       writel(r, IMX_CCM_BASE + CCM_PCDR2);
>
> This is necessary for external NAND boot. The NAND controller comes up
> with a low speed which makes the copying of the image
> (CONFIG_NAND_IMX_BOOT below) slow. This is optional but has to be done
> here to get a faster boot.
>
> Ok, I reckon there is nothing comparable which should be done in the NOR
case.


> >
> >       /* Skip SDRAM initialization if we run from RAM */
> >       r = get_pc();
> >       if (r > 0x80000000 && r < 0x90000000)
> >               board_init_lowlevel_return();
>
> Here we bail out for second stage boots (and also internal bootmode
> where we are already running from SDRAM
>

It's this place where I wanted to put a printf() to see where the code is
actually branching and if my setting of the corresponding WEIM CS0
registers upset the processor already. However, it seems as if printf()'s
here is a no-go.


> >
> >       /* Init Mobile DDR */
> >       writel(0x0000000E, ESDMISC);
> >       writel(0x00000004, ESDMISC);
> >       __asm__ volatile ("1:\n"
> >                       "subs %0, %1, #1\n"
> >                       "bne 1b":"=r" (loops):"0" (loops));
> >
> >       writel(0x0029572B, ESDCFG0);
> >       writel(0x92210000, ESDCTL0);
> >       writeb(0xda, IMX_SDRAM_CS0 + 0x400);
> >       writel(0xA2210000, ESDCTL0);
> >       writeb(0xda, IMX_SDRAM_CS0);
> >       writeb(0xda, IMX_SDRAM_CS0);
> >       writel(0xB2210000, ESDCTL0);
> >       writeb(0xda, IMX_SDRAM_CS0 + 0x33);
> >       writeb(0xda, IMX_SDRAM_CS0 + 0x1000000);
> >       writel(0x82216080, ESDCTL0);
>
> RAM init for external bootmode, has to be done here.
>

I left it there.


>
> >
> > #ifdef CONFIG_NAND_IMX_BOOT
> >       /* skip NAND boot if not running from NFC space */
> >       r = get_pc();
> >       if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
> >               board_init_lowlevel_return();
> >
> >       src = (unsigned int *)IMX_NFC_BASE;
> >       trg = (unsigned int *)TEXT_BASE;
> >
> >       /* Move ourselves out of NFC SRAM */
> >       for (i = 0; i < 0x800 / sizeof(int); i++)
> >               *trg++ = *src++;
> >
> >       /* Jump to SDRAM */
> >       r = (unsigned int)&insdram;
> >       __asm__ __volatile__("mov pc, %0" : : "r"(r));
> > #else
> >       board_init_lowlevel_return();
> > #endif
>
> Finally copy the image from NAND SRAM to SDRAM, only needed for external
> NAND boot.
>
> And since I am trying to perform an internal MMC or NOR boot, this does
not affect me at all.


> Often the whole lowlevel stuff is setup in early assembly code. This has
> mostly historical reasons and 'hey, this is hardcore stuff we configure
> here, we must do it early and we must do it in assembly'. Much of the
> lowlevel stuff we have in barebox is just copied from a working U-Boot
> or redboot setup and never touched again, hence the slightly chaotic
> situation.
>

This is what I have slowly come to understand while reading more source
code over the weekend. I have also found the old uboot init part for this
device from 2009.08 and have adapted my lowlevel and device part code
accordingly. I wonder if someone could write a quick and dirty perl/shell
script to auto-port devices from uboot to barebox, at least the basic
booting facility.

In my case, there is one peculiarity in the u-boot sources, which I haven't
been able to map to barebox yet and it's best described by the
corresponding code:

#include <common.h>
#include <asm/io.h>
#include <asm/errno.h>
#include <asm/arch/mx25.h>
#include <asm/arch/mx25-regs.h>
#include <asm/arch/mx25_pins.h>
#include <asm/arch/iomux.h>
#include <asm/arch/gpio.h>
#include <imx_spi.h>

#ifdef CONFIG_CMD_MMC
#include <mmc.h>
#include <fsl_esdhc.h>
#endif

DECLARE_GLOBAL_DATA_PTR;

static u32 system_rev;

u32 get_board_rev(void)
{
return system_rev;
}

static inline void setup_soc_rev(void)
{
int reg;
reg = __REG(IIM_BASE + IIM_SREV);
 if (!reg) {
reg = __REG(ROMPATCH_REV);
reg <<= 4;
 } else
reg += CHIP_REV_1_0;
system_rev = 0x25000 + (reg & 0xFF);
}

inline int is_soc_rev(int rev)
{
return (system_rev & 0xFF) - rev;
}

int dram_init(void)
{
gd->bd->bi_dram[0].start = PHYS_SDRAM_1;
gd->bd->bi_dram[0].size = PHYS_SDRAM_1_SIZE;

return 0;
}

#ifdef CONFIG_CMD_MMC

u32 *imx_esdhc_base_addr;

int esdhc_gpio_init(void)
{
u32 interface_esdhc = 0, val = 0;

interface_esdhc = (readl(CCM_RCSR) & (0x00300000)) >> 20;

switch (interface_esdhc) {
case 0:
imx_esdhc_base_addr = (u32 *)MMC_SDHC1_BASE;
 /* Pins */
writel(0x10, IOMUXC_BASE + 0x190); /* SD1_CMD */
 writel(0x10, IOMUXC_BASE + 0x194); /* SD1_CLK */
writel(0x00, IOMUXC_BASE + 0x198); /* SD1_DATA0 */
 writel(0x00, IOMUXC_BASE + 0x19c); /* SD1_DATA1 */
writel(0x00, IOMUXC_BASE + 0x1a0); /* SD1_DATA2 */
 writel(0x00, IOMUXC_BASE + 0x1a4); /* SD1_DATA3 */
/*ENABLE NOR
 writel(0x06, IOMUXC_BASE + 0x094); // D12 (SD1_DATA4)
writel(0x06, IOMUXC_BASE + 0x090); // D13 (SD1_DATA5)
 writel(0x06, IOMUXC_BASE + 0x08c); // D14 (SD1_DATA6)
writel(0x06, IOMUXC_BASE + 0x088); // D15 (SD1_DATA7)
 writel(0x05, IOMUXC_BASE + 0x010); // A14 (SD1_WP)
writel(0x05, IOMUXC_BASE + 0x014); // A15 (SD1_DET)
 */

/* Pads */
writel(0xD1, IOMUXC_BASE + 0x388); /* SD1_CMD */
 writel(0xD1, IOMUXC_BASE + 0x38c); /* SD1_CLK */
writel(0xD1, IOMUXC_BASE + 0x390); /* SD1_DATA0 */
 writel(0xD1, IOMUXC_BASE + 0x394); /* SD1_DATA1 */
writel(0xD1, IOMUXC_BASE + 0x398); /* SD1_DATA2 */
 writel(0xD1, IOMUXC_BASE + 0x39c); /* SD1_DATA3 */
/* ENABLE NOR
 writel(0xD1, IOMUXC_BASE + 0x28c); // D12 (SD1_DATA4)
writel(0xD1, IOMUXC_BASE + 0x288); // D13 (SD1_DATA5)
 writel(0xD1, IOMUXC_BASE + 0x284); // D14 (SD1_DATA6)
writel(0xD1, IOMUXC_BASE + 0x280); // D15 (SD1_DATA7)
 writel(0xD1, IOMUXC_BASE + 0x230); // A14 (SD1_WP)
writel(0xD1, IOMUXC_BASE + 0x234); // A15 (SD1_DET)
 */

/*
 * Set write protect and card detect gpio as inputs
 * A14 (SD1_WP) and A15 (SD1_DET)
 */
val = ~(3 << 0) & readl(GPIO1_BASE + GPIO_GDIR);
 writel(val, GPIO1_BASE + GPIO_GDIR);
break;
case 1:
 imx_esdhc_base_addr = (u32 *)MMC_SDHC2_BASE;
/* Pins */
writel(0x16, IOMUXC_BASE + 0x0e8); /* LD8 (SD1_CMD) */
 writel(0x16, IOMUXC_BASE + 0x0ec); /* LD9 (SD1_CLK) */
writel(0x06, IOMUXC_BASE + 0x0f0); /* LD10 (SD1_DATA0) */
 writel(0x06, IOMUXC_BASE + 0x0f4); /* LD11 (SD1_DATA1) */
writel(0x06, IOMUXC_BASE + 0x0f8); /* LD12 (SD1_DATA2) */
 writel(0x06, IOMUXC_BASE + 0x0fc); /* LD13 (SD1_DATA3) */
writel(0x02, IOMUXC_BASE + 0x120); /* CSI_D2 (SD1_DATA4) */
 writel(0x02, IOMUXC_BASE + 0x124); /* CSI_D3 (SD1_DATA5) */
writel(0x02, IOMUXC_BASE + 0x128); /* CSI_D4 (SD1_DATA6) */
 writel(0x02, IOMUXC_BASE + 0x12c); /* CSI_D5 (SD1_DATA7) */

/* Pads */
 writel(0xD1, IOMUXC_BASE + 0x2e0); /* LD8 (SD1_CMD) */
writel(0xD1, IOMUXC_BASE + 0x2e4); /* LD9 (SD1_CLK) */
 writel(0xD1, IOMUXC_BASE + 0x2e8); /* LD10 (SD1_DATA0) */
writel(0xD1, IOMUXC_BASE + 0x2ec); /* LD11 (SD1_DATA1) */
 writel(0xD1, IOMUXC_BASE + 0x2f0); /* LD12 (SD1_DATA2) */
writel(0xD1, IOMUXC_BASE + 0x2f4); /* LD13 (SD1_DATA3) */
 writel(0xD1, IOMUXC_BASE + 0x318); /* CSI_D2 (SD1_DATA4) */
writel(0xD1, IOMUXC_BASE + 0x31c); /* CSI_D3 (SD1_DATA5) */
 writel(0xD1, IOMUXC_BASE + 0x320); /* CSI_D4 (SD1_DATA6) */
writel(0xD1, IOMUXC_BASE + 0x324); /* CSI_D5 (SD1_DATA7) */
 break;
default:
break;
 }
return 0;
}

int board_mmc_init(void)
{
if (!esdhc_gpio_init())
return fsl_esdhc_mmc_init(gd->bd);
else
 return -1;
}
#endif

void spi_io_init(struct imx_spi_dev_t *dev)
{
switch (dev->base) {
 case CSPI1_BASE:
writel(0, IOMUXC_BASE + 0x180); /* CSPI1 SCLK */
 writel(0x1C0, IOMUXC_BASE + 0x5c4);
writel(0, IOMUXC_BASE + 0x184); /* SPI_RDY */
 writel(0x1E0, IOMUXC_BASE + 0x5c8);
writel(0, IOMUXC_BASE + 0x170); /* MOSI */
 writel(0x1C0, IOMUXC_BASE + 0x5b4);
writel(0, IOMUXC_BASE + 0x174); /* MISO */
 writel(0x1C0, IOMUXC_BASE + 0x5b8);
writel(0, IOMUXC_BASE + 0x17C); /* SS1 */
 writel(0x1E0, IOMUXC_BASE + 0x5C0);
break;
default:
 break;
}
}

int board_init(void)
{
 setup_soc_rev();

/* setup pins for UART1 */
/* UART 1 IOMUX Configs */
 mxc_request_iomux(MX25_PIN_UART1_RXD, MUX_CONFIG_FUNC);
mxc_request_iomux(MX25_PIN_UART1_TXD, MUX_CONFIG_FUNC);
 mxc_request_iomux(MX25_PIN_UART1_RTS, MUX_CONFIG_FUNC);
mxc_request_iomux(MX25_PIN_UART1_CTS, MUX_CONFIG_FUNC);
 mxc_iomux_set_pad(MX25_PIN_UART1_RXD,
PAD_CTL_HYS_SCHMITZ | PAD_CTL_PKE_ENABLE |
 PAD_CTL_PUE_PUD | PAD_CTL_100K_PU);
mxc_iomux_set_pad(MX25_PIN_UART1_TXD,
 PAD_CTL_PUE_PUD | PAD_CTL_100K_PD);
mxc_iomux_set_pad(MX25_PIN_UART1_RTS,
PAD_CTL_HYS_SCHMITZ | PAD_CTL_PKE_ENABLE |
 PAD_CTL_PUE_PUD | PAD_CTL_100K_PU);
mxc_iomux_set_pad(MX25_PIN_UART1_CTS,
 PAD_CTL_PUE_PUD | PAD_CTL_100K_PD);

/* setup pins for FEC */
mxc_request_iomux(MX25_PIN_FEC_TX_CLK, MUX_CONFIG_FUNC);
 mxc_request_iomux(MX25_PIN_FEC_RX_DV, MUX_CONFIG_FUNC);
mxc_request_iomux(MX25_PIN_FEC_RDATA0, MUX_CONFIG_FUNC);
 mxc_request_iomux(MX25_PIN_FEC_TDATA0, MUX_CONFIG_FUNC);
mxc_request_iomux(MX25_PIN_FEC_TX_EN, MUX_CONFIG_FUNC);
 mxc_request_iomux(MX25_PIN_FEC_MDC, MUX_CONFIG_FUNC);
mxc_request_iomux(MX25_PIN_FEC_MDIO, MUX_CONFIG_FUNC);
 mxc_request_iomux(MX25_PIN_FEC_RDATA1, MUX_CONFIG_FUNC);
mxc_request_iomux(MX25_PIN_FEC_TDATA1, MUX_CONFIG_FUNC);
 mxc_request_iomux(MX25_PIN_POWER_FAIL, MUX_CONFIG_FUNC); /* PHY INT */

#define FEC_PAD_CTL1 (PAD_CTL_HYS_SCHMITZ | PAD_CTL_PUE_PUD | \
 PAD_CTL_PKE_ENABLE)
#define FEC_PAD_CTL2 (PAD_CTL_PUE_PUD)

mxc_iomux_set_pad(MX25_PIN_FEC_TX_CLK, FEC_PAD_CTL1);
 mxc_iomux_set_pad(MX25_PIN_FEC_RX_DV, FEC_PAD_CTL1);
mxc_iomux_set_pad(MX25_PIN_FEC_RDATA0, FEC_PAD_CTL1);
 mxc_iomux_set_pad(MX25_PIN_FEC_TDATA0, FEC_PAD_CTL2);
mxc_iomux_set_pad(MX25_PIN_FEC_TX_EN, FEC_PAD_CTL2);
 mxc_iomux_set_pad(MX25_PIN_FEC_MDC, FEC_PAD_CTL2);
mxc_iomux_set_pad(MX25_PIN_FEC_MDIO, FEC_PAD_CTL1 | PAD_CTL_22K_PU);
 mxc_iomux_set_pad(MX25_PIN_FEC_RDATA1, FEC_PAD_CTL1);
mxc_iomux_set_pad(MX25_PIN_FEC_TDATA1, FEC_PAD_CTL2);
 mxc_iomux_set_pad(MX25_PIN_POWER_FAIL, FEC_PAD_CTL1);

/*
 * Set up the FEC_RESET_B and FEC_ENABLE GPIO pins.
 * Assert FEC_RESET_B, then power up the PHY by asserting
 * FEC_ENABLE, at the same time lifting FEC_RESET_B.
 *
 * FEC_RESET_B: gpio2[3] is ALT 5 mode of pin D12
 * FEC_ENABLE_B: gpio4[8] is ALT 5 mode of pin A17
 */
/*FQ FOR ENABLE NOR
mxc_request_iomux(MX25_PIN_A17, MUX_CONFIG_ALT5); // FEC_EN
 mxc_request_iomux(MX25_PIN_D12, MUX_CONFIG_ALT5); // FEC_RESET_B

mxc_iomux_set_pad(MX25_PIN_A17, PAD_CTL_ODE_OpenDrain);
 mxc_iomux_set_pad(MX25_PIN_D12, 0);

mxc_set_gpio_direction(MX25_PIN_A17, 0); // FEC_EN
 mxc_set_gpio_direction(MX25_PIN_D12, 0); // FEC_RESET_B

/* drop PHY power
 mxc_set_gpio_dataout(MX25_PIN_A17, 0); // FEC_EN

// assert reset
 mxc_set_gpio_dataout(MX25_PIN_D12, 0); // FEC_RESET_B
udelay(2); // spec says 1us min

// turn on PHY power and lift reset
mxc_set_gpio_dataout(MX25_PIN_A17, 1); // FEC_EN
 mxc_set_gpio_dataout(MX25_PIN_D12, 1); // FEC_RESET_B
*/

#define I2C_PAD_CTL (PAD_CTL_HYS_SCHMITZ | PAD_CTL_PKE_ENABLE | \
PAD_CTL_PUE_PUD | PAD_CTL_100K_PU | PAD_CTL_ODE_OpenDrain)

mxc_request_iomux(MX25_PIN_I2C1_CLK, MUX_CONFIG_SION);
mxc_request_iomux(MX25_PIN_I2C1_DAT, MUX_CONFIG_SION);
 mxc_iomux_set_pad(MX25_PIN_I2C1_CLK, 0x1E8);
mxc_iomux_set_pad(MX25_PIN_I2C1_DAT, 0x1E8);

gd->bd->bi_arch_number = MACH_TYPE_MX25_3DS;    /* board id for linux */
gd->bd->bi_boot_params = 0x80000100;    /* address of boot parameters */

return 0;

#undef FEC_PAD_CTL1
#undef FEC_PAD_CTL2
#undef I2C_PAD_CTL
}

#ifdef BOARD_LATE_INIT
int board_late_init(void)
{
u8 reg[4];

/* Turn PMIC On*/
 reg[0] = 0x09;
i2c_write(0x54, 0x02, 1, reg, 1);

#ifdef CONFIG_IMX_SPI_CPLD
 mxc_cpld_spi_init();
#endif

return 0;
}
#endif


int checkboard(void)
{
printf("Boot Device: SD Card \n");
printf("Board: SID1 i.MX25 \n");
 return 0;
}

int board_eth_init(bd_t *bis)
{
int rc = -ENODEV;
#if defined(CONFIG_SMC911X)
rc = smc911x_initialize(0, CONFIG_SMC911X_BASE);
#endif
return rc;
}

It seems as if in order to support NOR upon boot, the following PADs and
PINs have to be disabled:

writel(0x06, IOMUXC_BASE + 0x094); // D12 (SD1_DATA4)
 writel(0x06, IOMUXC_BASE + 0x090); // D13 (SD1_DATA5)
writel(0x06, IOMUXC_BASE + 0x08c); // D14 (SD1_DATA6)
 writel(0x06, IOMUXC_BASE + 0x088); // D15 (SD1_DATA7)
writel(0x05, IOMUXC_BASE + 0x010); // A14 (SD1_WP)
 writel(0x05, IOMUXC_BASE + 0x014); // A15 (SD1_DET)

Why, and how could I find the corresponding barebox mappings? I recall that
last week someone wanted to synchronize the IOMUX settings with the kernel
ones. But still, why this change and could this affect my issue I am seeing
with barebox? I still cannot initialize the NOR upon MMC internal boot on
my device.

Hope I could help you a bit.
>
>
A lot, let me know where I can send the beers or any beverage to as soon as
I get the bloody thing booting from NOR and showing up my NOR :).

Take care
Roberto

--14dae9340e5771b30004c1296f3c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sascha<div><br></div><div>Thank you so much for taking your time explain=
ing things the way you did. It certainly cleared things up a lot, albeit it=
 still does not work; comment below.<br><br><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">

<div class=3D"im">&gt; &gt; I read the different board initialization routi=
nes over and over again,<br>
&gt; but can&#39;t find a common pattern. From what I see the lowlevel_init=
 (which<br>
&gt; has been converted nicely into a C file), only AIPS, MAX, MPLL core cl=
ock,<br>
&gt; all clocks, SDRAM are initialized, but I have seen AIPS and MAX setups=
 in<br>
&gt; core_init functions (eukrea_cpuimx35.c), as well as clock setups in<br=
>
&gt; console_init and other places. So, what&#39;s the bare minimum in lowl=
evel to<br>
&gt; set up? SDRAM/MDDR? What&#39;s the order of things?<br>
&gt;<br>
&gt; I am merely asking because I have come a long way trying to debug an i=
ssue<br>
&gt; with weird I/O and clock behaviour on the ESDHC and other parts of my =
mx25<br>
&gt; device.<br>
<br>
</div>- MAX setup is not needed for barebox<br>
- AIPS can most probably be done later aswell<br>
- I&#39;m unsure with the MPLL, that depends on whether the SDRAM clock<br>
 =A0depends on it.<br></blockquote><div><br></div><div>In my case I am fair=
ly certain that SDRAM clock does not depend on MPLL. I will be moving MAX a=
nd AIPS setup out of lowlevel init, so as to keep it tiny.</div><div>=A0</d=
iv>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
You should only setup all dependencies for SDRAM and the SDRAM itself.<br>
Everything else can be done later. What that is for the i.MX25 you<br>
can see in the dcd, here from the Eukrea mx25:<br>
<br>
struct imx_dcd_entry __dcd_entry_section dcd_entry[] =3D {<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0xb8001010, .val =3D 0x0000000=
4, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x9210000=
0, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 1, .addr =3D 0x80000400, .val =3D 0x1234432=
1, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xa210000=
0, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x1234432=
1, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x1234432=
1, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xb210000=
0, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 1, .addr =3D 0x80000033, .val =3D 0xda, },<=
br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 1, .addr =3D 0x81000000, .val =3D 0xff, },<=
br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x8221608=
0, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x0029572=
9, },<br>
 =A0 =A0 =A0 =A0{ .ptr_type =3D 4, .addr =3D 0x53f80008, .val =3D 0x2003400=
0, },<br>
};<br>
<br>
So basically this means that the SDRAM does not seem to have any<br>
dependencies.<br></blockquote><div><br></div><div>This is the first time I =
have realized that the DCD actually represents more or less what should be =
done in the lowlevel init. After carefully reading what you explained and c=
ross-checking with the old uboot,=A0I have come up with the following DCD:<=
/div>

<div><br></div><div><div>struct imx_dcd_entry __dcd_entry_section dcd_entry=
[] =3D {</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span>/* NOR flash, CS0_CSCRU, CS0_CSCRL, CS0_CSCRA */</div><div><span c=
lass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr_type =3D 4=
, .addr =3D 0xB8002000, .val =3D 0x0000D003, },</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 4, .addr =3D 0xB8002004, .val =3D 0x00330D01, },</div><div><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr_type =3D=
 4, .addr =3D 0xB8002008, .val =3D 0x00220800, },</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* DD=
R2 init */</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">	</span>{ .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x0076e83a, },=
 /* initial value for ESDCFG0 */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 4, .addr =3D 0xb8001010, .val =3D 0x00000204, }, /* ESD_MISC */<=
/div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92210000, }, /* CS0 pre=
charge command */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 4, .addr =3D 0x80000f00, .val =3D 0x12344321, }, /* precharge al=
l dummy write */</div><div><span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xb22100=
00, }, /* Load Mode Register command */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 1, .addr =3D 0x82000000, .val =3D 0xda, },<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span> =A0 /* dummy write Load EMR2 */=
</div><div>
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr_typ=
e =3D 1, .addr =3D 0x83000000, .val =3D 0xda, },<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span> =A0 /* dummy write Load EMR3 */</div=
>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 1, .addr =3D 0x81000400, .val =3D 0xda, },<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span> =A0 /* dummy write Load EMR1; e=
nable DLL */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 1, .addr =3D 0x80000333, .val =3D 0xda, },<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span> =A0 /* dummy write Load MR; res=
et DLL */</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92210000, }, =
/* CS0 precharge command */</div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0x80000400, .val =
=3D 0x12345678, }, /* precharge all dummy write */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xA2210000, }, /* select manua=
l refresh mode */</div><div><span class=3D"Apple-tab-span" style=3D"white-s=
pace:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654=
321, }, /* manual refresh */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654321, }, /* manual refre=
sh twice */</div><div><br></div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =
=3D 0xb2210000, }, /* Load Mode Register command */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 1, .addr =3D 0x80000233, .val =3D 0xda, },<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span> =A0 /* Load MR; CL=3D3, BL=3D8,=
 end DLL reset */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 1, .addr =3D 0x81000780, .val =3D 0xda, },<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span> =A0 /* Load EMR1; OCD default *=
/</div><div>

<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr_typ=
e =3D 1, .addr =3D 0x81000400, .val =3D 0xda, },<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span> =A0 /* Load EMR1; OCD exit */</div><=
div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr=
_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x82216080, }, /* normal mode *=
/</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* IO=
MUX_SW_PAD setup */</div><div><span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0x43FAC454, .val =3D 0x000=
01000, }, /* IOMUXC_SW_PAD_CTL_GRP_DDRTYPE(1-5) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 4, .addr =3D 0x43FAC448, .val =3D 0x00002000, }, /* IOMUXC_SW_PA=
D NFC voltage 1.8 */</div><div><br></div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">	</span>/* CLKCTL */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .pt=
r_type =3D 4, .addr =3D 0x53f80008, .val =3D 0x20034000, }, /* CLKCTL ARM=
=3D399 AHB=3D133 */</div><div>};</div></div><div>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">


All the things in lowlevel_init are then done when running from SDRAM<br>
anyway (at least when doing a dcd based boot), so they can safely be<br>
done later.<br>
<br>
The next thing is that the clocks are correctly initialized before the<br>
corresponding devices are registered.<br></blockquote><div><br></div><div>I=
 have seen that some devices simply enable all clocks in lowlevel and some =
enable the necessary ones at a later stage. To be sure, I have included bot=
h versions in my setup, so I can assure that all the necessary clocks are r=
unning on boot init.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
So let&#39;s analyze Eukreas lowlevel init:<br>
<br>
<br>
&gt; void __bare_init __naked board_init_lowlevel(void)<br>
&gt; {<br>
&gt; =A0 =A0 =A0 uint32_t r;<br>
&gt; #ifdef CONFIG_NAND_IMX_BOOT<br>
&gt; =A0 =A0 =A0 unsigned int *trg, *src;<br>
&gt; =A0 =A0 =A0 int i;<br>
&gt; #endif<br>
&gt; =A0 =A0 =A0 register uint32_t loops =3D 0x20000;<br>
&gt;<br>
&gt; =A0 =A0 =A0 /* restart the MPLL and wait until it&#39;s stable */<br>
&gt; =A0 =A0 =A0 writel(readl(IMX_CCM_BASE + CCM_CCTL) | (1 &lt;&lt; 27),<b=
r>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 IMX_CCM_BASE + CCM_CCTL);<br>
&gt; =A0 =A0 =A0 while (readl(IMX_CCM_BASE + CCM_CCTL) &amp; (1 &lt;&lt; 27=
)) {};<br>
&gt;<br>
&gt; =A0 =A0 =A0 /* Configure dividers and ARM clock source<br>
&gt; =A0 =A0 =A0 =A0* =A0 =A0 =A0ARM @ 400 MHz<br>
&gt; =A0 =A0 =A0 =A0* =A0 =A0 =A0AHB @ 133 MHz<br>
&gt; =A0 =A0 =A0 =A0*/<br>
&gt; =A0 =A0 =A0 writel(0x20034000, IMX_CCM_BASE + CCM_CCTL);<br>
<br>
This may influence the timer clock, so it can be here.<br></blockquote><div=
><br></div><div>I have copied this, since it was also done in the old uboot=
 version that works.</div><div>=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">


&gt;<br>
&gt; =A0 =A0 =A0 /* Enable UART1 / FEC / */<br>
&gt; /* =A0 =A0writel(0x1FFFFFFF, IMX_CCM_BASE + CCM_CGCR0);<br>
&gt; =A0 =A0 =A0 writel(0xFFFFFFFF, IMX_CCM_BASE + CCM_CGCR1);<br>
&gt; =A0 =A0 =A0 writel(0x000FDFFF, IMX_CCM_BASE + CCM_CGCR2);*/<br>
<br>
This brings the Clock gate registers to reset default. This may be a<br>
good idea, but can be done later.<br></blockquote><div><br></div><div>Ok, I=
 have copied this.=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; =A0 =A0 =A0 /* AIPS setup - Only setup MPROTx registers. The PACR defa=
ult values are good.<br>
&gt; =A0 =A0 =A0 =A0* Set all MPROTx to be non-bufferable, trusted for R/W,=
<br>
&gt; =A0 =A0 =A0 =A0* not forced to user-mode.<br>
&gt; =A0 =A0 =A0 =A0*/<br>
&gt; =A0 =A0 =A0 writel(0x77777777, 0x43f00000);<br>
&gt; =A0 =A0 =A0 writel(0x77777777, 0x43f00004);<br>
&gt; =A0 =A0 =A0 writel(0x77777777, 0x53f00000);<br>
&gt; =A0 =A0 =A0 writel(0x77777777, 0x53f00004);<br>
<br>
This can be done later. This is duplicated in many boards and is always<br>
the same. Look for example at the i.MX53 code, there we have<br>
imx53_init_lowlevel() which sets up the AIPS. This is common for all<br>
i.MX53 and is called from an initcall. Similar could be done for i.MX25<br>
aswell, if somebody is willing to implement it.<br></blockquote><div><br></=
div><div>I like the imx53_init_lowlevel() approach a lot, it&#39;s very cle=
an and helps avoiding redundancy and maintenance costs. If I get my device =
to boot from NOR, I might be inclined to give it a shot.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
&gt;<br>
&gt; =A0 =A0 =A0 /* MAX (Multi-Layer AHB Crossbar Switch) setup<br>
&gt; =A0 =A0 =A0 =A0* MPR - priority for MX25 is (SDHC2/SDMA)&gt;USBOTG&gt;=
RTIC&gt;IAHB&gt;DAHB<br>
&gt; =A0 =A0 =A0 =A0*/<br>
&gt; =A0 =A0 =A0 writel(0x00002143, 0x43f04000);<br>
&gt; =A0 =A0 =A0 writel(0x00002143, 0x43f04100);<br>
&gt; =A0 =A0 =A0 writel(0x00002143, 0x43f04200);<br>
&gt; =A0 =A0 =A0 writel(0x00002143, 0x43f04300);<br>
&gt; =A0 =A0 =A0 writel(0x00002143, 0x43f04400);<br>
&gt; =A0 =A0 =A0 /* SGPCR - always park on last master */<br>
&gt; =A0 =A0 =A0 writel(0x10, 0x43f04010);<br>
&gt; =A0 =A0 =A0 writel(0x10, 0x43f04110);<br>
&gt; =A0 =A0 =A0 writel(0x10, 0x43f04210);<br>
&gt; =A0 =A0 =A0 writel(0x10, 0x43f04310);<br>
&gt; =A0 =A0 =A0 writel(0x10, 0x43f04410);<br>
&gt; =A0 =A0 =A0 /* MGPCR - restore default values */<br>
&gt; =A0 =A0 =A0 writel(0x0, 0x43f04800);<br>
&gt; =A0 =A0 =A0 writel(0x0, 0x43f04900);<br>
&gt; =A0 =A0 =A0 writel(0x0, 0x43f04a00);<br>
&gt; =A0 =A0 =A0 writel(0x0, 0x43f04b00);<br>
&gt; =A0 =A0 =A0 writel(0x0, 0x43f04c00);<br>
&gt;<br>
&gt; =A0 =A0 =A0 /* Configure M3IF registers<br>
&gt; =A0 =A0 =A0 =A0* M3IF Control Register (M3IFCTL) for MX25<br>
&gt; =A0 =A0 =A0 =A0* MRRP[0] =3D LCDC =A0 =A0 =A0 =A0 =A0 on priority list=
 (1 &lt;&lt; 0) =A0=3D 0x00000001<br>
&gt; =A0 =A0 =A0 =A0* MRRP[1] =3D MAX1 =A0 =A0 =A0 not on priority list (0 =
&lt;&lt; 1) =A0=3D 0x00000000<br>
&gt; =A0 =A0 =A0 =A0* MRRP[2] =3D MAX0 =A0 =A0 =A0 not on priority list (0 =
&lt;&lt; 2) =A0=3D 0x00000000<br>
&gt; =A0 =A0 =A0 =A0* MRRP[3] =3D USB HOST =A0 not on priority list (0 &lt;=
&lt; 3) =A0=3D 0x00000000<br>
&gt; =A0 =A0 =A0 =A0* MRRP[4] =3D SDMA =A0 =A0 =A0 not on priority list (0 =
&lt;&lt; 4) =A0=3D 0x00000000<br>
&gt; =A0 =A0 =A0 =A0* MRRP[5] =3D SD/ATA/FEC not on priority list (0 &lt;&l=
t; 5) =A0=3D 0x00000000<br>
&gt; =A0 =A0 =A0 =A0* MRRP[6] =3D SCMFBC =A0 =A0 not on priority list (0 &l=
t;&lt; 6) =A0=3D 0x00000000<br>
&gt; =A0 =A0 =A0 =A0* MRRP[7] =3D CSI =A0 =A0 =A0 =A0not on priority list (=
0 &lt;&lt; 7) =A0=3D 0x00000000<br>
&gt; =A0 =A0 =A0 =A0* =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ----------<br>
&gt; =A0 =A0 =A0 =A0* =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x00000001<br>
&gt; =A0 =A0 =A0 =A0*/<br>
&gt; =A0 =A0 =A0 writel(0x1, 0xb8003000);<br>
<br>
Same as above.<br>
<br>
&gt;<br>
&gt; =A0 =A0 =A0 /* Speed up NAND controller by adjusting the NFC divider *=
/<br>
&gt; =A0 =A0 =A0 r =3D readl(IMX_CCM_BASE + CCM_PCDR2);<br>
&gt; =A0 =A0 =A0 r &amp;=3D ~0xf;<br>
&gt; =A0 =A0 =A0 r |=3D 0x1;<br>
&gt; =A0 =A0 =A0 writel(r, IMX_CCM_BASE + CCM_PCDR2);<br>
<br>
This is necessary for external NAND boot. The NAND controller comes up<br>
with a low speed which makes the copying of the image<br>
(CONFIG_NAND_IMX_BOOT below) slow. This is optional but has to be done<br>
here to get a faster boot.<br>
<br></blockquote><div>Ok, I reckon there is nothing comparable which should=
 be done in the NOR case.</div><div>=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>


&gt;<br>
&gt; =A0 =A0 =A0 /* Skip SDRAM initialization if we run from RAM */<br>
&gt; =A0 =A0 =A0 r =3D get_pc();<br>
&gt; =A0 =A0 =A0 if (r &gt; 0x80000000 &amp;&amp; r &lt; 0x90000000)<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 board_init_lowlevel_return();<br>
<br>
Here we bail out for second stage boots (and also internal bootmode<br>
where we are already running from SDRAM<br></blockquote><div><br></div><div=
>It&#39;s this place where I wanted to put a printf() to see where the code=
 is actually branching and if my setting of the corresponding WEIM CS0 regi=
sters upset the processor already. However, it seems as if printf()&#39;s h=
ere is a no-go.=A0</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
&gt;<br>
&gt; =A0 =A0 =A0 /* Init Mobile DDR */<br>
&gt; =A0 =A0 =A0 writel(0x0000000E, ESDMISC);<br>
&gt; =A0 =A0 =A0 writel(0x00000004, ESDMISC);<br>
&gt; =A0 =A0 =A0 __asm__ volatile (&quot;1:\n&quot;<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;subs %0, %1, #1\n&qu=
ot;<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;bne 1b&quot;:&quot;=
=3Dr&quot; (loops):&quot;0&quot; (loops));<br>
&gt;<br>
&gt; =A0 =A0 =A0 writel(0x0029572B, ESDCFG0);<br>
&gt; =A0 =A0 =A0 writel(0x92210000, ESDCTL0);<br>
&gt; =A0 =A0 =A0 writeb(0xda, IMX_SDRAM_CS0 + 0x400);<br>
&gt; =A0 =A0 =A0 writel(0xA2210000, ESDCTL0);<br>
&gt; =A0 =A0 =A0 writeb(0xda, IMX_SDRAM_CS0);<br>
&gt; =A0 =A0 =A0 writeb(0xda, IMX_SDRAM_CS0);<br>
&gt; =A0 =A0 =A0 writel(0xB2210000, ESDCTL0);<br>
&gt; =A0 =A0 =A0 writeb(0xda, IMX_SDRAM_CS0 + 0x33);<br>
&gt; =A0 =A0 =A0 writeb(0xda, IMX_SDRAM_CS0 + 0x1000000);<br>
&gt; =A0 =A0 =A0 writel(0x82216080, ESDCTL0);<br>
<br>
RAM init for external bootmode, has to be done here.<br></blockquote><div><=
br></div><div>I left it there.</div><div>=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">


<br>
&gt;<br>
&gt; #ifdef CONFIG_NAND_IMX_BOOT<br>
&gt; =A0 =A0 =A0 /* skip NAND boot if not running from NFC space */<br>
&gt; =A0 =A0 =A0 r =3D get_pc();<br>
&gt; =A0 =A0 =A0 if (r &lt; IMX_NFC_BASE || r &gt; IMX_NFC_BASE + 0x800)<br=
>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 board_init_lowlevel_return();<br>
&gt;<br>
&gt; =A0 =A0 =A0 src =3D (unsigned int *)IMX_NFC_BASE;<br>
&gt; =A0 =A0 =A0 trg =3D (unsigned int *)TEXT_BASE;<br>
&gt;<br>
&gt; =A0 =A0 =A0 /* Move ourselves out of NFC SRAM */<br>
&gt; =A0 =A0 =A0 for (i =3D 0; i &lt; 0x800 / sizeof(int); i++)<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 *trg++ =3D *src++;<br>
&gt;<br>
&gt; =A0 =A0 =A0 /* Jump to SDRAM */<br>
&gt; =A0 =A0 =A0 r =3D (unsigned int)&amp;insdram;<br>
&gt; =A0 =A0 =A0 __asm__ __volatile__(&quot;mov pc, %0&quot; : : &quot;r&qu=
ot;(r));<br>
&gt; #else<br>
&gt; =A0 =A0 =A0 board_init_lowlevel_return();<br>
&gt; #endif<br>
<br>
Finally copy the image from NAND SRAM to SDRAM, only needed for external<br=
>
NAND boot.<br>
<br></blockquote><div>And since I am trying to perform an internal MMC or N=
OR boot, this does not affect me at all.</div><div>=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">


Often the whole lowlevel stuff is setup in early assembly code. This has<br=
>
mostly historical reasons and &#39;hey, this is hardcore stuff we configure=
<br>
here, we must do it early and we must do it in assembly&#39;. Much of the<b=
r>
lowlevel stuff we have in barebox is just copied from a working U-Boot<br>
or redboot setup and never touched again, hence the slightly chaotic<br>
situation.<br></blockquote><div><br></div><div>This is what I have slowly c=
ome to understand while reading more source code over the weekend. I have a=
lso found the old uboot init part for this device from 2009.08 and have ada=
pted my lowlevel and device part code accordingly. I wonder if someone coul=
d write a quick and dirty perl/shell script to auto-port devices from uboot=
 to barebox, at least the basic booting facility.</div>

<div><br></div><div>In my case, there is one peculiarity in the u-boot sour=
ces, which I haven&#39;t been able to map to barebox yet and it&#39;s best =
described by the corresponding code:</div><div><br></div><div><div>#include=
 &lt;common.h&gt;</div>

<div>#include &lt;asm/io.h&gt;</div><div>#include &lt;asm/errno.h&gt;</div>=
<div>#include &lt;asm/arch/mx25.h&gt;</div><div>#include &lt;asm/arch/mx25-=
regs.h&gt;</div><div>#include &lt;asm/arch/mx25_pins.h&gt;</div><div>#inclu=
de &lt;asm/arch/iomux.h&gt;</div>

<div>#include &lt;asm/arch/gpio.h&gt;</div><div>#include &lt;imx_spi.h&gt;<=
/div><div><br></div><div>#ifdef CONFIG_CMD_MMC</div><div>#include &lt;mmc.h=
&gt;</div><div>#include &lt;fsl_esdhc.h&gt;</div><div>#endif</div><div>

<br></div><div>DECLARE_GLOBAL_DATA_PTR;</div><div><br></div><div>static u32=
 system_rev;</div><div><br></div><div>u32 get_board_rev(void)</div><div>{</=
div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>r=
eturn system_rev;</div>

<div>}</div><div><br></div><div>static inline void setup_soc_rev(void)</div=
><div>{</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>int reg;</div><div><span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>reg =3D __REG(IIM_BASE + IIM_SREV);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if (!=
reg) {</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
	</span>reg =3D __REG(ROMPATCH_REV);</div><div><span class=3D"Apple-tab-spa=
n" style=3D"white-space:pre">		</span>reg &lt;&lt;=3D 4;</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>} els=
e</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</sp=
an>reg +=3D CHIP_REV_1_0;</div><div><span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span>system_rev =3D 0x25000 + (reg &amp; 0xFF);</div>

<div>}</div><div><br></div><div>inline int is_soc_rev(int rev)</div><div>{<=
/div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
return (system_rev &amp; 0xFF) - rev;</div><div>}</div><div><br></div><div>

int dram_init(void)</div><div>{</div><div><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">	</span>gd-&gt;bd-&gt;bi_dram[0].start =3D PHYS_SDR=
AM_1;</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	<=
/span>gd-&gt;bd-&gt;bi_dram[0].size =3D PHYS_SDRAM_1_SIZE;</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>return 0;</div><div>}</div><div><br></div><div>#ifdef CONFIG_CMD_=
MMC</div><div><br></div><div>u32 *imx_esdhc_base_addr;</div><div><br></div>

<div>int esdhc_gpio_init(void)</div><div>{</div><div><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span>u32 interface_esdhc =3D 0, val =
=3D 0;</div><div><br></div><div><span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">	</span>interface_esdhc =3D (readl(CCM_RCSR) &amp; (0x0030000=
0)) &gt;&gt; 20;</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>switch (interface_esdhc) {</div><div><span class=3D"Apple-tab-spa=
n" style=3D"white-space:pre">	</span>case 0:</div><div><span class=3D"Apple=
-tab-span" style=3D"white-space:pre">		</span>imx_esdhc_base_addr =3D (u32 =
*)MMC_SDHC1_BASE;</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>/* P=
ins */</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
	</span>writel(0x10, IOMUXC_BASE + 0x190);<span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">	</span>/* SD1_CMD */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x10, IOMUXC_BASE + 0x194);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* SD1_CLK */</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>writel(0x00, IOMUXC_BASE + 0x198);<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* SD1_DATA0 */<=
/div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x00, IOMUXC_BASE + 0x19c);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* SD1_DATA1 */</div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">		</span>writel(0x00, IOMUXC_BASE + 0x1a0);<spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* SD1_DATA2 *=
/</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x00, IOMUXC_BASE + 0x1a4);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* SD1_DATA3 */</div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">		</span>/*ENABLE NOR</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x06, IOMUXC_BASE + 0x094);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// D12 (SD1_DATA4)</div><div><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">		</span>writel(0x06, IOMUXC_BASE + 0x090);<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>// D13 (SD1=
_DATA5)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x06, IOMUXC_BASE + 0x08c);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// D14 (SD1_DATA6)</div><div><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">		</span>writel(0x06, IOMUXC_BASE + 0x088);<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>// D15 (SD1=
_DATA7)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x05, IOMUXC_BASE + 0x010);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// A14 (SD1_WP)</div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">		</span>writel(0x05, IOMUXC_BASE + 0x014);<spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>// A15 (SD1_DE=
T)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>*/</=
div><div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space=
:pre">		</span>/* Pads */</div><div><span class=3D"Apple-tab-span" style=3D=
"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x388);<span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span>/* SD1_CMD */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x38c);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* SD1_CLK */</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x390);<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* SD1_DATA0 */<=
/div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x394);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* SD1_DATA1 */</div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x398);<spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* SD1_DATA2 *=
/</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x39c);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* SD1_DATA3 */</div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">		</span>/* ENABLE NOR</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x28c);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// D12 (SD1_DATA4)</div><div><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x288);<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>// D13 (SD1=
_DATA5)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x284);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// D14 (SD1_DATA6)</div><div><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x280);<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>// D15 (SD1=
_DATA7)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x230);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// A14 (SD1_WP)</div><div><span class=3D"Apple-tab-span=
" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x234);<spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>// A15 (SD1_DE=
T)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>*/</=
div><div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space=
:pre">		</span>/*</div><div><span class=3D"Apple-tab-span" style=3D"white-s=
pace:pre">		</span> * Set write protect and card detect gpio as inputs</div=
>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span> * A=
14 (SD1_WP) and A15 (SD1_DET)</div><div><span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">		</span> */</div><div><span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">		</span>val =3D ~(3 &lt;&lt; 0) &amp; readl(GPI=
O1_BASE + GPIO_GDIR);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(val, GPIO1_BASE + GPIO_GDIR);</div><div><span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">		</span>break;</div><div><span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>case 1:</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>imx_=
esdhc_base_addr =3D (u32 *)MMC_SDHC2_BASE;</div><div><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">		</span>/* Pins */</div><div><span clas=
s=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writel(0x16, IOMUXC=
_BASE + 0x0e8);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</=
span>/* LD8 (SD1_CMD) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x16, IOMUXC_BASE + 0x0ec);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* LD9 (SD1_CLK) */</div><div><span class=3D"Apple-tab-=
span" style=3D"white-space:pre">		</span>writel(0x06, IOMUXC_BASE + 0x0f0);=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* LD10 (S=
D1_DATA0) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x06, IOMUXC_BASE + 0x0f4);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* LD11 (SD1_DATA1) */</div><div><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">		</span>writel(0x06, IOMUXC_BASE + 0x0f=
8);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* LD12=
 (SD1_DATA2) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x06, IOMUXC_BASE + 0x0fc);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* LD13 (SD1_DATA3) */</div><div><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">		</span>writel(0x02, IOMUXC_BASE + 0x12=
0);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* CSI_=
D2 (SD1_DATA4) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x02, IOMUXC_BASE + 0x124);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* CSI_D3 (SD1_DATA5) */</div><div><span class=3D"Apple=
-tab-span" style=3D"white-space:pre">		</span>writel(0x02, IOMUXC_BASE + 0x=
128);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* CS=
I_D4 (SD1_DATA6) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x02, IOMUXC_BASE + 0x12c);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* CSI_D5 (SD1_DATA7) */</div><div><br></div><div><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>/* Pads */</di=
v>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x2e0);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* LD8 (SD1_CMD) */</div><div><span class=3D"Apple-tab-=
span" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x2e4);=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* LD9 (SD=
1_CLK) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x2e8);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* LD10 (SD1_DATA0) */</div><div><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x2e=
c);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* LD11=
 (SD1_DATA1) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x2f0);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* LD12 (SD1_DATA2) */</div><div><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x2f=
4);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* LD13=
 (SD1_DATA3) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x318);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* CSI_D2 (SD1_DATA4) */</div><div><span class=3D"Apple=
-tab-span" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x=
31c);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* CS=
I_D3 (SD1_DATA5) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0xD1, IOMUXC_BASE + 0x320);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* CSI_D4 (SD1_DATA6) */</div><div><span class=3D"Apple=
-tab-span" style=3D"white-space:pre">		</span>writel(0xD1, IOMUXC_BASE + 0x=
324);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* CS=
I_D5 (SD1_DATA7) */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>brea=
k;</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</sp=
an>default:</div><div><span class=3D"Apple-tab-span" style=3D"white-space:p=
re">		</span>break;</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>}</di=
v><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>ret=
urn 0;</div><div>}</div><div><br></div><div>int board_mmc_init(void)</div><=
div>

{</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n>if (!esdhc_gpio_init())</div><div><span class=3D"Apple-tab-span" style=3D=
"white-space:pre">		</span>return fsl_esdhc_mmc_init(gd-&gt;bd);</div><div>=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>else</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>retu=
rn -1;</div><div>}</div><div>#endif</div><div><br></div><div>void spi_io_in=
it(struct imx_spi_dev_t *dev)</div><div>{</div><div><span class=3D"Apple-ta=
b-span" style=3D"white-space:pre">	</span>switch (dev-&gt;base) {</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>case =
CSPI1_BASE:</div><div><span class=3D"Apple-tab-span" style=3D"white-space:p=
re">		</span>writel(0, IOMUXC_BASE + 0x180);<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>/* CSPI1 SCLK */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x1C0, IOMUXC_BASE + 0x5c4);</div><div><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">		</span>writel(0, IOMUXC_BASE + 0x184);<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">		</span>/* SPI_RDY */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x1E0, IOMUXC_BASE + 0x5c8);</div><div><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">		</span>writel(0, IOMUXC_BASE + 0x170);<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">		</span>/* MOSI */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x1C0, IOMUXC_BASE + 0x5b4);</div><div><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">		</span>writel(0, IOMUXC_BASE + 0x174);<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">		</span>/* MISO */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x1C0, IOMUXC_BASE + 0x5b8);</div><div><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">		</span>writel(0, IOMUXC_BASE + 0x17C);<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">		</span>/* SS1 */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x1E0, IOMUXC_BASE + 0x5C0);</div><div><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">		</span>break;</div><div><span class=3D"Apple-tab-=
span" style=3D"white-space:pre">	</span>default:</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>brea=
k;</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</sp=
an>}</div><div>}</div><div><br></div><div>int board_init(void)</div><div>{<=
/div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>setup=
_soc_rev();</div><div><br></div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>/* setup pins for UART1 */</div><div><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* UART 1 IOMUX Con=
figs */</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_r=
equest_iomux(MX25_PIN_UART1_RXD, MUX_CONFIG_FUNC);</div><div><span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_request_iomux(MX25_P=
IN_UART1_TXD, MUX_CONFIG_FUNC);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_r=
equest_iomux(MX25_PIN_UART1_RTS, MUX_CONFIG_FUNC);</div><div><span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_request_iomux(MX25_P=
IN_UART1_CTS, MUX_CONFIG_FUNC);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_i=
omux_set_pad(MX25_PIN_UART1_RXD,</div><div><span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">			</span>PAD_CTL_HYS_SCHMITZ | PAD_CTL_PKE_ENABLE=
 |</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>PAD=
_CTL_PUE_PUD | PAD_CTL_100K_PU);</div><div><span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>mxc_iomux_set_pad(MX25_PIN_UART1_TXD,</div=
><div>

<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>PAD_CTL_=
PUE_PUD | PAD_CTL_100K_PD);</div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>mxc_iomux_set_pad(MX25_PIN_UART1_RTS,</div><di=
v><span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>PAD_CT=
L_HYS_SCHMITZ | PAD_CTL_PKE_ENABLE |</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>PAD=
_CTL_PUE_PUD | PAD_CTL_100K_PU);</div><div><span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>mxc_iomux_set_pad(MX25_PIN_UART1_CTS,</div=
><div>

<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>PAD_CTL_=
PUE_PUD | PAD_CTL_100K_PD);</div><div><br></div><div><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span>/* setup pins for FEC */</div><d=
iv>
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_reques=
t_iomux(MX25_PIN_FEC_TX_CLK, MUX_CONFIG_FUNC);</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_r=
equest_iomux(MX25_PIN_FEC_RX_DV, MUX_CONFIG_FUNC);</div><div><span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_request_iomux(MX25_P=
IN_FEC_RDATA0, MUX_CONFIG_FUNC);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_r=
equest_iomux(MX25_PIN_FEC_TDATA0, MUX_CONFIG_FUNC);</div><div><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_request_iomux(MX2=
5_PIN_FEC_TX_EN, MUX_CONFIG_FUNC);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_r=
equest_iomux(MX25_PIN_FEC_MDC, MUX_CONFIG_FUNC);</div><div><span class=3D"A=
pple-tab-span" style=3D"white-space:pre">	</span>mxc_request_iomux(MX25_PIN=
_FEC_MDIO, MUX_CONFIG_FUNC);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_r=
equest_iomux(MX25_PIN_FEC_RDATA1, MUX_CONFIG_FUNC);</div><div><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_request_iomux(MX2=
5_PIN_FEC_TDATA1, MUX_CONFIG_FUNC);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_r=
equest_iomux(MX25_PIN_POWER_FAIL, MUX_CONFIG_FUNC); /* PHY INT */</div><div=
><br></div><div>#define FEC_PAD_CTL1 (PAD_CTL_HYS_SCHMITZ | PAD_CTL_PUE_PUD=
 | \</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>PAD=
_CTL_PKE_ENABLE)</div><div>#define FEC_PAD_CTL2 (PAD_CTL_PUE_PUD)</div><div=
><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	<=
/span>mxc_iomux_set_pad(MX25_PIN_FEC_TX_CLK, FEC_PAD_CTL1);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_i=
omux_set_pad(MX25_PIN_FEC_RX_DV, FEC_PAD_CTL1);</div><div><span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>mxc_iomux_set_pad(MX25_PIN_=
FEC_RDATA0, FEC_PAD_CTL1);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_i=
omux_set_pad(MX25_PIN_FEC_TDATA0, FEC_PAD_CTL2);</div><div><span class=3D"A=
pple-tab-span" style=3D"white-space:pre">	</span>mxc_iomux_set_pad(MX25_PIN=
_FEC_TX_EN, FEC_PAD_CTL2);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_i=
omux_set_pad(MX25_PIN_FEC_MDC, FEC_PAD_CTL2);</div><div><span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>mxc_iomux_set_pad(MX25_PIN_FE=
C_MDIO, FEC_PAD_CTL1 | PAD_CTL_22K_PU);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_i=
omux_set_pad(MX25_PIN_FEC_RDATA1, FEC_PAD_CTL1);</div><div><span class=3D"A=
pple-tab-span" style=3D"white-space:pre">	</span>mxc_iomux_set_pad(MX25_PIN=
_FEC_TDATA1, FEC_PAD_CTL2);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_i=
omux_set_pad(MX25_PIN_POWER_FAIL, FEC_PAD_CTL1);</div><div><br></div><div><=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/*</div><di=
v><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * Set u=
p the FEC_RESET_B and FEC_ENABLE GPIO pins.</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * As=
sert FEC_RESET_B, then power up the PHY by asserting</div><div><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * FEC_ENABLE, at the=
 same time lifting FEC_RESET_B.</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> *</d=
iv><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> *=
 FEC_RESET_B: gpio2[3] is ALT 5 mode of pin D12</div><div><span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span> * FEC_ENABLE_B: gpio4[8] i=
s ALT 5 mode of pin A17</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> */</=
div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/=
*FQ FOR ENABLE NOR</div><div><span class=3D"Apple-tab-span" style=3D"white-=
space:pre">	</span>mxc_request_iomux(MX25_PIN_A17, MUX_CONFIG_ALT5); // FEC=
_EN</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_r=
equest_iomux(MX25_PIN_D12, MUX_CONFIG_ALT5); // FEC_RESET_B</div><div><br><=
/div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
mxc_iomux_set_pad(MX25_PIN_A17, PAD_CTL_ODE_OpenDrain);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_i=
omux_set_pad(MX25_PIN_D12, 0);</div><div><br></div><div><span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>mxc_set_gpio_direction(MX25_P=
IN_A17, 0); // FEC_EN</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_s=
et_gpio_direction(MX25_PIN_D12, 0); // FEC_RESET_B</div><div><br></div><div=
><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* drop P=
HY power</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_s=
et_gpio_dataout(MX25_PIN_A17, 0);<span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre">	</span>// FEC_EN</div><div><br></div><div><span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>// assert reset</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_s=
et_gpio_dataout(MX25_PIN_D12, 0);<span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre">	</span>// FEC_RESET_B</div><div><span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span>udelay(2);<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">		</span>// spec says 1us min</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>// turn on PHY power and lift reset</div><div><span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>mxc_set_gpio_dataout(MX25_PIN=
_A17, 1);<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/=
/ FEC_EN</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_s=
et_gpio_dataout(MX25_PIN_D12, 1);<span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre">	</span>// FEC_RESET_B</div><div><span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span>*/</div>

<div><br></div><div>#define I2C_PAD_CTL (PAD_CTL_HYS_SCHMITZ | PAD_CTL_PKE_=
ENABLE | \</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">		</span>PAD_CTL_PUE_PUD | PAD_CTL_100K_PU | PAD_CTL_ODE_OpenDrain)</div=
>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>mxc_request_iomux(MX25_PIN_I2C1_CLK, MUX_CONFIG_SION);</div><div>=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_reques=
t_iomux(MX25_PIN_I2C1_DAT, MUX_CONFIG_SION);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_i=
omux_set_pad(MX25_PIN_I2C1_CLK, 0x1E8);</div><div><span class=3D"Apple-tab-=
span" style=3D"white-space:pre">	</span>mxc_iomux_set_pad(MX25_PIN_I2C1_DAT=
, 0x1E8);</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>gd-&gt;bd-&gt;bi_arch_number =3D MACH_TYPE_MX25_3DS; =A0 =A0/* bo=
ard id for linux */</div><div><span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>gd-&gt;bd-&gt;bi_boot_params =3D 0x80000100; =A0 =A0/* =
address of boot parameters */</div>

<div><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>return 0;</div><div><br></div><div>#undef FEC_PAD_CTL1</div><div>=
#undef FEC_PAD_CTL2</div><div>#undef I2C_PAD_CTL</div><div>}</div><div><br>

</div><div>#ifdef BOARD_LATE_INIT</div><div>int board_late_init(void)</div>=
<div>{</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>u8 reg[4];</div><div><br></div><div><span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>/* Turn PMIC On*/</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg[0=
] =3D 0x09;</div><div><span class=3D"Apple-tab-span" style=3D"white-space:p=
re">	</span>i2c_write(0x54, 0x02, 1, reg, 1);</div><div><br></div><div>#ifd=
ef CONFIG_IMX_SPI_CPLD</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mxc_c=
pld_spi_init();</div><div>#endif</div><div><br></div><div><span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>return 0;</div><div>}</div>=
<div>

#endif</div><div><br></div><div><br></div><div>int checkboard(void)</div><d=
iv>{</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</=
span>printf(&quot;Boot Device: SD Card \n&quot;);</div><div><span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>printf(&quot;Board: SID1 =
i.MX25 \n&quot;);</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>retur=
n 0;</div><div>}</div><div><br></div><div>int board_eth_init(bd_t *bis)</di=
v><div>{</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span>int rc =3D -ENODEV;</div>

<div>#if defined(CONFIG_SMC911X)</div><div><span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>rc =3D smc911x_initialize(0, CONFIG_SMC911=
X_BASE);</div><div>#endif</div><div><span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span>return rc;</div>

<div>}</div></div><div>=A0</div><div>It seems as if in order to support NOR=
 upon boot, the following PADs and PINs have to be disabled:</div><div><br>=
</div><div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>writel(0x06, IOMUXC_BASE + 0x094);<span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">	</span>// D12 (SD1_DATA4)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x06, IOMUXC_BASE + 0x090);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// D13 (SD1_DATA5)</div><div><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">		</span>writel(0x06, IOMUXC_BASE + 0x08c);<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>// D14 (SD1=
_DATA6)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x06, IOMUXC_BASE + 0x088);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// D15 (SD1_DATA7)</div><div><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">		</span>writel(0x05, IOMUXC_BASE + 0x010);<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>// A14 (SD1=
_WP)</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>writ=
el(0x05, IOMUXC_BASE + 0x014);<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>// A15 (SD1_DET)</div></div><div><br></div><div>Why, an=
d how could I find the corresponding barebox mappings? I recall that last w=
eek someone wanted to synchronize the IOMUX settings with the kernel ones. =
But still, why this change and could this affect my issue I am seeing with =
barebox? I still cannot initialize the NOR upon MMC internal boot on my dev=
ice.</div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">
Hope I could help you a bit.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>A lot, let me know where I can send the beers or any beverage=
 to as soon as I get the bloody thing booting from NOR and showing up my NO=
R :).</div>

<div><br></div><div>Take care</div><div>Roberto=A0</div></div></div>

--14dae9340e5771b30004c1296f3c--


--===============0444897018690604504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0444897018690604504==--
