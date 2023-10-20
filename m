Delivery-date: Fri, 20 Oct 2023 09:20:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjoJ-00FGZG-F9
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjoH-0006qH-3x
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V8LmZ+4KcANS/MMyWfaNewxbWWOxC9Ig3+dNrUZAbAI=; b=jo7kQwqDN3gF4mBSe2JY0Arjm/
	RMOD26MOhitTVOYrnXHd6WL5ynd84tM5MBAswmufjiztP3EawLf4N/joordTYXnj/EejDxTAA32x0
	LK2UqzI25HVxtOnZdExs4K8tqVQmTi/zt+T63Cdkvy/hwbXyOTeEKBzdLsmaF9DfLoAStyZVFYe2t
	yHBAD5SWw7xB6VBu4if5U0u/o1XmwFVWzPU7IkrqrarzLtGYQJaJrhByt80CN0wd8HJcUqOp2Pzfe
	b41z9KY+8Hf0XrfzQEDP0k1KU6l/hEDB5WKnjVqk+axLde1fU6SAKux97JuoqKIA4rceNsyuIeugG
	FLWtlsmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmy-001P3f-0R;
	Fri, 20 Oct 2023 07:19:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmp-001Oyo-12
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006Dc-0V; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLj-DP; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRL-1A;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:45 +0200
Message-Id: <20231020071853.2826528-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001911_675607_A4A1B30C 
X-CRM114-Status: GOOD (  25.54  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/11] regmap: move regmap.h content to linux/regmap.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for changing the semantics of regmap_bulk_read and
regmap_bulk_write, move regmap.h to its Linux location and have the
existing top-level regmap.h just point at it.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/regmap.h | 254 +++++++++++++++++++++++++++++++++++++++++
 include/regmap.h       | 249 +---------------------------------------
 2 files changed, 255 insertions(+), 248 deletions(-)
 create mode 100644 include/linux/regmap.h

