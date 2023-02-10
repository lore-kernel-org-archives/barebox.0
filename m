Delivery-date: Fri, 10 Feb 2023 13:24:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQSSS-002zWn-60
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 13:24:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQSSL-0005ST-JM
	for lore@pengutronix.de; Fri, 10 Feb 2023 13:24:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Vgz1jbhdUE67VfeKCfpURhohcuyOrsn6CEksCA6sbM=; b=meQidB3WFlj9G1WXxzVIbjGNZC
	wABGMrjH1KyNt+9lJ22Hj6PPgs2CSEWvu7l3p0yvolPhHNsNHoB2BwWbYLhIMAPx5sfqdAL21INfL
	vlElWC9a2/k+1wpasb60yev0h4qktGGg339I7GuxqlQB1xG66BGPkXE4EynLQsQcheiVshne+VRKg
	cFSdPJGQ/greckAD8CozvREBTXy+Ix6BZb2WbA8mr5KvON4l6NjI4hGxoclsAfq3xz93AH5sZnclI
	cDA7SjrtaoVyZjyUQI9G1sd5OXkcS7zqxvx+QwpCwMf8qzaPLthrPipm2YUBgKBuzNEKd8Y9Ls0k8
	UFyHHVPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQSQu-005fD6-U9; Fri, 10 Feb 2023 12:23:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQSQo-005fCV-4T
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 12:23:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQSQm-0005K2-7K; Fri, 10 Feb 2023 13:23:08 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQSQk-0005aG-Mn; Fri, 10 Feb 2023 13:23:06 +0100
Date: Fri, 10 Feb 2023 13:23:06 +0100
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230210122306.GX10447@pengutronix.de>
References: <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_042310_387372_7737B657 
X-CRM114-Status: GOOD (  35.65  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 08, 2023 at 01:26:30PM +0000, Renaud Barbier wrote:
> The LS1021A-IOR is a NXP reference board.
> Currently supported:
> 
>     - DDR3 RAM fixed settings
>     - UART
>     - SPI boot
>     - One SGMII network ports
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/ls1021aiot/Makefile           |   3 +
>  arch/arm/boards/ls1021aiot/board.c            |  83 +++++++
>  arch/arm/boards/ls1021aiot/lowlevel.c         | 121 ++++++++++
>  arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 +
>  .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 +
>  arch/arm/boards/ls1021aiot/start.S            |  11 +
>  arch/arm/configs/layerscape_v7_defconfig      | 100 +++++++++
>  arch/arm/dts/fsl-ls1021a-iot.dts              | 124 ++++++++++
>  arch/arm/lib32/Makefile                       |   1 +
>  arch/arm/lib32/pbl.c                          |  21 ++
>  drivers/net/Kconfig                           |   2 +-
>  drivers/net/gianfar.c                         | 211 ++++++++++++++++--
>  drivers/net/gianfar.h                         |  16 +-
>  14 files changed, 690 insertions(+), 23 deletions(-)
>  create mode 100644 arch/arm/boards/ls1021aiot/Makefile
>  create mode 100644 arch/arm/boards/ls1021aiot/board.c
>  create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
>  create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
>  create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
>  create mode 100644 arch/arm/boards/ls1021aiot/start.S
>  create mode 100644 arch/arm/configs/layerscape_v7_defconfig
>  create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts
>  create mode 100644 arch/arm/lib32/pbl.c
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index f47aea6602..b148c8c1c1 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -192,6 +192,7 @@ obj-$(CONFIG_MACH_ZII_IMX7D_DEV)		+= zii-imx7d-dev/
>  obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
>  obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
>  obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
> +obj-$(CONFIG_MACH_LS1021AIOT)			+= ls1021aiot/
>  obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
>  obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
>  obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
> diff --git a/arch/arm/boards/ls1021aiot/Makefile b/arch/arm/boards/ls1021aiot/Makefile
> new file mode 100644
> index 0000000000..df69ce814b
> --- /dev/null
> +++ b/arch/arm/boards/ls1021aiot/Makefile
> @@ -0,0 +1,3 @@
> +lwl-y += lowlevel.o
> +obj-y += board.o
> +lwl-y += start.o
> diff --git a/arch/arm/boards/ls1021aiot/board.c b/arch/arm/boards/ls1021aiot/board.c
> new file mode 100644
> index 0000000000..8f99f1a996
> --- /dev/null
> +++ b/arch/arm/boards/ls1021aiot/board.c
> @@ -0,0 +1,83 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// SPDX-FileCopyrightText: (C) Copyright 2021 Ametek Inc.
> +// SPDX-FileCopyrightText: 2021 Renaud Barbier <renaud.barbier@abaco.com>,
> +
> +#include <common.h>
> +#include <init.h>
> +#include <bbu.h>
> +#include <net.h>
> +#include <crc.h>
> +#include <fs.h>
> +#include <io.h>
> +#include <envfs.h>
> +#include <libfile.h>
> +#include <asm/memory.h>
> +#include <linux/sizes.h>
> +#include <linux/clk.h>
> +#include <linux/clkdev.h>
> +#include <asm/system.h>
> +#include <mach/layerscape.h>
> +#include <of_address.h>
> +#include <soc/fsl/immap_ls102xa.h>
> +
> +
> +/* Currently 1000FD is not working. Below is a bit of guess work
> + * from reading MMD3/MMD7 of the AR8033
> + */
> +static int phy_fixup(struct phy_device *phydev)
> +{
> +	unsigned short val;
> +	int advertise = SUPPORTED_1000baseT_Full | SUPPORTED_1000baseT_Half;
> +
> +	phydev->advertising &= ~advertise;
> +
> +	/* Ar8031 phy SmartEEE feature cause link status generates glitch,
> +	 * which cause ethernet link down/up issue, so disable SmartEEE
> +	 */
> +	phy_write(phydev, 0xd, 0x3);
> +	phy_write(phydev, 0xe, 0x805d);
> +	phy_write(phydev, 0xd, 0x4003);
> +	val = phy_read(phydev, 0xe);
> +	val &= ~(0x1 << 8);
> +	phy_write(phydev, 0xe, val);
> +
> +	/* Use XTAL */
> +	phy_write(phydev, 0xd, 0x7);
> +	phy_write(phydev, 0xe, 0x8016);
> +	phy_write(phydev, 0xd, 0x4007);
> +	val = phy_read(phydev, 0xe);
> +	val &= 0xffe3;
> +	phy_write(phydev, 0xe, val);
> +
> +	return 0;
> +}

We have a phy driver for the AR8033. Can you use it instead of putting
this into board code?

> +
> +static int iot_mem_init(void)
> +{
> +	if (!of_machine_is_compatible("fsl,ls1021a"))
> +		return 0;
> +
> +	arm_add_mem_device("ram0", 0x80000000, 0x40000000);
> +
> +	return 0;
> +}
> +mem_initcall(iot_mem_init);
> +
> +#define PHY_ID_AR8031	0x004dd074
> +static int iot_postcore_init(void)
> +{
> +	struct ccsr_scfg *scfg = IOMEM(LS102XA_SCFG_ADDR);
> +
> +	if (!of_machine_is_compatible("fsl,ls1021a"))
> +		return 0;
> +
> +	/* clear BD & FR bits for BE BD's and frame data */
> +	clrbits_be32(&scfg->etsecdmamcr, SCFG_ETSECDMAMCR_LE_BD_FR);
> +	out_be32(&scfg->etsecmcr, SCFG_ETSECCMCR_GE2_CLK125);
> +
> +	phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff, phy_fixup);
> +
> +	return 0;
> +}
> +
> +coredevice_initcall(iot_postcore_init);
> +static struct fsl_ddr_controller ddrc[] = {
> +	{
> +	.memctl_opts.ddrtype = SDRAM_TYPE_DDR3,
> +	.base = IOMEM(LS102XA_DDR_ADDR),
> +	.ddr_freq = LS1021A_DDR_FREQ,
> +	.erratum_A009942 = 1,
> +	.chip_selects_per_ctrl = 4,
> +	.fsl_ddr_config_reg = {
> +		.cs[0].bnds         = 0x008000bf,
> +		.cs[0].config       = 0x80014302,
> +		.cs[0].config_2     = 0x00000000,
> +		.cs[1].bnds         = 0x00000000,
> +		.cs[1].config       = 0x00000000,
> +		.cs[1].config_2     = 0x00000000,
> +		.cs[2].bnds         = 0x00000000,
> +		.cs[2].config       = 0x00000000,
> +		.cs[2].config_2     = 0x00000000,
> +		.cs[3].bnds         = 0x00000000,
> +		.cs[3].config       = 0x00000000,
> +		.cs[3].config_2     = 0x00000000,
> +		.timing_cfg_3       = 0x010e1000,
> +		.timing_cfg_0       = 0x50550004,
> +		.timing_cfg_1       = 0xbcb38c56,
> +		.timing_cfg_2       = 0x0040d120,
> +		.ddr_sdram_cfg      = 0x470c0008,
> +		.ddr_sdram_cfg_2    = 0x00401010,
> +		.ddr_sdram_mode     = 0x00061c60,
> +		.ddr_sdram_mode_2   = 0x00180000,
> +		.ddr_sdram_interval = 0x18600618,
> +		.ddr_data_init      = 0xDEADBEEF,
> +		.ddr_sdram_clk_cntl = 0x02000000,
> +		.ddr_init_addr      = 0x00000000,
> +		.ddr_init_ext_addr  = 0x00000000,
> +		.timing_cfg_4       = 0x00000001,
> +		.timing_cfg_5       = 0x03401400,
> +		.ddr_zq_cntl        = 0x89080600,
> +		.ddr_wrlvl_cntl     = 0x8655f605,
> +		.ddr_wrlvl_cntl_2   = 0x05060607,
> +		.ddr_wrlvl_cntl_3   = 0x05050505,
> +		.ddr_sr_cntr        = 0x00000000,
> +		.ddr_sdram_rcw_1    = 0x00000000,
> +		.ddr_sdram_rcw_2    = 0x00000000,
> +		.ddr_sdram_rcw_3    = 0x00000000,
> +		.ddr_cdr1           = 0x80040000,
> +		.ddr_cdr2           = 0x000000C0,
> +		.dq_map_0           = 0x00000000,
> +		.dq_map_1           = 0x00000000,
> +		.dq_map_2           = 0x00000000,
> +		.dq_map_3           = 0x00000000,
> +		.debug[28]          = 0x00700046,
> +		},
> +	},
> +};

