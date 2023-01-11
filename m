Delivery-date: Wed, 11 Jan 2023 14:32:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbDA-008r78-JC
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 14:32:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbD8-0002Z8-KI
	for lore@pengutronix.de; Wed, 11 Jan 2023 14:32:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xuIZCYZk+lcsHnmCmLV/srvdJO9XeWzQ8buAb4B9qUg=; b=GHiwtEJbjWz3T4HmSloIpRO5IG
	1gYtH/5XR0JRrJdyG94Z3lSVRFabdEGnrulIr6s4/wzaJn+pvhxM9sbJvPY29kAy9CJf+7xxXC+xl
	Eqq1leT1J7jvsAemsPDsXi1RiqptHetHhjWbrl1/PZlsiZwxmf6Ur1PHeR9hrmhBW2A5tI7ZF6Inm
	uLmkH/C0AGu6zM9S9A77ZCp3Qw5IUkZLbRif9BxfuqHDMrqCpZhNY9+ORX9AzR2olhgQGGEKQ9aW6
	R1r/fXb2ZOFpAKDByX7UY291PiUhxcyL9KYsGv5kkAioagH7jQbUnlk4LtxD+mrLhswrtKjWYchga
	zZXjcfvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbBn-00BZtf-4b; Wed, 11 Jan 2023 13:30:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbB7-00BZa5-GB
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 13:30:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-0001dk-CA; Wed, 11 Jan 2023 14:30:01 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB2-005JQ1-Le; Wed, 11 Jan 2023 14:30:00 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB1-004ro3-BR; Wed, 11 Jan 2023 14:29:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 14:29:48 +0100
Message-Id: <20230111132956.1153359-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
References: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_053005_736368_559688EF 
X-CRM114-Status: GOOD (  15.75  )
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
Subject: [PATCH v2 03/11] regmap: port regmap_init_spi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have regmap_init_i2c, so add regmap_init_spi as well. Unlike
regmap_init_i2c, this one makes full use of the formatted regmap API.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/Kconfig      |  5 ++++
 drivers/base/regmap/Makefile     |  1 +
 drivers/base/regmap/regmap-spi.c | 42 ++++++++++++++++++++++++++++++++
 include/regmap.h                 | 13 ++++++++++
 4 files changed, 61 insertions(+)
 create mode 100644 drivers/base/regmap/regmap-spi.c

diff --git a/drivers/base/regmap/Kconfig b/drivers/base/regmap/Kconfig
index 4fb6b6bcecf8..afe59a538c87 100644
--- a/drivers/base/regmap/Kconfig
+++ b/drivers/base/regmap/Kconfig
@@ -2,3 +2,8 @@
 
 config REGMAP_FORMATTED
 	bool
+
+config REGMAP_SPI
+	bool "SPI regmaps" if COMPILE_TEST
+	depends on SPI
+	select REGMAP_FORMATTED
diff --git a/drivers/base/regmap/Makefile b/drivers/base/regmap/Makefile
index ef6814a50277..d99db4277149 100644
--- a/drivers/base/regmap/Makefile
+++ b/drivers/base/regmap/Makefile
@@ -3,3 +3,4 @@ obj-y	+= regmap.o
 obj-y	+= regmap-mmio.o
 obj-$(CONFIG_REGMAP_FORMATTED)	+= regmap-fmt.o
 obj-$(CONFIG_I2C)	+= regmap-i2c.o
+obj-$(CONFIG_REGMAP_SPI)	+= regmap-spi.o
diff --git a/drivers/base/regmap/regmap-spi.c b/drivers/base/regmap/regmap-spi.c
new file mode 100644
index 000000000000..5a0e418065b8
--- /dev/null
+++ b/drivers/base/regmap/regmap-spi.c
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Register map access API - SPI support
+//
+// Copyright 2011 Wolfson Microelectronics plc
+//
+// Author: Mark Brown <broonie@opensource.wolfsonmicro.com>
+
+#include <regmap.h>
+#include <spi/spi.h>
+
+static int regmap_spi_write(void *context, const void *data, size_t count)
+{
+	struct device_d *dev = context;
+	struct spi_device *spi = to_spi_device(dev);
+
+	return spi_write(spi, data, count);
+}
+
+static int regmap_spi_read(void *context,
+			   const void *reg, size_t reg_size,
+			   void *val, size_t val_size)
+{
+	struct device_d *dev = context;
+	struct spi_device *spi = to_spi_device(dev);
+
+	return spi_write_then_read(spi, reg, reg_size, val, val_size);
+}
+
+static const struct regmap_bus regmap_spi = {
+	.write = regmap_spi_write,
+	.read = regmap_spi_read,
+	.read_flag_mask = 0x80,
+	.reg_format_endian_default = REGMAP_ENDIAN_BIG,
+	.val_format_endian_default = REGMAP_ENDIAN_BIG,
+};
+
+struct regmap *regmap_init_spi(struct spi_device *spi,
+			       const struct regmap_config *config)
+{
+	return regmap_init(&spi->dev, &regmap_spi, &spi->dev, config);
+}
diff --git a/include/regmap.h b/include/regmap.h
index 36a75eb34e03..8f191c87cfcb 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -138,6 +138,19 @@ struct regmap *regmap_init_i2c(struct i2c_client *i2c,
 struct regmap *regmap_init_i2c_smbus(struct i2c_client *client,
 			       const struct regmap_config *config);
 
+/**
+ * regmap_init_spi() - Initialise spi register map
+ *
+ * @spi: Device that will be interacted with
+ * @config: Configuration for register map
+ *
+ * The return value will be an ERR_PTR() on error or a valid pointer
+ * to a struct regmap.
+ */
+struct spi_device;
+struct regmap *regmap_init_spi(struct spi_device *dev,
+			       const struct regmap_config *config);
+
 /**
  * regmap_init_mmio() - Initialise register map
  *
-- 
2.30.2



