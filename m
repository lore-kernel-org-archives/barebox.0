Delivery-date: Mon, 31 May 2021 09:25:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIt-00033j-RF
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:25:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIs-000648-QM
	for lore@pengutronix.de; Mon, 31 May 2021 09:25:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1X3mYJsy21TdGCkbl5CsK9i9kZbBsUw7033wyBjZwo=; b=O5PYfMBxW9Durt
	G8u90fTPU0dpfle2SBF3oRSzSBZSSd7eS4y0ND3H+UTT3ixqu/+bRRt2rUmsxeRGhUdCOUMYG0hnM
	q5epLkEu8uuKg5dTLQPeHOwK7KZ+ICVKcxGXBjqlqd754HHM9PZkSd8HS3zWWFRBxqXhGvNWXgxhG
	yvMm+rlqAsNP1wBcRAPhwNkHx7Zbxt5EwR1IKyfqtKW8HQj4gJYlVXN5jCadJlAXQz3o8AnRe4qcA
	tTZGlA3ZmTGXTdVdIZCk3z0Xkt7YOti8W/bvjtULVk0Kg2RkrRR5Q+20O1HDMc8g3OnwVxN7LYfpT
	c/AWUppOUDmFcN8BW+3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncHq-00BAzZ-Gc; Mon, 31 May 2021 07:24:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncHZ-00BAsq-SJ
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:24:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0005Md-Kv; Mon, 31 May 2021 09:24:08 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0001WK-AU; Mon, 31 May 2021 09:24:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:24:02 +0200
Message-Id: <20210531072406.5630-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531072406.5630-1-a.fatoum@pengutronix.de>
References: <20210531072406.5630-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002417_952943_C390E736 
X-CRM114-Status: GOOD (  16.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] regmap: implement regmap_init_i2c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux offers a helper for creating regmaps over i2c. Add a similar
helper for barebox to ease driver porting.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/Makefile     |  1 +
 drivers/base/regmap/regmap-i2c.c | 44 ++++++++++++++++++++++++++++++++
 include/regmap.h                 | 13 ++++++++++
 3 files changed, 58 insertions(+)
 create mode 100644 drivers/base/regmap/regmap-i2c.c

diff --git a/drivers/base/regmap/Makefile b/drivers/base/regmap/Makefile
index ab2387037d37..b12b69531156 100644
--- a/drivers/base/regmap/Makefile
+++ b/drivers/base/regmap/Makefile
@@ -1,2 +1,3 @@
 obj-y	+= regmap.o
 obj-y	+= regmap-mmio.o
+obj-$(CONFIG_I2C)	+= regmap-i2c.o
diff --git a/drivers/base/regmap/regmap-i2c.c b/drivers/base/regmap/regmap-i2c.c
new file mode 100644
index 000000000000..88b24ae6a825
--- /dev/null
+++ b/drivers/base/regmap/regmap-i2c.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2021, Ahmad Fatoum, Pengutronix
+ */
+
+#include <i2c/i2c.h>
+#include <regmap.h>
+
+
+static int regmap_i2c_reg_read(void *client, unsigned int reg, unsigned int *val)
+{
+	u8 buf[1];
+	int ret;
+
+	ret = i2c_read_reg(client, reg, buf, 1);
+	if (ret != 1)
+		return ret;
+
+	*val = buf[0];
+	return 0;
+}
+
+static int regmap_i2c_reg_write(void *client, unsigned int reg, unsigned int val)
+{
+	u8 buf[] = { val & 0xff };
+	int ret;
+
+	ret = i2c_write_reg(client, reg, buf, 1);
+	if (ret != 1)
+		return ret;
+
+	return 0;
+}
+
+static const struct regmap_bus regmap_regmap_i2c_bus = {
+	.reg_write = regmap_i2c_reg_write,
+	.reg_read = regmap_i2c_reg_read,
+};
+
+struct regmap *regmap_init_i2c(struct i2c_client *client,
+			       const struct regmap_config *config)
+{
+	return  regmap_init(&client->dev, &regmap_regmap_i2c_bus, client, config);
+}
diff --git a/include/regmap.h b/include/regmap.h
index b43cd936fa61..c5cf954ad6d9 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -76,6 +76,19 @@ struct regmap *regmap_init_mmio_clk(struct device_d *dev, const char *clk_id,
 				    void __iomem *regs,
 				    const struct regmap_config *config);
 
+/**
+ * regmap_init_i2c() - Initialise i2c register map
+ *
+ * @i2c: Device that will be interacted with
+ * @config: Configuration for register map
+ *
+ * The return value will be an ERR_PTR() on error or a valid pointer
+ * to a struct regmap.
+ */
+struct i2c_client;
+struct regmap *regmap_init_i2c(struct i2c_client *i2c,
+			       const struct regmap_config *config);
+
 /**
  * regmap_init_mmio() - Initialise register map
  *
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

