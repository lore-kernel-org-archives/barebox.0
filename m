Delivery-date: Tue, 10 Sep 2024 13:49:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzN1-0038uq-0k
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 13:49:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzMz-0001Qw-UY
	for lore@pengutronix.de; Tue, 10 Sep 2024 13:49:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T6gKkuip0Zn1GnxUJWqXdTRixjlSQlMa9wxBTFMq0Jc=; b=pTjthK6V5bjJacE3P+Sxuq7nJ4
	/w5evgnkiuLHs+S3wef9CkJTSYjoF7uWNlYfgrNUHwzYVwtCyv00W5jr8ft+Y14kpu8050KL8qG7P
	/HO3WVl6s5ByzeLlyCEY6HGFjjdJE53sGPjwbJO3Wu3AnM34CGpsnXOlnD19yQ9cgmuqqzY78PRyq
	BWuHs64RWN38ImLTWLIXcCSgKWo6F15L8wYuhhhrShbqMnagZWvD/0/rjuX7lFyWzxUEbrCcQBE0o
	nJg807E5wBHpkUst3E6YALM5Ds7ekWXQLeIjbA7EpIe2lgjXV8+Ts6HK4vGqXzImFvZUCuhh19IDi
	yYk+3QlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMS-00000005RA8-2ppM;
	Tue, 10 Sep 2024 11:48:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMK-00000005R6V-3l7x
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 11:48:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMJ-0000q8-8l; Tue, 10 Sep 2024 13:48:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-006sxC-Rt; Tue, 10 Sep 2024 13:48:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-00CWph-12;
	Tue, 10 Sep 2024 13:48:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 13:48:31 +0200
Message-Id: <20240910114832.2984195-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
References: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_044837_013542_8CF7B8C4 
X-CRM114-Status: GOOD (  22.71  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] dma: debug: poison DMA buffers with KASAN while owned by device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Accessing a DMA buffer while owned by device is racy: The device
may have not written any data yet and in the case it has written data,
it may be hidden by stale cache lines caused by CPU's speculation in
the meantime. Only after sync'ing the buffer to the CPU are caches, if
any, invalidated, so the CPU sees what was written by the device.

It's therefore sensible to poison access to a buffer while owned by the
device and only unpoison it after ownership has been transferred to the
CPU.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/debug.c        | 60 ++++++++++++++++++++++++++++++++++++--
 include/linux/kasan.h      |  2 +-
 lib/kasan/generic_report.c |  4 +--
 3 files changed, 61 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
index 7bf0be1e1ff3..fd279be5be02 100644
--- a/drivers/dma/debug.c
+++ b/drivers/dma/debug.c
@@ -3,14 +3,36 @@
 #include <dma.h>
 #include <linux/list.h>
 #include <linux/printk.h>
+#include <linux/align.h>
+#include <linux/kasan.h>
 #include "debug.h"
 
+/**
+ * DMA_KASAN_ALIGN() - Align to KASAN granule size
+ * @x:	value to be aligned
+ *
+ * kasan_unpoison_shadow will poison the bytes after it when the size
+ * is not a multiple of the granule size. We thus always align the sizes
+ * here. This allows unpoisoning a smaller buffer overlapping a bigger
+ * buffer previously unpoisoned without KASAN detecting an out-of-bounds
+ * memory access.
+ *
+ * A more accurate reflection of the hardware would be to align to
+ * DMA_ALIGNMENT. We intentionally don't do this here as choosing the lowest
+ * possible alignment allows us to catch more issues that may not pop up
+ * when testing on platforms with higher DMA_ALIGNMENT.
+ *
+ * @returns the value after alignment
+ */
+#define DMA_KASAN_ALIGN(x)	ALIGN(x, 1 << KASAN_SHADOW_SCALE_SHIFT)
+
 static LIST_HEAD(dma_mappings);
 
 struct dma_debug_entry {
 	struct list_head list;
 	struct device    *dev;
 	dma_addr_t       dev_addr;
+	const void       *cpu_addr;
 	size_t           size;
 	int              direction;
 };
@@ -103,6 +125,17 @@ dma_debug_entry_find(struct device *dev, dma_addr_t dev_addr, size_t size)
 	return NULL;
 }
 
+static const void *dma_debug_entry_cpu_addr(struct dma_debug_entry *entry,
+				      dma_addr_t dma_handle)
+{
+	ptrdiff_t offset = dma_handle - entry->dev_addr;
+
+	if (offset < 0)
+		return NULL;
+
+	return entry->cpu_addr + offset;
+}
+
 void debug_dma_map(struct device *dev, void *addr,
 			  size_t size,
 			  int direction, dma_addr_t dev_addr)
