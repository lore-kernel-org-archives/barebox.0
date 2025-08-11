Delivery-date: Mon, 11 Aug 2025 15:30:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulSbj-009Lkj-3C
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 15:30:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulSbj-00078p-8d
	for lore@pengutronix.de; Mon, 11 Aug 2025 15:30:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1bKr3MSovV43seQL8waUXVecy5BNDPkEYjDkjSjWcM4=; b=oFGqv2cRyk60yaBHTk9SNko1SZ
	Lm4ny3jWUgDnkWJ0JjG2fYcndFQzN4T4gvGLjyG7t5pXYginDSYNrxXswJzXbyTGe1kBs2+VPTHBE
	qdb6yKqSn0juUm2SEkn/bJknVGWSLaCtRxNb7PStcGN8pRrIAGGxZ/iGGEanyLPGdum2RYca0PX/p
	rsZ3LnUiW3VyZiJEOphsowbbKsgvnvFkrAUiJ+2iW+uAhafZo73z7GtJ16pu9P0TPVNvoN8uQwIBB
	F05UlgDC3jhS3BjlwUtcbqaJIJcbJUqCRDZeiKYwEyTebeoJQH5b34LisKxFN8WLuXl975VK8tJao
	+tt2WBTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSbV-00000007pLR-0FDt;
	Mon, 11 Aug 2025 13:30:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dVr-2VmM
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdb-0004WP-7e; Mon, 11 Aug 2025 14:28:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:42 +0200
Message-Id: <20250811122824.1667791-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052830_651603_819374E5 
X-CRM114-Status: GOOD (  24.79  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 02/44] driver: introduce common struct bobject
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not have Linux kobject with attributes in barebox, but we do
have something roughly equivalent: struct device and device parameters,
which enables us to do things like eth0.mode=dhcp on the shell.

The parameter API is fairly expressive and would be very useful for
transferring data between commands. In preparation for doing that,
introduce struct bobject, which will allow device-less parameters in
the future. We keep it in a union with the name, so we do not have to
patch all instances of dev->name across the tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/driver.c | 32 --------------------------------
 include/bobject.h     | 26 ++++++++++++++++++++++++++
 include/device.h      |  9 +++++++--
 lib/Makefile          |  1 +
 lib/bobject.c         | 36 ++++++++++++++++++++++++++++++++++++
 5 files changed, 70 insertions(+), 34 deletions(-)
 create mode 100644 include/bobject.h
 create mode 100644 lib/bobject.c

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 21bf88a74e50..4f3ae4909e07 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -621,38 +621,6 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 	return generic_memmap_rw(cdev, map, flags);
 }
 
-/**
- * dev_set_name - set a device name
- * @dev: device
- * @fmt: format string for the device's name
- *
- * NOTE: This function expects dev->name to be free()-able, so extra
- * precautions needs to be taken when mixing its usage with manual
- * assignement of device.name.
- */
-int dev_set_name(struct device *dev, const char *fmt, ...)
-{
-	va_list vargs;
-	int err;
-	/*
-	 * Save old pointer in case we are overriding already set name
-	 */
-	char *oldname = dev->name;
-
-	va_start(vargs, fmt);
-	err = vasprintf(&dev->name, fmt, vargs);
-	va_end(vargs);
-
-	/*
-	 * Free old pointer, we do this after vasprintf call in case
-	 * old device name was in one of vargs
-	 */
-	free(oldname);
-
-	return WARN_ON(err < 0) ? err : 0;
-}
-EXPORT_SYMBOL_GPL(dev_set_name);
-
 /**
  * dev_add_alias - add alias for device
  * @dev: device
diff --git a/include/bobject.h b/include/bobject.h
new file mode 100644
index 000000000000..783ab64569dc
--- /dev/null
+++ b/include/bobject.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __BOBJECT_H_
+#define __BOBJECT_H_
+
+#include <linux/compiler.h>
+
+/**
+ * struct bobject - barebox object
+ * @name: name of object (must be first member)
+ */
+struct bobject {
+	char			*name;
+};
+
+struct device;
+
+typedef union {
+	struct bobject *bobj;
+	struct device *dev;
+} bobject_t __attribute__((transparent_union));
+
+
+__printf(2, 3) int bobject_set_name(bobject_t bobj, const char *name, ...);
+
+#endif
diff --git a/include/device.h b/include/device.h
index 7ef807f7d6b1..8b65693d9672 100644
--- a/include/device.h
+++ b/include/device.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 #include <linux/list.h>
 #include <init.h>
+#include <bobject.h>
 
 enum dev_dma_coherence {
 	DEV_DMA_COHERENCE_DEFAULT = 0,
@@ -26,6 +27,7 @@ struct of_device_id;
 
 /**
  * struct device - The basic device structure
+ * @bobject: base class barebox object
  * @name: This member is used to match with a driver. This is a
  *        descriptive name and could be MPC5XXX_ether or imx_serial.
  *        Unless absolutely necessary, should not be modified
@@ -63,7 +65,10 @@ struct of_device_id;
  * @deferred_probe_reason: If a driver probe is deferred, this stores the last error.
  */
 struct device {
-	char *name;
+	union {
+		struct bobject bobject;
+		char *name;
+	};
 
 	char *unique_name;
 	int id;
@@ -187,7 +192,7 @@ static inline const char *dev_name(const struct device *dev)
 	return dev_id(dev) ?: dev->name;
 }
 
-int dev_set_name(struct device *dev, const char *fmt, ...) __printf(2, 3);
+#define dev_set_name bobject_set_name
 
 static inline bool dev_is_dma_coherent(struct device *dev)
 {
diff --git a/lib/Makefile b/lib/Makefile
index 9592ccb68312..13f1de142008 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-y			+= bobject.o
 obj-y			+= bcd.o
 obj-y			+= term.o
 obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
diff --git a/lib/bobject.c b/lib/bobject.c
new file mode 100644
index 000000000000..a770993b90bd
--- /dev/null
+++ b/lib/bobject.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <bobject.h>
+#include <stdio.h>
+
+/**
+ * bobject_set_name - set a barebox object's name
+ * @bobj: barebox object or device
+ * @fmt: format string for the object's name
+ *
+ * NOTE: This function expects bobj->name to be free()-able, so extra
+ * precautions needs to be taken when mixing its usage with manual
+ * assignement of bobject.name.
+ */
+int bobject_set_name(bobject_t bobj, const char *fmt, ...)
+{
+	va_list vargs;
+	int err;
+	/*
+	 * Save old pointer in case we are overriding already set name
+	 */
+	char *oldname = bobj.bobj->name;
+
+	va_start(vargs, fmt);
+	err = vasprintf(&bobj.bobj->name, fmt, vargs);
+	va_end(vargs);
+
+	/*
+	 * Free old pointer, we do this after vasprintf call in case
+	 * old device name was in one of vargs
+	 */
+	free(oldname);
+
+	return WARN_ON(err < 0) ? err : 0;
+}
+EXPORT_SYMBOL_GPL(bobject_set_name);
-- 
2.39.5



