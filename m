Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5Fq-0006CO-4f
 for barebox@lists.infradead.org; Mon, 13 May 2019 07:20:12 +0000
Message-ID: <199fed79ae41e68983f33edae4b1e2edbe99fb60.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 13 May 2019 09:20:05 +0200
In-Reply-To: <8c08d3a1-ce76-4328-1ba0-4fd2208d15ad@pengutronix.de>
References: <20190513053733.18420-1-r.czerwinski@pengutronix.de>
 <8c08d3a1-ce76-4328-1ba0-4fd2208d15ad@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] ARM: i.MX6: add support for Digi CCIMX6UL SBC Pro
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 2019-05-13 at 09:04 +0200, Ahmad Fatoum wrote:
> Hello Rouven,
> 
> On 13/5/19 07:37, Rouven Czerwinski wrote:
> > Add support for the Digi CCIMX6UL SBC Pro.
> > It is based on the Digi CCIMX6UL SOM with 256MB RAM and 256MB NAND
> > flash.
> > 
> > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > ---
> >  .../boards/imx/digi-ccimx6ulsbcpro.rst        | 26 ++++++
> >  arch/arm/boards/Makefile                      |  3 +-
> >  arch/arm/boards/digi-ccimx6ulsbcpro/Makefile  |  2 +
> >  arch/arm/boards/digi-ccimx6ulsbcpro/board.c   | 49 +++++++++++
> >  .../flash-header-imx6ul-ccimx6ulsbcpro.imxcfg | 82 +++++++++++++++++++
> >  .../arm/boards/digi-ccimx6ulsbcpro/lowlevel.c | 39 +++++++++
> >  arch/arm/dts/Makefile                         |  1 +
> >  arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts        | 41 ++++++++++
> >  arch/arm/mach-imx/Kconfig                     |  6 ++
> >  images/Makefile.imx                           |  5 ++
> >  10 files changed, 253 insertions(+), 1 deletion(-)
> >  create mode 100644 Documentation/boards/imx/digi-ccimx6ulsbcpro.rst
> >  create mode 100644 arch/arm/boards/digi-ccimx6ulsbcpro/Makefile
> >  create mode 100644 arch/arm/boards/digi-ccimx6ulsbcpro/board.c
> >  create mode 100644 arch/arm/boards/digi-ccimx6ulsbcpro/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
> >  create mode 100644 arch/arm/boards/digi-ccimx6ulsbcpro/lowlevel.c
> >  create mode 100644 arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
> > 
> > diff --git a/Documentation/boards/imx/digi-ccimx6ulsbcpro.rst b/Documentation/boards/imx/digi-ccimx6ulsbcpro.rst
> > new file mode 100644
> > index 0000000000..bcb2ec2f07
> > --- /dev/null
> > +++ b/Documentation/boards/imx/digi-ccimx6ulsbcpro.rst
> > @@ -0,0 +1,26 @@
> > +Digi CC-IMX6UL-SBC-PRO
> > +======================
> > +
> > +This board is based on the i.MX6UL SoC.
> > +
> > +The SBC Pro is shipped with:
> > +
> > +  * 256MiB NAND flash
> > +  * 256MiB DDR3 SDRAM
> > +
> > +see https://www.digi.com/products/embedded-systems/single-board-computers/connectcore-for-i-mx6ul-sbc-pro
> > +for more information.
> > +
> > +MAC addresses
> > +-------------
> > +The Digi modules save their MAC addresses not in the OCOTP nodes, but in the
> > +U-Boot environment. It is advised to boot the board using the shipped U-Boot
> > +Bootloader and to read out and save the MAC addresses for the board.
> > +The environment variables which contain the addresses are `$ethaddr` and
> > +`$eth1addr`.
> > +The MAC addresses can than be persisted to the barebox environment by using
> > +
> > +.. code-block:: sh
> > +
> > +  nv dev.eth0.ethaddr=<eth0addr>
> > +  nv dev.eth1.ethaddr=<eth1addr>
> 
> Add a short note about how to flash a new board with barebox update?

None of the other boards include instructions for this, this should be
covered by the general information on barebox_update, since this is
clearly not board specific.

> 
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index 91f17374c9..aba84cb6a2 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -23,6 +23,7 @@ obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
> >  obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
> >  obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
> >  obj-$(CONFIG_MACH_DFI_FS700_M60)		+= dfi-fs700-m60/
> > +obj-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO)		+= digi-ccimx6ulsbcpro/
> 
> I would name the directory after the SoM and the entry point
> after the board. Otherwise, it could look a bit strange if new boards sharing the SoM
> are added into a directory named after another board.

