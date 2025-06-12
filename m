Delivery-date: Thu, 12 Jun 2025 08:59:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPbu7-006QJg-1r
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 08:59:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPbu6-0007Wb-8l
	for lore@pengutronix.de; Thu, 12 Jun 2025 08:59:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dyw43lj/uJz7T84WGjl+UFg33D7XgM3N7eSlfmcf+x4=; b=oY8SrD6s66F2++lQsFRVgCYdi/
	eoKIhYcDe3rQ2sab4EtcjCRfSRhF9b6EraNh2+EOzk+CrwLWvyYFl2vtPxN8iwOFqbBO9ioktdQyX
	Wbp4Grt/CKuJwknCzfb3+ghZ8lbp2fpIR2ZepTuYVlFMzILUObFH+FB08oTgCKB1lpv61uUERIhPU
	ff0oJi++YwIqOLq9G8K3Pan2SM9wyFIeSvJrXw38cxJf0H052MhgE5Bu+aRW2VlyML7EQWNW+tqkB
	TO2MqBmRRJGpnC77BfVzzTamwJGJoqcZP7OdkzDa2c3CvRDvGq7wTsupBYc/73rLrJPY1dhusfWoD
	6nd1NAgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPbtI-0000000CNEV-0Vod;
	Thu, 12 Jun 2025 06:58:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPbtA-0000000CN8I-0VWT
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 06:58:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt8-0006sl-5S; Thu, 12 Jun 2025 08:58:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt7-0034nT-2l;
	Thu, 12 Jun 2025 08:58:13 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt7-008Uz8-2a;
	Thu, 12 Jun 2025 08:58:13 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 12 Jun 2025 08:58:05 +0200
Message-Id: <20250612065812.2025665-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250612065812.2025665-1-o.rempel@pengutronix.de>
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_235816_216306_0DF97E83 
X-CRM114-Status: GOOD (  20.35  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/9] nvmem: rmem: add write and protect support
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
changes v3:
- use bitmap helpers
changes v2:
- use a bitmap instead of lists of ranges.
---
 drivers/nvmem/rmem.c | 85 ++++++++++++++++++++++++++++++++++++++++++++
 include/driver.h     |  3 ++
 2 files changed, 88 insertions(+)

diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index afa0dd78c8f4..fd742b69861b 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -5,12 +5,15 @@
 
 #include <io.h>
 #include <driver.h>
+#include <linux/bitmap.h>
 #include <linux/nvmem-provider.h>
 #include <init.h>
 
 struct rmem {
 	struct device *dev;
 	const struct resource *mem;
+	unsigned long *protection_bitmap;
+	size_t size;
 };
 
 static int rmem_read(void *context, unsigned int offset,
@@ -21,6 +24,82 @@ static int rmem_read(void *context, unsigned int offset,
 			bytes, offset, 0);
 }
 
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
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int rmem_write(void *context, unsigned int offset, const void *val,
+		      size_t bytes)
+{
+	unsigned long protected_offset;
+	struct rmem *rmem = context;
+
+	protected_offset = find_next_bit(rmem->protection_bitmap,
+					 offset + bytes, offset);
+	if (protected_offset < offset + bytes)
+		return -EROFS;
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
+	if (offset + bytes > rmem->size)
+		return -EINVAL;
+
+	switch (prot_mode) {
+	case PROTECT_DISABLE_WRITE: /* Make read-only */
+		bitmap_set(rmem->protection_bitmap, offset, bytes);
+		break;
+	case PROTECT_ENABLE_WRITE: /* Make writable */
+		bitmap_clear(rmem->protection_bitmap, offset, bytes);
+		break;
+	default:
+		dev_warn(rmem->dev, "%s: Invalid protection mode %d\n",
+			 __func__, prot_mode);
+		ret = -EINVAL;
+		break;
+	}
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
@@ -41,7 +120,13 @@ static int rmem_probe(struct device *dev)
 	config.priv = priv;
 	config.name = "rmem";
 	config.size = resource_size(mem);
+	priv->size = config.size;
+
+	priv->protection_bitmap = bitmap_xzalloc(priv->size);
+
 	config.reg_read = rmem_read;
+	config.reg_write = rmem_write;
+	config.reg_protect = rmem_protect;
 
 	return PTR_ERR_OR_ZERO(nvmem_register(&config));
 }
diff --git a/include/driver.h b/include/driver.h
index dd50a7aa3cce..8b62087a0c42 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -442,6 +442,9 @@ int platform_driver_register(struct driver *drv);
 
 int platform_device_register(struct device *new_device);
 
+#define PROTECT_ENABLE_WRITE		0
+#define PROTECT_DISABLE_WRITE		1
+
 struct cdev_operations {
 	/*! Called in response of reading from this device. Required */
 	ssize_t (*read)(struct cdev*, void* buf, size_t count, loff_t offset, ulong flags);
-- 
2.39.5



