Delivery-date: Thu, 04 Mar 2021 00:12:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHafM-0000Je-IL
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 00:12:28 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHafK-0008Bu-NS
	for lore@pengutronix.de; Thu, 04 Mar 2021 00:12:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iPHPsbd4G0H0wlaLrGnr5mZR7WXCKge8sTudbgHKwvk=; b=NDXGvrnAga5tY3o+4PQqf1vrR
	Owk+vCkHuNYQwmPGh5GnR6dVoayIX9CT7A3z3HIb4SokRzDYLsJ+/qJ3/tSTsyrk+aT9Pilhrdj6Z
	71akIKEQmNpKiUHfR4GRGUhc/8fh5jgFMJ0qy+NbCoBnxwOS3CP5fZEUaNj8ZEB7uvnzCz9SaIhAN
	8nGqcgjIFj9XOqt1AR62ZumQIUBDtp5MEmyYXQAn20BI/NWmPQLoT4tvnFAxB9fJpEtSaZgxndYrL
	oliBeMH6nOflrrJOeIhIn42hPNoJGMN+s5xKTpmuoAU0JnfeyEwjw/bEB4UyX6VA9IdDNiQD49gHE
	JT1UEa2SQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHacr-006siL-C0; Wed, 03 Mar 2021 23:09:55 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHU7M-005YNn-TZ
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 16:13:00 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 0297D100007;
 Wed,  3 Mar 2021 16:12:53 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: sha@pengutronix.de,
	barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  3 Mar 2021 17:12:47 +0100
Message-Id: <20210303161247.3691857-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-4-ahmad@a3f.at>
References: <20210228190836.1451663-4-ahmad@a3f.at>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] dma: move dma_map/unmap_single from ARM to common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's nothing ARM specific about these functions. Move them to a
common location, so other arches can use them as well.

This also fixes a bug on ARM MMU=n configurations:
Previously these two functions these functions only respected
dma-ranges translation when compiled with MMU support. DMA address
translation is applicable regardless of CPU use of MMU though.
Now, dma-ranges should be respected unconditionally.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Sascha, please replace the original patch with this one.
---
 arch/arm/cpu/mmu-common.c      | 41 +--------------------------------
 arch/arm/include/asm/dma.h     | 11 ---------
 arch/sandbox/include/asm/dma.h | 11 ---------
 drivers/dma/Makefile           |  1 +
 drivers/dma/map.c              | 42 ++++++++++++++++++++++++++++++++++
 5 files changed, 44 insertions(+), 62 deletions(-)
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
diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index 08a9fc43b7fc..226b1c146479 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -32,17 +32,6 @@ static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 	free(mem);
 }
 
-static inline dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
-					enum dma_data_direction dir)
-{
-	return (dma_addr_t)ptr;
-}
-
-static inline void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
-				    enum dma_data_direction dir)
-{
-}
-
 static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 					   enum dma_data_direction dir)
 {
diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
index 5e72d8e7df2d..34c0fc5190f8 100644
--- a/arch/sandbox/include/asm/dma.h
+++ b/arch/sandbox/include/asm/dma.h
@@ -40,17 +40,6 @@ static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 	free(mem);
 }
 
-static inline dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
-					enum dma_data_direction dir)
-{
-	return (dma_addr_t)ptr;
-}
-
-static inline void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
-				    enum dma_data_direction dir)
-{
-}
-
 static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 					   enum dma_data_direction dir)
 {
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