Valid concern, I'll respin.

> >  obj-$(CONFIG_MACH_DUCKBILL)			+= duckbill/
> >  obj-$(CONFIG_MACH_DSS11)			+= dss11/
> >  obj-$(CONFIG_MACH_EDB93012)			+= edb93xx/
> > @@ -165,4 +166,4 @@ obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
> >  obj-$(CONFIG_MACH_ZII_IMX7D_RPU2)		+= zii-imx7d-rpu2/
> >  obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
> >  obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
> > -obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
> > \ No newline at end of file
> > +obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
> > diff --git a/arch/arm/boards/digi-ccimx6ulsbcpro/Makefile b/arch/arm/boards/digi-ccimx6ulsbcpro/Makefile
> > new file mode 100644
> > index 0000000000..01c7a259e9
> > --- /dev/null
> > +++ b/arch/arm/boards/digi-ccimx6ulsbcpro/Makefile
> > @@ -0,0 +1,2 @@
> > +obj-y += board.o
> > +lwl-y += lowlevel.o
> > diff --git a/arch/arm/boards/digi-ccimx6ulsbcpro/board.c b/arch/arm/boards/digi-ccimx6ulsbcpro/board.c
> > new file mode 100644
> > index 0000000000..112f4e778a
> > --- /dev/null
> > +++ b/arch/arm/boards/digi-ccimx6ulsbcpro/board.c
> > @@ -0,0 +1,49 @@
> > +/*
> > + * Copyright (C) 2019 Rouven Czerwinski, Pengutronix
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation.
> > + *
> > + */
> > +
> > +#include <asm/armlinux.h>
> > +#include <asm/io.h>
> > +#include <bootsource.h>
> > +#include <common.h>
> > +#include <environment.h>
> > +#include <envfs.h>
> > +#include <gpio.h>
> > +#include <init.h>
> > +#include <mach/generic.h>
> > +#include <mach/imx6-regs.h>
> > +#include <mach/imx6.h>
> > +#include <mach/bbu.h>
> > +#include <linux/sizes.h>
> > +#include <linux/phy.h>
> > +#include <mfd/imx6q-iomuxc-gpr.h>
> > +
> > +#include <linux/micrel_phy.h>
> 
> Unnecessary header. Same goes for a few of the other ones too.

Yes, these are leftover from the wandboard, I'll comb through them.

