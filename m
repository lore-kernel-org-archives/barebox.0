Delivery-date: Thu, 05 Jun 2025 09:49:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN5M7-003w8p-0d
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 09:49:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN5M5-0007lu-Da
	for lore@pengutronix.de; Thu, 05 Jun 2025 09:49:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=skRTK8qkOL8h78bM8bXrlt179Ep5VRcqDUTZzkTQhDo=; b=gJ6CBsPiVh/JtaY9h5IZ1UQ+vL
	oG7L/vp5CTYRsOhb57XqcYNF1WbqObEz6a8mu4yyQz3iRBybBcEwAHRIHj5OYfr0/++hCul0Ys5Br
	3GNg+xuZkzWSvD0407VTR7SlUZt1gau7YiU5KRRTUWLSP+V8ZIBH3jXbDLK1JE5TZ6lGrEe8MRcWR
	ouM/3H/TnDrFHGzcc3uJry4nI6HKzPZJGfJrstJvYnGMW83tf7LLuYUqjU2DNdR1o4ilgwsO/83nW
	/cKEa61PDMA8YdqHIehrQ89Q988Hc70Mj5AyILcBoLnax1oZDxi4AiQzVBrIIQ+ODdRsnNes7uuHG
	Paiwqzyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5La-0000000Ez87-1eES;
	Thu, 05 Jun 2025 07:49:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5Jk-0000000Eyrz-1eTG
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 07:47:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-00065S-DY; Thu, 05 Jun 2025 09:47:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-001v7z-0E;
	Thu, 05 Jun 2025 09:47:14 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Jh-00HUuD-3D;
	Thu, 05 Jun 2025 09:47:13 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  5 Jun 2025 09:47:06 +0200
Message-Id: <20250605074713.4170334-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605074713.4170334-1-o.rempel@pengutronix.de>
References: <20250605074713.4170334-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_004716_605328_F32DC440 
X-CRM114-Status: GOOD (  23.82  )
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
Subject: [PATCH v2 2/9] nvmem: rmem: add write and protect support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add reg_write and reg_protect operations to the rmem NVMEM driver.
This makes rmem devices writable (they were previously read-only via the
NVMEM interface due to lacking reg_write) and allows specific regions
to be marked read-only.

The primary motivation is to improve testing of NVMEM consumer code that
handles write protection, by enabling rmem to emulate such hardware,
particularly in sandbox environments.

Key changes:

- reg_write implemented: Enables writes. Writes to protected regions
  return -EROFS.

- reg_protect implemented:
  - PROTECT_DISABLE_WRITE: Marks range read-only.

  - PROTECT_ENABLE_WRITE: Makes range writable.

  - Probe function updated for new ops and list initialization.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
changes v2:
- use a bitmap instead of lists of ranges.
---
 drivers/nvmem/rmem.c | 195 +++++++++++++++++++++++++++++++++++++++++++
 include/driver.h     |   3 +
 2 files changed, 198 insertions(+)

diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index afa0dd78c8f4..fd7389cd39e3 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -11,6 +11,10 @@
 struct rmem {
 	struct device *dev;
 	const struct resource *mem;
+	size_t total_size;
+	/* Bitmap: 1 bit per byte of rmem. 1=protected, 0=writable. */
+	unsigned char *protection_bitmap;
+	size_t protection_bitmap_bytes;
 };
 
 static int rmem_read(void *context, unsigned int offset,
@@ -21,6 +25,190 @@ static int rmem_read(void *context, unsigned int offset,
 			bytes, offset, 0);
 }
 