@@ -120,6 +153,7 @@ void debug_dma_map(struct device *dev, void *addr,
 
 	entry->dev = dev;
 	entry->dev_addr = dev_addr;
+	entry->cpu_addr = addr;
 	entry->size = size;
 	entry->direction = direction;
 
@@ -130,12 +164,15 @@ void debug_dma_map(struct device *dev, void *addr,
 	if (!IS_ALIGNED(dev_addr, DMA_ALIGNMENT))
 		dma_dev_warn(dev, "Mapping insufficiently aligned %s buffer 0x%llx+0x%zx: %u bytes required!\n",
 			     dir2name[direction], (u64)dev_addr, size, DMA_ALIGNMENT);
+
+	kasan_poison_shadow(addr, DMA_KASAN_ALIGN(size), KASAN_DMA_DEV_MAPPED);
 }
 
 void debug_dma_unmap(struct device *dev, dma_addr_t addr,
 		     size_t size, int direction)
 {
 	struct dma_debug_entry *entry;
+	const void *cpu_addr;
 
 	entry = dma_debug_entry_find(dev, addr, size);
 	if (!entry) {
@@ -153,6 +190,9 @@ void debug_dma_unmap(struct device *dev, dma_addr_t addr,
 			 dir2name[direction]);
 
 	dma_debug(entry, "deallocating\n");
+	cpu_addr = dma_debug_entry_cpu_addr(entry, addr);
+	if (cpu_addr)
+		kasan_unpoison_shadow(cpu_addr, DMA_KASAN_ALIGN(size));
 	list_del(&entry->list);
 	free(entry);
 }
@@ -162,11 +202,19 @@ void debug_dma_sync_single_for_cpu(struct device *dev,
 				   int direction)
 {
 	struct dma_debug_entry *entry;
+	const void *cpu_addr;
 
 	entry = dma_debug_entry_find(dev, dma_handle, size);
-	if (!entry)
+	if (!entry) {
 		dma_dev_warn(dev, "sync for CPU of never-mapped %s buffer 0x%llx+0x%zx!\n",
 			     dir2name[direction], (u64)dma_handle, size);
+		return;
+	}
+
+	cpu_addr = dma_debug_entry_cpu_addr(entry, dma_handle);
+	if (cpu_addr) {
+		kasan_unpoison_shadow(cpu_addr, DMA_KASAN_ALIGN(size));
+	}
 }
 
 void debug_dma_sync_single_for_device(struct device *dev,
@@ -174,6 +222,7 @@ void debug_dma_sync_single_for_device(struct device *dev,
 				      size_t size, int direction)
 {
 	struct dma_debug_entry *entry;
+	const void *cpu_addr;
 
 	/*
 	 * If dma_map_single was omitted, CPU cache may contain dirty cache lines
@@ -182,7 +231,14 @@ void debug_dma_sync_single_for_device(struct device *dev,
 	 * corruption
 	 */
 	entry = dma_debug_entry_find(dev, dma_handle, size);
-	if (!entry)
+	if (!entry) {
 		dma_dev_warn(dev, "Syncing for device of never-mapped %s buffer 0x%llx+0x%zx!\n",
 			     dir2name[direction], (u64)dma_handle, size);
+		return;
+	}
+
+	cpu_addr = dma_debug_entry_cpu_addr(entry, dma_handle);
+	if (cpu_addr) {
+		kasan_poison_shadow(cpu_addr, DMA_KASAN_ALIGN(size), KASAN_DMA_DEV_MAPPED);
+	}
 }
diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index 7812e0fa805b..2dea347c40ae 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -25,7 +25,7 @@
 #define KASAN_KMALLOC_FREETRACK 0xFA  /* object was freed and has free track set */
 
 #define KASAN_GLOBAL_REDZONE    0xF9  /* redzone for global variable */
-#define KASAN_VMALLOC_INVALID   0xF8  /* unallocated space in vmapped page */
+#define KASAN_DMA_DEV_MAPPED    0xF8  /* DMA-mapped buffer currently owned by device */
 
 /*
  * Stack redzone shadow values
diff --git a/lib/kasan/generic_report.c b/lib/kasan/generic_report.c
index 1cc5829e8d7f..83d55b12c070 100644
--- a/lib/kasan/generic_report.c
+++ b/lib/kasan/generic_report.c
@@ -74,8 +74,8 @@ static const char *get_shadow_bug_type(struct kasan_access_info *info)
 	case KASAN_ALLOCA_RIGHT:
 		bug_type = "alloca-out-of-bounds";
 		break;
-	case KASAN_VMALLOC_INVALID:
-		bug_type = "vmalloc-out-of-bounds";
+	case KASAN_DMA_DEV_MAPPED:
+		bug_type = "dma-mapped-to-device";
 		break;
 	}
 
-- 
2.39.2