diff --git a/include/linux/regmap.h b/include/linux/regmap.h
new file mode 100644
index 000000000000..aacb80cfa235
--- /dev/null
+++ b/include/linux/regmap.h
@@ -0,0 +1,254 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __LINUX_REGMAP_H
+#define __LINUX_REGMAP_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+enum regmap_endian {
+	/* Unspecified -> 0 -> Backwards compatible default */
+	REGMAP_ENDIAN_DEFAULT = 0,
+	REGMAP_ENDIAN_BIG,
+	REGMAP_ENDIAN_LITTLE,
+	REGMAP_ENDIAN_NATIVE,
+};
+
+/**
+ * Configuration for the register map of a device.
+ *
+ * @name: Optional name of the regmap. Useful when a device has multiple
+ *        register regions.
+ *
+ * @reg_bits: Number of bits in a register address, mandatory.
+ * @reg_stride: The register address stride. Valid register addresses are a
+ *              multiple of this value. If set to 0, a value of 1 will be
+ *              used.
+ * @pad_bits: Number of bits of padding between register and value.
+ * @val_bits: Number of bits in a register value, mandatory.
+ *
+ * @write: Write operation.
+ * @read: Read operation.  Data is returned in the buffer used to transmit
+ *         data.
+ *
+ * @max_register: Optional, specifies the maximum valid register index.
+ *
+ * @read_flag_mask: Mask to be set in the top byte of the register when doing
+ *                  a read.
+ */
+struct regmap_config {
+	const char *name;
+
+	int reg_bits;
+	int reg_stride;
+	int pad_bits;
+	int val_bits;
+
+	unsigned int max_register;
+
+	enum regmap_endian reg_format_endian;
+	enum regmap_endian val_format_endian;
+
+	unsigned int read_flag_mask;
+	unsigned int write_flag_mask;
+};
+
+typedef int (*regmap_hw_write)(void *context, const void *data,
+			       size_t count);
+typedef int (*regmap_hw_read)(void *context,
+			      const void *reg_buf, size_t reg_size,
+			      void *val_buf, size_t val_size);
+typedef int (*regmap_hw_reg_read)(void *context, unsigned int reg,
+				  unsigned int *val);
+typedef int (*regmap_hw_reg_write)(void *context, unsigned int reg,
+				   unsigned int val);
+
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
+struct regmap_bus {
+	regmap_hw_reg_write reg_write;
+	regmap_hw_reg_read reg_read;
+
+	int (*read)(void *context,
+		    const void *reg_buf, size_t reg_size,
+		    void *val_buf, size_t val_size);
+	int (*write)(void *context, const void *data,
+		     size_t count);
+
+	u8 read_flag_mask;
+
+	enum regmap_endian reg_format_endian_default;
+	enum regmap_endian val_format_endian_default;
+};
+
+struct device;
+struct device_node;
+
+struct regmap *regmap_init(struct device *dev,
+			     const struct regmap_bus *bus,
+			     void *bus_context,
+			     const struct regmap_config *config);
+
+struct clk;
+
+/**
+ * regmap_init_mmio_clk() - Initialise register map with register clock
+ *
+ * @dev: Device that will be interacted with
+ * @clk_id: register clock consumer ID
+ * @regs: Pointer to memory-mapped IO region
+ * @config: Configuration for register map
+ *
+ * The return value will be an ERR_PTR() on error or a valid pointer to
+ * a struct regmap.
+ */
+struct regmap *regmap_init_mmio_clk(struct device *dev, const char *clk_id,
+				    void __iomem *regs,
+				    const struct regmap_config *config);
+
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
+struct regmap *regmap_init_i2c_smbus(struct i2c_client *client,
+			       const struct regmap_config *config);
+
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
+/**
+ * regmap_init_mmio() - Initialise register map
+ *
+ * @dev: Device that will be interacted with
+ * @regs: Pointer to memory-mapped IO region
+ * @config: Configuration for register map
+ *
+ * The return value will be an ERR_PTR() on error or a valid pointer to
+ * a struct regmap.
+ */
+#define regmap_init_mmio(dev, regs, config)		\
+	regmap_init_mmio_clk(dev, NULL, regs, config)
+
+
+int regmap_mmio_attach_clk(struct regmap *map, struct clk *clk);
+void regmap_mmio_detach_clk(struct regmap *map);
+
+void regmap_exit(struct regmap *map);
+
+struct regmap *dev_get_regmap(struct device *dev, const char *name);
+struct device *regmap_get_device(struct regmap *map);
+
+int regmap_register_cdev(struct regmap *map, const char *name);
+
+/**
+ * regmap_multi_register_cdev() - Initialize cdev backed by multiple regmaps
+ *
+ * @map8:  regmap for  8-bit wide accesses. NULL if such access
+ *         should fail with -EINVAL
+ * @map16: regmap for 16-bit wide accesses. NULL if such access
+ *         should fail with -EINVAL
+ * @map32: regmap for 32-bit wide accesses. NULL if such access
+ *         should fail with -EINVAL
+ * @map64: regmap for 64-bit wide accesses. NULL if such access
+ *         should fail with -EINVAL
+ *
+ * Registers a cdev that demultiplexes cdev accesses to one
+ * of the underlying regmaps according to the access size
+ * (e.g. mw -b => map8, mw -l => map32)
+ */
+int regmap_multi_register_cdev(struct regmap *map8,
+			       struct regmap *map16,
+			       struct regmap *map32,
+			       struct regmap *map64);
+
+int regmap_write(struct regmap *map, unsigned int reg, unsigned int val);
+int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val);
+
+int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
+		    size_t val_len);
+int regmap_bulk_write(struct regmap *map, unsigned int reg,
+		     const void *val, size_t val_len);
+
+int regmap_get_val_bytes(struct regmap *map);
+int regmap_get_max_register(struct regmap *map);
+int regmap_get_reg_stride(struct regmap *map);
+
+int regmap_write_bits(struct regmap *map, unsigned int reg,
+		      unsigned int mask, unsigned int val);
+int regmap_update_bits(struct regmap *map, unsigned int reg,
+		       unsigned int mask, unsigned int val);
+
+static inline int regmap_set_bits(struct regmap *map,
+				  unsigned int reg, unsigned int bits)
+{
+	return regmap_update_bits(map, reg, bits, bits);
+}
+
+static inline int regmap_clear_bits(struct regmap *map,
+				    unsigned int reg, unsigned int bits)
+{
+	return regmap_update_bits(map, reg, bits, 0);
+}
+
+size_t regmap_size_bytes(struct regmap *map);
+
+/**
+ * regmap_read_poll_timeout - Poll until a condition is met or a timeout occurs
+ *
+ * @map: Regmap to read from
+ * @addr: Address to poll
+ * @val: Unsigned integer variable to read the value into
+ * @cond: Break condition (usually involving @val)
+ * @timeout_us: Timeout in us, 0 means never timeout
+ *
+ * Returns 0 on success and -ETIMEDOUT upon a timeout or the regmap_read
+ * error return value in case of a error read. In the two former cases,
+ * the last read value at @addr is stored in @val. Must not be called
+ * from atomic context if sleep_us or timeout_us are used.
+ *
+ * This is modelled after the readx_poll_timeout macros in linux/iopoll.h.
+ */
+#define regmap_read_poll_timeout(map, addr, val, cond, timeout_us) \
+({ \
+	int __ret, __tmp; \
+	__tmp = read_poll_timeout(regmap_read, __ret, __ret || (cond), \
+			timeout_us, (map), (addr), &(val)); \
+	__ret ?: __tmp; \
+})
+
+#endif /* __LINUX_REGMAP_H */
diff --git a/include/regmap.h b/include/regmap.h
index 98ac90523b07..f4a194f10433 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -2,253 +2,6 @@
 #ifndef __REGMAP_H
 #define __REGMAP_H
 
