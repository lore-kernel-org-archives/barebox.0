Delivery-date: Sun, 28 Feb 2021 20:10:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSM-0003VQ-5a
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:10:18 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSJ-0001AP-UO
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:10:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bn98LHJQGJetJlAnKwv+F4U2B7/jOugYh70zAQrmim0=; b=TJ/NUnVQzvRDsudHMBacabmCf
	PxdLbV4c2Eak2Ac4OSrRnOmOO0RzbX22X7+1fQ+4ki3yGT1b4vAtzP10CHw7Hpb/H/eFpK8CQ732k
	Kl6SQzOvrKNEamc8JtmhHCH/mSk1Io0JoLf/QjMSny21dabnj2L0XNG1qbFPKKiOsKHy2emWGfj4U
	oP4tXjkyh7nQiNAU9QrdrQoZwPrfiWb/W2JstC/yJw3TzSsnaU+tTVzZGzYXVK0ULJnSTv6xNwspF
	0cx1fBcH4CVeQ9AGH0w7/xOFB4gYFaghCnJlOhP3lWfqIde7NmbrZmFKTM07IWydhTYeqXGJDXIaC
	RhZRwxYmA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRR8-0006CE-Sc; Sun, 28 Feb 2021 19:09:02 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQr-00065Y-8x
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:48 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 963E76000C;
 Sun, 28 Feb 2021 19:08:43 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:32 +0100
Message-Id: <20210228190836.1451663-5-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140845_636427_5D576ABD 
X-CRM114-Status: GOOD (  15.38  )
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
Subject: [PATCH 5/9] virtio: ring: fix erroneous behavior around caches and MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The U-Boot code assumes 1:1 phys2virt mapping and either disabled
caches or a lot of luck. Use the DMA API to get appropriate addresses
for DMA and use coherent/streaming DMA mappings where appropriate.

This is required for proper operation on MIPS.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/virtio/virtio_ring.c | 98 +++++++++++++++++++++++++++++++-----
 include/linux/virtio_ring.h  |  2 +
 2 files changed, 87 insertions(+), 13 deletions(-)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index cac3362e7251..68180fe37da0 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -22,12 +22,45 @@
 #define vq_info(vq, fmt, ...) \
 	dev_info(&vq->vdev->dev, fmt, ##__VA_ARGS__)
 
+static inline struct device_d *vring_dma_dev(const struct virtqueue *vq)
+{
+	return vq->vdev->dev.parent;
+}
+
+/* Map one sg entry. */
+static dma_addr_t vring_map_one_sg(struct virtqueue *vq,
+				   struct virtio_sg *sg,
+				   enum dma_data_direction direction)
+{
+	return dma_map_single(vring_dma_dev(vq), sg->addr, sg->length, direction);
+}
+
+static int vring_mapping_error(struct virtqueue *vq,
+			       dma_addr_t addr)
+{
+	return dma_mapping_error(vring_dma_dev(vq), addr);
+}
+
+static void vring_unmap_one(struct virtqueue *vq,
+			    struct vring_desc *desc)
+{
+	u16 flags;
+
+	flags = virtio16_to_cpu(vq->vdev, desc->flags);
+
+	dma_unmap_single(vring_dma_dev(vq),
+		       virtio64_to_cpu(vq->vdev, desc->addr),
+		       virtio32_to_cpu(vq->vdev, desc->len),
+		       (flags & VRING_DESC_F_WRITE) ?
+		       DMA_FROM_DEVICE : DMA_TO_DEVICE);
+}
+
 int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
 		  unsigned int out_sgs, unsigned int in_sgs)
 {
 	struct vring_desc *desc;
 	unsigned int total_sg = out_sgs + in_sgs;
-	unsigned int i, n, avail, descs_used, uninitialized_var(prev);
+	unsigned int i, err_idx, n, avail, descs_used, uninitialized_var(prev);
 	int head;
 
 	WARN_ON(total_sg == 0);
@@ -53,9 +86,13 @@ int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
 
 	for (n = 0; n < out_sgs; n++) {
 		struct virtio_sg *sg = sgs[n];
+		dma_addr_t addr = vring_map_one_sg(vq, sg, DMA_TO_DEVICE);
+		if (vring_mapping_error(vq, addr))
+			goto unmap_release;
+
 
 		desc[i].flags = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT);
-		desc[i].addr = cpu_to_virtio64(vq->vdev, (u64)(size_t)sg->addr);
+		desc[i].addr = cpu_to_virtio64(vq->vdev, addr);
 		desc[i].len = cpu_to_virtio32(vq->vdev, sg->length);
 
 		prev = i;
@@ -63,11 +100,13 @@ int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
 	}
 	for (; n < (out_sgs + in_sgs); n++) {
 		struct virtio_sg *sg = sgs[n];
+		dma_addr_t addr = vring_map_one_sg(vq, sg, DMA_FROM_DEVICE);
+		if (vring_mapping_error(vq, addr))
+			goto unmap_release;
 
 		desc[i].flags = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT |
 						VRING_DESC_F_WRITE);
-		desc[i].addr = cpu_to_virtio64(vq->vdev,
-					       (u64)(uintptr_t)sg->addr);
+		desc[i].addr = cpu_to_virtio64(vq->vdev, addr);
 		desc[i].len = cpu_to_virtio32(vq->vdev, sg->length);
 
 		prev = i;
@@ -106,6 +145,19 @@ int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
 		virtqueue_kick(vq);
 
 	return 0;
