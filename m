Delivery-date: Wed, 12 Feb 2025 15:33:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoD-001Sk9-26
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:33:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoC-0006JH-EB
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:33:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vZ9/RV5qFd3C/6ZYhIPytVFNkYCjrYw/1oyajp29Apw=; b=Nl6RszA4ot5MDi/BKY4Sv/SwQX
	uZKZa8ytEmMUddGZ+2b2utN23NqrNllGiLzhaixSZnZOP8bWO8vGI8SzElu3oygKCD+ntTGQxH0Xw
	yBn5EVnB168++AbYHzY4lx1Ek6ERo3sOO5+1eI8oFPK6tK2W5gZkRokPYQYyuUC9ln0XJPYXqPp4m
	AgX2lgfw5mWJWFiKpZZWV/V+H86OJnVaDWMRTSyMbojgblRcv2tTy2KFh8tBme2gwAzQ/skCnrI+S
	9lY7ZTpIwzSBzAE7Fgspq8zpiu+av2FbDOQ7U9I9jW9fGJKGVWPmDrGh0MwZR4ydetc29hqyNbYA/
	6nQ5QN6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnm-00000007gJI-1hkb;
	Wed, 12 Feb 2025 14:33:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnf-00000007gB1-3q7V
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-0005rE-PS; Wed, 12 Feb 2025 15:33:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-000bHF-1r;
	Wed, 12 Feb 2025 15:33:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-26;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-20-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=1585;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FIWnL74xsY69OsKXzdbGMkTkAtPNjl21oKZeTVwH8HQ=;
 b=zDYYAaDjzx0d8aV/6z+it3+6fVSJ1qVokxll8TH286lkL9+YAv2dDrYyrpvZnFvKXtpWP4Biu
 1Rdb9F6VukEDNHqNeNYz0N0oKLz27zU3j7I6HX8qvGLI1EAMClbtK7E
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063315_953242_353CB41C 
X-CRM114-Status: UNSURE (   9.91  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 20/20] ARM: k3: Add k3-r5_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a defconfig for the initial stage of K3 Socs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/k3-r5_defconfig | 43 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm/configs/k3-r5_defconfig b/arch/arm/configs/k3-r5_defconfig
new file mode 100644
index 0000000000..59b3aa5a6e
--- /dev/null
+++ b/arch/arm/configs/k3-r5_defconfig
@@ -0,0 +1,43 @@
+CONFIG_ARCH_K3=y
+CONFIG_MACH_AM625_SK=y
+CONFIG_MACH_BEAGLEPLAY=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+# CONFIG_BOARD_GENERIC_DT is not set
+# CONFIG_MEMINFO is not set
+CONFIG_ENVIRONMENT_VARIABLES=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x10000000
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="MLO>"
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_BTHREAD=y
+CONFIG_DEBUG_LL=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_OMAP=y
+CONFIG_USB_HOST=y
+CONFIG_USB_DWC3=y
+CONFIG_USB_DWC3_GADGET=y
+# CONFIG_USB_DWC3_OF_SIMPLE is not set
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_MCI=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_AM654=y
+# CONFIG_TI_SCI_CLK is not set
+CONFIG_MFD_SYSCON=y
+CONFIG_MFD_TPS65219=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_REGULATOR_TPS65219=y
+# CONFIG_VIRTIO_MENU is not set
+CONFIG_MAILBOX=y
+CONFIG_FS_FAT=y

-- 
2.39.5



