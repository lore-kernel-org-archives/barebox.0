Delivery-date: Thu, 03 Aug 2023 12:51:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvd-004wPB-50
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvb-0001r5-AI
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O4rpRRsv0nZKmmZQkCeXDRej9dEAV3EvmmiagqOHLeo=; b=UMhwJ1VqfahS5zsREUhdUkjSZI
	4I2SVcz13WkMB3nIwEGjv/8TljyHY10KL/233Hr//+Ubc5QSrLpmILH3bsHAVunkd5XHVnSuPEpoA
	ndw11V+thKznz8LhTOuhNa1g/JiPQEnfe/ftmN2fHOonaVG4Zb1viEtktDuZ6d+WtptMrSl0QimLD
	vZjOn38rO+WAwuuqakRkfyNGrqWXhz/hEaVWN/pDHPmC5aDj1M+YsCsBCGai+HXecDOqhAsC3ZErS
	00D4pXuEMBivf+AO4wnbQhdgCFB2rUHu/nmr6XtUDS4Cpx69ZDDNBXw4r/0T2fBZS2PF8Aiat5v9j
	U1Ut81Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuV-007UmC-13;
	Thu, 03 Aug 2023 10:50:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UYn-2P
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000wm-Hp; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovj-SU; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HB0B-UP; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:50:03 +0200
Message-Id: <20230803105003.4088205-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035009_797443_A29272DE 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 22/22] ARM: multi_v8_defconfig: Enable K3 SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This enabled everything necessary for running barebox on K3 SoCs

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 77ad8a2688..f539ea3a51 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_ARM64_VIRT=y
 CONFIG_ARCH_IMX=y
+CONFIG_ARCH_K3=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_ARCH_ZYNQMP=y
 CONFIG_MACH_INNOCOMM_WB15=y
@@ -15,6 +16,7 @@ CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_IMX_IIM=y
+CONFIG_MACH_BEAGLEPLAY=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_QUARTZ64=y
@@ -23,7 +25,6 @@ CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
 CONFIG_MACH_XILINX_ZCU104=y
 CONFIG_MACH_XILINX_ZCU106=y
-CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MMU=y
@@ -173,11 +174,11 @@ CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_DUAL_ROLE=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
+CONFIG_USB_ONBOARD_HUB=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
 CONFIG_USB_GADGET_MASS_STORAGE=y
-CONFIG_USB_ONBOARD_HUB=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
@@ -208,8 +209,8 @@ CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_ZYNQ=y
+CONFIG_PINCTRL_SINGLE=y
 CONFIG_NVMEM_RMEM=y
-CONFIG_IMX_OCOTP=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
@@ -221,14 +222,17 @@ CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
 CONFIG_FIRMWARE_ZYNQMP_FPGA=y
 CONFIG_ARM_SCMI_PROTOCOL=y
+CONFIG_TI_SCI_PROTOCOL=y
 CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
 CONFIG_ROCKCHIP_IODOMAIN=y
+CONFIG_TI_SCI_PM_DOMAINS=y
 CONFIG_NVMEM_REBOOT_MODE=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_VIRTIO_PCI=y
+CONFIG_MAILBOX=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
-- 
2.39.2