+
+unmap_release:
+	err_idx = i;
+
+	for (n = 0; n < total_sg; n++) {
+		if (i == err_idx)
+			break;
+		vring_unmap_one(vq, &desc[i]);
+		i = virtio16_to_cpu(vq->vdev, desc[i].next);
+	}
+
+	return -ENOMEM;
+
 }
 
 static bool virtqueue_kick_prepare(struct virtqueue *vq)
@@ -149,10 +201,12 @@ static void detach_buf(struct virtqueue *vq, unsigned int head)
 	i = head;
 
 	while (vq->vring.desc[i].flags & nextflag) {
+		vring_unmap_one(vq, &vq->vring.desc[i]);
 		i = virtio16_to_cpu(vq->vdev, vq->vring.desc[i].next);
 		vq->num_free++;
 	}
 
+	vring_unmap_one(vq, &vq->vring.desc[i]);
 	vq->vring.desc[i].next = cpu_to_virtio16(vq->vdev, vq->free_head);
 	vq->free_head = head;
 
@@ -225,6 +279,8 @@ static struct virtqueue *__vring_new_virtqueue(unsigned int index,
 	vq->avail_flags_shadow = 0;
 	vq->avail_idx_shadow = 0;
 	vq->num_added = 0;
+	vq->queue_dma_addr = 0;
+	vq->queue_size_in_bytes = 0;
 	list_add_tail(&vq->list, &vdev->vqs);
 
 	vq->event = virtio_has_feature(vdev, VIRTIO_RING_F_EVENT_IDX);
@@ -243,12 +299,24 @@ static struct virtqueue *__vring_new_virtqueue(unsigned int index,
 	return vq;
 }
 
+static void *vring_alloc_queue(size_t size, dma_addr_t *dma_handle)
+{
+	return dma_alloc_coherent(size, dma_handle);
+}
+
+static void vring_free_queue(size_t size, void *queue, dma_addr_t dma_handle)
+{
+	dma_free_coherent(queue, dma_handle, size);
+}
+
 struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
 					 unsigned int vring_align,
 					 struct virtio_device *vdev)
 {
 	struct virtqueue *vq;
 	void *queue = NULL;
+	dma_addr_t dma_addr;
+	size_t queue_size_in_bytes;
 	struct vring vring;
 
 	/* We assume num is a power of 2 */
@@ -259,7 +327,7 @@ struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
 
 	/* TODO: allocate each queue chunk individually */
 	for (; num && vring_size(num, vring_align) > PAGE_SIZE; num /= 2) {
-		queue = memalign(PAGE_SIZE, vring_size(num, vring_align));
+		queue = vring_alloc_queue(vring_size(num, vring_align), &dma_addr);
 		if (queue)
 			break;
 	}
@@ -269,27 +337,31 @@ struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
 
 	if (!queue) {
 		/* Try to get a single page. You are my only hope! */
-		queue = memalign(PAGE_SIZE, vring_size(num, vring_align));
+		queue = vring_alloc_queue(vring_size(num, vring_align), &dma_addr);
 	}
 	if (!queue)
 		return NULL;
 
-	memset(queue, 0, vring_size(num, vring_align));
+	queue_size_in_bytes = vring_size(num, vring_align);
 	vring_init(&vring, num, queue, vring_align);
 
 	vq = __vring_new_virtqueue(index, vring, vdev);
 	if (!vq) {
-		free(queue);
+		vring_free_queue(queue_size_in_bytes, queue, dma_addr);
 		return NULL;
 	}
-	vq_debug(vq, "created vring @ %p for vq with num %u\n", queue, num);
+	vq_debug(vq, "created vring @ (virt=%p, phys=%pad) for vq with num %u\n",
+		 queue, &dma_addr, num);
+
+	vq->queue_dma_addr = dma_addr;
+	vq->queue_size_in_bytes = queue_size_in_bytes;
 
 	return vq;
 }
 
 void vring_del_virtqueue(struct virtqueue *vq)
 {
-	free(vq->vring.desc);
+	vring_free_queue(vq->queue_size_in_bytes, vq->vring.desc, vq->queue_dma_addr);
 	list_del(&vq->list);
 	free(vq);
 }
@@ -301,18 +373,18 @@ unsigned int virtqueue_get_vring_size(struct virtqueue *vq)
 
 dma_addr_t virtqueue_get_desc_addr(struct virtqueue *vq)
 {
-	return (dma_addr_t)vq->vring.desc;
+	return vq->queue_dma_addr;
 }
 
 dma_addr_t virtqueue_get_avail_addr(struct virtqueue *vq)
 {
-	return (dma_addr_t)vq->vring.desc +
+	return vq->queue_dma_addr +
 	       ((char *)vq->vring.avail - (char *)vq->vring.desc);
 }
 
 dma_addr_t virtqueue_get_used_addr(struct virtqueue *vq)
 {
-	return (dma_addr_t)vq->vring.desc +
+	return vq->queue_dma_addr +
 	       ((char *)vq->vring.used - (char *)vq->vring.desc);
 }
 
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index 3c11592b09e4..c349af90ce50 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -108,6 +108,8 @@ struct virtqueue {
 	u16 last_used_idx;
 	u16 avail_flags_shadow;
 	u16 avail_idx_shadow;
+	dma_addr_t queue_dma_addr;
+	size_t queue_size_in_bytes;
 };
 
 /*
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

