Delivery-date: Thu, 15 Jan 2026 13:06:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM7Y-001aE8-0H
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:06:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM7W-00027D-V4
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:06:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZaawbKP/AmA+wDh0djQIB4hg2V9RQ5grE6lQCN+ZVVg=; b=1gc3dOOCagfMHqq6X/YCKZsUX5
	41goFAzLDEvxNTBSIauFleGQQgHwsOAxlzVmqUMEWsuBNvbzy8fo3UW7nVwOzzWsz3rsDJ/2fZKw2
	H0FJXuksiVjhC4Ypg8K6H1izj6Z+9B2HYl5cHo4QSBHPVtAAZQB8acgQ9bh/Dfq5jHQzY3QzU929P
	LI7mS/dh5WQZ3casi3iHpvaTTU7AHlOcjCSCdz61LJTjD0gPrJUxnF3me4ZNN2f5wCpAqm4q8/xuB
	vZKpuVCsHeN5eucD8gdcPmEYfKLP8cdEmF3xhEge9xHxC+FiGjp9Pel/yVj+z24u4BFbYem9LzEhB
	BZZFd5Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM73-0000000CIEC-1Y3y;
	Thu, 15 Jan 2026 12:06:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM6y-0000000CICS-1RRd
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:06:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM6w-0001zA-Oz; Thu, 15 Jan 2026 13:05:58 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:05:53 +0100
Message-ID: <20260115120557.3433211-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115120557.3433211-1-a.fatoum@barebox.org>
References: <20260115120557.3433211-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040600_380211_EFB0DB59 
X-CRM114-Status: GOOD (  18.85  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] virtio: use DMA coherent APIs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This requires that barebox can actually tell apart DMA coherent devices
from non-coherent ones, so select OF_DMA_COHERENCY where applicable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/virtio/Kconfig       |  1 +
 drivers/virtio/virtio.c      |  4 +++
 drivers/virtio/virtio_ring.c | 62 +++++++-----------------------------
 3 files changed, 16 insertions(+), 51 deletions(-)

diff --git a/drivers/virtio/Kconfig b/drivers/virtio/Kconfig
index ecf66987b3ed..e39ec863f003 100644
--- a/drivers/virtio/Kconfig
+++ b/drivers/virtio/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config VIRTIO
 	bool
+	select OF_DMA_COHERENCY if OF
 	help
 	  This option is selected by any driver which implements the virtio
 	  bus, such as CONFIG_VIRTIO_MMIO, CONFIG_VIRTIO_PCI.
diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index 4abf551a2834..262c09c9fe58 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -138,6 +138,10 @@ int virtio_finalize_features(struct virtio_device *dev)
 			return -ENODEV;
 		}
 
+		/* When this changes in future with support for IOMMUs in
+		 * emulation, make sure to adapt vring_alloc_queue(), so
+		 * it ignores IOMMUs if virtio_has_dma_quirk()
+		 */
 		if (!virtio_has_feature(dev, VIRTIO_F_ACCESS_PLATFORM)) {
 			dev_warn(&dev->dev,
 				 "device must provide VIRTIO_F_ACCESS_PLATFORM\n");
diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 8b6469f54d2a..8953d43c440c 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -23,9 +23,14 @@
 #define vq_info(vq, fmt, ...) \
 	dev_info(&vq->vdev->dev, fmt, ##__VA_ARGS__)
 
+static inline struct device *virtio_dma_dev(const struct virtio_device *vdev)
+{
+	return vdev->dev.parent;
+}
+
 static inline struct device *vring_dma_dev(const struct virtqueue *vq)
 {
-	return vq->vdev->dev.parent;
+	return virtio_dma_dev(vq->vdev);
 }
 
 /* Map one sg entry. */
@@ -330,11 +335,6 @@ static struct virtqueue *__vring_new_virtqueue(unsigned int index,
  * On most systems with virtio, physical addresses match bus addresses,
  * and it _shouldn't_ particularly matter whether we use the DMA API.
  *
- * However, barebox' dma_alloc_coherent doesn't yet take a device pointer
- * as argument, so even for dma-coherent devices, the virtqueue is mapped
- * uncached on ARM. This has considerable impact on the Virt I/O performance,
- * so we really want to avoid using the DMA API if possible for the time being.
- *
  * On some systems, including Xen and any system with a physical device
  * that speaks virtio behind a physical IOMMU, we must use the DMA API
  * for virtio DMA to work at all.
@@ -344,60 +344,20 @@ static struct virtqueue *__vring_new_virtqueue(unsigned int index,
  * ignores the IOMMU, so we must either pretend that the IOMMU isn't
  * there or somehow map everything as the identity.
  *
- * For the time being, we preserve historic behavior and bypass the DMA
- * API.
- *
- * TODO: install a per-device DMA ops structure that does the right thing
- * taking into account all the above quirks, and use the DMA API
- * unconditionally on data path.
+ * As we do not support IOMMUs yet amd dma_alloc_cohrent takes a device
+ * pointer that enables us to do cached DMA, just use the DMA API
+ * unconditionally for now.
  */
-
-static bool vring_use_dma_api(const struct virtio_device *vdev)
-{
-	return !virtio_has_dma_quirk(vdev);
-}
-
 static void *vring_alloc_queue(struct virtio_device *vdev,
 			       size_t size, dma_addr_t *dma_handle)
 {
-	if (vring_use_dma_api(vdev)) {
-		return dma_alloc_coherent(DMA_DEVICE_BROKEN, size, dma_handle);
-	} else {
-		void *queue = memalign(PAGE_SIZE, PAGE_ALIGN(size));
-
-		if (queue) {
-			phys_addr_t phys_addr = virt_to_phys(queue);
-			*dma_handle = (dma_addr_t)phys_addr;
-
-			memset(queue, 0x00, PAGE_ALIGN(size));
-
-			/*
-			 * Sanity check: make sure we dind't truncate
-			 * the address.  The only arches I can find that
-			 * have 64-bit phys_addr_t but 32-bit dma_addr_t
-			 * are certain non-highmem MIPS and x86
-			 * configurations, but these configurations
-			 * should never allocate physical pages above 32
-			 * bits, so this is fine.  Just in case, throw a
-			 * warning and abort if we end up with an
-			 * unrepresentable address.
-			 */
-			if (WARN_ON_ONCE(*dma_handle != phys_addr)) {
-				free(queue);
-				return NULL;
-			}
-		}
-		return queue;
-	}
+	return dma_alloc_coherent(virtio_dma_dev(vdev), size, dma_handle);
 }
 
 static void vring_free_queue(struct virtio_device *vdev,
 			     size_t size, void *queue, dma_addr_t dma_handle)
 {
-	if (vring_use_dma_api(vdev))
-		dma_free_coherent(DMA_DEVICE_BROKEN, queue, dma_handle, size);
-	else
-		free(queue);
+	dma_free_coherent(virtio_dma_dev(vdev), queue, dma_handle, size);
 }
 
 struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
-- 
2.47.3