-#include <linux/compiler.h>
-#include <linux/types.h>
-
-enum regmap_endian {
-	/* Unspecified -> 0 -> Backwards compatible default */
-	REGMAP_ENDIAN_DEFAULT = 0,
-	REGMAP_ENDIAN_BIG,
-	REGMAP_ENDIAN_LITTLE,
-	REGMAP_ENDIAN_NATIVE,
-};
-
-/**
- * Configuration for the register map of a device.
- *
- * @name: Optional name of the regmap. Useful when a device has multiple
- *        register regions.
- *
- * @reg_bits: Number of bits in a register address, mandatory.
- * @reg_stride: The register address stride. Valid register addresses are a
- *              multiple of this value. If set to 0, a value of 1 will be
- *              used.
- * @pad_bits: Number of bits of padding between register and value.
- * @val_bits: Number of bits in a register value, mandatory.
- *
- * @write: Write operation.
- * @read: Read operation.  Data is returned in the buffer used to transmit
- *         data.
- *
- * @max_register: Optional, specifies the maximum valid register index.
- *
- * @read_flag_mask: Mask to be set in the top byte of the register when doing
- *                  a read.
- */
-struct regmap_config {
-	const char *name;
-
-	int reg_bits;
-	int reg_stride;
-	int pad_bits;
-	int val_bits;
-
-	unsigned int max_register;
-
-	enum regmap_endian reg_format_endian;
-	enum regmap_endian val_format_endian;
-
-	unsigned int read_flag_mask;
-	unsigned int write_flag_mask;
-};
-
-typedef int (*regmap_hw_write)(void *context, const void *data,
-			       size_t count);
-typedef int (*regmap_hw_read)(void *context,
-			      const void *reg_buf, size_t reg_size,
-			      void *val_buf, size_t val_size);
-typedef int (*regmap_hw_reg_read)(void *context, unsigned int reg,
-				  unsigned int *val);
-typedef int (*regmap_hw_reg_write)(void *context, unsigned int reg,
-				   unsigned int val);
-
-/**
- * struct regmap_bus - Description of a hardware bus for the register map
- *                     infrastructure.
- *
- * @reg_write: Write a single register value to the given register address. This
- *             write operation has to complete when returning from the function.
- * @reg_read: Read a single register value from a given register address.
- * @read: Read operation.  Data is returned in the buffer used to transmit
- *         data.
- * @write: Write operation.
- * @read_flag_mask: Mask to be set in the top byte of the register when doing
- *                  a read.
- * @reg_format_endian_default: Default endianness for formatted register
- *     addresses. Used when the regmap_config specifies DEFAULT. If this is
- *     DEFAULT, BIG is assumed.
- * @val_format_endian_default: Default endianness for formatted register
- *     values. Used when the regmap_config specifies DEFAULT. If this is
- *     DEFAULT, BIG is assumed.
- */
-struct regmap_bus {
-	regmap_hw_reg_write reg_write;
-	regmap_hw_reg_read reg_read;
-
-	int (*read)(void *context,
-		    const void *reg_buf, size_t reg_size,
-		    void *val_buf, size_t val_size);
-	int (*write)(void *context, const void *data,
-		     size_t count);
-
-	u8 read_flag_mask;
-
-	enum regmap_endian reg_format_endian_default;
-	enum regmap_endian val_format_endian_default;
-};
-
-struct device;
-struct device_node;
-
-struct regmap *regmap_init(struct device *dev,
-			     const struct regmap_bus *bus,
-			     void *bus_context,
-			     const struct regmap_config *config);
-
-struct clk;
-
-/**
- * regmap_init_mmio_clk() - Initialise register map with register clock
- *
- * @dev: Device that will be interacted with
- * @clk_id: register clock consumer ID
- * @regs: Pointer to memory-mapped IO region
- * @config: Configuration for register map
- *
- * The return value will be an ERR_PTR() on error or a valid pointer to
- * a struct regmap.
- */
-struct regmap *regmap_init_mmio_clk(struct device *dev, const char *clk_id,
-				    void __iomem *regs,
-				    const struct regmap_config *config);
-
-/**
- * regmap_init_i2c() - Initialise i2c register map
- *
- * @i2c: Device that will be interacted with
- * @config: Configuration for register map
- *
- * The return value will be an ERR_PTR() on error or a valid pointer
- * to a struct regmap.
- */
-struct i2c_client;
-struct regmap *regmap_init_i2c(struct i2c_client *i2c,
-			       const struct regmap_config *config);
-
-struct regmap *regmap_init_i2c_smbus(struct i2c_client *client,
-			       const struct regmap_config *config);
-
-/**
- * regmap_init_spi() - Initialise spi register map
- *
- * @spi: Device that will be interacted with
- * @config: Configuration for register map
- *
- * The return value will be an ERR_PTR() on error or a valid pointer
- * to a struct regmap.
- */
-struct spi_device;
-struct regmap *regmap_init_spi(struct spi_device *dev,
-			       const struct regmap_config *config);
-
-/**
- * regmap_init_mmio() - Initialise register map
- *
- * @dev: Device that will be interacted with
- * @regs: Pointer to memory-mapped IO region
- * @config: Configuration for register map
- *
- * The return value will be an ERR_PTR() on error or a valid pointer to
- * a struct regmap.
- */
-#define regmap_init_mmio(dev, regs, config)		\
-	regmap_init_mmio_clk(dev, NULL, regs, config)
-
-
-int regmap_mmio_attach_clk(struct regmap *map, struct clk *clk);
-void regmap_mmio_detach_clk(struct regmap *map);
-
-void regmap_exit(struct regmap *map);
-
-struct regmap *dev_get_regmap(struct device *dev, const char *name);
-struct device *regmap_get_device(struct regmap *map);
-
-int regmap_register_cdev(struct regmap *map, const char *name);
-
-/**
- * regmap_multi_register_cdev() - Initialize cdev backed by multiple regmaps
- *
- * @map8:  regmap for  8-bit wide accesses. NULL if such access
- *         should fail with -EINVAL
- * @map16: regmap for 16-bit wide accesses. NULL if such access
- *         should fail with -EINVAL
- * @map32: regmap for 32-bit wide accesses. NULL if such access
- *         should fail with -EINVAL
- * @map64: regmap for 64-bit wide accesses. NULL if such access
- *         should fail with -EINVAL
- *
- * Registers a cdev that demultiplexes cdev accesses to one
- * of the underlying regmaps according to the access size
- * (e.g. mw -b => map8, mw -l => map32)
- */
-int regmap_multi_register_cdev(struct regmap *map8,
-			       struct regmap *map16,
-			       struct regmap *map32,
-			       struct regmap *map64);
-
-int regmap_write(struct regmap *map, unsigned int reg, unsigned int val);
-int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val);
-
-int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
-		    size_t val_len);
-int regmap_bulk_write(struct regmap *map, unsigned int reg,
-		     const void *val, size_t val_len);
-
-int regmap_get_val_bytes(struct regmap *map);
-int regmap_get_max_register(struct regmap *map);
-int regmap_get_reg_stride(struct regmap *map);
-
-int regmap_write_bits(struct regmap *map, unsigned int reg,
-		      unsigned int mask, unsigned int val);
-int regmap_update_bits(struct regmap *map, unsigned int reg,
-		       unsigned int mask, unsigned int val);
-
-static inline int regmap_set_bits(struct regmap *map,
-				  unsigned int reg, unsigned int bits)
-{
-	return regmap_update_bits(map, reg, bits, bits);
-}
-
-static inline int regmap_clear_bits(struct regmap *map,
-				    unsigned int reg, unsigned int bits)
-{
-	return regmap_update_bits(map, reg, bits, 0);
-}
-
-size_t regmap_size_bytes(struct regmap *map);
-
-/**
- * regmap_read_poll_timeout - Poll until a condition is met or a timeout occurs
- *
- * @map: Regmap to read from
- * @addr: Address to poll
- * @val: Unsigned integer variable to read the value into
- * @cond: Break condition (usually involving @val)
- * @timeout_us: Timeout in us, 0 means never timeout
- *
- * Returns 0 on success and -ETIMEDOUT upon a timeout or the regmap_read
- * error return value in case of a error read. In the two former cases,
- * the last read value at @addr is stored in @val. Must not be called
- * from atomic context if sleep_us or timeout_us are used.
- *
- * This is modelled after the readx_poll_timeout macros in linux/iopoll.h.
- */
-#define regmap_read_poll_timeout(map, addr, val, cond, timeout_us) \
-({ \
-	int __ret, __tmp; \
-	__tmp = read_poll_timeout(regmap_read, __ret, __ret || (cond), \
-			timeout_us, (map), (addr), &(val)); \
-	__ret ?: __tmp; \
-})
+#include <linux/regmap.h>
 
 #endif /* __REGMAP_H */
-- 
2.39.2



