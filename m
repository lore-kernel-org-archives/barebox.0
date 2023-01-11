Delivery-date: Wed, 11 Jan 2023 14:32:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbD0-008r5i-GP
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 14:32:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbCy-0002U6-9P
	for lore@pengutronix.de; Wed, 11 Jan 2023 14:32:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XJhSI/eRx7T8RGHH1Ox48wvx9KiOddwjyjM8W3zqYZM=; b=Dz9n69xi4KtNi1zvz4GQBpl74Q
	uc/RR7IB9E2kqv8Yf5GC86QuQgVhWDc2QLDRf8/yK0x6KAs+GaMPLpREgzf1oHlv8tmJuOFa/wMcI
	xcjpaRHsssaDAyC321b1Kzy+8pspLENDzJ8aaGz4C3YLb6Lbd6S/HemIGPW7EHJxaEEnow3GlkPgM
	TOz0PoR9lArt81o5LClbix6NktAZ+7miEJM5xBB7nYwVI4zEShm1UlYh61NcUTo30QsbKaaWyA184
	XPJ1aZddh9E6UMFjdQsnMFvVPCyDh8bkIrWleNJqBryOotDfkHaCADKrLrCoE1gELUGHkiPFhvTn7
	XiEXW2qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbBK-00BZiA-Ld; Wed, 11 Jan 2023 13:30:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbB7-00BZZp-G5
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 13:30:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-0001dj-68; Wed, 11 Jan 2023 14:30:01 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB2-005JPy-Fl; Wed, 11 Jan 2023 14:30:00 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB1-004rps-HV; Wed, 11 Jan 2023 14:29:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 14:29:52 +0100
Message-Id: <20230111132956.1153359-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
References: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_053005_582434_14010FE4 
X-CRM114-Status: GOOD (  12.74  )
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
Subject: [PATCH v2 07/11] drivers: base: regmap: introduce REGMAP_I2C
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

regmap_init_i2c is quite limited right now and only supports 8-bit
registers and values. In future, we may want to expand this further, but
that would require us to format the regmap_config appropriately, pulling
in more code that's not required in the general case, where reg_read and
reg_write can be used directly. Add a new Kconfig symbol and select it
where appropriate to allow us to split formatted regmap handling from
the more basic handling we currently have.

We intentionally don't provide a stub function, so out-of-tree users
without the select fail to link and can be fixed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/Kconfig  | 4 ++++
 drivers/base/regmap/Makefile | 2 +-
 drivers/mfd/Kconfig          | 4 ++++
 drivers/rtc/Kconfig          | 1 +
 4 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/base/regmap/Kconfig b/drivers/base/regmap/Kconfig
index afe59a538c87..78a00a085f05 100644
--- a/drivers/base/regmap/Kconfig
+++ b/drivers/base/regmap/Kconfig
@@ -3,6 +3,10 @@
 config REGMAP_FORMATTED
 	bool
 
+config REGMAP_I2C
+	bool "I2C regmaps" if COMPILE_TEST
+	depends on I2C
+
 config REGMAP_SPI
 	bool "SPI regmaps" if COMPILE_TEST
 	depends on SPI
diff --git a/drivers/base/regmap/Makefile b/drivers/base/regmap/Makefile
index fe5beaaaa382..6911e07f0e62 100644
--- a/drivers/base/regmap/Makefile
+++ b/drivers/base/regmap/Makefile
@@ -3,5 +3,5 @@ obj-y	+= regmap.o
 obj-y	+= regmap-multi.o
 obj-y	+= regmap-mmio.o
 obj-$(CONFIG_REGMAP_FORMATTED)	+= regmap-fmt.o
-obj-$(CONFIG_I2C)	+= regmap-i2c.o
+obj-$(CONFIG_REGMAP_I2C)	+= regmap-i2c.o
 obj-$(CONFIG_REGMAP_SPI)	+= regmap-spi.o
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 5fd1a0aaa84e..c33fa262236c 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -64,12 +64,14 @@ config RAVE_SP_CORE
 
 config MFD_STPMIC1
 	depends on I2C
+	select REGMAP_I2C
 	bool "STPMIC1 MFD driver"
 	help
 	  Select this to support communication with the STPMIC1.
 
 config MFD_RN568PMIC
 	depends on I2C
+	select REGMAP_I2C
 	bool "Ricoh RN5T568 MFD driver"
 	help
 	  Select this to support communication with the Ricoh RN5T568 PMIC.
@@ -111,6 +113,7 @@ config MFD_ATMEL_FLEXCOM
 config MFD_RK808
 	tristate "Rockchip RK805/RK808/RK809/RK817/RK818 Power Management Chip"
 	depends on I2C && OFDEVICE
+	select REGMAP_I2C
 	help
 	  If you say yes here you get support for the RK805, RK808, RK809,
 	  RK817 and RK818 Power Management chips.
@@ -120,6 +123,7 @@ config MFD_RK808
 config MFD_AXP20X_I2C
 	tristate "X-Powers AXP series PMICs with I2C"
 	depends on I2C && OFDEVICE
+	select REGMAP_I2C
 	help
 	  If you say Y here you get support for the X-Powers AXP series power
 	  management ICs (PMICs) controlled with I2C.
diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index db87aee1f320..98e58da89bd8 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -40,6 +40,7 @@ config RTC_DRV_ABRACON
 config RTC_DRV_PCF85363
 	tristate "NXP PCF85363"
 	depends on I2C
+	select REGMAP_I2C
 	help
 	  If you say yes here you get support for the PCF85363 RTC chip.
 
-- 
2.30.2



