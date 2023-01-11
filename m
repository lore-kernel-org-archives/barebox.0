Delivery-date: Wed, 11 Jan 2023 09:05:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW77-008dzV-GH
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:05:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW75-0001Q2-3A
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:05:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xuIZCYZk+lcsHnmCmLV/srvdJO9XeWzQ8buAb4B9qUg=; b=q7EmkPN6zLZKiN0OyP78c9orr9
	30lh9E7EkVXYTJUDBPU5Qz8N9TJlRF05CmtIwjkL1zWeZtQl4Et8WW9kWbvClcplsMeyOxKb4Jx7y
	Wrwf+CX2GsWiQc2WR/fkJ9zL7N5Y4RMmO/OFpY8pa0xtdHCAxlz3Y6lTurAR+Q30/40Q0lNASMReJ
	kseZngSqvWBSv5275+LAGhoWr1Ftcb10yL99nlDNzeS6IBSxSSsVGw9SHAyHdnmBc+R6jMPrTwxQA
	iXF680e8icwNkvm+fu12myCEYSdS8ddaYDrN9p1AtCxJ5fw4gmR6NFvVpYdSUWGrWZuIR8RQZirHc
	zLX5nXNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW5c-00AG3A-C4; Wed, 11 Jan 2023 08:04:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW3I-00AEfG-Db
	for barebox@bombadil.infradead.org; Wed, 11 Jan 2023 08:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xuIZCYZk+lcsHnmCmLV/srvdJO9XeWzQ8buAb4B9qUg=; b=cYJEKREON+70AeUy8mRdeDovKr
	gWuZXDzlDxAoHzvPGowbkM47IQbb57D3QxYAXgVcefsC13U321uSyou1g9iPl4VkP2Oc+PcJYn+l8
	AIec2pZiVYMRUm9/KajnEOXIUZhjdf00eRHLfERNvRS+fkueemM7o6R5O8NilzIuHdKweMpVk+vsJ
	4sXvjbWsPBoyGkgON/zE0fRW/bFdSvNGCq+LkEA7cGGsU6A/PrdVAz48eDlAycxd3b7sxaCHIasOr
	qQX2RbCWH5cTeLHIAkuQby04i1C49aq+DSHDUXbSJtjEokRusVav8HdWklzYT8BzXeHoCmxkHA6TG
	aJekE8Rw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pFW35-003ZZb-2l
	for barebox@lists.infradead.org;
	Wed, 11 Jan 2023 08:01:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW37-0008Nk-4e; Wed, 11 Jan 2023 09:01:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW36-005FfZ-IB; Wed, 11 Jan 2023 09:01:28 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW33-003uzr-9v; Wed, 11 Jan 2023 09:01:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 09:01:11 +0100
Message-Id: <20230111080119.933475-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111080119.933475-1-a.fatoum@pengutronix.de>
References: <20230111080119.933475-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_080128_208499_011CBAB9 
X-CRM114-Status: GOOD (  15.29  )
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
Subject: [PATCH 03/11] regmap: port regmap_init_spi
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



