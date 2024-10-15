Delivery-date: Tue, 15 Oct 2024 13:21:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcL-004dlm-1Y
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 13:21:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcK-0000Ld-IS
	for lore@pengutronix.de; Tue, 15 Oct 2024 13:21:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZoibsmxAkIBlTviCM8zt1wFwnLYwLuMvfa5WgLK/4cY=; b=EW38/eb3w3TOhPQzQBGEFzBZRI
	usOaiXNDIP2xKa4SHpWObMmMgsdvwp68LtrQLrdV9L8jYodtkK21e8wmcqXW1sWy1SmPX5xfSMX+P
	c3EtcHV9uCy+7jQbz7O74LrD8/oQCUVfd/kmsKGmVZ29iWZuLVOZmnesHpI+YuTUVp/Hkol5gAPou
	ZuK+L9K1Q1Vm5tDyEAcAWl6CjLH/gwjJY4WkUuoVtakrdvxK7zKHf1UaoflZV3VvkotSbom+mgpAz
	bKzvWK4UO7FHQtC6t/m2nstO4GrMguSXM9RvdPxRXXjmgXJ7qyhhSHkC84/HtkXlBxMrZglu0ohIO
	+b748B+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fbb-00000007zjp-0UmJ;
	Tue, 15 Oct 2024 11:20:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fSC-00000007yDi-3UWo
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 11:11:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-0007ui-IO; Tue, 15 Oct 2024 13:11:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-00219F-1N; Tue, 15 Oct 2024 13:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSA-000ubB-38;
	Tue, 15 Oct 2024 13:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2024 13:11:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-rockchip-spi-rk808-v1-6-e276b4b59603@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728990662; l=3938;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rWcbR02i4kP9aLqape6hWhCb/MHDcPnxeBQe8bsdfSo=;
 b=0kFb4R9MdeM+7Zagiz4I+h57W2RsKKy9ZTQNYoRTq9BjDsPeqeLWQiH8aNecnVeW5Rp0Tm/yV
 sQoh46i2RtuDVd3IKTyHevvlBrTzaH47/+dMwnm+8m7OgOUkwLaVb/7
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_041104_929784_9EF6A52C 
X-CRM114-Status: GOOD (  15.43  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] regulator: add regulator_register()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a regulator_register() with a prototype compatible to Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 37 +++++++++++++++++++++++++++++++++++++
 include/regulator.h      | 36 ++++++++++++++++++++++++++++++++++++
 2 files changed, 73 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index bbba3b0b57..30ae270b51 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -425,6 +425,43 @@ int dev_regulator_register(struct regulator_dev *rdev, const char *name)
 	return 0;
 }
 
+struct regulator_dev *
+regulator_register(struct device *dev,
+		   const struct regulator_desc *desc,
+		   const struct regulator_config *config)
+{
+	struct regulator_dev *rdev;
+	struct device_node *search, *child;
+	int ret;
+
+	rdev = xzalloc(sizeof(*rdev));
+
+	rdev->name = desc->name;
+	rdev->desc = desc;
+	rdev->regmap = config->regmap;
+	rdev->dev = dev;
+
+	if (desc->regulators_node)
+		search = of_get_child_by_name(dev->of_node,
+					      desc->regulators_node);
+	else
+		search = dev->of_node;
+
+	if (!search) {
+		dev_err(dev, "Failed to find regulator container node\n");
+		return NULL;
+	}
+
+	for_each_child_of_node(search, child) {
+		if (strcmp(desc->of_match, child->name))
+			continue;
+		ret = of_regulator_register(rdev, child);
+		break;
+	}
+
+	return rdev;
+}
+
 static struct regulator_dev *dev_regulator_get(struct device *dev,
 					       const char *supply)
 {
diff --git a/include/regulator.h b/include/regulator.h
index 305da0d774..9785b8ac07 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -35,7 +35,12 @@ struct regulator_bulk_data {
  * structure contains the non-varying parts of the regulator
  * description.
  *
+ * @name: Identifying name for the regulator.
+ * @supply_name: Identifying the regulator supply
  * @supply_name: Identifying the supply of this regulator
+ * @of_match: Name used to identify regulator in DT.
+ * @regulators_node: Name of node containing regulator definitions in DT.
+ * @id: Numerical identifier for the regulator.
  *
  * @n_voltages: Number of selectors available for ops.list_voltage().
  * @ops: Regulator operations table.
@@ -62,7 +67,11 @@ struct regulator_bulk_data {
  */
 
 struct regulator_desc {
+	const char *name;
 	const char *supply_name;
+	const char *of_match;
+	const char *regulators_node;
+	int id;
 	unsigned n_voltages;
 	const struct regulator_ops *ops;
 
@@ -87,6 +96,28 @@ struct regulator_desc {
 	unsigned int off_on_delay;
 };
 
+/**
+ * struct regulator_config - Dynamic regulator descriptor
+ *
+ * Each regulator registered with the core is described with a
+ * structure of this type and a struct regulator_desc.  This structure
+ * contains the runtime variable parts of the regulator description.
+ *
+ * @dev: struct device for the regulator
+ * @init_data: platform provided init data, passed through by driver
+ * @driver_data: private regulator data
+ * @of_node: OpenFirmware node to parse for device tree bindings (may be
+ *           NULL).
+ * @regmap: regmap to use for core regmap helpers if dev_get_regmap() is
+ *          insufficient.
+ * @ena_gpiod: GPIO controlling regulator enable.
+ */
+struct regulator_config {
+	struct device *dev;
+	void *driver_data;
+	struct regmap *regmap;
+};
+
 struct regulator_dev {
 	const char *name;
 	struct list_head list;
@@ -158,6 +189,11 @@ static inline int of_regulator_register(struct regulator_dev *rd,
 #endif
 int dev_regulator_register(struct regulator_dev *rd, const char *name);
 
+struct regulator_dev *
+regulator_register(struct device *dev,
+		   const struct regulator_desc *regulator_desc,
+		   const struct regulator_config *config);
+
 #define REGULATOR_PRINT_DEVS	BIT(0)
 void regulators_print(unsigned flags);
 

-- 
2.39.5



