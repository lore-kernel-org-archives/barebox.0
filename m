Delivery-date: Sun, 24 Jul 2022 08:08:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFUnD-001iLN-DE
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 08:08:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFUnB-0006Ta-6a
	for lore@pengutronix.de; Sun, 24 Jul 2022 08:08:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E7Ndv0AIi56NSZE2IoYFqDOM8X4fmh1bbC9nVncGWRY=; b=HgQQxQKQOX43VozrAWMKKXk/ON
	7NDNYFjkSxk8zZFp+yEaF4N7kZTtoV2LkYbpVd8fouGMxymRl4P+BR2OZwaPH26zWoee5wTdaQ8Qx
	Oaf9njr4QTCLC4cvM2Q0YeLWXxmt3NOhoZf7VLLKcerRSL7yM3fjo1SllVa5zbv3SBGi6T/vDmCw1
	91tRDdiKvt1hahWci3l2ofz9ShDeqYkhuaUxSWAGIg5pQQI/ysz902E85kit5cxAoHYulOXDsEaZD
	pGlRPfdRGcjNMpBUSmnQgc7pscFyT/wKI4YrOjFSEHgxTlU8jmS8xiBTUsm3/uvziHvV84TM1ZpYd
	V/wyt4IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFUlQ-00GzoR-Vc; Sun, 24 Jul 2022 06:06:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFUlG-00GziS-5T
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 06:06:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUlA-00065M-U4; Sun, 24 Jul 2022 08:06:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUlA-002rUE-6z; Sun, 24 Jul 2022 08:06:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUl9-007R2f-44; Sun, 24 Jul 2022 08:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 08:06:25 +0200
Message-Id: <20220724060629.1772193-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724060629.1772193-1-a.fatoum@pengutronix.de>
References: <20220724060629.1772193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_230642_250926_38966322 
X-CRM114-Status: GOOD (  11.68  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/6] regmap: implement regmap_init_i2c_smbus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some i2c devices need the SMBus accessors instead of the raw i2c access,
so provide a regmap helper for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
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



