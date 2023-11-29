Delivery-date: Wed, 29 Nov 2023 07:19:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Dv7-00CvKQ-1m
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:19:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Dv7-0003Ez-3u
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:19:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ZR48+Z0AEDiRnkan1BfHIQzVb0ph5nlgO7M8AZ2FGM=; b=fcdFhdf4GTg7Ao0TSmFe0Hi9+d
	OESf1x5mMCopDmp1HbpjPi24i+pkOgj+Sv57rDvC6DjcAO5Up5Atm+C9/Qb2/mk2mYvgVArBLvg4o
	ADFU6j1M+KqQlzBzfBsa0CQmIoy26LvuEnYLROUe3ePwsi2YpQadV+QQSzStq+BckE2Lk38PPZahD
	MsTH1r4fxGfrSnJf7K5eMXDwMc6qEFquG8GblnaZDRTMh779uy91LMOReNSU54Pt516S9wml/Gg7K
	lN+cIH5gnjNjDKOzORQGeU0j8FlvaJ2zaPSyOajmuDQbQWXF8TlcjQV6pDKorFNzLF+D4ueAqx29+
	8ghEFLMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dtm-007COr-0G;
	Wed, 29 Nov 2023 06:18:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dte-007CM5-0M
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:18:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-0002qw-O9; Wed, 29 Nov 2023 07:18:04 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-00CLQV-BD; Wed, 29 Nov 2023 07:18:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-007Tac-0p;
	Wed, 29 Nov 2023 07:18:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	str@pengutronix.de,
	lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Nov 2023 07:17:56 +0100
Message-Id: <20231129061758.1781732-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
References: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_221806_308657_36577552 
X-CRM114-Status: GOOD (  27.18  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] dma: add DMA API debugging support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For DMA_FROM_DEVICE, calling dma_sync_single_for_cpu
before arch_sync_dma_for_device has been called is wrong:

  - Memory region is dirty in CPU cache
  - Device writes packet into region
  - CPU cache lines are written back
  - Buffer memory is corrupted

In order to spot such issues, let's add a new CONFIG_DMA_API_DEBUG
that will warn about mismatch in order.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig       |  14 ++++
 drivers/dma/Makefile |   1 +
 drivers/dma/debug.c  | 183 +++++++++++++++++++++++++++++++++++++++++++
 drivers/dma/debug.h  |  56 +++++++++++++
 drivers/dma/map.c    |  13 ++-
 5 files changed, 266 insertions(+), 1 deletion(-)
 create mode 100644 drivers/dma/debug.c
 create mode 100644 drivers/dma/debug.h

diff --git a/common/Kconfig b/common/Kconfig
index 8bd8fa8df655..c8c23a8e03a2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1690,6 +1690,20 @@ config DEBUG_PROBES
 	  Most consoles do not implement a remove callback to remain operable until
 	  the very end. Consoles using DMA, however, must be removed.
 
