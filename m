Delivery-date: Thu, 16 May 2024 12:11:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Y5U-00H2Lx-08
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 12:11:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Y5S-0008KF-RV
	for lore@pengutronix.de; Thu, 16 May 2024 12:11:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z33ESQ285hf2AnLiu5GgQV8u0guA0dnOjnwvII5YAtI=; b=FciUKVV97raK21fUA8UP9H0JUX
	Xx+EJgyYjMjUb4vN07k9XnEg9Gq+8uQj8iPpPwucxOL8yCqejWFxTPRuflNTDQ5A7yRTmsUyPnZM3
	cwz+S5ljQUD8dm3sEmnx3gsnD6Tv6tIvRJwvfjSubn6brY55lSCdWOGIP6BUmHh383pzZsrorez8Y
	eqxwrszkLEvKechlQUkJJ7mbEkkpyAvK55arV+4mwuPlHekM2lV6HdtmVo7vE9C8geXad9fScg0Qi
	EGnh9DKHHPnbm5DJ2qf6MTUJQr6L3Scdk+Al5JKXPfsZRnGUW2+bcjDgMOFcqIKlfP2/uRxYn9IC4
	eZGFbIoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Y4j-00000004RIh-2w3A;
	Thu, 16 May 2024 10:11:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Y4f-00000004RFB-0ilh
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 10:10:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7Y4c-00083i-93; Thu, 16 May 2024 12:10:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7Y4b-001gqL-Sc; Thu, 16 May 2024 12:10:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7Y4b-00HKqn-2V;
	Thu, 16 May 2024 12:10:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 May 2024 12:10:52 +0200
Message-Id: <20240516101052.4131491-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_031057_266845_41B3DDD0 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: socfpga-xload_*defconfig: merge and disable unused features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The socfpga-xload_*defconfig have MC13xxx, AT25 and SPI support enabled.
Disable these as they are unused. This makes the configs small enough so
that we can merge the two existing configs into one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/socfpga-xload-2_defconfig | 28 ----------------------
 arch/arm/configs/socfpga-xload_defconfig   |  9 +++----
 2 files changed, 5 insertions(+), 32 deletions(-)
 delete mode 100644 arch/arm/configs/socfpga-xload-2_defconfig

diff --git a/arch/arm/configs/socfpga-xload-2_defconfig b/arch/arm/configs/socfpga-xload-2_defconfig
deleted file mode 100644
index 78b07aae5b..0000000000
--- a/arch/arm/configs/socfpga-xload-2_defconfig
+++ /dev/null
@@ -1,28 +0,0 @@
-CONFIG_ARCH_SOCFPGA=y
-CONFIG_ARCH_SOCFPGA_XLOAD=y
-CONFIG_MACH_SOCFPGA_ALTERA_SOCDK=y
-CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
-CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-# CONFIG_ARM_EXCEPTIONS is not set
-# CONFIG_MEMINFO is not set
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_DUMMY=y
-CONFIG_RELOCATABLE=y
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_DW=y
-CONFIG_MFD_MC13XXX=y
-CONFIG_EEPROM_AT25=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
-CONFIG_BOOTSTRAP=y
-CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 008ba64865..37e9ecec71 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -1,6 +1,9 @@
 CONFIG_ARCH_SOCFPGA=y
 CONFIG_ARCH_SOCFPGA_XLOAD=y
+CONFIG_MACH_SOCFPGA_ALTERA_SOCDK=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
+CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
+CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO=y
 CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -9,17 +12,15 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
-CONFIG_RELOCATABLE=y
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
+# CONFIG_SPI is not set
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 # CONFIG_MCI_WRITE is not set
 CONFIG_MCI_DW=y
-CONFIG_MFD_MC13XXX=y
-CONFIG_EEPROM_AT25=y
+# CONFIG_VIRTIO_MENU is not set
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
-- 
2.39.2



