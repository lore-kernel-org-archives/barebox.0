Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-00043H-FE
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:11 +0200
Message-Id: <1277372356-32370-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/11] remove eco920 board support
To: barebox@lists.infradead.org

It has been broken for long time and nobody cared, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                |    1 -
 arch/arm/mach-at91rm9200/Kconfig |    8 --
 board/eco920/Makefile            |    2 -
 board/eco920/config.h            |  134 ------------------------
 board/eco920/config.mk           |    1 -
 board/eco920/eco920.c            |  211 --------------------------------------
 6 files changed, 0 insertions(+), 357 deletions(-)
 delete mode 100644 board/eco920/Makefile
 delete mode 100644 board/eco920/config.h
 delete mode 100644 board/eco920/config.mk
 delete mode 100644 board/eco920/eco920.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 85ff9c8..1c9f24e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,7 +52,6 @@ board-$(CONFIG_MACH_A9M2410)			:= a9m2410
 board-$(CONFIG_MACH_A9M2440)			:= a9m2440
 board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
-board-$(CONFIG_MACH_ECO920)			:= eco920
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302A)			:= edb93xx
diff --git a/arch/arm/mach-at91rm9200/Kconfig b/arch/arm/mach-at91rm9200/Kconfig
index 7e90179..c062097 100644
--- a/arch/arm/mach-at91rm9200/Kconfig
+++ b/arch/arm/mach-at91rm9200/Kconfig
@@ -2,7 +2,6 @@ if ARCH_AT91RM9200
 
 config ARCH_TEXT_BASE
 	hex
-	default 0x21e00000 if MACH_ECO920
 
 config BOARDINFO
 
@@ -12,13 +11,6 @@ choice
 
 	prompt "AT91RM9200 Board Type"
 
-config MACH_ECO920
-	bool "eco920"
-	select HAS_AT91_ETHER
-	select HAS_CFI
-	help
-	  Say Y here if you are using the Motorola MX1ADS board
-
 endchoice
 
 endif