Indentation seems a bit broken here.

> +
> +extern char __dtb_fsl_ls1021a_iot_start[];
> +
> diff --git a/arch/arm/dts/fsl-ls1021a-iot.dts b/arch/arm/dts/fsl-ls1021a-iot.dts
> new file mode 100644
> index 0000000000..5d50829313
> --- /dev/null
> +++ b/arch/arm/dts/fsl-ls1021a-iot.dts
> @@ -0,0 +1,124 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Freescale ls1021a IOT board device tree source
> + *
> + * Copyright 2016 Freescale Semiconductor, Inc.
> + */
> +
> +/dts-v1/;
> +
> +#include <arm/ls1021a-iot.dts>
> +
> +/ {
> +	model = "LS1021A IOT Board";

The upstream dts already has this.

> +&i2c1 {
> +	status = "okay";
> +	eeprom@51 {
> +		compatible = "atmel,24c512";
> +		reg = <0x51>;
> +	};
> +};
> +
> +/* I2C1 and I2C1 are connected due to Errata on rev1 board */

Should this be I2C1 and I2C2?

> +&i2c2 {
> +	status = "disabled";
> +};
> +
> +&enet0 {
> +	phy-handle = <&sgmii_phy2>;
> +	phy-mode = "sgmii";
> +	status = "disabled";
> +};

What's the point in modifying this node when the status is set to
disabled at the same time?

Upstream dts has phy-connection-type. Decide for one property
consistently.

> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 30de1f544c..19709b0163 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -189,7 +189,7 @@ config DRIVER_NET_FSL_FMAN
>  
>  config DRIVER_NET_GIANFAR
>  	bool "Gianfar Ethernet"
> -	depends on ARCH_MPC85XX
> +	depends on ARCH_MPC85XX || ARCH_LS102XA
>  	select PHYLIB
>  
>  config DRIVER_NET_KS8851_MLL
> diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c

The changes to the network driver should be an extra patch, or better
multiple patches as there seem to be multiple types of changes squashed
together.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


