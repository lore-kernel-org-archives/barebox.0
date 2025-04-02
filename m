Delivery-date: Wed, 02 Apr 2025 10:36:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztab-007Kqb-2g
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 10:36:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztaa-0003O0-Kp
	for lore@pengutronix.de; Wed, 02 Apr 2025 10:36:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mQoWutYFfaS+6xAljMLN9B0+5Tg3gyJ2RKc65VILy4E=; b=Nu4heTIX5WocvgwS+bvHXov8C1
	+eE2x0QDJ8mM59RbC6L/PVoSUrldNHp1yzFlHx+Z0/94VBactMzhan66mj6lDW2lIz+apWGL8fuql
	L7m3RtpvbRmzh9AtPLjAiPW/eGTXEIfywb47oo3eYI0dE8r/Ro0QINBJSO0aWyw8iydL2VQtjIPkv
	Tlo8ErqjRtdII9L5n1sm84kA17FY9zmGOpkarUJLBVqKA/CHjJ6Tk1xfD9RMf/MM7anMD9i7FmFQd
	9ULZ7hfhXEqyPn1GjRP7njn8xSQO8K/Qy/g9mCMZVFM/LpT+OAL+0cVrJPiasmxbokynqDGXd/Fcb
	oV41aPgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztZz-00000005Y8N-3po6;
	Wed, 02 Apr 2025 08:36:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztZw-00000005Y7P-3pO1
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 08:36:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztZv-0003Cg-GJ; Wed, 02 Apr 2025 10:36:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztZv-002uD0-12;
	Wed, 02 Apr 2025 10:36:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztZv-00Avli-0i;
	Wed, 02 Apr 2025 10:36:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Apr 2025 10:36:06 +0200
