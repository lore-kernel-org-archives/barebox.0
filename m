Delivery-date: Sun, 28 Feb 2021 20:10:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSP-0003Vm-DH
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:10:21 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSN-0001Bw-7I
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:10:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jYLBoCV4POgGrP8MhNYkwJ1SfmaA2DTv431tLRilgwQ=; b=IDzJW6rjMIq/zMAbWHHRRnEQy
	NxwmDNO2CREGkOS/bVIOSLORf+JraDOKnqMNqmzSzbrg6sA/AQ83KzyIbnvBMLA31mcsY3resRIp4
	uqhT25jdzsCa6n7QW71q9e44jC/RDplvuaOr4E2LR9MT0YuAjoDKNbJMqFrShc7IuNt3HiDzg//nS
	46nMptR9oJn3Aq2hJpvRh6q80jB5MdIiBUHPUqd8EWz7yNUCWiOXn0ytIXh4F4kwtxIJfQtD0eFnD
	Klsg2IfxdIMegUQ08Dzi1CF7WhxVMZmV3JJJCzKlsuj435OPKkTCTYMocO67NFW/H+JIHHzuFReRY
	vwURsTvPA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRR7-0006BZ-E3; Sun, 28 Feb 2021 19:09:01 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQr-00065T-8u
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:48 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B9F3D6000B;
 Sun, 28 Feb 2021 19:08:42 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:31 +0100
Message-Id: <20210228190836.1451663-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140845_596562_2724214D 
X-CRM114-Status: GOOD (  14.45  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] dma: move dma_map/unmap_single from ARM to common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's nothing ARM specific about these functions. Move them to a
common location, so other arches can use them as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/mmu-common.c | 41 +-------------------------------------
 drivers/dma/Makefile      |  1 +
 drivers/dma/map.c         | 42 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 44 insertions(+), 40 deletions(-)
 create mode 100644 drivers/dma/map.c

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 287622b20399..5cc5138cfa3d 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -10,27 +10,6 @@
 #include <memory.h>
 #include "mmu.h"
 
-
-static inline dma_addr_t cpu_to_dma(struct device_d *dev, unsigned long cpu_addr)
-{
-	dma_addr_t dma_addr = cpu_addr;
-
-	if (dev)
-		dma_addr -= dev->dma_offset;
-
-	return dma_addr;
-}
-
-static inline unsigned long dma_to_cpu(struct device_d *dev, dma_addr_t addr)
-{
-	unsigned long cpu_addr = addr;
-
-	if (dev)
-		cpu_addr += dev->dma_offset;
-
-	return cpu_addr;
-}
-
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
 {
@@ -41,24 +20,6 @@ void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 		dma_inv_range((void *)address, size);
 }
 
-dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
-			  enum dma_data_direction dir)
-{
-	unsigned long addr = (unsigned long)ptr;
-
-	dma_sync_single_for_device(addr, size, dir);
-
-	return cpu_to_dma(dev, addr);
-}
-
-void dma_unmap_single(struct device_d *dev, dma_addr_t dma_addr, size_t size,
-		      enum dma_data_direction dir)
-{
-	unsigned long addr = dma_to_cpu(dev, dma_addr);
-
-	dma_sync_single_for_cpu(addr, size, dir);
-}
-
 void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
 {
 	void *ret;
@@ -108,4 +69,4 @@ static int mmu_init(void)
 
 	return 0;
 }
-mmu_initcall(mmu_init);
\ No newline at end of file
+mmu_initcall(mmu_init);
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 7a3a3b2bd85d..49d6d6573f4f 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
+obj-$(CONFIG_HAS_DMA)		+= map.o
diff --git a/drivers/dma/map.c b/drivers/dma/map.c
new file mode 100644
index 000000000000..a3e1b3b5b527
--- /dev/null
+++ b/drivers/dma/map.c
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2012 Marc Kleine-Budde <mkl@pengutronix.de> */
+
+#include <dma.h>
+
+static inline dma_addr_t cpu_to_dma(struct device_d *dev, unsigned long cpu_addr)
+{
+	dma_addr_t dma_addr = cpu_addr;
+
+	if (dev)
+		dma_addr -= dev->dma_offset;
+
+	return dma_addr;
+}
+
+static inline unsigned long dma_to_cpu(struct device_d *dev, dma_addr_t addr)
+{
+	unsigned long cpu_addr = addr;
+
+	if (dev)
+		cpu_addr += dev->dma_offset;
+
+	return cpu_addr;
+}
+
+dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+			  enum dma_data_direction dir)
+{
+	unsigned long addr = (unsigned long)ptr;
+
+	dma_sync_single_for_device(addr, size, dir);
+
+	return cpu_to_dma(dev, addr);
+}
+
+void dma_unmap_single(struct device_d *dev, dma_addr_t dma_addr, size_t size,
+		      enum dma_data_direction dir)
+{
+	unsigned long addr = dma_to_cpu(dev, dma_addr);
+
+	dma_sync_single_for_cpu(addr, size, dir);
+}
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

