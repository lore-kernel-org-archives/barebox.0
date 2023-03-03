Delivery-date: Fri, 03 Mar 2023 10:32:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1m1-007O8V-LR
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:32:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1m0-0005EU-FI
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:32:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=00vW0t7KDs99rMM4oCWIECeOZTfNPyOLqvJCpL+KRWY=; b=XDH8W42z0g1jOZK1bEWGWHDTRd
	ZDwj+sX15jGccupbekcP9Ax3NxG+3Gyz0ayJcDKzPr+BisrUwsTzEBjtS4sz3ZDDa4B036hnQbCed
	Ol89paEgrOoTelyvJvxSlOsbTr+JhDBRD47UzjRrHPjjojwV+xnwiQz2C3l6VihziHocpTtoz3vGt
	/jPBOrdsUH+N76QqF4T1txtj8nr/SRwyIC86JsNIBZVt71dzh9GYB/2U16r/C8e+NOIjk1p29fEvB
	0RtNyE1csRxL8S2jK/bWHNeWNTJ+okdl+LRf99a3cswV8u4RJ+fGBODAoS6BRHw5jqklxnIQDYuBe
	C1Ii0fQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1km-005l70-GX; Fri, 03 Mar 2023 09:31:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1d2-005fQX-OC
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:23:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=00vW0t7KDs99rMM4oCWIECeOZTfNPyOLqvJCpL+KRWY=; b=JDbBhhQpkFzLEkygqta1VE9yFT
	JeET4fw5qQgj+s9hMH1koexDXLN/h082C5oe/cNAvetimmBcxzSoysL91YZ98UfoqpoI3u5RzSzPp
	fFRZ0X6qM2DxVJi0FyGXy82jCaG7EMSXQyBK2R0Sv8TO14l8sB9WfdbClErFPeGTEiydbD/7kD1H2
	fVZjlKOcnu6optC543OBX8Gg+VXrCnwJ3a9oRyuiWV4peparmoGx646dMCX+DuIZorJjvNBxphxwr
	yPYZ0T65CpT2Zpklv1ZDlGspvN2nLU9YakgkqnGe4MkjfxO3tuleQe3dRWks244Sc4qg1Umy/oVxx
	lJWla/qQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bo-00FdL8-1v
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:23:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-0000FZ-GR; Fri, 03 Mar 2023 10:21:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bh-001Wj5-OA; Fri, 03 Mar 2023 10:21:41 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2m1-8O; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:31 +0100
Message-Id: <20230303092131.3063587-51-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092150_925801_3A781480 
X-CRM114-Status: GOOD (  11.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_75_100 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 50/50] ARM: Add multi_v8_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a multi_v8_defconfig which builds all SoCs currently
supporting multi-arch which are i.MX, Zynqmp and Rockchip. The
features are merged from the correspondig defconfig files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 205 ++++++++++++++++++++++++++++
 1 file changed, 205 insertions(+)
 create mode 100644 arch/arm/configs/multi_v8_defconfig

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
new file mode 100644
index 0000000000..f9782a2b2a
--- /dev/null
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -0,0 +1,205 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_ARCH_ZYNQMP=y
+CONFIG_MACH_INNOCOMM_WB15=y
+CONFIG_MACH_MNT_REFORM=y
+CONFIG_MACH_NXP_IMX8MM_EVK=y
+CONFIG_MACH_NXP_IMX8MN_EVK=y
+CONFIG_MACH_NXP_IMX8MP_EVK=y
+CONFIG_MACH_NXP_IMX8MQ_EVK=y
+CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
+CONFIG_MACH_POLYHEX_DEBIX=y
+CONFIG_MACH_PROTONIC_IMX8M=y
+CONFIG_MACH_TQ_MBA8MPXL=y
+CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
+CONFIG_MACH_ZII_IMX8MQ_DEV=y
+CONFIG_IMX_IIM=y
+CONFIG_MACH_RK3568_EVB=y
+CONFIG_MACH_RK3568_BPI_R2PRO=y
+CONFIG_MACH_PINE64_QUARTZ64=y
+CONFIG_MACH_RADXA_ROCK3=y
+CONFIG_MACH_XILINX_ZCU104=y
+CONFIG_MACH_XILINX_ZCU106=y
+CONFIG_BOARD_ARM_GENERIC_DT=y
+CONFIG_64BIT=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="barebox> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_SPARSE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_MMC_EXTCSD=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_SMC=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_FIRMWARELOAD=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_OVERLAY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_OF_OVERLAY_LIVE=y
+CONFIG_SERIAL_DEV_BUS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_CADENCE=y
+CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
+CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DP83867_PHY=y
+CONFIG_MICREL_PHY=y
+CONFIG_REALTEK_PHY=y
+CONFIG_SMSC_PHY=y
+CONFIG_NET_DSA_MV88E6XXX=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_MDIO_GPIO=y
+CONFIG_MDIO_BUS_MUX_GPIO=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_USB_NET_AX88179_178A=y
+CONFIG_NET_USB_SMSC95XX=y
+CONFIG_NET_USB_RTL8152=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_I2C_IMX=y
+CONFIG_I2C_RK3X=y
+CONFIG_MTD=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_DWC3=y
+CONFIG_USB_DWC3_DUAL_ROLE=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_USB_GADGET_MASS_STORAGE=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_DW=y
+CONFIG_MCI_ROCKCHIP_DWCMSHC=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_MCI_ARASAN=y
+CONFIG_MFD_ACT8846=y
+CONFIG_RAVE_SP_CORE=y
+CONFIG_MFD_RK808=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT24=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
+CONFIG_WATCHDOG_DW=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_RAVE_SP_WATCHDOG=y
+CONFIG_GPIO_PCA953X=y
+CONFIG_GPIO_ZYNQ=y
+CONFIG_IMX_OCOTP=y
+CONFIG_RAVE_SP_EEPROM=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_REGULATOR_RK808=y
+CONFIG_RESET_IMX7=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_DS1307=y
+CONFIG_FIRMWARE_ZYNQMP_FPGA=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
+CONFIG_ROCKCHIP_IODOMAIN=y
+# CONFIG_VIRTIO_MENU is not set
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_BPKFS=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_FS_RATP=y
+CONFIG_LZO_DECOMPRESS=y
-- 
2.30.2



