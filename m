Delivery-date: Thu, 19 May 2022 14:12:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrf1B-0022A0-2B
	for lore@lore.pengutronix.de; Thu, 19 May 2022 14:12:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrf19-0001tF-N6
	for lore@pengutronix.de; Thu, 19 May 2022 14:12:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+Xhn3YZhs5ND5kwKFc6YCHSmEZy+quFGtj9cy6UCiM=; b=VpMr5kd2eCEWz4
	STM8z/iGThRjBpdkoYN0Fm89S1U0gjRYVOrqfbHWpJdHTc30/VOqBLX172KB/TXjcW07b2ovV19B+
	K2lltmEztWO2/e8u5yMEVIITD0j0GqLaXIRTGpLOCntJUpGWM0/s5gc8p2Tx0qaIHWsG/3XuxDttQ
	4MeYzY3hP0DKV9Pk9hyrVhP190zLmEpDx0uBMAqVLTFUwlfCMyLllOjaxWvDLFTaeVNWMFZy5mbZo
	/ioMT7OU/30zEBs1WnJRWhk8Gvl9TaaYoJmCsZ8Wk/B8ip0RbAXKO2nT1p2dcmIqDWxnGT7ChcSrg
	/ppkIBVIUxfSZhGbC0rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrezT-006anI-Pf; Thu, 19 May 2022 12:10:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrezP-006amF-Pk
 for barebox@lists.infradead.org; Thu, 19 May 2022 12:10:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nrezM-0001R8-6M; Thu, 19 May 2022 14:10:44 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nrezL-001a2v-Im; Thu, 19 May 2022 14:10:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Date: Thu, 19 May 2022 14:10:38 +0200
Message-Id: <20220519121039.375761-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_051047_873246_764EA529 
X-CRM114-Status: GOOD (  11.04  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] regmap: implement regmap_init_i2c_smbus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Works good enough to toggle Ethernet PHY regulator on a rk3399-based
Rock Pi N10.
---
 drivers/base/regmap/regmap-i2c.c | 37 ++++++++++++++++++++++++++++++++
 include/regmap.h                 |  3 +++
 2 files changed, 40 insertions(+)

diff --git a/drivers/base/regmap/regmap-i2c.c b/drivers/base/regmap/regmap-i2c.c
index 5e3705162c92..756bc224cc3b 100644
--- a/drivers/base/regmap/regmap-i2c.c
+++ b/drivers/base/regmap/regmap-i2c.c
@@ -42,3 +42,40 @@ struct regmap *regmap_init_i2c(struct i2c_client *client,
 {
 	return  regmap_init(&client->dev, &regmap_regmap_i2c_bus, client, config);
 }
+
+static int regmap_smbus_byte_reg_read(void *client, unsigned int reg, unsigned int *val)
+{
+	int ret;
+
+	if (reg > 0xff)
+		return -EINVAL;
+
+	ret = i2c_smbus_read_byte_data(client, reg);
+	if (ret < 0)
+		return ret;
+
+	*val = ret;
+
+	return 0;
+}
+
+static int regmap_smbus_byte_reg_write(void *client, unsigned int reg, unsigned int val)
+{
+	if (val > 0xff || reg > 0xff)
+		return -EINVAL;
+
+	return i2c_smbus_write_byte_data(client, reg, val);
+}
+
+static const struct regmap_bus regmap_smbus_byte = {
+	.reg_write = regmap_smbus_byte_reg_write,
+	.reg_read = regmap_smbus_byte_reg_read,
+};
+
+struct regmap *regmap_init_i2c_smbus(struct i2c_client *client,
+			       const struct regmap_config *config)
+{
+	if (config->val_bits != 8 || config->reg_bits != 8)
+		return ERR_PTR(-ENOSYS);
+	return regmap_init(&client->dev, &regmap_smbus_byte, client, config);
+}
diff --git a/include/regmap.h b/include/regmap.h
index 4b30c2177629..5bedb30d8a78 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -89,6 +89,9 @@ struct i2c_client;
 struct regmap *regmap_init_i2c(struct i2c_client *i2c,
 			       const struct regmap_config *config);
 
+struct regmap *regmap_init_i2c_smbus(struct i2c_client *client,
+			       const struct regmap_config *config);
+
 /**
  * regmap_init_mmio() - Initialise register map
  *
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

