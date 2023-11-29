Delivery-date: Wed, 29 Nov 2023 07:19:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Dv4-00CvJk-0c
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:19:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Dv4-0003DQ-3q
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:19:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g84W7PIOhGzj0JZTcBGjl60bkPfRppaAMxGdgE+kdAs=; b=CqUiJBMpEiKfei5mXd2NDnSMUZ
	Q/Zo/KAg0nSbQ0ygfnlYlQLidwB6rvlYDPgUMoVnQcfvXGiZ4ORhsStAwleigvTjrVFTm1xGTnrY/
	KmmRL2DXGcMew2zW6GIGZsZ0GF6msOQXHcJHit9QDfeAXaSXno6Cw11dCvkB8jgHJ7zY9wn+Zn5c6
	BT/mR98Uc3+o95cTaTQ8YQYavP133w0lqKkPm42g6xFh4D63S9XamLqP8kasSciurYgolthwyhcA+
	Ndoi270SkaqJXGD88Y2KiDHsQ3Ad8cy+ScYdxZUCfwJK/58HglxUMnuTwFAfj7yIh+QgS82s04X4d
	WHHoHAjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dtk-007COD-2O;
	Wed, 29 Nov 2023 06:18:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dte-007CM4-0M
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:18:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-0002qv-MX; Wed, 29 Nov 2023 07:18:04 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-00CLQS-9d; Wed, 29 Nov 2023 07:18:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-007Tac-0g;
	Wed, 29 Nov 2023 07:18:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	str@pengutronix.de,
	lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Nov 2023 07:17:55 +0100
Message-Id: <20231129061758.1781732-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
References: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_221806_150958_2FA5D252 
X-CRM114-Status: GOOD (  14.52  )
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
Subject: [PATCH 1/4] dma: factor out dma map generic implementations into file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding optional debugging code for the DMA mapping
API, move the definition out of the header file into a source file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/Makefile |  1 +
 drivers/dma/map.c    | 32 +++++++++++++++++++++++
 include/dma.h        | 61 ++++++++++++++------------------------------
 3 files changed, 52 insertions(+), 42 deletions(-)
 create mode 100644 drivers/dma/map.c

diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 8e1aac9f6f67..e45476c23f14 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_HAS_DMA)		+= map.o
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
diff --git a/drivers/dma/map.c b/drivers/dma/map.c
new file mode 100644
index 000000000000..270a4899fd05
--- /dev/null
+++ b/drivers/dma/map.c
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <dma.h>
+
+void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
+			     size_t size, enum dma_data_direction dir)
+{
+	void *ptr = dma_to_cpu(dev, address);
+
+	arch_sync_dma_for_cpu(ptr, size, dir);
+}
+
+void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
+					      size_t size, enum dma_data_direction dir)
+{
+	void *ptr = dma_to_cpu(dev, address);
+
+	arch_sync_dma_for_device(ptr, size, dir);
+}
+
+dma_addr_t dma_map_single(struct device *dev, void *ptr,
+					size_t size, enum dma_data_direction dir)
+{
+	arch_sync_dma_for_device(ptr, size, dir);
+
+	return cpu_to_dma(dev, ptr);
+}
+
+void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
+				    size_t size, enum dma_data_direction dir)
+{
+	dma_sync_single_for_cpu(dev, dma_addr, size, dir);
+}
diff --git a/include/dma.h b/include/dma.h
index 2a09b747d1e2..6eef55a7325d 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -68,8 +68,6 @@ static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
 	return phys_to_virt(addr);
 }
 
-#ifndef __PBL__
-/* streaming DMA - implement the below calls to support HAS_DMA */
 #ifndef arch_sync_dma_for_cpu
 void arch_sync_dma_for_cpu(void *vaddr, size_t size,
 			   enum dma_data_direction dir);
@@ -79,57 +77,36 @@ void arch_sync_dma_for_cpu(void *vaddr, size_t size,
 void arch_sync_dma_for_device(void *vaddr, size_t size,
 			      enum dma_data_direction dir);
 #endif
+
+#ifndef __PBL__
+void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
+			     size_t size, enum dma_data_direction dir);
+
+void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
+				size_t size, enum dma_data_direction dir);
 #else
-#ifndef arch_sync_dma_for_cpu
 /*
  * assumes buffers are in coherent/uncached memory, e.g. because
  * MMU is only enabled in barebox_arm_entry which hasn't run yet.
  */
-static inline void arch_sync_dma_for_cpu(void *vaddr, size_t size,
-					 enum dma_data_direction dir)
+static inline void dma_sync_single_for_cpu(void *vaddr, size_t size,
+					   enum dma_data_direction dir)
+{
+	barrier_data(vaddr);
+}
+
+static inline void dma_sync_single_for_device(void *vaddr, size_t size,
+					      enum dma_data_direction dir)
 {
 	barrier_data(vaddr);
 }
 #endif
 
-#ifndef arch_sync_dma_for_device
-static inline void arch_sync_dma_for_device(void *vaddr, size_t size,
-					    enum dma_data_direction dir)
-{
-	barrier_data(vaddr);
-}
-#endif
-#endif
+dma_addr_t dma_map_single(struct device *dev, void *ptr,
+			  size_t size, enum dma_data_direction dir);
 
-static inline void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
-					   size_t size, enum dma_data_direction dir)
-{
-	void *ptr = dma_to_cpu(dev, address);
-
-	arch_sync_dma_for_cpu(ptr, size, dir);
-}
-
-static inline void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
-					      size_t size, enum dma_data_direction dir)
-{
-	void *ptr = dma_to_cpu(dev, address);
-
-	arch_sync_dma_for_device(ptr, size, dir);
-}
-
-static inline dma_addr_t dma_map_single(struct device *dev, void *ptr,
-					size_t size, enum dma_data_direction dir)
-{
-	arch_sync_dma_for_device(ptr, size, dir);
-
-	return cpu_to_dma(dev, ptr);
-}
-
-static inline void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
-				    size_t size, enum dma_data_direction dir)
-{
-	dma_sync_single_for_cpu(dev, dma_addr, size, dir);
-}
+void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
+		      size_t size, enum dma_data_direction dir);
 
 #ifndef dma_alloc_coherent
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
-- 
2.39.2



