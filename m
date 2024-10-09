Delivery-date: Wed, 09 Oct 2024 08:11:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPv1-0027gg-01
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 08:11:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPv0-0007aq-7L
	for lore@pengutronix.de; Wed, 09 Oct 2024 08:11:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OY1lH7tCreWRoXQg2qx8MnW0pHTfWVY/s6cuEdAkulk=; b=PC3rYYpkm8mIp5pC6sAQOvXaZ7
	2736CoUsnK7yyHaXXiCcOBYUP2XJmUspdvDupG/J/Wj+yL4LDkCOzxtn5VKPKDEaTQ1knfYpjz/PN
	HJIZpn6RDNmcPbRfI0nYwsNwkVDpKpyz7AFLvu/6G0kCKvKAGb/85IkFyzLWrQfEiUihw1w7YiPBk
	wVpQCohopBG1kZ1/BcHRG7/ob4KwXFOacHxGEezXlOwVo9k9UpZlTn/5LKoTlgNfR4rhn3dh1kOqO
	9n8DTXYn7tx+2/XCgLgZdq5Hg8jHLgF68Akb5g/jagL7uIB0SQV4iB1SVtGAry4CNS1KoRTG8kjdz
	W6WkMYYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPuX-000000083Gh-2WlG;
	Wed, 09 Oct 2024 06:11:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPpQ-000000082N5-2qyq
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 06:05:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpH-0006vP-D5; Wed, 09 Oct 2024 08:05:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpH-000Xa5-0I; Wed, 09 Oct 2024 08:05:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-00HI6s-2z;
	Wed, 09 Oct 2024 08:05:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 08:05:11 +0200
Message-Id: <20241009060511.4121157-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
References: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_230544_759589_4BF70AA0 
X-CRM114-Status: GOOD (  19.33  )
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
Subject: [PATCH 5/5] virtio: don't use DMA API unless required
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have no Virt I/O drivers that make use of the streaming DMA API, but
the Virt queues are currently always allocated using the coherent DMA
API.

The coherent DMA API (dma_alloc_coherent/dma_free_coherent) doesn't yet
take a device pointer in barebox, unlike Linux, and as such it
unconditionally allocates uncached memory.

When normally run under Qemu, this doesn't matter. But once we enable
KVM, using uncached memory for the Virtqueues has considerable
performance impact.

To avoid this, let's mimic what Linux does and just side step the DMA
API if the Virt I/O device tells us that this is ok.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/virtio/virtio_ring.c | 85 ++++++++++++++++++++++++++++++++----
 include/linux/virtio_ring.h  |  1 +
 2 files changed, 78 insertions(+), 8 deletions(-)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 0efe1e002506..787b04a766e9 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -299,14 +299,81 @@ static struct virtqueue *__vring_new_virtqueue(unsigned int index,
 	return vq;
 }
 
-static void *vring_alloc_queue(size_t size, dma_addr_t *dma_handle)
+/*
+ * Modern virtio devices have feature bits to specify whether they need a
+ * quirk and bypass the IOMMU. If not there, just use the DMA API.
+ *
+ * If there, the interaction between virtio and DMA API is messy.
+ *
+ * On most systems with virtio, physical addresses match bus addresses,
+ * and it _shouldn't_ particularly matter whether we use the DMA API.
+ *
+ * However, barebox' dma_alloc_coherent doesn't yet take a device pointer
+ * as argument, so even for dma-coherent devices, the virtqueue is mapped
+ * uncached on ARM. This has considerable impact on the Virt I/O performance,
+ * so we really want to avoid using the DMA API if possible for the time being.
+ *
+ * On some systems, including Xen and any system with a physical device
+ * that speaks virtio behind a physical IOMMU, we must use the DMA API
+ * for virtio DMA to work at all.
+ *
+ * On other systems, including SPARC and PPC64, virtio-pci devices are
+ * enumerated as though they are behind an IOMMU, but the virtio host
+ * ignores the IOMMU, so we must either pretend that the IOMMU isn't
+ * there or somehow map everything as the identity.
+ *
+ * For the time being, we preserve historic behavior and bypass the DMA
+ * API.
+ *
+ * TODO: install a per-device DMA ops structure that does the right thing
+ * taking into account all the above quirks, and use the DMA API
+ * unconditionally on data path.
+ */
+
+static bool vring_use_dma_api(const struct virtio_device *vdev)
 {
-	return dma_alloc_coherent(size, dma_handle);
+	return !virtio_has_dma_quirk(vdev);
 }
 