+config DMA_API_DEBUG
+	bool "Enable debugging of DMA-API usage"
+	depends on HAS_DMA
+	help
+	  Enable this option to debug the use of the DMA API by device drivers.
+	  With this option you will be able to detect common bugs in device
+	  drivers like double-freeing of DMA mappings or freeing mappings that
+	  were never allocated.
+
+	  This option causes a performance degradation.  Use only if you want to
+	  debug device drivers and dma interactions.
+
+	  If unsure, say N.
+
 config PBL_BREAK
 	bool "Execute software break on pbl start"
 	depends on ARM && (!CPU_32v4T && !ARCH_TEGRA)
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index e45476c23f14..b55c16e768d5 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_HAS_DMA)		+= map.o
+obj-$(CONFIG_DMA_API_DEBUG)	+= debug.o
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
new file mode 100644
index 000000000000..b3bfbff9b2f5
--- /dev/null
+++ b/drivers/dma/debug.c
@@ -0,0 +1,183 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <dma.h>
+#include <linux/list.h>
+#include "debug.h"
+
+static LIST_HEAD(dma_mappings);
+
+struct dma_debug_entry {
+	struct list_head list;
+	struct device    *dev;
+	dma_addr_t       dev_addr;
+	size_t           size;
+	int              direction;
+};
+
+static const char *dir2name[] = {
+	[DMA_BIDIRECTIONAL] = "bidirectional",
+	[DMA_TO_DEVICE] = "to-device",
+	[DMA_FROM_DEVICE] = "from-device",
+	[DMA_NONE] = "none",
+};
+
+#define dma_dev_printf(level, args...) do {	\
+	if (level > LOGLEVEL)			\
+		break;				\
+	dev_printf((level), args);		\
+	if ((level) <= MSG_WARNING)		\
+		dump_stack();			\
+} while (0)
+
+#define dma_dev_warn(args...)	dma_dev_printf(MSG_WARNING, args)
+
+static void dma_printf(int level, struct dma_debug_entry *entry,
+		       const char *fmt, ...)
+{
+	struct va_format vaf;
+	va_list va;
+
+	va_start(va, fmt);
+
+	vaf.fmt = fmt;
+	vaf.va = &va;
+
+	dma_dev_printf(level, entry->dev, "%s mapping 0x%llx+0x%zx: %pV\n",
+		       dir2name[(entry)->direction], (u64)(entry)->dev_addr,
+		       (entry)->size, &vaf);
+
+	va_end(va);
+}
+
+#define dma_warn(args...)	dma_printf(MSG_WARNING, args)
+#define dma_debug(args...)	dma_printf(MSG_DEBUG, args)
+
+static inline int region_contains(struct dma_debug_entry *entry,
+				  dma_addr_t buf_start, size_t buf_size)
+{
+	dma_addr_t dev_addr_end = entry->dev_addr + entry->size - 1;
+	dma_addr_t buf_end = buf_start + buf_size - 1;
+
+	/* Is the buffer completely within the mapping? */
+	if (entry->dev_addr <= buf_start && dev_addr_end >= buf_end)
+		return 1;
+
+	/* Does the buffer partially overlap the mapping? */
+	if (entry->dev_addr <= buf_end   && dev_addr_end >= buf_start)
+		return -1;
+
+	return 0;
+}
+
+static struct dma_debug_entry *
+dma_debug_entry_find(struct device *dev, dma_addr_t dev_addr, size_t size)
+{
+	struct dma_debug_entry *entry;
+
+	/*
+	 * DMA functions should be called with a device argument to support
+	 * non-1:1 device mappings.
+	 */
+	if (!dev)
+		dma_dev_warn(NULL, "unportable NULL device passed with buffer 0x%llx+0x%zx!\n",
+			     (u64)dev_addr, size);
+
+	list_for_each_entry(entry, &dma_mappings, list) {
+		if (dev != entry->dev)
+			continue;
+
+		switch (region_contains(entry, dev_addr, size)) {
+		case 1:
+			return entry;
+		case -1:
+			/* The same device shouldn't have two mappings for the same address */
+			dma_warn(entry, "unexpected partial overlap looking for 0x%llx+0x%zx!\n",
+				 (u64)dev_addr, size);
+			fallthrough;
+		case 0:
+			continue;
+		}
+	}
+
+	return NULL;
+}
+
+void debug_dma_map(struct device *dev, void *addr,
+			  size_t size,
+			  int direction, dma_addr_t dev_addr)
+{
+	struct dma_debug_entry *entry;
+
+	entry = dma_debug_entry_find(dev, dev_addr, size);
+	if (entry) {
+		/* The same device shouldn't have two mappings for the same address */
+		dma_warn(entry, "duplicate mapping\n");
+		return;
+	}
+
+	entry = xmalloc(sizeof(*entry));
+
+	entry->dev = dev;
+	entry->dev_addr = dev_addr;
+	entry->size = size;
+	entry->direction = direction;
+
+	list_add(&entry->list, &dma_mappings);
+
+	dma_debug(entry, "allocated\n");
+}
+
+void debug_dma_unmap(struct device *dev, dma_addr_t addr,
+		     size_t size, int direction)
+{
+	struct dma_debug_entry *entry;
+
+	entry = dma_debug_entry_find(dev, addr, size);
+	if (!entry) {
+		/* Potential double free */
+		dma_dev_warn(dev, "Unmapping non-mapped %s buffer 0x%llx+0x%zx!\n",
+			     dir2name[direction], (u64)addr, size);
+		return;
+	}
+
+	/* Mismatched size or direction may result in memory corruption */
+	if (entry->size != size)
+		dma_warn(entry, "mismatch unmapping 0x%zx bytes\n", size);
+	if (entry->direction != direction)
+		dma_warn(entry, "mismatch unmapping %s\n",
+			 dir2name[direction]);
+
+	dma_debug(entry, "deallocating\n");
+	list_del(&entry->list);
+	free(entry);
+}
+
+void debug_dma_sync_single_for_cpu(struct device *dev,
+				   dma_addr_t dma_handle, size_t size,
+				   int direction)
+{
+	struct dma_debug_entry *entry;
+
+	entry = dma_debug_entry_find(dev, dma_handle, size);
+	if (!entry)
+		dma_dev_warn(dev, "sync for CPU of never-mapped %s buffer 0x%llx+0x%zx!\n",
+			     dir2name[direction], (u64)dma_handle, size);
+}
+
+void debug_dma_sync_single_for_device(struct device *dev,
+				      dma_addr_t dma_handle,
+				      size_t size, int direction)
+{
+	struct dma_debug_entry *entry;
+
+	/*
+	 * If dma_map_single was omitted, CPU cache may contain dirty cache lines
+	 * for a buffer used for DMA. These lines may be evicted and written back
+	 * after device DMA and before consumption by CPU, resulting in memory
+	 * corruption
+	 */
+	entry = dma_debug_entry_find(dev, dma_handle, size);
+	if (!entry)
+		dma_dev_warn(dev, "Syncing for device of never-mapped %s buffer 0x%llx+0x%zx!\n",
+			     dir2name[direction], (u64)dma_handle, size);
+}
diff --git a/drivers/dma/debug.h b/drivers/dma/debug.h
new file mode 100644
index 000000000000..020bb5c19678
--- /dev/null
+++ b/drivers/dma/debug.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2008 Advanced Micro Devices, Inc.
+ *
+ * Author: Joerg Roedel <joerg.roedel@amd.com>
+ */
+
+#ifndef _KERNEL_DMA_DEBUG_H
+#define _KERNEL_DMA_DEBUG_H
+
+#include <linux/types.h>
+
+struct device;
+
+#ifdef CONFIG_DMA_API_DEBUG
+extern void debug_dma_map(struct device *dev, void *addr,
+			  size_t size,
+			  int direction, dma_addr_t dma_addr);
+
+extern void debug_dma_unmap(struct device *dev, dma_addr_t addr,
+			    size_t size, int direction);
+
+extern void debug_dma_sync_single_for_cpu(struct device *dev,
+					  dma_addr_t dma_handle, size_t size,
+					  int direction);
+
+extern void debug_dma_sync_single_for_device(struct device *dev,
+					     dma_addr_t dma_handle,
+					     size_t size, int direction);
+
+#else /* CONFIG_DMA_API_DEBUG */
+static inline void debug_dma_map(struct device *dev, void *addr,
+				 size_t size,
+				 int direction, dma_addr_t dma_addr)
+{
+}
+
+static inline void debug_dma_unmap(struct device *dev, dma_addr_t addr,
+				   size_t size, int direction)
+{
+}
+
+static inline void debug_dma_sync_single_for_cpu(struct device *dev,
+						 dma_addr_t dma_handle,
+						 size_t size, int direction)
+{
+}
+
+static inline void debug_dma_sync_single_for_device(struct device *dev,
+						    dma_addr_t dma_handle,
+						    size_t size, int direction)
+{
+}
+
+#endif /* CONFIG_DMA_API_DEBUG */
+#endif /* _KERNEL_DMA_DEBUG_H */
diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index 270a4899fd05..e320f6aad4ac 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -1,11 +1,14 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 #include <dma.h>
+#include "debug.h"
 
 void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 			     size_t size, enum dma_data_direction dir)
 {
 	void *ptr = dma_to_cpu(dev, address);
 
+	debug_dma_sync_single_for_cpu(dev, address, size, dir);
+
 	arch_sync_dma_for_cpu(ptr, size, dir);
 }
 
@@ -14,19 +17,27 @@ void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
 {
 	void *ptr = dma_to_cpu(dev, address);
 
+	debug_dma_sync_single_for_device(dev, address, size, dir);
+
 	arch_sync_dma_for_device(ptr, size, dir);
 }
 
 dma_addr_t dma_map_single(struct device *dev, void *ptr,
 					size_t size, enum dma_data_direction dir)
 {
+	dma_addr_t dma_addr = cpu_to_dma(dev, ptr);
+
+	debug_dma_map(dev, ptr, size, dir, dma_addr);
+
 	arch_sync_dma_for_device(ptr, size, dir);
 
-	return cpu_to_dma(dev, ptr);
+	return dma_addr;
 }
 
 void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
 				    size_t size, enum dma_data_direction dir)
 {
 	dma_sync_single_for_cpu(dev, dma_addr, size, dir);
+
+	debug_dma_unmap(dev, dma_addr, size, dir);
 }
-- 
2.39.2



