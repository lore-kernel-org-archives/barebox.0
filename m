Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k12WM-0004jb-1E
 for barebox@lists.infradead.org; Thu, 30 Jul 2020 06:58:31 +0000
Received: by mail-qk1-x741.google.com with SMTP id h7so24694041qkk.7
 for <barebox@lists.infradead.org>; Wed, 29 Jul 2020 23:58:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <52e432ea-2ecb-2464-9126-379900da2433@pengutronix.de>
In-Reply-To: <52e432ea-2ecb-2464-9126-379900da2433@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Thu, 30 Jul 2020 08:58:16 +0200
Message-ID: <CAKd8=GvjdkC=mHYq3LpLwtaSi8WhYsn3e1VphTWefbzpq=_ZFA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

The DCD part now matches exactly for the top part (00000000 to
00000020)  of it which i guess is the IVT header, which shouldn't be
the same?

The following is xxd where barebox  (left side) has been shifted 0x400
to match u-boot part.

/usr/bin/diff -y <(xxd barebox_stripped) <(xxd uboot_stripped)
00000000: d100 2040 0010 0080 0000 0000 2c04 0080  .. @...... |
00000000: d100 2040 0000 c0bf 0000 0000 2cf4 bfbf  .. @......
00000010: 2004 0080 0004 0080 0000 0000 0000 0000   ......... |
00000010: 20f4 bfbf 00f4 bfbf 0000 0000 0000 0000   .........
00000020: 0000 0080 00e0 0500 0000 0000 d201 ec40  .......... |
00000020: 00f0 bfbf 00b0 0600 0000 0000 d201 ec40  ..........
00000030: cc00 3404 3034 0004 4f40 0005 3036 0388  ..4.04..O@
00000030: cc00 3404 3034 0004 4f40 0005 3036 0388  ..4.04..O@
00000040: 4000 0000 3036 0384 4000 0000 3036 0070  @...06..@.
00000040: 4000 0000 3036 0384 4000 0000 3036 0070  @...06..@.
00000050: 0070 302c 3036 0090 0000 0000 3036 0070  .p0,06....
00000050: 0070 302c 3036 0090 0000 0000 3036 0070  .p0,06....
00000060: 0060 302c cf00 0c14 3036 0070 8000 0000  .`0,....06
00000060: 0060 302c cf00 0c14 3036 0070 8000 0000  .`0,....06
00000070: cc01 5c04 3039 1000 0000 0002 307a 0000  ..\.09....
00000070: cc01 5c04 3039 1000 0000 0002 307a 0000  ..\.09....
00000080: 0104 0001 307a 01a0 8040 0003 307a 01a4  ....0z...@
00000080: 0104 0001 307a 01a0 8040 0003 307a 01a4  ....0z...@
00000090: 0010 0020 307a 01a8 8010 0004 307a 0064  ... 0z....
00000090: 0010 0020 307a 01a8 8010 0004 307a 0064  ... 0z....
000000a0: 0020 0045 307a 0490 0000 0001 307a 00d0  . .E0z....
000000a0: 0020 0045 307a 0490 0000 0001 307a 00d0  . .E0z....
000000b0: 0002 0081 307a 00d4 0068 0000 307a 00dc  ....0z...h
000000b0: 0002 0081 307a 00d4 0068 0000 307a 00dc  ....0z...h
000000c0: 0930 0004 307a 00e0 0048 0000 307a 00e4  .0..0z...H
000000c0: 0930 0004 307a 00e0 0048 0000 307a 00e4  .0..0z...H
000000d0: 0010 0004 307a 00f4 0000 033f 307a 0100  ....0z....
000000d0: 0010 0004 307a 00f4 0000 033f 307a 0100  ....0z....
000000e0: 090e 0809 307a 0104 0007 020e 307a 0108  ....0z....
000000e0: 090e 0809 307a 0104 0007 020e 307a 0108  ....0z....
000000f0: 0304 0407 307a 010c 0000 2006 307a 0110  ....0z....
000000f0: 0304 0407 307a 010c 0000 2006 307a 0110  ....0z....
00000100: 0402 0304 307a 0114 0303 0202 307a 0120  ....0z....
00000100: 0402 0304 307a 0114 0303 0202 307a 0120  ....0z....
00000110: 0000 0803 307a 0180 0080 0020 307a 0190  ....0z....
00000110: 0000 0803 307a 0180 0080 0020 307a 0190  ....0z....
00000120: 0209 8204 307a 0194 0003 0303 307a 0200  ....0z....
00000120: 0209 8204 307a 0194 0003 0303 307a 0200  ....0z....
00000130: 0000 0016 307a 0204 0017 1717 307a 0210  ....0z....
00000130: 0000 0016 307a 0204 0017 1717 307a 0210  ....0z....
00000140: 0000 0f0f 307a 0214 0404 0404 307a 0218  ....0z....
00000140: 0000 0f0f 307a 0214 0404 0404 307a 0218  ....0z....
00000150: 0f04 0404 307a 0240 0600 0604 307a 0244  ....0z.@..
00000150: 0f04 0404 307a 0240 0600 0604 307a 0244  ....0z.@..
00000160: 0000 0001 3039 1000 0000 0000 3079 0000  ....09....
00000160: 0000 0001 3039 1000 0000 0000 3079 0000  ....09....
00000170: 1742 0f40 3079 0004 1021 0100 3079 0010  .B.@0y...!
00000170: 1742 0f40 3079 0004 1021 0100 3079 0010  .B.@0y...!
00000180: 0006 0807 3079 00b0 1010 007e 3079 009c  ....0y....
00000180: 0006 0807 3079 00b0 1010 007e 3079 009c  ....0y....
00000190: 0000 0924 3079 0020 0b0b 0b0b 3079 0030  ...$0y. ..
00000190: 0000 0924 3079 0020 0b0b 0b0b 3079 0030  ...$0y. ..
000001a0: 0606 0606 3079 0050 0100 0010 3079 0050  ....0y.P..
000001a0: 0606 0606 3079 0050 0100 0010 3079 0050  ....0y.P..
000001b0: 0000 0010 3079 00c0 0c40 7304 3079 00c0  ....0y...@
000001b0: 0000 0010 3079 00c0 0c40 7304 3079 00c0  ....0y...@
000001c0: 0c44 7304 3079 00c0 0c44 7306 cf00 0c14  .Ds.0y...D
000001c0: 0c44 7304 3079 00c0 0c44 7306 cf00 0c14  .Ds.0y...D
000001d0: 3079 00c4 0000 0001 cc00 3404 3079 00c0  0y........
000001d0: 3079 00c4 0000 0001 cc00 3404 3079 00c0  0y........
000001e0: 0c44 7304 3079 00c0 0c40 7304 3038 4130  .Ds.0y...@
000001e0: 0c44 7304 3079 00c0 0c40 7304 3038 4130  .Ds.0y...@
000001f0: 0000 0000 3034 0020 0000 0178 3038 4130  ....04. ..
000001f0: 0000 0000 3034 0020 0000 0178 3038 4130  ....04. ..
00000200: 0000 0002 3079 0018 0000 000f cf00 0c14  ....0y....
00000200: 0000 0002 3079 0018 0000 000f cf00 0c14  ....0y....
00000210: 307a 0004 0000 0001 0000 0000 0000 0000  0z........
00000210: 307a 0004 0000 0001 0000 0000 0000 0000  0z........