diff --git a/board/eco920/Makefile b/board/eco920/Makefile
deleted file mode 100644
index 2cc70ca..0000000
--- a/board/eco920/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-obj-y	+= eco920.o
-
diff --git a/board/eco920/config.h b/board/eco920/config.h
deleted file mode 100644
index 3fb8beb..0000000
--- a/board/eco920/config.h
+++ /dev/null
@@ -1,134 +0,0 @@
-/*
- * (C) Copyright 2007 Pengutronix
- * Sascha Hauer, <s.hauer@pengutronix.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-/* ARM asynchronous clock */
-#define AT91C_MAIN_CLOCK	179712000	/* from 18.432 MHz crystal (18432000 / 4 * 39) */
-#define AT91C_MASTER_CLOCK	59904000	/* peripheral clock (AT91C_MASTER_CLOCK / 3) */
-/* #define AT91C_MASTER_CLOCK	44928000 */	/* peripheral clock (AT91C_MASTER_CLOCK / 4) */
-
-#define AT91_SLOW_CLOCK		32768	/* slow clock */
-
-#undef  CONFIG_USE_IRQ			/* we don't need IRQ/FIQ stuff	*/
-#define USE_920T_MMU		1
-
-#define CONFIG_CMDLINE_TAG	1	/* enable passing of ATAGs	*/
-#define CONFIG_SETUP_MEMORY_TAGS 1
-#define CONFIG_INITRD_TAG	1
-
-#define CFG_USE_MAIN_OSCILLATOR		1
-/* flash */
-#define MC_PUIA_VAL	0x00000000
-#define MC_PUP_VAL	0x00000000
-#define MC_PUER_VAL	0x00000000
-#define MC_ASR_VAL	0x00000000
-#define MC_AASR_VAL	0x00000000
-#define EBI_CFGR_VAL	0x00000000
-#define SMC2_CSR_VAL	0x00003287
-
-/* clocks */
-#define PLLAR_VAL	0x2026be04
-#define PLLBR_VAL	0x10483e0e
-#define MCKR_VAL	0x00000202
-
-/* sdram */
-#define PIOC_ASR_VAL	0xffff0000
-#define PIOC_BSR_VAL	0x00000000
-#define PIOC_PDR_VAL	0xffff0000
-#define EBI_CSA_VAL	0x00000002 /* CS1=SDRAM */
-#define SDRC_CR_VAL	0x2188c155 /* set up the SDRAM */
-#define SDRAM		0x20000000 /* address of the SDRAM */
-#define SDRAM1		0x20000080 /* address of the SDRAM */
-#define SDRAM_VAL	0x00000000 /* value written to SDRAM */
-#define SDRC_MR_VAL	0x00000002 /* Precharge All */
-#define SDRC_MR_VAL1	0x00000004 /* refresh */
-#define SDRC_MR_VAL2	0x00000003 /* Load Mode Register */
-#define SDRC_MR_VAL3	0x00000000 /* Normal Mode */
-#define SDRC_TR_VAL	0x000002E0 /* Write refresh rate */
-
-#define CONFIG_BAUDRATE 115200
-
-/*
- * Hardware drivers
- */
-
-/* define one of CONFIG_DBGU, CONFIG_USART0 or CONFIG_USART1 to choose console */
-#define CONFIG_DBGU
-
-#define CONFIG_BOOTDELAY      3
-
-#define CONFIG_CMDLINE_EDITING  1
-
-#define	CONFIG_EXTRA_ENV_SETTINGS											\
-	"mtdids=nor0=physmap-flash.0\0"											\
-	"mtdparts=mtdparts=physmap-flash.0:128k(barebox)ro,128k(env),1536k(kernel),-(jffs2)\0"				\
-	"bootargs_base=setenv bootargs console=ttyAT0,115200\0"								\
-	"bootargs_nfs=setenv bootargs $(bootargs) root=/dev/nfs ip=dhcp nfsroot=$(serverip):$(nfsrootfs),v3,tcp\0"	\
-	"bootargs_mtd=setenv bootargs $(bootargs) $(mtdparts)\0"							\
-	"bootargs_flash=setenv bootargs $(bootargs) root=/dev/mtdblock3 rootfstype=jffs2\0"				\
-	"bootcmd_flash=run bootargs_base bootargs_mtd bootargs_flash; bootm 0x11040000\0"				\
-	"bootcmd_net=run bootargs_base bootargs_mtd bootargs_nfs; tftpboot 0x20000000 $(uimage); bootm\0"		\
-	"autoload=n\0"													\
-	"uimage=uImage-eco920\0"											\
-	"jffs2=root-eco920.jffs2\0"
-
-/* this must be included AFTER the definition of CONFIG_COMMANDS (if any) */
-#include <cmd_confdefs.h>
-
-#define CONFIG_NR_DRAM_BANKS		1
-#define PHYS_SDRAM			0x20000000
-#define PHYS_SDRAM_SIZE			0x2000000
-
-#define CFG_MEMTEST_START		PHYS_SDRAM
-#define CFG_MEMTEST_END			CFG_MEMTEST_START + PHYS_SDRAM_SIZE - 262144
-
-#define CONFIG_DRIVER_ETHER
-#define CONFIG_NET_RETRY_COUNT		20
-#define CONFIG_AT91C_USE_RMII
-
-#define CFG_LOAD_ADDR		0x21000000  /* default load address */
-
-#define CFG_BAUDRATE_TABLE	{115200 , 19200, 38400, 57600, 9600 }
-
-#define	CFG_LONGHELP				/* undef to save memory		*/
-#define CFG_PROMPT		"barebox> "	/* Monitor Command Prompt */
-#define CFG_CBSIZE		1024		/* Console I/O Buffer Size */
-#define CFG_MAXARGS		32		/* max number of command args */
-#define CFG_PBSIZE		(CFG_CBSIZE+sizeof(CFG_PROMPT)+16) /* Print Buffer Size */
-
-#define CLOCK_TICK_RATE		AT91C_MASTER_CLOCK/2	/* AT91C_TC0_CMR is implicitly set to */
-							/* AT91C_TC_TIMER_DIV1_CLOCK */
-
-#define CONFIG_MISC_INIT_R      1       /* call misc_init_r() on init   */
-#define CFG_SPLASH		1
-#define CFG_S1D13706FB		1
-
-#define CFG_USB_OHCI_MAX_ROOT_PORTS     15
-#define CFG_USB_OHCI_SLOT_NAME           "at91rm9200"
-#define LITTLEENDIAN
-#define CONFIG_AT91C_PQFP_UHPBUG
-
-#endif
-
diff --git a/board/eco920/config.mk b/board/eco920/config.mk
deleted file mode 100644
index 9ce161e..0000000
--- a/board/eco920/config.mk
+++ /dev/null
@@ -1 +0,0 @@
-TEXT_BASE = 0x21f00000
diff --git a/board/eco920/eco920.c b/board/eco920/eco920.c
deleted file mode 100644
index 8d00877..0000000
--- a/board/eco920/eco920.c
+++ /dev/null
@@ -1,211 +0,0 @@
-/*
- * (C) Copyright 2007 Pengutronix
- * Sascha Hauer, <s.hauer@pengutronix.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <mach/AT91RM9200.h>
-#include <at91rm9200_net.h>
-#include <dm9161.h>
-#include <miiphy.h>
-#include <splash.h>
-#include <asm/armlinux.h>
-#include <s1d13706fb.h>
-#include <net.h>
-#include <init.h>
-
-/*
- * Miscelaneous platform dependent initialisations
- */
-
-static struct cfi_platform_data cfi_info = {
-};
-
-struct device_d cfi_dev = {
-	.name     = "cfi_flash",
-	.map_base = 0x11000000,
-	.size     = 16 * 1024 * 1024,
-
-	.platform_data = &cfi_info,
-};
-
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
-struct device_d sdram_dev = {
-	.name     = "mem",
-	.map_base = 0x20000000,
-	.size     = 32 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
-static struct device_d at91_ath_dev = {
-	.name     = "at91_eth",
-};
-
-static int devices_init (void)
-{
-	register_device(&cfi_dev);
-	register_device(&sdram_dev);
-	register_device(&at91_ath_dev);
-
-	armlinux_set_bootparams((void *)(PHYS_SDRAM + 0x100));
-	armlinux_set_architecture(MACH_TYPE_ECO920);
-
-	return 0;
-}
-
-device_initcall(devices_init);
-
-static unsigned int phy_is_connected (AT91PS_EMAC p_mac)
-{
-	return 1;
-}
-
-static unsigned char phy_init_bogus (AT91PS_EMAC p_mac)
-{
-	unsigned short val;
-	int timeout, adr, speed, fullduplex;
-
-	at91rm9200_EmacEnableMDIO (p_mac);
-
-	/* Scan through phy addresses to find a phy */
-	for (adr = 0; adr < 16; adr++) {
-		at91rm9200_EmacReadPhy(p_mac, PHY_PHYIDR1 | (adr << 5), &val);
-		if (val != 0xffff)
-			break;
-	}
-
-	adr <<= 5;
-
-	val = PHY_BMCR_RESET;
-	at91rm9200_EmacWritePhy(p_mac, PHY_BMCR | adr, &val);
-
-	udelay(1000);
-
-	val = 0x01e1; /* ADVERTISE_100FULL | ADVERTISE_100HALF |
-	               * ADVERTISE_10FULL | ADVERTISE_10HALF |
-		       * ADVERTISE_CSMA */
-	at91rm9200_EmacWritePhy(p_mac, PHY_ANAR | adr, &val);
-
-	at91rm9200_EmacReadPhy(p_mac, PHY_BMCR | adr, &val);
-	val |= PHY_BMCR_AUTON | PHY_BMCR_RST_NEG;
-	at91rm9200_EmacWritePhy(p_mac, PHY_BMCR | adr, &val);
-
-	timeout = 500;
-	do {
-		/* at91rm9200_EmacReadPhy() has a udelay(10000)
-		 * in it, so this should be about 5 deconds
-		 */
-		if ((timeout--) == 0) {
-			printf("Autonegotiation timeout\n");
-			goto out;
-		}
-
-		at91rm9200_EmacReadPhy(p_mac, PHY_BMSR | adr, &val);
-	} while (!(val & PHY_BMSR_LS));
-
-	at91rm9200_EmacReadPhy(p_mac, PHY_ANLPAR | adr, &val);
-
-	if (val & PHY_ANLPAR_100) {
-		speed = 100;
-		p_mac->EMAC_CFG |= AT91C_EMAC_SPD;
-	} else {
-		speed = 10;
-		p_mac->EMAC_CFG &= ~AT91C_EMAC_SPD;
-	}
-
-	if (val & (PHY_ANLPAR_TXFD | PHY_ANLPAR_10FD)) {
-		fullduplex = 1;
-		p_mac->EMAC_CFG |= AT91C_EMAC_FD;
-	} else {
-		fullduplex = 0;
-		p_mac->EMAC_CFG &= ~AT91C_EMAC_FD;
-	}
-
-	printf("running at %d-%sDuplex\n",speed, fullduplex ? "FUll" : "Half");
-
-out:
-	at91rm9200_EmacDisableMDIO (p_mac);
-
-	return 1;
-}
-
-void at91rm9200_GetPhyInterface(AT91PS_PhyOps p_phyops)
-{
-	p_phyops->Init = phy_init_bogus;
-	p_phyops->IsPhyConnected = phy_is_connected;
-	/* This is not used anywhere */
-	p_phyops->GetLinkSpeed = NULL;
-	/* ditto */
-	p_phyops->AutoNegotiate = NULL;
-}
-
-#ifdef CONFIG_DRIVER_VIDEO_S1D13706
-static int efb_init(struct efb_info *efb)
-{
-	writeb(GPIO_CONTROL0_GPO, efb->regs + EFB_GPIO_CONTROL1);
-	writeb(PCLK_SOURCE_CLKI2, efb->regs + EFB_PCLK_CONF);
-	writeb(0x1, efb->regs + 0x26); /* FIXME: display specific, should be set to zero
-					*        according to datasheet
-					*/
-	return 0;
-}
-
-/* Nanya STN Display */
-static struct efb_info efb = {
-	.fbd = {
-		.xres = 320,
-		.yres = 240,
-		.bpp = 8,
-		.fb = (void*)0x40020000,
-	},
-
-	.init			= efb_init,
-	.regs			= (void*)0x40000000,
-	.pixclock		= 100000,
-	.hsync_len		= 1,
-	.left_margin		= 22,
-	.right_margin		= 1,
-	.vsync_len		= 1,
-	.upper_margin		= 0,
-	.lower_margin		= 1,
-	.sync			= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
-	.panel_type		= PANEL_TYPE_STN | PANEL_TYPE_WIDTH_8 |
-				  PANEL_TYPE_COLOR | PANEL_TYPE_FORMAT_2,
-};
-#endif
-#define SMC_CSR3	0xFFFFFF7C
-
-int misc_init_r(void)
-{
-	/* Initialization of the Static Memory Controller for Chip Select 3 */
-	*(volatile unsigned long*)SMC_CSR3 = 0x00002185;
-#ifdef CONFIG_DRIVER_VIDEO_S1D13706
-	s1d13706fb_init(&efb);
-#endif
-#ifdef CONFIG_CMD_SPLASH
-	splash_set_fb_data(&efb.fbd);
-#endif
-	return 0;
-}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
