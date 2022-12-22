Delivery-date: Thu, 22 Dec 2022 15:32:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mce-0051ZH-Bz
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 15:32:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mca-00073P-Kx
	for lore@pengutronix.de; Thu, 22 Dec 2022 15:32:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uGPmxsDp0QwTxJBFFQceF3wR/Wlb/zrnAehWlBYrrIQ=; b=p/BeeyniwR7qCt2Io2Rr4idMp5
	I5jZ/lLNejzN/GYO8dq9L/HiRgfkBYDxrCQWOgt3L+7LubhlxrXoSSA/JRQg8aYHyjgOfJmNJwu7H
	Kfhx3LqknOkKIHMQqFohDAb8Ro7X2cVVV01YDBdaRZE5QNbuofj9S7a2NJI6bRyGKLwqGJEnUoI9q
	0W7MFQrybw8hGU8mv1cTXVMJQG6tn5ujjqYMmpqQKPC4XPheHK/UZOEBokR22EyDQqmmtBMEEutxu
	+B80wMALP3719OH+lD265wCxq/YKi2TA6Fj1B/0VgQFqISUmOALSKnylTiJHpRWi65PhSZRjpRUql
	44BJYKLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mag-00Cyc3-La; Thu, 22 Dec 2022 14:30:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIv-00ComW-3W
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 14:12:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIr-0003ua-AA; Thu, 22 Dec 2022 15:12:09 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIq-0011pt-Mk; Thu, 22 Dec 2022 15:12:08 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIp-00Cx93-7z; Thu, 22 Dec 2022 15:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de,
	ore@pengutronix.de,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Dec 2022 15:12:01 +0100
Message-Id: <20221222141201.3087192-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061213_572388_7CB76149 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] ARM: configs: imx_v7_defconfig: enable some useful options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Give the defconfig some color by enabling console colors during startup,
i.MX6 parallel LCD driver, backlight and some more options that were
noticed missing during debugging a skov-imx6 issue.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/imx_v7_defconfig | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 3cbec267fc87..6110a52e486f 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -72,11 +72,13 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
+CONFIG_MACHINE_ID=y
 CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
@@ -86,6 +88,7 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_MMC_EXTCSD=y
+CONFIG_CMD_FCB=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
@@ -117,6 +120,7 @@ CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_MENUTREE=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -149,9 +153,14 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_AT803X_PHY=y
 CONFIG_MICREL_PHY=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_MDIO_GPIO=y
+CONFIG_MDIO_BUS_MUX_GPIO=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
+CONFIG_I2C_GPIO=y
+CONFIG_I2C_MUX=y
 CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_DATAFLASH=y
@@ -180,8 +189,12 @@ CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3_PARALLEL=y
 CONFIG_DRIVER_VIDEO_SIMPLEFB=y
 CONFIG_DRIVER_VIDEO_EDID=y
+CONFIG_DRIVER_VIDEO_BACKLIGHT=y
+CONFIG_DRIVER_VIDEO_BACKLIGHT_PWM=y
+CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
@@ -219,4 +232,7 @@ CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_FS_UBIFS_COMPRESSION_ZSTD=y
+CONFIG_FS_SQUASHFS=y
 CONFIG_PNG=y
+CONFIG_DIGEST_SHA1_ARM=y
-- 
2.30.2



