Delivery-date: Wed, 11 Jan 2023 14:33:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbEM-008rBC-V9
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 14:33:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbEJ-000355-Ii
	for lore@pengutronix.de; Wed, 11 Jan 2023 14:33:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qi36+IHiHWJ89xokA+s+6H2ZrHs1LmPL4BaojPumvo4=; b=zyUqHJuchhELJF92rwP+Gn5Obq
	61yBIw+lioucmQjvRtnscXBDd73HGkLRQfWjMtZSXoCByy/GuDsxcWKEJSU7OWbhNIlrlsGAI8L9w
	cAojEufcGP9vKVCe1V+LDU5Dzr3KlxJ9+AjAAEqwi4XhUMd1hBU4YV9BfgxSvHOJhSffF6LE/LsDP
	juQQFlll9x0G8FUaoyCBiKat8eCw/9hqYIOUPAITuAT17+Jzu5vwkvgXEhPjavMGPXr7XQjoQWT08
	Rzi5qm+fAQgtc7FLYGzdSJP87LInyN6GVOUYOoNdNhDM4AvbRM2imOXn6E/7INcqcXSp7n5bWbNDB
	1uiHmUmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbCd-00BaOy-S9; Wed, 11 Jan 2023 13:31:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbB7-00BZaK-GL
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 13:30:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-0001fn-Pp; Wed, 11 Jan 2023 14:30:01 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-005JQC-2Y; Wed, 11 Jan 2023 14:30:01 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB1-004rnf-9d; Wed, 11 Jan 2023 14:29:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 14:29:47 +0100
Message-Id: <20230111132956.1153359-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
References: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_053005_968670_4E0298C9 
X-CRM114-Status: GOOD (  29.94  )
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
Subject: [PATCH v2 02/11] regmap: support formatted read and write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Regmap support in barebox compared to Linux is quite primitive.
For incoming SPI regmap support, we will want users of the API to just
populate their regmap config appropriately and have the core do the heavy
lifting of formatting register and value into the buffer correctly.

For this, import the formatted read/write functionality of Linux into
a new regmap-fmt.c file. Unlike Linux, we keep this functionally gated
behind a Kconfig option, so it's only selected when needed, e.g. via
REGMAP_SPI in a follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/Kconfig             |   2 +
 drivers/base/regmap/Kconfig      |   4 +
 drivers/base/regmap/Makefile     |   1 +
 drivers/base/regmap/internal.h   |  24 ++
 drivers/base/regmap/regmap-fmt.c | 574 +++++++++++++++++++++++++++++++
 drivers/base/regmap/regmap.c     |  34 +-
 include/regmap.h                 |  46 +++
 7 files changed, 683 insertions(+), 2 deletions(-)
 create mode 100644 drivers/base/regmap/Kconfig
 create mode 100644 drivers/base/regmap/regmap-fmt.c

diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
index eebb60ce9193..3788231b6e82 100644
--- a/drivers/base/Kconfig
+++ b/drivers/base/Kconfig
@@ -5,3 +5,5 @@ config PM_GENERIC_DOMAINS
 
 config FEATURE_CONTROLLER
 	bool "Feature controller support" if COMPILE_TEST
+
+source "drivers/base/regmap/Kconfig"
diff --git a/drivers/base/regmap/Kconfig b/drivers/base/regmap/Kconfig
new file mode 100644
index 000000000000..4fb6b6bcecf8
--- /dev/null
+++ b/drivers/base/regmap/Kconfig
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config REGMAP_FORMATTED
+	bool
diff --git a/drivers/base/regmap/Makefile b/drivers/base/regmap/Makefile
index b136a72409fc..ef6814a50277 100644
--- a/drivers/base/regmap/Makefile
+++ b/drivers/base/regmap/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y	+= regmap.o
 obj-y	+= regmap-mmio.o
+obj-$(CONFIG_REGMAP_FORMATTED)	+= regmap-fmt.o
 obj-$(CONFIG_I2C)	+= regmap-i2c.o
diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
index 30ac6d162d73..ac3f0d3c0f20 100644
--- a/drivers/base/regmap/internal.h
+++ b/drivers/base/regmap/internal.h
@@ -8,9 +8,15 @@
 struct regmap_bus;
 
 struct regmap_format {
+	size_t buf_size;
 	size_t reg_bytes;
 	size_t pad_bytes;
 	size_t val_bytes;
+	void (*format_write)(struct regmap *map,
+			     unsigned int reg, unsigned int val);
+	void (*format_reg)(void *buf, unsigned int reg, unsigned int shift);
+	void (*format_val)(void *buf, unsigned int val, unsigned int shift);
+	unsigned int (*parse_val)(const void *buf);
 };
 
 struct regmap {
@@ -20,14 +26,32 @@ struct regmap {
 	void *bus_context;
 	struct list_head list;
 	int reg_stride;
+	void *work_buf;     /* Scratch buffer used to format I/O */
 	struct regmap_format format;
+	unsigned int read_flag_mask;
+	unsigned int write_flag_mask;
+	int reg_shift;
 	unsigned int max_register;
 
 	struct cdev cdev;
+
+	int (*reg_read)(void *context, unsigned int reg,
+			unsigned int *val);
+	int (*reg_write)(void *context, unsigned int reg,
+			 unsigned int val);
 };
 
 enum regmap_endian regmap_get_val_endian(struct device *dev,
 					 const struct regmap_bus *bus,
 					 const struct regmap_config *config);
 
+#ifdef CONFIG_REGMAP_FORMATTED
+int regmap_formatted_init(struct regmap *map, const struct regmap_config *);
+#else
+static inline int regmap_formatted_init(struct regmap *map, const struct regmap_config *cfg)
+{
+	return -ENOSYS;
+}
+#endif
+
 #endif
diff --git a/drivers/base/regmap/regmap-fmt.c b/drivers/base/regmap/regmap-fmt.c
new file mode 100644
index 000000000000..47545f691901
--- /dev/null
+++ b/drivers/base/regmap/regmap-fmt.c
@@ -0,0 +1,574 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Formatted register map access API
+ *
+ * Copyright 2022 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ *
+ * based on Kernel code:
+ *
+ * Copyright 2011 Wolfson Microelectronics plc
+ *
+ * Author: Mark Brown <broonie@opensource.wolfsonmicro.com>
+ */
+
+#include <common.h>
+#include <regmap.h>
+#include <linux/log2.h>
+#include <asm/unaligned.h>
+
+#include "internal.h"
+
+static void regmap_format_12_20_write(struct regmap *map,
+				     unsigned int reg, unsigned int val)
+{
+	u8 *out = map->work_buf;
+
+	out[0] = reg >> 4;
+	out[1] = (reg << 4) | (val >> 16);
+	out[2] = val >> 8;
+	out[3] = val;
+}
+
+
+static void regmap_format_2_6_write(struct regmap *map,
+				     unsigned int reg, unsigned int val)
+{
+	u8 *out = map->work_buf;
+
+	*out = (reg << 6) | val;
+}
+
+static void regmap_format_4_12_write(struct regmap *map,
+				     unsigned int reg, unsigned int val)
+{
+	__be16 *out = map->work_buf;
+	*out = cpu_to_be16((reg << 12) | val);
+}
+
+static void regmap_format_7_9_write(struct regmap *map,
+				    unsigned int reg, unsigned int val)
+{
+	__be16 *out = map->work_buf;
+	*out = cpu_to_be16((reg << 9) | val);
+}
+
+static void regmap_format_7_17_write(struct regmap *map,
+				    unsigned int reg, unsigned int val)
+{
+	u8 *out = map->work_buf;
+
+	out[2] = val;
+	out[1] = val >> 8;
+	out[0] = (val >> 16) | (reg << 1);
+}
+
+static void regmap_format_10_14_write(struct regmap *map,
+				    unsigned int reg, unsigned int val)
+{
+	u8 *out = map->work_buf;
+
+	out[2] = val;
+	out[1] = (val >> 8) | (reg << 6);
+	out[0] = reg >> 2;
+}
+
+static void regmap_format_8(void *buf, unsigned int val, unsigned int shift)
+{
+	u8 *b = buf;
+
+	b[0] = val << shift;
+}
+
+static void regmap_format_16_be(void *buf, unsigned int val, unsigned int shift)
+{
+	put_unaligned_be16(val << shift, buf);
+}
+
+static void regmap_format_16_le(void *buf, unsigned int val, unsigned int shift)
+{
+	put_unaligned_le16(val << shift, buf);
+}
+
+static void regmap_format_16_native(void *buf, unsigned int val,
+				    unsigned int shift)
+{
+	u16 v = val << shift;
+
+	memcpy(buf, &v, sizeof(v));
+}
+
+static void regmap_format_24(void *buf, unsigned int val, unsigned int shift)
+{
+	u8 *b = buf;
+
+	val <<= shift;
+
+	b[0] = val >> 16;
+	b[1] = val >> 8;
+	b[2] = val;
+}
+
+static void regmap_format_32_be(void *buf, unsigned int val, unsigned int shift)
+{
+	put_unaligned_be32(val << shift, buf);
+}
+
+static void regmap_format_32_le(void *buf, unsigned int val, unsigned int shift)
+{
+	put_unaligned_le32(val << shift, buf);
+}
+
+static void regmap_format_32_native(void *buf, unsigned int val,
+				    unsigned int shift)
+{
+	u32 v = val << shift;
+
+	memcpy(buf, &v, sizeof(v));
+}
+
+#ifdef CONFIG_64BIT
+static void regmap_format_64_be(void *buf, unsigned int val, unsigned int shift)
+{
+	put_unaligned_be64((u64) val << shift, buf);
+}
+
+static void regmap_format_64_le(void *buf, unsigned int val, unsigned int shift)
+{
+	put_unaligned_le64((u64) val << shift, buf);
+}
+
+static void regmap_format_64_native(void *buf, unsigned int val,
+				    unsigned int shift)
+{
+	u64 v = (u64) val << shift;
+
+	memcpy(buf, &v, sizeof(v));
+}
+#endif
+
+static unsigned int regmap_parse_8(const void *buf)
+{
+	const u8 *b = buf;
+
+	return b[0];
+}
+
+static unsigned int regmap_parse_16_be(const void *buf)
+{
+	return get_unaligned_be16(buf);
+}
+
+static unsigned int regmap_parse_16_le(const void *buf)
+{
+	return get_unaligned_le16(buf);
+}
+
+static unsigned int regmap_parse_16_native(const void *buf)
+{
+	u16 v;
+
+	memcpy(&v, buf, sizeof(v));
+	return v;
+}
+
+static unsigned int regmap_parse_24(const void *buf)
+{
+	const u8 *b = buf;
+	unsigned int ret = b[2];
+	ret |= ((unsigned int)b[1]) << 8;
+	ret |= ((unsigned int)b[0]) << 16;
+
+	return ret;
+}
+
+static unsigned int regmap_parse_32_be(const void *buf)
+{
+	return get_unaligned_be32(buf);
+}
+
+static unsigned int regmap_parse_32_le(const void *buf)
+{
+	return get_unaligned_le32(buf);
+}
+
+static unsigned int regmap_parse_32_native(const void *buf)
+{
+	u32 v;
+
+	memcpy(&v, buf, sizeof(v));
+	return v;
+}
+
+#ifdef CONFIG_64BIT
+static unsigned int regmap_parse_64_be(const void *buf)
+{
+	return get_unaligned_be64(buf);
+}
+
+static unsigned int regmap_parse_64_le(const void *buf)
+{
+	return get_unaligned_le64(buf);
+}
+
+static unsigned int regmap_parse_64_native(const void *buf)
+{
+	u64 v;
+
+	memcpy(&v, buf, sizeof(v));
+	return v;
+}
+#endif
+
+
+static enum regmap_endian regmap_get_reg_endian(const struct regmap_bus *bus,
+					const struct regmap_config *config)
+{
+	enum regmap_endian endian;
+
+	/* Retrieve the endianness specification from the regmap config */
+	endian = config->reg_format_endian;
+
+	/* If the regmap config specified a non-default value, use that */
+	if (endian != REGMAP_ENDIAN_DEFAULT)
+		return endian;
+
+	/* Retrieve the endianness specification from the bus config */
+	if (bus && bus->reg_format_endian_default)
+		endian = bus->reg_format_endian_default;
+
+	/* If the bus specified a non-default value, use that */
+	if (endian != REGMAP_ENDIAN_DEFAULT)
+		return endian;
+
+	/* Use this if no other value was found */
+	return REGMAP_ENDIAN_BIG;
+}
+
+static void regmap_set_work_buf_flag_mask(struct regmap *map, int max_bytes,
+					  unsigned long mask)
+{
+	u8 *buf;
+	int i;
+
+	if (!mask || !map->work_buf)
+		return;
+
+	buf = map->work_buf;
+
+	for (i = 0; i < max_bytes; i++)
+		buf[i] |= (mask >> (8 * i)) & 0xff;
+}
+
+static int _regmap_raw_read(struct regmap *map, unsigned int reg, void *val,
+			    unsigned int val_len, bool noinc)
+{
+	const struct regmap_bus *bus = map->bus;
+
+	if (!bus->read)
+		return -EINVAL;
+
+	map->format.format_reg(map->work_buf, reg, map->reg_shift);
+	regmap_set_work_buf_flag_mask(map, map->format.reg_bytes,
+				      map->read_flag_mask);
+
+	return bus->read(map->bus_context, map->work_buf,
+			 map->format.reg_bytes + map->format.pad_bytes,
+			 val, val_len);
+
+}
+
+static int _regmap_bus_read(void *context, unsigned int reg,
+			    unsigned int *val)
+{
+	int ret;
+	struct regmap *map = context;
+	void *work_val = map->work_buf + map->format.reg_bytes +
+		map->format.pad_bytes;
+
+	if (!map->format.parse_val)
+		return -EINVAL;
+
+	ret = _regmap_raw_read(map, reg, work_val, map->format.val_bytes, false);
+	if (ret == 0)
+		*val = map->format.parse_val(work_val);
+
+	return ret;
+}
+
+static int _regmap_bus_formatted_write(void *context, unsigned int reg,
+				       unsigned int val)
+{
+	struct regmap *map = context;
+
+	map->format.format_write(map, reg, val);
+
+	return map->bus->write(map->bus_context, map->work_buf,
+			      map->format.buf_size);
+}
+
+static int _regmap_raw_write_impl(struct regmap *map, unsigned int reg,
+				  const void *val, size_t val_len, bool noinc)
+{
+	void *work_val = map->work_buf + map->format.reg_bytes +
+		map->format.pad_bytes;
+
+	map->format.format_reg(map->work_buf, reg, map->reg_shift);
+	regmap_set_work_buf_flag_mask(map, map->format.reg_bytes,
+				      map->write_flag_mask);
+
+	/*
+	 * Essentially all I/O mechanisms will be faster with a single
+	 * buffer to write.  Since register syncs often generate raw
+	 * writes of single registers optimise that case.
+	 */
+	if (val != work_val && val_len == map->format.val_bytes) {
+		memcpy(work_val, val, map->format.val_bytes);
+		val = work_val;
+	}
+
+	/* If we're doing a single register write we can probably just
+	 * send the work_buf directly, otherwise try to do a gather
+	 * write.
+	 */
+	return map->bus->write(map->bus_context, map->work_buf,
+			       map->format.reg_bytes +
+			       map->format.pad_bytes +
+			       val_len);
+
+}
+
+static int _regmap_bus_raw_write(void *context, unsigned int reg,
+				 unsigned int val)
+{
+	struct regmap *map = context;
+
+	WARN_ON(!map->format.format_val);
+
+	map->format.format_val(map->work_buf + map->format.reg_bytes
+			       + map->format.pad_bytes, val, 0);
+	return _regmap_raw_write_impl(map, reg,
+				      map->work_buf +
+				      map->format.reg_bytes +
+				      map->format.pad_bytes,
+				      map->format.val_bytes,
+				      false);
+}
+
+int regmap_formatted_init(struct regmap *map, const struct regmap_config *config)
+{
+	enum regmap_endian reg_endian, val_endian;
+	const struct regmap_bus *bus = map->bus;
+
+	map->format.buf_size = DIV_ROUND_UP(config->reg_bits +
+			config->val_bits + config->pad_bits, 8);
+
+	map->work_buf = xzalloc(map->format.buf_size);
+
+	if (config->read_flag_mask || config->write_flag_mask) {
+		map->read_flag_mask = config->read_flag_mask;
+		map->write_flag_mask = config->write_flag_mask;
+	} else {
+		map->read_flag_mask = bus->read_flag_mask;
+	}
+
+	map->reg_read = _regmap_bus_read;
+
+	reg_endian = regmap_get_reg_endian(bus, config);
+	val_endian = regmap_get_val_endian(map->dev, bus, config);
+
+	switch (config->reg_bits + config->pad_bits % 8) {
+	case 2:
+		switch (config->val_bits) {
+		case 6:
+			map->format.format_write = regmap_format_2_6_write;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+
+	case 4:
+		switch (config->val_bits) {
+		case 12:
+			map->format.format_write = regmap_format_4_12_write;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+
+	case 7:
+		switch (config->val_bits) {
+		case 9:
+			map->format.format_write = regmap_format_7_9_write;
+			break;
+		case 17:
+			map->format.format_write = regmap_format_7_17_write;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+
+	case 10:
+		switch (config->val_bits) {
+		case 14:
+			map->format.format_write = regmap_format_10_14_write;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+
+	case 12:
+		switch (config->val_bits) {
+		case 20:
+			map->format.format_write = regmap_format_12_20_write;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+
+	case 8:
+		map->format.format_reg = regmap_format_8;
+		break;
+
+	case 16:
+		switch (reg_endian) {
+		case REGMAP_ENDIAN_BIG:
+			map->format.format_reg = regmap_format_16_be;
+			break;
+		case REGMAP_ENDIAN_LITTLE:
+			map->format.format_reg = regmap_format_16_le;
+			break;
+		case REGMAP_ENDIAN_NATIVE:
+			map->format.format_reg = regmap_format_16_native;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+
+	case 24:
+		if (reg_endian != REGMAP_ENDIAN_BIG)
+			return -EINVAL;
+		map->format.format_reg = regmap_format_24;
+		break;
+
+	case 32:
+		switch (reg_endian) {
+		case REGMAP_ENDIAN_BIG:
+			map->format.format_reg = regmap_format_32_be;
+			break;
+		case REGMAP_ENDIAN_LITTLE:
+			map->format.format_reg = regmap_format_32_le;
+			break;
+		case REGMAP_ENDIAN_NATIVE:
+			map->format.format_reg = regmap_format_32_native;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+
+#ifdef CONFIG_64BIT
+	case 64:
+		switch (reg_endian) {
+		case REGMAP_ENDIAN_BIG:
+			map->format.format_reg = regmap_format_64_be;
+			break;
+		case REGMAP_ENDIAN_LITTLE:
+			map->format.format_reg = regmap_format_64_le;
+			break;
+		case REGMAP_ENDIAN_NATIVE:
+			map->format.format_reg = regmap_format_64_native;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+#endif
+
+	default:
+		return -EINVAL;
+	}
+
+	switch (config->val_bits) {
+	case 8:
+		map->format.format_val = regmap_format_8;
+		map->format.parse_val = regmap_parse_8;
+		break;
+	case 16:
+		switch (val_endian) {
+		case REGMAP_ENDIAN_BIG:
+			map->format.format_val = regmap_format_16_be;
+			map->format.parse_val = regmap_parse_16_be;
+			break;
+		case REGMAP_ENDIAN_LITTLE:
+			map->format.format_val = regmap_format_16_le;
+			map->format.parse_val = regmap_parse_16_le;
+			break;
+		case REGMAP_ENDIAN_NATIVE:
+			map->format.format_val = regmap_format_16_native;
+			map->format.parse_val = regmap_parse_16_native;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+	case 24:
+		if (val_endian != REGMAP_ENDIAN_BIG)
+			return -EINVAL;
+		map->format.format_val = regmap_format_24;
+		map->format.parse_val = regmap_parse_24;
+		break;
+	case 32:
+		switch (val_endian) {
+		case REGMAP_ENDIAN_BIG:
+			map->format.format_val = regmap_format_32_be;
+			map->format.parse_val = regmap_parse_32_be;
+			break;
+		case REGMAP_ENDIAN_LITTLE:
+			map->format.format_val = regmap_format_32_le;
+			map->format.parse_val = regmap_parse_32_le;
+			break;
+		case REGMAP_ENDIAN_NATIVE:
+			map->format.format_val = regmap_format_32_native;
+			map->format.parse_val = regmap_parse_32_native;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+#ifdef CONFIG_64BIT
+	case 64:
+		switch (val_endian) {
+		case REGMAP_ENDIAN_BIG:
+			map->format.format_val = regmap_format_64_be;
+			map->format.parse_val = regmap_parse_64_be;
+			break;
+		case REGMAP_ENDIAN_LITTLE:
+			map->format.format_val = regmap_format_64_le;
+			map->format.parse_val = regmap_parse_64_le;
+			break;
+		case REGMAP_ENDIAN_NATIVE:
+			map->format.format_val = regmap_format_64_native;
+			map->format.parse_val = regmap_parse_64_native;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+#endif
+	}
+
+	if (map->format.format_write)
+		map->reg_write = _regmap_bus_formatted_write;
+	else if (map->format.format_val)
+		map->reg_write = _regmap_bus_raw_write;
+	else
+		return -EOPNOTSUPP;
+
+	return 0;
+}
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 1b0985376a1f..19f5356105f6 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -64,6 +64,23 @@ enum regmap_endian regmap_get_val_endian(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(regmap_get_val_endian);
 
+static int _regmap_bus_reg_read(void *context, unsigned int reg,
+				unsigned int *val)
+{
+	struct regmap *map = context;
+
+	return map->bus->reg_read(map->bus_context, reg, val);
+}
+
+
+static int _regmap_bus_reg_write(void *context, unsigned int reg,
+				 unsigned int val)
+{
+	struct regmap *map = context;
+
+	return map->bus->reg_write(map->bus_context, reg, val);
+}
+
 /*
  * regmap_init - initialize and register a regmap
  *
@@ -80,6 +97,7 @@ struct regmap *regmap_init(struct device *dev,
 			     const struct regmap_config *config)
 {
 	struct regmap *map;
+	int ret;
 
 	map = xzalloc(sizeof(*map));
 	map->dev = dev;
@@ -92,8 +110,20 @@ struct regmap *regmap_init(struct device *dev,
 		map->reg_stride = 1;
 	map->format.pad_bytes = config->pad_bits / 8;
 	map->format.val_bytes = DIV_ROUND_UP(config->val_bits, 8);
+	map->reg_shift = config->pad_bits % 8;
 	map->max_register = config->max_register;
 
+	if (!bus->read || !bus->write) {
+		map->reg_read = _regmap_bus_reg_read;
+		map->reg_write = _regmap_bus_reg_write;
+	} else  {
+		ret = regmap_formatted_init(map, config);
+		if (ret) {
+			free(map);
+			return ERR_PTR(ret);
+		}
+	}
+
 	list_add_tail(&map->list, &regmaps);
 
 	return map;
@@ -139,7 +169,7 @@ struct device *regmap_get_device(struct regmap *map)
  */
 int regmap_write(struct regmap *map, unsigned int reg, unsigned int val)
 {
-	return map->bus->reg_write(map->bus_context, reg, val);
+	return map->reg_write(map, reg, val);
 }
 
 /*
@@ -153,7 +183,7 @@ int regmap_write(struct regmap *map, unsigned int reg, unsigned int val)
  */
 int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
 {
-	return map->bus->reg_read(map->bus_context, reg, val);
+	return map->reg_read(map, reg, val);
 }
 
 /**
diff --git a/include/regmap.h b/include/regmap.h
index 44dd8f38c8af..36a75eb34e03 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -2,6 +2,9 @@
 #ifndef __REGMAP_H
 #define __REGMAP_H
 
+#include <linux/compiler.h>
+#include <linux/types.h>
+
 enum regmap_endian {
 	/* Unspecified -> 0 -> Backwards compatible default */
 	REGMAP_ENDIAN_DEFAULT = 0,
@@ -23,7 +26,14 @@ enum regmap_endian {
  * @pad_bits: Number of bits of padding between register and value.
  * @val_bits: Number of bits in a register value, mandatory.
  *
+ * @write: Write operation.
+ * @read: Read operation.  Data is returned in the buffer used to transmit
+ *         data.
+ *
  * @max_register: Optional, specifies the maximum valid register index.
+ *
+ * @read_flag_mask: Mask to be set in the top byte of the register when doing
+ *                  a read.
  */
 struct regmap_config {
 	const char *name;
@@ -37,16 +47,52 @@ struct regmap_config {
 
 	enum regmap_endian reg_format_endian;
 	enum regmap_endian val_format_endian;
+
+	unsigned int read_flag_mask;
+	unsigned int write_flag_mask;
 };
 
+typedef int (*regmap_hw_write)(void *context, const void *data,
+			       size_t count);
+typedef int (*regmap_hw_read)(void *context,
+			      const void *reg_buf, size_t reg_size,
+			      void *val_buf, size_t val_size);
 typedef int (*regmap_hw_reg_read)(void *context, unsigned int reg,
 				  unsigned int *val);
 typedef int (*regmap_hw_reg_write)(void *context, unsigned int reg,
 				   unsigned int val);
 
+/**
+ * struct regmap_bus - Description of a hardware bus for the register map
+ *                     infrastructure.
+ *
+ * @reg_write: Write a single register value to the given register address. This
+ *             write operation has to complete when returning from the function.
+ * @reg_read: Read a single register value from a given register address.
+ * @read: Read operation.  Data is returned in the buffer used to transmit
+ *         data.
+ * @write: Write operation.
+ * @read_flag_mask: Mask to be set in the top byte of the register when doing
+ *                  a read.
+ * @reg_format_endian_default: Default endianness for formatted register
+ *     addresses. Used when the regmap_config specifies DEFAULT. If this is
+ *     DEFAULT, BIG is assumed.
+ * @val_format_endian_default: Default endianness for formatted register
+ *     values. Used when the regmap_config specifies DEFAULT. If this is
+ *     DEFAULT, BIG is assumed.
+ */
 struct regmap_bus {
 	regmap_hw_reg_write reg_write;
 	regmap_hw_reg_read reg_read;
+
+	int (*read)(void *context,
+		    const void *reg_buf, size_t reg_size,
+		    void *val_buf, size_t val_size);
+	int (*write)(void *context, const void *data,
+		     size_t count);
+
+	u8 read_flag_mask;
+
 	enum regmap_endian reg_format_endian_default;
 	enum regmap_endian val_format_endian_default;
 };
-- 
2.30.2



