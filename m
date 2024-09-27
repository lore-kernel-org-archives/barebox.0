Delivery-date: Fri, 27 Sep 2024 12:43:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RN-003N1g-1M
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RB-0005eS-F4
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kFhom7hVZnwCI3aTYvoHO/DF3VfUAPnFdqtlmW6nqPo=; b=aGxFbn9J046qKTOnwi3Mum4pKG
	rkN6+VJcdHTzvOKfOqJPIrpEE/OLl9gqc1ZYRW/yY30u9dEBOxpHR60JubOnpWgdKRWf+lUEXIyoB
	GHevc8g3cmhkouIsmy5il6AOXlDgRG6sKv4yxKhOJ8pFaL2mIVylUxgOaHNxhe0KkAQW8bGPeFBKK
	7Znz20ILR6Lkukj1z6qgarwQtszNTkDKnVjiq/lg2uK+s2brujkRGvBlHbRzQSAl2VtSHU6ALdJwo
	4gNUVSNz1pu2Q58e69rU0eacm+W92iEyAfWxddI6LWmrpxX6WSlvu4nZDAUozwXq9DE/qukxqTFgx
	J2bl5CKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Q8-0000000Aqg2-06zk;
	Fri, 27 Sep 2024 10:41:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ly-0000000ApvI-2waK
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:37:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-0002d0-KI; Fri, 27 Sep 2024 12:37:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-001tz0-2E; Fri, 27 Sep 2024 12:37:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1N;
	Fri, 27 Sep 2024 12:37:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-4-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=7345;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gF64Y61eQNBCKngUrCXn8m74fkMJsiUFgxjCTRKZDp0=;
 b=H8vBQzgUDuNyV1F1BaFqj3qtyEareJ8bcbg+AXlVJmNETO2p4D8T3yJNHjMOF/TDDyuyFPAlK
 1uiMKI+fYDOBhEYdfughd53qRRvGjxHsWSgdlayT63NDDIjV1sCvL21
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_033739_251101_E9C4A2FA 
X-CRM114-Status: GOOD (  19.89  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/15] regmap: add regfield support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add regfield support to get comfortable access to register fields in a
regmap. The functions are taken directly from Linux-6.10.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/regmap/internal.h |  11 ++++
 drivers/base/regmap/regmap.c   | 131 +++++++++++++++++++++++++++++++++++++++++
 include/linux/regmap.h         |  39 ++++++++++++
 3 files changed, 181 insertions(+)

diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
index ac3f0d3c0f..6f6a34edc7 100644
--- a/drivers/base/regmap/internal.h
+++ b/drivers/base/regmap/internal.h
@@ -41,6 +41,17 @@ struct regmap {
 			 unsigned int val);
 };
 
+struct regmap_field {
+	struct regmap *regmap;
+	unsigned int mask;
+	/* lsb */
+	unsigned int shift;
+	unsigned int reg;
+
+	unsigned int id_size;
+	unsigned int id_offset;
+};
+
 enum regmap_endian regmap_get_val_endian(struct device *dev,
 					 const struct regmap_bus *bus,
 					 const struct regmap_config *config);
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 7ad527954c..1f10424a42 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -242,6 +242,30 @@ int regmap_write_bits(struct regmap *map, unsigned int reg,
 	return regmap_write(map, reg, tmp);
 }
 
+/**
+ * regmap_field_read(): Read a value to a single register field
+ *
+ * @field: Register field to read from
+ * @val: Pointer to store read value
+ *
+ * A value of zero will be returned on success, a negative errno will
+ * be returned in error cases.
+ */
+int regmap_field_read(struct regmap_field *field, unsigned int *val)
+{
+	int ret;
+	unsigned int reg_val;
+	ret = regmap_read(field->regmap, field->reg, &reg_val);
+	if (ret != 0)
+		return ret;
+
+	reg_val &= field->mask;
+	reg_val >>= field->shift;
+	*val = reg_val;
+
+	return ret;
+}
+
 /**
  * regmap_bulk_read(): Read data from the device
  *
@@ -377,6 +401,67 @@ static int regmap_round_val_bytes(struct regmap *map)
 	return map->format.val_bytes ?: 1;
 }
 
+/**
+ * regmap_update_bits_base() - Perform a read/modify/write cycle on a register
+ *
+ * @map: Register map to update
+ * @reg: Register to update
+ * @mask: Bitmask to change
+ * @val: New value for bitmask
+ * @change: Boolean indicating if a write was done
+ * @async: Boolean indicating asynchronously
+ * @force: Boolean indicating use force update
+ *
+ * Perform a read/modify/write cycle on a register map with change, async, force
+ * options.
+ *
+ * If async is true:
+ *
+ * With most buses the read must be done synchronously so this is most useful
+ * for devices with a cache which do not need to interact with the hardware to
+ * determine the current register value.
+ *
+ * Returns zero for success, a negative number on error.
+ */
+int regmap_update_bits_base(struct regmap *map, unsigned int reg,
+			    unsigned int mask, unsigned int val,
+			    bool *change, bool async, bool force)
+{
+	int ret;
+
+	ret = regmap_update_bits(map, reg, mask, val);
+
+	return ret;
+}
+
+/**
+ * regmap_field_update_bits_base() - Perform a read/modify/write cycle a
+ *                                   register field.
+ *
+ * @field: Register field to write to
+ * @mask: Bitmask to change
+ * @val: Value to be written
+ * @change: Boolean indicating if a write was done
+ * @async: Boolean indicating asynchronously
+ * @force: Boolean indicating use force update
+ *
+ * Perform a read/modify/write cycle on the register field with change,
+ * async, force option.
+ *
+ * A value of zero will be returned on success, a negative errno will
+ * be returned in error cases.
+ */
+int regmap_field_update_bits_base(struct regmap_field *field,
+				  unsigned int mask, unsigned int val,
+				  bool *change, bool async, bool force)
+{
+	mask = (mask << field->shift) & field->mask;
+
+	return regmap_update_bits_base(field->regmap, field->reg,
+				       mask, val << field->shift,
+				       change, async, force);
+}
+
 static ssize_t regmap_cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 		       unsigned long flags)
 {
@@ -442,6 +527,52 @@ size_t regmap_size_bytes(struct regmap *map)
 	return regmap_round_val_bytes(map) * regmap_count_registers(map);
 }
 
