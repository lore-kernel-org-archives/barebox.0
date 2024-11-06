Delivery-date: Wed, 06 Nov 2024 17:35:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8j0U-005axx-2j
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 17:35:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8j0V-0000TO-E8
	for lore@pengutronix.de; Wed, 06 Nov 2024 17:35:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x3eel4U9/YTUIqXlvjQqsMQCQrhIwUMIoqFy/zMSEgk=; b=aiYju6GHa7CNXGiQ2zalJonMWR
	rAckCmxcacHfpiu65/IYrsNjxN9XyDh0LaH6XkO9hXEx6ZY8vLGHW5uOCbf8vNpAkRjErICU54iRr
	xzBtosSdauluA8EfeIwIT3VAcE9cgmyC6Q2AjuNDuWfvvPCOUkdrJnyj4Qo2PZv7PJYRa79octVW+
	kDTuAYfgf5ZmrSTHIB2cfdEyfkYeerX2wdvD6ffUKpV4m5/9Fr8DGsjkJTx7usDVPTww1ZWPfStOh
	LpIyLvK77SNYLjhmyG801qfeI+l1+M534A0/Un4Zlk9wAk9HNnc1PnNu0utYTKUo/ItPWxFwri+7Y
	MLZ3mknw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8j04-000000042rZ-3cl0;
	Wed, 06 Nov 2024 16:35:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8j01-000000042qb-3XQo
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 16:35:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-0000EK-LU; Wed, 06 Nov 2024 17:35:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-002KX5-19;
	Wed, 06 Nov 2024 17:35:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-00HO2D-0x;
	Wed, 06 Nov 2024 17:35:08 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 06 Nov 2024 17:34:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241106-fix-sha256-assembly-v1-2-ad1ac961f15f@pengutronix.de>
References: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
In-Reply-To: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_083517_924967_9647EEE9 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] arm: configs: multi_v5_v6_defconfig: move rpi1 armv6
 targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

MACH_RPI Boards (Raspberry Pi 1, Zero and Zero W) all use the Broadcom
BCM2835 SoC which is ARMv6. Thus it is moved to the correct defconfig.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/configs/multi_v5_v6_defconfig | 4 ++--
 arch/arm/configs/multi_v7_defconfig    | 4 ----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index 0ff8597fdea968b027490bb24ec0871277ab7ece..d6bfa90529a05b57ca58f7b50314549094134c02 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -1,5 +1,7 @@
+CONFIG_ARCH_BCM283X=y
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_VERSATILE=y
+CONFIG_MACH_RPI=y
 CONFIG_MACH_SCB9328=y
 CONFIG_MACH_TX25=y
 CONFIG_MACH_PCA100=y
@@ -74,7 +76,6 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_FEC_IMX=y
@@ -114,6 +115,5 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 97b01fd81278f1841c3f037b33bc53969020a160..8a9617c116d741c9bc5b6586e707c1c244cd18c6 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -5,7 +5,6 @@ CONFIG_ARCH_ROCKCHIP=y
 CONFIG_ARCH_STM32MP=y
 CONFIG_ARCH_VEXPRESS=y
 CONFIG_CACHE_L2X0=y
-CONFIG_MACH_RPI=y
 CONFIG_MACH_RPI2=y
 CONFIG_MACH_RPI3=y
 CONFIG_MACH_RPI_CM3=y
@@ -197,7 +196,6 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_STATE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
@@ -294,7 +292,6 @@ CONFIG_MFD_MC9SDZ60=y
 CONFIG_MFD_STMPE=y
 CONFIG_MFD_STPMIC1=y
 CONFIG_MFD_STM32_TIMERS=y
-CONFIG_STATE_DRV=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_PWM=y
@@ -348,7 +345,6 @@ CONFIG_FS_TFTP_MAX_WINDOW_SIZE=8
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y

-- 
2.39.5