> > +
> > +static int digi_ccimx6ulsbcpro_device_init(void)
> > +{
> > +	if (!of_machine_is_compatible("digi,ccimx6ulsbcpro"))
> > +		return 0;
> > +
> > +	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
> > +
> > +	barebox_set_hostname("ccimx6ulsbcpro");
> > +
> > +	return 0;
> > +}
> > +device_initcall(digi_ccimx6ulsbcpro_device_init);
> > diff --git a/arch/arm/boards/digi-ccimx6ulsbcpro/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg b/arch/arm/boards/digi-ccimx6ulsbcpro/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
> > new file mode 100644
> > index 0000000000..36edad7a3e
> > --- /dev/null
> > +++ b/arch/arm/boards/digi-ccimx6ulsbcpro/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
> > @@ -0,0 +1,82 @@
> > +loadaddr 0x80000000
> > +soc imx6
> > +dcdofs 0x400
> > +
> > +/* Enable all clocks */
> > +wm 32 0x020c4068 0xffffffff
> > +wm 32 0x020c406c 0xffffffff
> > +wm 32 0x020c4070 0xffffffff
> > +wm 32 0x020c4074 0xffffffff
> > +wm 32 0x020c4078 0xffffffff
> > +wm 32 0x020c407c 0xffffffff
> > +wm 32 0x020c4080 0xffffffff
> > +
> > +/* IOMUX */
> > +/* DDR IO type */
> > +wm 32 0x020E04B4 0x000C0000
> > +wm 32 0x020E04AC 0x00000000
> > +/* Clock */
> > +wm 32 0x020E027C 0x00000030
> > +/* Control */
> > +wm 32 0x020E0250 0x00000030
> > +wm 32 0x020E024C 0x00000030
> > +wm 32 0x020E0490 0x00000030
> > +wm 32 0x020E0288 0x00000030
> > +wm 32 0x020E0270 0x00000000
> > +wm 32 0x020E0260 0x00000030
> > +wm 32 0x020E0264 0x00000030
> > +wm 32 0x020E04A0 0x00000030
> > +/* Data strobe */
> > +wm 32 0x020E0494 0x00020000
> > +wm 32 0x020E0280 0x00000030
> > +wm 32 0x020E0284 0x00000030
> > +/* Data */
> > +wm 32 0x020E04B0 0x00020000
> > +wm 32 0x020E0498 0x00000030
> > +wm 32 0x020E04A4 0x00000030
> > +wm 32 0x020E0244 0x00000030
> > +wm 32 0x020E0248 0x00000030
> > +
> > +/* DDR Controller registers */
> > +wm 32 0x021B001C 0x00008000
> > +wm 32 0x021B0800 0xA1390003
> > +/* Calibration values */
> > +wm 32 0x021B080C 0x00000000
> > +wm 32 0x021B083C 0x413B013B
> > +wm 32 0x021B0848 0x4040373E
> > +wm 32 0x021B0850 0x40405954
> > +wm 32 0x021B081C 0x33333333
> > +wm 32 0x021B0820 0x33333333
> > +wm 32 0x021B082C 0xf3333333
> > +wm 32 0x021B0830 0xf3333333
> > +/* END of calibration values */
> > +wm 32 0x021B08C0 0x00921012
> > +wm 32 0x021B08b8 0x00000800
> > +
> > +/* MMDC init */
> > +wm 32 0x021B0004 0x0002002D
> > +wm 32 0x021B0008 0x1b333030
> > +wm 32 0x021B000C 0x676B52F3
> > +wm 32 0x021B0010 0xB66D0B63
> > +wm 32 0x021B0014 0x01FF00DB
> > +/* Consider reducing RALAT (currently set to 5) */
> > +wm 32 0x021B0018 0x00201740
> > +wm 32 0x021B001C 0x00008000
> > +wm 32 0x021B002C 0x000026D2
> > +wm 32 0x021B0030 0x006B1023
> > +wm 32 0x021B0040 0x00000047
> > +wm 32 0x021B0000 0x83180000
> > +
> > +/* Mode registers writes for CS0 */
> > +wm 32 0x021B001C 0x02008032
> > +wm 32 0x021B001C 0x00008033
> > +wm 32 0x021B001C 0x00048031
> > +wm 32 0x021B001C 0x15208030
> > +wm 32 0x021B001C 0x04008040
> > +
> > +/* Final DDR setup */
> > +wm 32 0x021B0020 0x00000800
> > +wm 32 0x021B0818 0x00000227
> > +wm 32 0x021B0004 0x0002552D
> > +wm 32 0x021B0404 0x00011006
> > +wm 32 0x021B001C 0x00000000
> > diff --git a/arch/arm/boards/digi-ccimx6ulsbcpro/lowlevel.c b/arch/arm/boards/digi-ccimx6ulsbcpro/lowlevel.c
> > new file mode 100644
> > index 0000000000..8ed832a5a2
> > --- /dev/null
> > +++ b/arch/arm/boards/digi-ccimx6ulsbcpro/lowlevel.c
> > @@ -0,0 +1,39 @@
> > +#include <common.h>
> > +#include <linux/sizes.h>
> > +#include <mach/generic.h>
> > +#include <asm/barebox-arm-head.h>
> > +#include <asm/barebox-arm.h>
> > +#include <mach/imx6-regs.h>
> > +#include <io.h>
> > +#include <debug_ll.h>
> 
> You include debug_ll, but don't use it.
> All the other i.MX6UL boards support configuring a low level
> debug UART. Why not follow suit?

I don't think its necessary and I didn't use the low level debug uart
at all.

> > +#include <mach/esdctl.h>
> > +#include <asm/cache.h>
> > +#include <asm/sections.h>
> > +#include <image-metadata.h>
> 
> Unnecessary headers here as well.

I'll comb and respin.

> 
> > +
> > +
> > +extern char __dtb_imx6ul_ccimx6ulsbcpro_start[];
> 
> You select ARM_USE_COMPRESSED_DTB further down, but use uncompressed dtb here.
> You'll have to use the __dtb_z prefix (i.e. __dtb_z_imx6ul_ccimx6ulsbcpro_start[])
> to have the compressed dtb linked.

Will fix.