-static void vring_free_queue(size_t size, void *queue, dma_addr_t dma_handle)
+static void *vring_alloc_queue(struct virtio_device *vdev,
+			       size_t size, dma_addr_t *dma_handle)
 {
-	dma_free_coherent(queue, dma_handle, size);
+	if (vring_use_dma_api(vdev)) {
+		return dma_alloc_coherent(size, dma_handle);
+	} else {
+		void *queue = memalign(PAGE_SIZE, PAGE_ALIGN(size));
+
+		if (queue) {
+			phys_addr_t phys_addr = virt_to_phys(queue);
+			*dma_handle = (dma_addr_t)phys_addr;
+
+			/*
+			 * Sanity check: make sure we dind't truncate
+			 * the address.  The only arches I can find that
+			 * have 64-bit phys_addr_t but 32-bit dma_addr_t
+			 * are certain non-highmem MIPS and x86
+			 * configurations, but these configurations
+			 * should never allocate physical pages above 32
+			 * bits, so this is fine.  Just in case, throw a
+			 * warning and abort if we end up with an
+			 * unrepresentable address.
+			 */
+			if (WARN_ON_ONCE(*dma_handle != phys_addr)) {
+				free(queue);
+				return NULL;
+			}
+		}
+		return queue;
+	}
+}
+
+static void vring_free_queue(struct virtio_device *vdev,
+			     size_t size, void *queue, dma_addr_t dma_handle)
+{
+	if (vring_use_dma_api(vdev))
+		dma_free_coherent(queue, dma_handle, size);
+	else
+		free(queue);
 }
 
 struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
@@ -327,7 +394,7 @@ struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
 
 	/* TODO: allocate each queue chunk individually */
 	for (; num && vring_size(num, vring_align) > PAGE_SIZE; num /= 2) {
-		queue = vring_alloc_queue(vring_size(num, vring_align), &dma_addr);
+		queue = vring_alloc_queue(vdev, vring_size(num, vring_align), &dma_addr);
 		if (queue)
 			break;
 	}
@@ -337,7 +404,7 @@ struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
 
 	if (!queue) {
 		/* Try to get a single page. You are my only hope! */
-		queue = vring_alloc_queue(vring_size(num, vring_align), &dma_addr);
+		queue = vring_alloc_queue(vdev, vring_size(num, vring_align), &dma_addr);
 	}
 	if (!queue)
 		return NULL;
@@ -347,7 +414,7 @@ struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
 
 	vq = __vring_new_virtqueue(index, vring, vdev);
 	if (!vq) {
-		vring_free_queue(queue_size_in_bytes, queue, dma_addr);
+		vring_free_queue(vdev, queue_size_in_bytes, queue, dma_addr);
 		return NULL;
 	}
 	vq_debug(vq, "created vring @ (virt=%p, phys=%pad) for vq with num %u\n",
@@ -355,13 +422,15 @@ struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
 
 	vq->queue_dma_addr = dma_addr;
 	vq->queue_size_in_bytes = queue_size_in_bytes;
+	vq->use_dma_api = vring_use_dma_api(vdev);
 
 	return vq;
 }
 
 void vring_del_virtqueue(struct virtqueue *vq)
 {
-	vring_free_queue(vq->queue_size_in_bytes, vq->vring.desc, vq->queue_dma_addr);
+	vring_free_queue(vq->vdev, vq->queue_size_in_bytes,
+			 vq->vring.desc, vq->queue_dma_addr);
 	list_del(&vq->list);
 	free(vq);
 }
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index bdef47b0fa6c..7bf667611938 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -103,6 +103,7 @@ struct virtqueue {
 	unsigned int num_free;
 	struct vring vring;
 	bool event;
+	bool use_dma_api;
 	unsigned int free_head;
 	unsigned int num_added;
 	u16 last_used_idx;
-- 
2.39.5