Message-Id: <20250402083606.2605313-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250402083606.2605313-1-a.fatoum@pengutronix.de>
References: <20250402083606.2605313-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_013609_717703_DFD7B235 
X-CRM114-Status: GOOD (  10.96  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: configs: replace NET_NFS command option with FS_NFS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The command implementation of NFS has seen virtually no development
since we added the filesystem implementation 12 years ago.

Unlike TFTP, NFS is a proper file system, so the command implementation
is much less useful. Just replace it directly with the file system
implementation and don't bother to reimplement the command in terms of
NFS, unless users actually need it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/animeo_ip_defconfig        | 2 +-
 arch/arm/configs/at91rm9200ek_defconfig     | 2 +-
 arch/arm/configs/at91sam9260ek_defconfig    | 2 +-
 arch/arm/configs/at91sam9261ek_defconfig    | 2 +-
 arch/arm/configs/at91sam9g10ek_defconfig    | 2 +-
 arch/arm/configs/at91sam9g20ek_defconfig    | 2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig | 2 +-
 arch/arm/configs/at91sam9m10ihd_defconfig   | 2 +-
 arch/arm/configs/at91sam9n12ek_defconfig    | 2 +-
 arch/arm/configs/dss11_defconfig            | 2 +-
 arch/arm/configs/haba_knx_lite_defconfig    | 2 +-
 arch/arm/configs/pm9261_defconfig           | 2 +-
 arch/arm/configs/pm9g45_defconfig           | 2 +-
 arch/arm/configs/qil_a9260_defconfig        | 2 +-
 arch/arm/configs/qil_a9g20_defconfig        | 2 +-
 arch/arm/configs/telit_evk_pro3_defconfig   | 2 +-
 arch/arm/configs/tny_a9260_defconfig        | 2 +-
 arch/arm/configs/tny_a9263_defconfig        | 2 +-
 arch/arm/configs/tny_a9g20_defconfig        | 2 +-
 arch/arm/configs/usb_a9260_defconfig        | 2 +-
 arch/arm/configs/usb_a9263_defconfig        | 2 +-
 arch/mips/configs/bcm47xx_defconfig         | 2 +-
 arch/mips/configs/qemu-malta_defconfig      | 2 +-
 net/Kconfig                                 | 4 ----
 24 files changed, 23 insertions(+), 27 deletions(-)

diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 930f19ddb574..90e0c72a06b0 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -47,7 +47,6 @@ CONFIG_CMD_WD=y
 CONFIG_CMD_WD_DEFAULT_TIMOUT=16
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_MICREL_PHY=y
 CONFIG_NET_USB=y
@@ -67,5 +66,6 @@ CONFIG_LED_GPIO_BICOLOR=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_WATCHDOG=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index aa91c0cda647..34dc4058ba29 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -46,7 +46,6 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_AT91_ETHER=y
@@ -70,5 +69,6 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_DIGEST_SHA1_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index b4a291ed574e..db5d8d6652a0 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -43,7 +43,6 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
@@ -61,5 +60,6 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index cf8c74de9e36..bf0df025e3b5 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -45,7 +45,6 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -64,4 +63,5 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_PNG=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 4672efdc571b..02432f2971f4 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -44,7 +44,6 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
@@ -60,3 +59,4 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index b102d2641404..99dce447638d 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -43,7 +43,6 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
@@ -61,5 +60,6 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 9cc66d4e7705..17248c6504c3 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -54,7 +54,6 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -79,6 +78,7 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index 642827431835..be0a539f3eb9 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -55,7 +55,6 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_NET_USB=y
@@ -85,6 +84,7 @@ CONFIG_W1_SLAVE_DS2431=y
 CONFIG_W1_SLAVE_DS2433=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 813934a11617..8e6439aa7cad 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -50,7 +50,6 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_KS8851_MLL=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -77,6 +76,7 @@ CONFIG_EEPROM_AT24=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_QT1070=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index fe2680e431bc..ecab7a6b14c9 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -20,7 +20,6 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_LED=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
@@ -40,6 +39,7 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_RGB=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index a72359931d81..2c68ed222aca 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -52,7 +52,6 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -76,6 +75,7 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT24=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 228b4234f6e0..8e2d21664b8a 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -36,7 +36,6 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
@@ -48,3 +47,4 @@ CONFIG_NAND_ATMEL=y
 CONFIG_W1=y
 CONFIG_W1_MASTER_GPIO=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 00f3eeca1ce8..969dd7a83074 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -35,7 +35,6 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_FLASH=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
@@ -51,6 +50,7 @@ CONFIG_MCI_ATMEL=y
 CONFIG_W1=y
 CONFIG_W1_MASTER_GPIO=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index c08e59e9407a..1ed7fc7ede0d 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -48,7 +48,6 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -66,3 +65,4 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 03b96684e492..19748e355530 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -48,7 +48,6 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -66,3 +65,4 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index 298401a30df1..72246f3675cc 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -44,7 +44,6 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
@@ -62,5 +61,6 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index eb9782c4462b..72135a7277c8 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -50,7 +50,6 @@ CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -62,3 +61,4 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_EEPROM_AT25=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index d4a732d94bfd..e0448cf187ab 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -50,7 +50,6 @@ CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -63,3 +62,4 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_EEPROM_AT25=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index bc145cc2dbbc..52bbae67d9f7 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -51,7 +51,6 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -67,3 +66,4 @@ CONFIG_MCI_SPI=y
 CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_EEPROM_AT25=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index a94d330568a4..47d0c633bbf0 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -53,7 +53,6 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -69,3 +68,4 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index a41e64298cac..51494ad71284 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -53,7 +53,6 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -70,3 +69,4 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/mips/configs/bcm47xx_defconfig b/arch/mips/configs/bcm47xx_defconfig
index 9cf172a70e57..66a72973ca36 100644
--- a/arch/mips/configs/bcm47xx_defconfig
+++ b/arch/mips/configs/bcm47xx_defconfig
@@ -47,7 +47,6 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
@@ -56,6 +55,7 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_MTD=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 99714aa30683..68766908d278 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -55,7 +55,6 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
@@ -89,6 +88,7 @@ CONFIG_VIRTIO_PCI=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/net/Kconfig b/net/Kconfig
index 2aa6aaaa8ec5..b089806457d8 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -23,10 +23,6 @@ config NET_ETHADDR_FROM_MACHINE_ID
 	  This is not recommended for use in production as it may leak
 	  information about the machine ID.
 
-config NET_NFS
-	bool
-	prompt "nfs support"
-
 config NET_NETCONSOLE
 	bool
 	depends on !CONSOLE_NONE
-- 
2.39.5