> 
> > +
> > +ENTRY_FUNCTION(start_imx6ul_ccimx6ulsbcpro, r0, r1, r2)
> > +{
> > +	void *fdt;
> > +
> > +	imx6ul_cpu_lowlevel_init();
> > +
> > +	arm_setup_stack(0x00910000 - 8);
> > +
> > +	arm_early_mmu_cache_invalidate();
> > +
> > +	relocate_to_current_adr();
> > +	setup_c();
> > +	barrier();
> > +
> > +	/* disable all watchdog powerdown counters */
> > +	writew(0x0, 0x020bc008);
> > +	writew(0x0, 0x020c0008);
> > +	writew(0x0, 0x021e4008);
> > +
> > +	fdt = __dtb_imx6ul_ccimx6ulsbcpro_start + get_runtime_offset();
> 
> get_runtime_offset() is always zero here after the preceding relocation.
> You can drop it.

Will do.

> 
> > +
> > +	imx6ul_barebox_entry(fdt);
> > +}
> > diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> > index 1c6129816d..227060e6d9 100644
> > --- a/arch/arm/dts/Makefile
> > +++ b/arch/arm/dts/Makefile
> > @@ -23,6 +23,7 @@ pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
> >  pbl-dtb-$(CONFIG_MACH_TX53) += imx53-tx53-xx30.dtb.o imx53-tx53-1011.dtb.o
> >  pbl-dtb-$(CONFIG_MACH_CCMX51) += imx51-ccxmx51.dtb.o
> >  pbl-dtb-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
> > +pbl-dtb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
> >  pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
> >  pbl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
> >  pbl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
> > diff --git a/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts b/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
> > new file mode 100644
> > index 0000000000..1139c4b7d6
> > --- /dev/null
> > +++ b/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
> > @@ -0,0 +1,41 @@
> > +#include <arm/imx6ul-ccimx6ulsbcpro.dts>
> > +
> > +/{
> > +	chosen {
> > +		stdout-path = &uart5;
> > +
> > +		environment-nand {
> > +			compatible = "barebox,environment";
> > +			device-path = &gpmi, "partname:barebox-environment";
> > +			status = "okay";
> > +		};
> > +	};
> > +};
> > +
> > +&gpmi {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> > +	status = "okay";
> > +
> > +	partitions {
> > +		compatible = "fixed-partitions";
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +
> > +		partition@0 {
> > +			label = "barebox";
> > +			reg = <0x0 0x400000>;
> > +		};
> > +
> > +		partition@400000 {
> > +			label = "barebox-environment";
> > +			reg = <0x400000 0x100000>;
> > +		};
> > +
> > +		partition@500000 {
> > +			label = "root";
> > +			reg = <0x500000 0x0>;
> > +		};
> > +	};
> > +};
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index c4e7500e8f..dbc297c2ef 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -504,6 +504,12 @@ config MACH_GRINN_LITEBOARD
> >  	bool "Grinn liteboard"
> >  	select ARCH_IMX6UL
> >  
> > +config MACH_DIGI_CCIMX6ULSBCPRO
> > +	bool "Digi Internal CC-IMX6UL SBC Pro"
> > +	select ARCH_IMX6
> > +	select ARCH_IMX6UL
> > +	select ARM_USE_COMPRESSED_DTB
> > +
> >  endif
> >  
> >  # ----------------------------------------------------------
> > diff --git a/images/Makefile.imx b/images/Makefile.imx
> > index e6f741cdb4..475b82205d 100644
> > --- a/images/Makefile.imx
> > +++ b/images/Makefile.imx
> > @@ -519,6 +519,11 @@ CFG_start_imx6ul_pico_hobbit_512mb.pblb.imximg = $(board)/technexion-pico-hobbit
> >  FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblb.imximg
> >  image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
> >  
> > +pblb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += start_imx6ul_ccimx6ulsbcpro
> > +CFG_start_imx6ul_ccimx6ulsbcpro.pblb.imximg = $(board)/digi-ccimx6ulsbcpro/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
> > +FILE_barebox-imx6ul-ccimx6ulsbcpro.img = start_imx6ul_ccimx6ulsbcpro.pblb.imximg
> > +image-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += barebox-imx6ul-ccimx6ulsbcpro.img
> > +
> >  # ----------------------- vf6xx based boards ---------------------------
> >  pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
> >  CFG_start_vf610_twr.pblb.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
> > 
> 
> Cheers
> Ahmad
> 

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
