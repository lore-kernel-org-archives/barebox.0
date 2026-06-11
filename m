Delivery-date: Thu, 11 Jun 2026 23:15:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmkf-004pn2-0Q
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 23:15:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmke-0004Zv-FX
	for lore@pengutronix.de; Thu, 11 Jun 2026 23:15:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bNtso5IGPmWCSqv2Aff+hS3HYLlCu2Lox58DI5M6w34=; b=e++5FKHjSvH0iHLmobKmbKs1EC
	iXXZvWVJa4EMV7OcPbBWxpTFq7eAx2VLmqdJxJRtvd6bNd5knWRkk4AdtcUsZHBPo+UnQUjb3Leh+
	D3GXA+RTFwOKp6lEFB0zg9UaMBLWwDi+4yTRX03I4LJns8gJTKicvgQvsckSZHUhUFkk+SbP0EFBF
	ml9OGJ7H7BiUNzqXwBfV6p9Uyu+cPZ2qB/FiViCbVm4XoIRfN3iKI+jsAB4/Dla/6gjxtjjcOYIIw
	oNFHKVT7Iu7CVvFlrIW8B/ls48CiOulgEe/ojmu+e+taRT+XIdXTARg9wPTjsKCc1Pi7dO3WloHcY
	2/WsrmRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmjR-0000000A54a-41sg;
	Thu, 11 Jun 2026 21:14:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmjP-0000000A53c-2Gyz
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 21:14:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXmjM-0004FO-IA; Thu, 11 Jun 2026 23:14:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 11 Jun 2026 23:14:22 +0200
Message-ID: <20260611211425.4090757-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260611211425.4090757-1-a.fatoum@barebox.org>
References: <20260611211425.4090757-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_141431_582736_699B6A20 
X-CRM114-Status: UNSURE (   7.82  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: stm32mp: enable useful options for the LXA Fairy Tux2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Fairy Tux 2 has a PCA953x I2C GPIO controller controlling some LEDs
as well as the reset to the dual role USB chip.

The USB-C port will be useful to boot installer images via EFI.

Enable support for these as well as other options that can prove useful.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/stm32mp_defconfig | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 1d1b75fbb0a8..dab6dee6635d 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -11,7 +11,6 @@ CONFIG_MACH_PROTONIC_STM32MP1=y
 CONFIG_MACH_PROTONIC_STM32MP13=y
 CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="stm32mp_defconfig"
@@ -24,7 +23,6 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
@@ -39,6 +37,9 @@ CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
 CONFIG_RESET_SOURCE=y
+CONFIG_FASTBOOT_SPARSE=y
+CONFIG_FASTBOOT_CMD_OEM=y
+CONFIG_EFI_LOADER=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -62,6 +63,8 @@ CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_LN=y
 CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_FIPTOOL=y
+CONFIG_CMD_FIPTOOL_WRITE=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LET=y
 CONFIG_CMD_MSLEEP=y
@@ -91,6 +94,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_SPI=y
+CONFIG_CMD_USBGADGET=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_DIFF=y
@@ -105,12 +109,12 @@ CONFIG_NET_FASTBOOT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
 CONFIG_STM32_ADC=y
-CONFIG_STM32_QSPI=y
 CONFIG_DRIVER_SERIAL_STM32=y
 CONFIG_DRIVER_NET_DESIGNWARE_STM32=y
 CONFIG_AT803X_PHY=y
 CONFIG_MICREL_PHY=y
 CONFIG_REALTEK_PHY=y
+CONFIG_STM32_QSPI=y
 CONFIG_DRIVER_SPI_STM32=y
 CONFIG_I2C=y
 CONFIG_I2C_STM32=y
@@ -126,6 +130,7 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_USB_GADGET_MASS_STORAGE=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_FB_SSD1307=y
@@ -158,7 +163,9 @@ CONFIG_PWM=y
 CONFIG_PWM_STM32=y
 CONFIG_HWRNG=y
 CONFIG_HWRNG_STM32=y
+CONFIG_GPIO_PCA953X=y
 CONFIG_STM32_BSEC=y
+CONFIG_STM32_BSEC_WRITE=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
 CONFIG_REGULATOR_STM32_PWR=y
-- 
2.47.3