+static void regmap_field_init(struct regmap_field *rm_field,
+	struct regmap *regmap, struct reg_field reg_field)
+{
+	rm_field->regmap = regmap;
+	rm_field->reg = reg_field.reg;
+	rm_field->shift = reg_field.lsb;
+	rm_field->mask = GENMASK(reg_field.msb, reg_field.lsb);
+
+	WARN_ONCE(rm_field->mask == 0, "invalid empty mask defined\n");
+
+	rm_field->id_size = reg_field.id_size;
+	rm_field->id_offset = reg_field.id_offset;
+}
+
+/**
+ * regmap_field_bulk_alloc() - Allocate and initialise a bulk register field.
+ *
+ * @regmap: regmap bank in which this register field is located.
+ * @rm_field: regmap register fields within the bank.
+ * @reg_field: Register fields within the bank.
+ * @num_fields: Number of register fields.
+ *
+ * The return value will be an -ENOMEM on error or zero for success.
+ * Newly allocated regmap_fields should be freed by calling
+ * regmap_field_bulk_free()
+ */
+int regmap_field_bulk_alloc(struct regmap *regmap,
+			    struct regmap_field **rm_field,
+			    const struct reg_field *reg_field,
+			    int num_fields)
+{
+	struct regmap_field *rf;
+	int i;
+
+	rf = kcalloc(num_fields, sizeof(*rf), GFP_KERNEL);
+	if (!rf)
+		return -ENOMEM;
+
+	for (i = 0; i < num_fields; i++) {
+		regmap_field_init(&rf[i], regmap, reg_field[i]);
+		rm_field[i] = &rf[i];
+	}
+
+	return 0;
+}
+
 /*
  * regmap_register_cdev - register a devfs file for a regmap
  *
diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index 3ba0f852f6..e38b4f2dc8 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -212,6 +212,45 @@ int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
 #define regmap_bulk_write regmap_bulk_write
 int regmap_bulk_write(struct regmap *map, unsigned int reg,
 		     const void *val, size_t val_count);
+
+struct regmap_field;
+
+struct reg_field {
+	unsigned int reg;
+	unsigned int lsb;
+	unsigned int msb;
+	unsigned int id_size;
+	unsigned int id_offset;
+};
+
+#define REG_FIELD(_reg, _lsb, _msb) {           \
+				.reg = _reg,    \
+				.lsb = _lsb,    \
+				.msb = _msb,    \
+				}
+
+int regmap_field_bulk_alloc(struct regmap *regmap,
+			    struct regmap_field **rm_field,
+			    const struct reg_field *reg_field,
+			    int num_fields);
+
+int regmap_field_read(struct regmap_field *field, unsigned int *val);
+
+int regmap_update_bits_base(struct regmap *map, unsigned int reg,
+			    unsigned int mask, unsigned int val,
+			    bool *change, bool async, bool force);
+
+int regmap_field_update_bits_base(struct regmap_field *field,
+				  unsigned int mask, unsigned int val,
+				  bool *change, bool async, bool force);
+
+static inline int regmap_field_write(struct regmap_field *field,
+				     unsigned int val)
+{
+	return regmap_field_update_bits_base(field, ~0, val,
+					     NULL, false, false);
+}
+
 #endif
 
 int regmap_get_val_bytes(struct regmap *map);

-- 
2.39.5