So I guess that the DCD table part now should be correct. So the
question is if this is and lowlevel.c/board.c boilerplate issue or
maybe I need something in the Kconfig menu.

/Lars Pedersen

On Wed, 29 Jul 2020 at 19:22, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Lars,
>
> On 7/29/20 6:52 PM, Lars Pedersen wrote:
> > I have spent the last couple of days trying to port our bootloader
> > from u-boot to barebox 2020.07 but have yet to get any console output.
> > Our product is based on tqma7d i.MX7 dual core cpu and uses UART4 for
> > serial console and boots from internal eMMC.
> >
> > I created a new board inspired from "NXP i.MX7 SabreSD board" and
> > tried to only add the basic in the first step to get a console output
> > working. The image is built using ptxdist and the imx_v7_defconfig
> > where the new board is selected. The image is flashed with "dd
> > if=barebox-image of=/dev/mmcblk0 bs=1024 skip=1 seek=1 conv=fsync".
> > The device works using u-boot 2020.07 with the same device trees but
> > we thought it was time to try out barebox since u-boot felt a little
> > bloated :)
> >
> > So can anyone be of assistance and tell me what I'm missing?
> >
> > /Lars Pedersen
> >
> > From: Lars Pedersen <laa@kamstrup.com>
> > Date: Tue, 28 Jul 2020 08:57:57 +0000
> > Subject: [PATCH] Add kamstrup imx7d dev board
> >
> > ---
> >  arch/arm/boards/Makefile                           |   1 +
> >  arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile     |   2 +
> >  arch/arm/boards/kamstrup-imx7d-tqma7d/board.c      |  19 ++
> >  .../flash-header-kamstrup-imx7d-tqma7d.imxcfg      |  79 ++++++
> >  arch/arm/boards/kamstrup-imx7d-tqma7d/lowlevel.c   |  35 +++
> >  arch/arm/dts/Makefile                              |   1 +
> >  arch/arm/dts/imx7d-flex-concentrator-mfg.dts       |  11 +
> >  arch/arm/mach-imx/Kconfig                          |   5 +
> >  drivers/regulator/Kconfig                          |   2 +-
> >  dts/src/arm/imx7d-flex-concentrator-mfg.dts        |  25 ++
> >  dts/src/arm/imx7d-flex-concentrator.dts            | 313 +++++++++++++++++++++
> >  images/Makefile.imx                                |   5 +
> >  12 files changed, 497 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile
> >  create mode 100644 arch/arm/boards/kamstrup-imx7d-tqma7d/board.c
> >  create mode 100644
> > arch/arm/boards/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> >  create mode 100644 arch/arm/boards/kamstrup-imx7d-tqma7d/lowlevel.c
> >  create mode 100644 arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> >  create mode 100644 dts/src/arm/imx7d-flex-concentrator-mfg.dts
> >  create mode 100644 dts/src/arm/imx7d-flex-concentrator.dts
> >
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index e9e9163d589b..58bb4cf2adab 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -64,6 +64,7 @@ obj-$(CONFIG_MACH_HIGHBANK)            += highbank/
> >  obj-$(CONFIG_MACH_IMX21ADS)            += freescale-mx21-ads/
> >  obj-$(CONFIG_MACH_IMX233_OLINUXINO)        += imx233-olinuxino/
> >  obj-$(CONFIG_MACH_IMX27ADS)            += freescale-mx27-ads/
> > +obj-$(CONFIG_MACH_KAMSTRUP_IMX7D_TQMA7D)    += kamstrup-imx7d-tqma7d/
> >  obj-$(CONFIG_MACH_KINDLE3)            += kindle3/
> >  obj-$(CONFIG_MACH_KONTRON_SAMX6I)        += kontron-samx6i/
> >  obj-$(CONFIG_MACH_LENOVO_IX4_300D)        += lenovo-ix4-300d/
> > diff --git a/arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile
> > b/arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile
> > new file mode 100644
> > index 000000000000..01c7a259e9a5
> > --- /dev/null
> > +++ b/arch/arm/boards/kamstrup-imx7d-tqma7d/Makefile
> > @@ -0,0 +1,2 @@
> > +obj-y += board.o
> > +lwl-y += lowlevel.o
> > diff --git a/arch/arm/boards/kamstrup-imx7d-tqma7d/board.c
> > b/arch/arm/boards/kamstrup-imx7d-tqma7d/board.c
> > new file mode 100644
> > index 000000000000..b3ffa851f3e6
> > --- /dev/null
> > +++ b/arch/arm/boards/kamstrup-imx7d-tqma7d/board.c
> > @@ -0,0 +1,19 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: 2020 Kamstrup A/S
> > +
> > +/* Author: Lars Pedersen <lapeddk@gmail.com> */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <io.h>
> > +#include <mach/imx7-regs.h>
> > +#include <mfd/imx7-iomuxc-gpr.h>
> > +
> > +static int kamstrup_mx7_tqma7d_coredevices_init(void)
> > +{
> > +    if (!of_machine_is_compatible("kam,imx7d-flex-concentrator"))
> > +        return 0;
> > +
> > +    return 0;
> > +}
> > +coredevice_initcall(kamstrup_mx7_tqma7d_coredevices_init);
> > diff --git a/arch/arm/boards/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> > b/arch/arm/boards/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> > new file mode 100644
> > index 000000000000..7656619c1b2e
> > --- /dev/null
> > +++ b/arch/arm/boards/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> > @@ -0,0 +1,79 @@
> > +soc imx7
> > +loadaddr 0x80000000
> > +dcdofs 0x400
> > +
> > +#include <mach/imx7-ddr-regs.h>
> > +wm 32 0x30340004 0x4F400005 /* IOMUXC_GPR_GPR1 */
> > +/* TODO this is copied from imx7sabresd */
> > +/* Clear then set bit30 to ensure exit from DDR retention */
> > +wm 32 0x30360388 0x40000000
> > +wm 32 0x30360384 0x40000000
> > +
> > +/* TQMa7x DRAM Timing REV0100 */
> > +/* DCD Code i.MX7D/S 528 MHz 1 GByte Samsung K4B4G1646D */
> > +wm 32 0x30360070 0x0070302C     /*CCM_ANALOG_PLL_DDRx*/
> > +wm 32  0x30360090 0x00000000    /*CCM_ANALOG_PLL_NUM*/
> > +wm 32  0x30360070 0x0060302C    /*CCM_ANALOG_PLL_DDRx*/
> > +check 32 until_any_bit_set 0x30360070 0x80000000
> > +wm 32 0x30391000 0x00000002     /*SRC_DDRC_RCR*/
> > +
> > +wm 32 MX7_DDRC_MSTR 0x01040001   /*DDRC_MSTR*/
> > +wm 32 MX7_DDRC_DFIUPD0 0x80400003   /*DDRC_DFIUPD0*/
> > +wm 32 MX7_DDRC_DFIUPD1 0x00100020   /*DDRC_DFIUPD1*/
> > +wm 32 MX7_DDRC_DFIUPD2 0x80100004   /*DDRC_DFIUPD2*/
> > +wm 32 MX7_DDRC_RFSHTMG 0x00200045   /*DDRC_RFSHTMG*/
> > +wm 32 MX7_DDRC_MP_PCTRL_0 0x00000001   /*DDRC_MP_PCTRL_0*/
> > +wm 32 MX7_DDRC_INIT0 0x00020081   /*DDRC_INIT0*/
> > +wm 32 MX7_DDRC_INIT1 0x00680000   /*DDRC_INIT1*/
> > +wm 32 MX7_DDRC_INIT3 0x09300004   /*DDRC_INIT3*/
> > +wm 32 MX7_DDRC_INIT4 0x00480000   /*DDRC_INIT4*/
> > +wm 32 MX7_DDRC_INIT5 0x00100004   /*DDRC_INIT5*/
> > +wm 32 MX7_DDRC_RANKCTL 0x0000033F   /*DDRC_RANKCTL*/
> > +wm 32 MX7_DDRC_DRAMTMG0 0x090E0809   /*DDRC_DRAMTMG0*/
> > +wm 32 MX7_DDRC_DRAMTMG1 0x0007020E   /*DDRC_DRAMTMG1*/
> > +wm 32 MX7_DDRC_DRAMTMG2 0x03040407   /*DDRC_DRAMTMG2*/
> > +wm 32 MX7_DDRC_DRAMTMG3 0x00002006   /*DDRC_DRAMTMG3*/
> > +wm 32 MX7_DDRC_DRAMTMG4 0x04020304   /*DDRC_DRAMTMG4*/
> > +wm 32 MX7_DDRC_DRAMTMG5 0x03030202   /*DDRC_DRAMTMG5*/
> > +wm 32 MX7_DDRC_DRAMTMG8 0x00000803   /*DDRC_DRAMTMG8*/
> > +wm 32 MX7_DDRC_ZQCTL0 0x00800020   /*DDRC_ZQCTL0*/
> > +wm 32 MX7_DDRC_DFITMG0 0x02098204   /*DDRC_DFITMG0*/
> > +wm 32 MX7_DDRC_DFITMG1 0x00030303   /*DDRC_DFITMG1*/
> > +wm 32 MX7_DDRC_ADDRMAP0 0x00000016   /*DDRC_ADDRMAP0*/
> > +wm 32 MX7_DDRC_ADDRMAP1 0x00171717   /*DDRC_ADDRMAP1*/
> > +wm 32 MX7_DDRC_ADDRMAP4 0x00000F0F   /*DDRC_ADDRMAP4*/
> > +wm 32 MX7_DDRC_ADDRMAP5 0x04040404   /*DDRC_ADDRMAP5*/
> > +wm 32 MX7_DDRC_ADDRMAP6 0x0F040404   /*DDRC_ADDRMAP6*/
> > +wm 32 MX7_DDRC_ODTCFG 0x06000604   /*DDRC_ODTCFG*/
> > +wm 32 MX7_DDRC_ODTMAP 0x00000001   /*DDRC_ODTMAP*/
> > +wm 32 0x30391000 0x00000000   /*SRC_DDRC_RCR*/
> > +wm 32 MX7_DDR_PHY_PHY_CON0 0x17420F40   /*DDR_PHY_PHY_CON0*/
> > +wm 32 MX7_DDR_PHY_PHY_CON1 0x10210100   /*DDR_PHY_PHY_CON1*/
> > +wm 32 MX7_DDR_PHY_PHY_CON4 0x00060807   /*DDR_PHY_PHY_CON4*/
> > +wm 32 MX7_DDR_PHY_MDLL_CON0 0x1010007E   /*DDR_PHY_MDLL_CON0*/
> > +wm 32 MX7_DDR_PHY_DRVDS_CON0 0x00000924   /*DDR_PHY_DRVDS_CON0*/
> > +/*DDR_PHY_CMD_DESKEW_CON0*/
> > +/*DDR_PHY_CMD_DESKEW_CON1*/
> > +/*DDR_PHY_CMD_DESKEW_CON2*/
> > +/*DDR_PHY_CMD_DESKEW_CON3*/
> > +/*DDR_PHY_LVL_CON0*/
> > +wm 32 MX7_DDR_PHY_OFFSET_RD_CON0 0x0B0B0B0B   /*DDR_PHY_OFFSET_RD_CON0 */
> > +wm 32 MX7_DDR_PHY_OFFSET_WR_CON0 0x06060606   /*DDR_PHY_OFFSET_WR_CON0 */
> > +wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x01000010   /*DDR_PHY_CMD_SDLL_CON0*/
> > +wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x00000010   /*DDR_PHY_CMD_SDLL_CON0*/
> > +
> > +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C407304   /*DDR_PHY_ZQ_CON0*/
> > +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C447304   /*DDR_PHY_ZQ_CON0*/
> > +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C447306   /*DDR_PHY_ZQ_CON0*/
> > +check 32 until_any_bit_set MX7_DDR_PHY_ZQ_CON0 0x1 /*ZQ Calibration
> > is finished*/
> > +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C447304   /*DDR_PHY_ZQ_CON0*/
> > +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C407304   /*DDR_PHY_ZQ_CON0*/
> > +
> > +wm 32 0x30384130 0x00000000 /* CCM_CCGRn */
> > +wm 32 0x30340020 0x00000178 /* IOMUXC_GPR_GPR8 */
> > +wm 32 0x30384130 0x00000002 /* CCM_CCGRn */
> > +wm 32 0x30790018 0x0000000f /* DDR_PHY_LP_CON0 */
> > +
> > +/* DDRC_STAT */
> > +check 32 until_any_bit_set 4 0x307a0004 0x1
>
> You use the same exact DCD table under U-Boot as well?
>
> > +
> > diff --git a/arch/arm/boards/kamstrup-imx7d-tqma7d/lowlevel.c
> > b/arch/arm/boards/kamstrup-imx7d-tqma7d/lowlevel.c
> > new file mode 100644
> > index 000000000000..d8c455701edc
> > --- /dev/null
> > +++ b/arch/arm/boards/kamstrup-imx7d-tqma7d/lowlevel.c
> > @@ -0,0 +1,35 @@
> > +#include <debug_ll.h>
> > +#include <io.h>
> > +#include <common.h>
> > +#include <linux/sizes.h>
> > +#include <mach/generic.h>
> > +#include <asm/barebox-arm-head.h>
> > +#include <asm/barebox-arm.h>
> > +#include <mach/imx7-ccm-regs.h>
> > +#include <mach/iomux-mx7.h>
> > +#include <mach/debug_ll.h>
> > +#include <asm/cache.h>
> > +#include <mach/esdctl.h>
> > +
> > +extern char __dtb_imx7d_flex_concentrator_mfg_start[];
>
> Unrelated to your issue, but you want __dtb_z_ here
> (compressed device tree). Check CONFIG_ARM_COMPRESSED_DTB
>
> > +
> > +static inline void setup_uart(void)
> > +{
> > +    imx7_early_setup_uart_clock();
> > +
> > +    imx7_setup_pad(MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX);
> > +
> > +    imx7_uart_setup_ll();
> > +
> > +    putc_ll('>');
>
> You've CONFIG_DEBUG_LL=y and you choose the correct UART port
> in the i.MX menuconfig option?
>
> > +}
> > +
> > +ENTRY_FUNCTION(start_kamstrup_imx7d_tqma7d, r0, r1, r2)
> > +{
> > +    imx7_cpu_lowlevel_init();
> > +
> > +    if (IS_ENABLED(CONFIG_DEBUG_LL))
> > +        setup_uart();
> > +
> > +    imx7d_barebox_entry(__dtb_imx7d_flex_concentrator_mfg_start +
> > get_runtime_offset());
> > +}
> > diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> > index d61a052310ce..ec3d0f372786 100644
> > --- a/arch/arm/dts/Makefile
> > +++ b/arch/arm/dts/Makefile
> > @@ -23,6 +23,7 @@ lwl-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
> >  lwl-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
> >  lwl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
> >  lwl-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
> > +lwl-$(CONFIG_MACH_KAMSTRUP_IMX7D_TQMA7D) += imx7d-flex-concentrator-mfg.dtb.o
> >  lwl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
> >  lwl-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) +=
> > kirkwood-guruplug-server-plus-bb.dtb.o
> >  lwl-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
> > diff --git a/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> > b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> > new file mode 100644
> > index 000000000000..746e36a70f4c
> > --- /dev/null
> > +++ b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> > @@ -0,0 +1,11 @@
> > +/*
> > + * The code contained herein is licensed under the GNU General Public
> > + * License. You may obtain a copy of the GNU General Public License
> > + * Version 2 or later at the following locations:
> > + *
> > + * http://www.opensource.org/licenses/gpl-license.html
> > + * http://www.gnu.org/copyleft/gpl.html
> > + */
> > +
> > +#include <arm/imx7d-flex-concentrator-mfg.dts>
> > +
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index 6dd5cb2aca15..d0a9332c7a24 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -492,6 +492,11 @@ config MACH_ZII_IMX7D_DEV
> >      select ARCH_IMX7
> >      select ARM_USE_COMPRESSED_DTB
> >
> > +config MACH_KAMSTRUP_IMX7D_TQMA7D
> > +    bool "Kamstrup TQMa7D based devices"
> > +    select ARCH_IMX7
> > +    select ARM_USE_COMPRESSED_DTB
> > +
> >  config MACH_PHYTEC_PHYCORE_IMX7
> >      bool "Phytec phyCORE i.MX7"
> >      select ARCH_IMX7
> > diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> > index 1ce057180a01..b0bdc48399e3 100644
> > --- a/drivers/regulator/Kconfig
> > +++ b/drivers/regulator/Kconfig
> > @@ -19,7 +19,7 @@ config REGULATOR_BCM283X
> >  config REGULATOR_PFUZE
> >      bool "Freescale PFUZE100/200/3000 regulator driver"
> >      depends on I2C
> > -    depends on ARCH_IMX6 || ARCH_IMX8MQ
> > +    depends on ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8MQ
> >
> >  config REGULATOR_STM32_PWR
> >      bool "STMicroelectronics STM32 PWR"
> > diff --git a/dts/src/arm/imx7d-flex-concentrator-mfg.dts
> > b/dts/src/arm/imx7d-flex-concentrator-mfg.dts
> > new file mode 100644
> > index 000000000000..789f0837058f
> > --- /dev/null
> > +++ b/dts/src/arm/imx7d-flex-concentrator-mfg.dts
> > @@ -0,0 +1,25 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Device Tree Source for Kamstrup OMNIA Flex Concentrator in
> > + * manufacturing/debugging mode.
> > + *
> > + * Copyright (C) 2020 Kamstrup A/S
> > + * Author: Bruno Thomsen <bruno.thomsen@gmail.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "imx7d-flex-concentrator.dts"
> > +
> > +/ {
> > +    model = "Kamstrup OMNIA Flex Concentrator - Manufacturing";
> > +    compatible = "kam,imx7d-flex-concentrator-mfg",
> > "kam,imx7d-flex-concentrator", "fsl,imx7d";
> > +
> > +    chosen {
> > +        stdout-path = &uart4;
> > +    };
> > +};
> > +
> > +&uart4 {
> > +    status = "okay";
> > +};
> > diff --git a/dts/src/arm/imx7d-flex-concentrator.dts
> > b/dts/src/arm/imx7d-flex-concentrator.dts
> > new file mode 100644
> > index 000000000000..43b331222a47
> > --- /dev/null
> > +++ b/dts/src/arm/imx7d-flex-concentrator.dts
> > @@ -0,0 +1,313 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Device Tree Source for Kamstrup OMNIA Flex Concentrator.
> > + *
> > + * Copyright (C) 2020 Kamstrup A/S
> > + * Author: Bruno Thomsen <bruno.thomsen@gmail.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "imx7d-tqma7.dtsi"
> > +
> > +/* Some I2C devices on TQMa7 SoM are not mounted */
> > +/delete-node/ &m24c64;
> > +/delete-node/ &ds1339;
> > +
> > +/ {
> > +    model = "Kamstrup OMNIA Flex Concentrator";
> > +    compatible = "kam,imx7d-flex-concentrator", "fsl,imx7d";
> > +
> > +    memory@80000000 {
> > +        device_type = "memory";
> > +        /* 1024 MB - TQMa7D board configuration */
> > +        reg = <0x80000000 0x40000000>;
> > +    };
> > +
> > +    reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
> > +        compatible = "regulator-fixed";
> > +        regulator-name = "VBUS_USBOTG2";
> > +        regulator-min-microvolt = <5000000>;
> > +        regulator-max-microvolt = <5000000>;
> > +        gpio = <&gpio1 7 GPIO_ACTIVE_HIGH>;
> > +        enable-active-high;
> > +    };
> > +
> > +    reg_vref_1v8: regulator-vref-1v8 {
> > +        compatible = "regulator-fixed";
> > +        regulator-name = "VCC1V8_REF";
> > +        regulator-min-microvolt = <1800000>;
> > +        regulator-max-microvolt = <1800000>;
> > +        regulator-always-on;
> > +        vin-supply = <&sw2_reg>;
> > +    };
> > +
> > +    /*
> > +     * Human Machine Interface consists of 4 dual red/green LEDs.
> > +     * hmi-a-green is controlled directly by the switch-mode power supply.
> > +     * hmi-a-red is not used.
> > +     */
> > +    gpio-leds {
> > +        compatible = "gpio-leds";
> > +        pinctrl-names = "default";
> > +        pinctrl-0 = <&pinctrl_leds>;
> > +
> > +        hmi-b-red {
> > +            label = "hmi-b:red:provisioning";
> > +            gpios = <&gpio3 6 GPIO_ACTIVE_HIGH>;
> > +            default-state = "off";
> > +        };
> > +
> > +        hmi-b-green {
> > +            label = "hmi-b:green:operation";
> > +            gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>;
> > +            default-state = "off";
> > +        };
> > +
> > +        hmi-c-red {
> > +            label = "hmi-c:red:mesh-error";
> > +            gpios = <&gpio2 29 GPIO_ACTIVE_HIGH>;
> > +            default-state = "off";
> > +        };
> > +
> > +        hmi-c-green {
> > +            label = "hmi-c:green:mesh-activity";
> > +            gpios = <&gpio2 30 GPIO_ACTIVE_HIGH>;
> > +            default-state = "off";
> > +        };
> > +
> > +        hmi-d-red {
> > +            label = "hmi-d:red:wan-down";
> > +            gpios = <&gpio2 31 GPIO_ACTIVE_HIGH>;
> > +            default-state = "off";
> > +        };
> > +
> > +        hmi-d-green {
> > +            label = "hmi-d:green:ipsec-up";
> > +            gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
> > +            default-state = "off";
> > +        };
> > +    };
> > +
> > +    /*
> > +     * Errata e10574 board restart workaround.
> > +     */
> > +    gpio-restart {
> > +        pinctrl-names = "default";
> > +        pinctrl-0 = <&pinctrl_restart>;
> > +        compatible = "gpio-restart";
> > +        gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
> > +        priority = <200>;
> > +    };
> > +};
> > +
> > +/*
> > + * Analog signals
> > + * ADC1_IN0: SMPS - 5V output monitor (voltage divider: 1/0.2806)
> > + */
> > +&adc1 {
> > +    vref-supply = <&reg_vref_1v8>;
> > +    status = "okay";
> > +};
> > +
> > +&ecspi2 {
> > +    pinctrl-names = "default";
> > +    pinctrl-0 = <&pinctrl_ecspi2>;
> > +    num-chipselects = <1>;
> > +    cs-gpios = <&gpio4 23 GPIO_ACTIVE_LOW>;
> > +    status = "okay";
> > +
> > +    pcf2127: rtc@0 {
> > +        compatible = "nxp,pcf2127";
> > +        reg = <0>;
> > +        spi-max-frequency = <2000000>;
> > +    };
> > +};
> > +
> > +&ecspi4 {
> > +    pinctrl-names = "default";
> > +    pinctrl-0 = <&pinctrl_ecspi4>;
> > +    num-chipselects = <1>;
> > +    cs-gpios = <&gpio3 3 GPIO_ACTIVE_LOW>;
> > +    status = "okay";
> > +
> > +    /*
> > +     * ST chip maximum SPI clock frequency is 33 MHz.
> > +     *
> > +     * TCG specification - Section 6.4.1 Clocking:
> > +     * TPM shall support a SPI clock frequency range of 10-24 MHz.
> > +     */
> > +    st33htph: tpm-tis@0 {
> > +        compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
> > +        reg = <0>;
> > +        spi-max-frequency = <24000000>;
> > +    };
> > +};
> > +
> > +&fec1 {
> > +    pinctrl-names = "default";
> > +    pinctrl-0 = <&pinctrl_enet1>;
> > +    phy-mode = "rmii";
> > +    phy-handle = <&ethphy>;
> > +    status = "okay";
> > +
> > +    mdio {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        /* Micrel KSZ8081RNB */
> > +        ethphy: ethernet-phy@1 {
> > +            compatible = "ethernet-phy-id0022.1560",
> > "ethernet-phy-ieee802.3-c22";
> > +            reg = <1>;
> > +            max-speed = <100>;
> > +            interrupt-parent = <&gpio1>;
> > +            interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
> > +            reset-assert-us = <100000>;
> > +            reset-deassert-us = <1000000>;
> > +            reset-gpios = <&gpio7 15 GPIO_ACTIVE_LOW>;
> > +        };
> > +    };
> > +};
> > +
> > +/*
> > + * Detection signals for internal USB modules.
> > + * Used for robust USB plug and play handling such as USB downstream port
> > + * power-cycle and USB hub reset in case of misbehaving or crashed modules.
> > + *
> > + * SMPS - AC input monitor based on zero crossing.
> > + * Used for last gasp notification.
> > + */
> > +&gpio3 {
> > +    gpio-line-names = "", "", "", "", "", "", "", "",
> > +    "", "", "", "", "smps-ac-monitor", "", "usb-hub-reset", "",
> > +    "", "", "", "", "", "", "", "",
> > +    "", "module-b-detection", "", "module-a-detection", "", "", "", "";
> > +};
> > +
> > +/*
> > + * Tamper IRQ trigger timestamp reading.
> > + * Used for sealed cover opened/closed notification.
> > + */
> > +&gpio5 {
> > +    gpio-line-names = "", "", "", "", "", "", "", "",
> > +    "", "", "", "", "rtc-tamper-irq", "", "", "",
> > +    "", "", "", "", "", "", "", "",
> > +    "", "", "", "", "", "", "", "";
> > +};
> > +
> > +&iomuxc {
> > +    pinctrl-names = "default";
> > +    pinctrl-0 = <&pinctrl_misc>;
> > +
> > +    pinctrl_ecspi2: ecspi2grp {
> > +        fsl,pins = <
> > +            MX7D_PAD_ECSPI2_MISO__ECSPI2_MISO        0x7c /* X2-15 */
> > +            MX7D_PAD_ECSPI2_MOSI__ECSPI2_MOSI        0x74 /* X2-18 */
> > +            MX7D_PAD_ECSPI2_SCLK__ECSPI2_SCLK        0x74 /* X2-13 */
> > +            MX7D_PAD_ECSPI2_SS0__GPIO4_IO23            0x74 /* X2-20 */
> > +            /* RTC - Tamper IRQ */
> > +            MX7D_PAD_SD2_CLK__GPIO5_IO12            0x3c /* X1-92 */
> > +        >;
> > +    };
> > +
> > +    pinctrl_ecspi4: ecspi4grp {
> > +        fsl,pins = <
> > +            MX7D_PAD_LCD_CLK__ECSPI4_MISO            0x7c /* X2-72 */
> > +            MX7D_PAD_LCD_ENABLE__ECSPI4_MOSI        0x74 /* X2-68 */
> > +            MX7D_PAD_LCD_HSYNC__ECSPI4_SCLK            0x74 /* X2-76 */
> > +            MX7D_PAD_LCD_VSYNC__GPIO3_IO3            0x74 /* X2-78 */
> > +        >;
> > +    };
> > +
> > +    pinctrl_enet1: enet1grp {
> > +        fsl,pins = <
> > +            MX7D_PAD_GPIO1_IO10__ENET1_MDIO            0x02 /* X2-48 */
> > +            MX7D_PAD_GPIO1_IO11__ENET1_MDC            0x00 /* X2-46 */
> > +            MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0    0x71 /* X2-53 */
> > +            MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1    0x71 /* X2-55 */
> > +            MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL    0x71 /* X2-61 */
> > +            MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0    0x79 /* X2-56 */
> > +            MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1    0x79 /* X2-58 */
> > +            MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL    0x79 /* X2-64 */
> > +            MX7D_PAD_ENET1_RGMII_RXC__ENET1_RX_ER        0x73 /* X2-52 */
> > +            /* PHY reset: SION, 100kPU, SRE_FAST, DSE_X1 */
> > +            MX7D_PAD_ENET1_COL__GPIO7_IO15        0x40000070 /* X1-96 */
> > +            /* Clock from PHY to MAC */
> > +            MX7D_PAD_GPIO1_IO12__CCM_ENET_REF_CLK1    0x40000073 /* X3-4 */
> > +            /* PHY interrupt: SION, 100kPU, HYS, SRE_FAST, DSE_X1 */
> > +            MX7D_PAD_GPIO1_IO09__GPIO1_IO9        0x40000078 /* X1-80 */
> > +        >;
> > +    };
> > +
> > +    pinctrl_leds: ledsgrp {
> > +        fsl,pins = <
> > +            MX7D_PAD_LCD_DATA01__GPIO3_IO6            0x14 /* X2-82 */
> > +            MX7D_PAD_EPDC_BDR0__GPIO2_IO28            0x14 /* X1-82 */
> > +            MX7D_PAD_EPDC_BDR1__GPIO2_IO29            0x14 /* X1-84 */
> > +            MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30        0x14 /* X1-86 */
> > +            MX7D_PAD_EPDC_PWR_STAT__GPIO2_IO31        0x14 /* X1-88 */
> > +            MX7D_PAD_UART2_TX_DATA__GPIO4_IO3        0x14 /* X1-90 */
> > +        >;
> > +    };
> > +
> > +    pinctrl_misc: miscgrp {
> > +        fsl,pins = <
> > +            /* Module A detection (low = present) */
> > +            MX7D_PAD_LCD_DATA22__GPIO3_IO27            0x7c /* X2-105 */
> > +            /* Module B detection (low = present) */
> > +            MX7D_PAD_LCD_DATA20__GPIO3_IO25            0x7c /* X2-103 */
> > +            /* SMPS - AC input monitor (high = failure) */
> > +            MX7D_PAD_LCD_DATA07__GPIO3_IO12            0x7c /* X2-88 */
> > +            /* USB - Hub reset */
> > +            MX7D_PAD_LCD_DATA09__GPIO3_IO14            0x74 /* X2-92 */
> > +        >;
> > +    };
> > +
> > +    pinctrl_restart: restartgrp {
> > +        fsl,pins = <
> > +            MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12    0x74 /* X1-94 */
> > +        >;
> > +    };
> > +
> > +    pinctrl_uart4: uart4grp {
> > +        fsl,pins = <
> > +            MX7D_PAD_SAI2_TX_SYNC__UART4_DCE_RX    0x7e /* X3-14 */
> > +            MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX    0x76 /* X3-16 */
> > +        >;
> > +    };
> > +};
> > +
> > +&iomuxc_lpsr {
> > +    pinctrl_usbotg2: usbotg2grp {
> > +        fsl,pins = <
> > +            MX7D_PAD_LPSR_GPIO1_IO06__USB_OTG2_OC    0x5c /* X3-11 */
> > +            MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7    0x59 /* X3-9 */
> > +        >;
> > +    };
> > +
> > +};
> > +
> > +&uart4 {
> > +    pinctrl-names = "default";
> > +    pinctrl-0 = <&pinctrl_uart4>;
> > +    assigned-clocks = <&clks IMX7D_UART4_ROOT_SRC>;
> > +    assigned-clock-parents = <&clks IMX7D_OSC_24M_CLK>;
> > +};
> > +
> > +&usbotg2 {
> > +    pinctrl-names = "default";
> > +    pinctrl-0 = <&pinctrl_usbotg2>;
> > +    vbus-supply = <&reg_usb_otg2_vbus>;
> > +    srp-disable;
> > +    hnp-disable;
> > +    adp-disable;
> > +    dr_mode = "host";
> > +    status = "okay";
> > +};
> > +
> > +/*
> > + * External watchdog feature provided by pcf2127.
> > + */
> > +&wdog1 {
> > +    status = "disabled";
> > +};
> > diff --git a/images/Makefile.imx b/images/Makefile.imx
> > index 765702f26deb..cbbefd5c085b 100644
> > --- a/images/Makefile.imx
> > +++ b/images/Makefile.imx
> > @@ -364,6 +364,11 @@ CFG_start_zii_imx7d_dev.pblb.imximg =
> > $(board)/zii-imx7d-dev/flash-header-zii-im
> >  FILE_barebox-zii-imx7d-dev.img = start_zii_imx7d_dev.pblb.imximg
> >  image-$(CONFIG_MACH_ZII_IMX7D_DEV) += barebox-zii-imx7d-dev.img
> >
> > +pblb-$(CONFIG_MACH_KAMSTRUP_IMX7D_TQMA7D) += start_kamstrup_imx7d_tqma7d
> > +CFG_start_kamstrup_imx7d_tqma7d.pblb.imximg =
> > $(board)/kamstrup-imx7d-tqma7d/flash-header-kamstrup-imx7d-tqma7d.imxcfg
> > +FILE_barebox-kamstrup-imx7d-tqma7d.img =
> > start_kamstrup_imx7d_tqma7d.pblb.imximg
> > +image-$(CONFIG_MACH_KAMSTRUP_IMX7D_TQMA7D) += barebox-kamstrup-imx7d-tqma7d.img
> > +
> >  # ----------------------- i.MX8mm based boards --------------------------
> >  pblb-$(CONFIG_MACH_NXP_IMX8MM_EVK) += start_nxp_imx8mm_evk
> >  CFG_start_nxp_imx8mm_evk.pblb.imximg =
> > $(board)/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