+/**
+ * rmem_is_byte_protected() - Check if a specific byte is write-protected.
+ * @rmem:	Pointer to the rmem private data.
+ * @offset:	Offset of the byte to check.
+ *
+ * Helper function to consult the protection bitmap.
+ *
+ * Return: True if the byte at @offset is protected, false otherwise.
+ */
+static inline bool rmem_is_byte_protected(const struct rmem *rmem,
+					  unsigned int offset)
+{
+	unsigned char bit_mask;
+	unsigned int byte_idx;
+
+	byte_idx = offset / 8;
+	bit_mask = 1U << (offset % 8);
+	return (rmem->protection_bitmap[byte_idx] & bit_mask) != 0;
+}
+
+/**
+ * rmem_do_protect_byte() - Mark a specific byte as write-protected.
+ * @rmem:	Pointer to the rmem private data.
+ * @offset:	Offset of the byte to protect.
+ *
+ * Helper function to set a bit in the protection bitmap. Assumes @offset
+ * is valid and rmem->protection_bitmap is allocated.
+ */
+static inline void rmem_do_protect_byte(struct rmem *rmem, unsigned int offset)
+{
+	unsigned char bit_mask = 1U << (offset % 8);
+	unsigned int byte_idx = offset / 8;
+
+	rmem->protection_bitmap[byte_idx] |= bit_mask;
+}
+
+/**
+ * rmem_do_unprotect_byte() - Mark a specific byte as writable.
+ * @rmem:	Pointer to the rmem private data.
+ * @offset:	Offset of the byte to unprotect.
+ *
+ * Helper function to clear a bit in the protection bitmap. Assumes @offset
+ * is valid and rmem->protection_bitmap is allocated.
+ */
+static inline void rmem_do_unprotect_byte(struct rmem *rmem,
+					  unsigned int offset)
+{
+	unsigned int byte_idx = offset / 8;
+	unsigned char bit_mask = 1U << (offset % 8);
+
+	rmem->protection_bitmap[byte_idx] &= ~bit_mask;
+}
+
+/**
+ * rmem_write() - Write data to the NVMEM device.
+ * @context:	Pointer to the rmem private data (struct rmem).
+ * @offset:	Offset within the NVMEM device to write to.
+ * @val:	Buffer containing the data to write.
+ * @bytes:	Number of bytes to write.
+ *
+ * This function is called by the NVMEM core to write data to the
+ * reserved memory region. It first checks the protection bitmap to ensure
+ * the target range is not write-protected. If writable, it uses the
+ * custom 'mem_copy' function.
+ * Specific error codes include -EROFS if protected or -EINVAL for bad params.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int rmem_write(void *context, unsigned int offset, const void *val,
+		      size_t bytes)
+{
+	struct rmem *rmem = context;
+	unsigned int i;
+
+	for (i = 0; i < bytes; ++i) {
+		if (rmem_is_byte_protected(rmem, offset + i)) {
+			dev_warn(rmem->dev,
+				 "Write [0x%x, len %zu] denied at 0x%x (protected)\n",
+				 offset, bytes, offset + i);
+			return -EROFS;
+		}
+	}
+
+	/*
+	 * The last two arguments to mem_copy (0, 0) are specific to
+	 * the custom mem_copy implementation.
+	 */
+	return mem_copy(rmem->dev, (void *)rmem->mem->start + offset, val,
+			bytes, 0, 0);
+}
+
+/**
+ * rmem_set_protection_bits() - Mark a memory range as read-only.
+ * @rmem:	Pointer to the rmem private data.
+ * @offset:	Starting offset of the range to protect.
+ * @bytes:	Length of the range to protect in bytes.
+ *
+ * Sets the corresponding bits in the protection_bitmap to mark the
+ * specified memory range as write-protected (read-only).
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int rmem_set_protection_bits(struct rmem *rmem, unsigned int offset,
+				    size_t bytes)
+{
+	unsigned int end_offset = offset + bytes;
+	unsigned int i;
+
+	for (i = offset; i < end_offset; ++i)
+		rmem_do_protect_byte(rmem, i);
+
+	dev_info(rmem->dev, "Protected range [0x%x, len %zu]\n", offset,
+		 bytes);
+	return 0;
+}
+
+/**
+ * rmem_clear_protection_bits() - Mark a memory range as writable.
+ * @rmem:	Pointer to the rmem private data.
+ * @offset:	Starting offset of the range to unprotect.
+ * @bytes:	Length of the range to unprotect in bytes.
+ *
+ * Clears the corresponding bits in the protection_bitmap to mark the
+ * specified memory range as writable.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int rmem_clear_protection_bits(struct rmem *rmem, unsigned int offset,
+				      size_t bytes)
+{
+	unsigned int end_offset = offset + bytes;
+	unsigned int i;
+
+	for (i = offset; i < end_offset; ++i)
+		rmem_do_unprotect_byte(rmem, i);
+
+	dev_info(rmem->dev, "Unprotected range [0x%x, len %zu]\n", offset,
+		 bytes);
+	return 0;
+}
+
+/**
+ * rmem_protect() - NVMEM callback to change protection status of a range.
+ * @context:	Pointer to the rmem private data (struct rmem).
+ * @offset:	Starting offset of the range.
+ * @bytes:	Length of the range in bytes.
+ * @prot_mode:	Protection mode to apply (PROTECT_DISABLE_WRITE or
+ * PROTECT_ENABLE_WRITE).
+ *
+ * This function is called by the NVMEM core to enable or disable
+ * write protection for a specified memory range.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int rmem_protect(void *context, unsigned int offset, size_t bytes,
+			int prot_mode)
+{
+	struct rmem *rmem = context;
+	int ret;
+
+	switch (prot_mode) {
+	case PROTECT_DISABLE_WRITE: /* Make read-only */
+		ret = rmem_set_protection_bits(rmem, offset, bytes);
+		break;
+	case PROTECT_ENABLE_WRITE: /* Make writable */
+		ret = rmem_clear_protection_bits(rmem, offset, bytes);
+		break;
+	default:
+		dev_warn(rmem->dev, "%s: Invalid protection mode %d\n",
+			 __func__, prot_mode);
+		ret = -EINVAL;
+		break;
+	}
+
+	if (ret)
+		return ret;
+
+	dev_dbg(rmem->dev,
+		"Protection op complete [0x%x, len %zu], mode %d\n", offset,
+		bytes, prot_mode);
+
+	return 0;
+}
+
 static int rmem_probe(struct device *dev)
 {
 	struct nvmem_config config = { };
@@ -41,7 +229,14 @@ static int rmem_probe(struct device *dev)
 	config.priv = priv;
 	config.name = "rmem";
 	config.size = resource_size(mem);
+	priv->total_size = config.size;
+
+	priv->protection_bitmap_bytes = DIV_ROUND_UP(priv->total_size, 8);
+	priv->protection_bitmap = xzalloc(priv->protection_bitmap_bytes);
+
 	config.reg_read = rmem_read;
+	config.reg_write = rmem_write;
+	config.reg_protect = rmem_protect;
 
 	return PTR_ERR_OR_ZERO(nvmem_register(&config));
 }
diff --git a/include/driver.h b/include/driver.h
index e9a919f9bbb5..8e738f076c30 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -431,6 +431,9 @@ int platform_driver_register(struct driver *drv);
 
 int platform_device_register(struct device *new_device);
 
+#define PROTECT_ENABLE_WRITE		0
+#define PROTECT_DISABLE_WRITE		1
+
 struct cdev_operations {
 	/*! Called in response of reading from this device. Required */
 	ssize_t (*read)(struct cdev*, void* buf, size_t count, loff_t offset, ulong flags);
-- 
2.39.5



