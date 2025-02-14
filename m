Delivery-date: Fri, 14 Feb 2025 11:13:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tishn-002E64-2m
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:13:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tishm-0007v2-4v
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:13:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kZ2CdhvFGGO1GQ/JyVsA3f2DW7DoxUxHV9Rw0CblJKg=; b=ye9pp5DRb+lq1dQIHAzxTDDBbf
	Gn0fbPha0VHjbHYlasFIbeq33/GLzlEx3z1ceCzwThe5RcOatF5654qeocmf5ifK6dJa73ps7D5/H
	CzrubBLbVyD7NdwAAo38HoXw9GkgNDMCK4pPK5wk2z4T5B9MnGM3rplmn/MvIf+i49eCYhu818JTp
	Dqo8F3Y6sEJuwJDXlpzRoEQwCxCMx1B3TzPtOwrvDGXFnN+hZAiEdBQiDePbB+D8tBczekZMt2p7I
	QrxWmm/hD+ikusmbceVu5mBa2mbYQ77WVTdlqGugFWAieXLCmPAAl7zfzlN4kQMzQKwkdHfRxCFyE
	H22BCuBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tishJ-0000000ESky-3Kps;
	Fri, 14 Feb 2025 10:13:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisg7-0000000ESX5-1tIa
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:12:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-0007Z7-LE; Fri, 14 Feb 2025 11:12:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-000tho-1S;
	Fri, 14 Feb 2025 11:12:07 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-00C4ID-1B;
	Fri, 14 Feb 2025 11:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:12:06 +0100
Message-Id: <20250214101206.2876051-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214101206.2876051-1-a.fatoum@pengutronix.de>
References: <20250214101206.2876051-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_021211_799756_68C49CDD 
X-CRM114-Status: GOOD (  24.13  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] virtio: add token data parameter to virtqueue_add_sgs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux, virtqueue_get_buf doesn't return the buffer, but the cookie
value specified when the entry was first added to the virtqueue via
virtqueue_add_sgs.

To make it easier to port Linux drivers that keep around metadata for
requests, adopt the Linux API.

No functional change expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/virtio_blk.c      |  2 +-
 drivers/hw_random/virtio-rng.c  |  2 +-
 drivers/input/virtio_input.c    |  4 ++--
 drivers/net/virtio.c            |  6 +++---
 drivers/serial/virtio_console.c |  4 ++--
 drivers/virtio/virtio_ring.c    | 24 +++++++++++++-----------
 include/linux/virtio_ring.h     | 24 ++++++++++++++++++------
 7 files changed, 40 insertions(+), 26 deletions(-)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 3ee7972fe859..11111f174142 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -49,7 +49,7 @@ static int virtio_blk_do_req(struct virtio_blk_priv *priv, void *buffer,
 	sg_init_one(&status_sg, &status, sizeof(status));
 	sgs[num_out + num_in++] = &status_sg;
 
-	ret = virtqueue_add_sgs(priv->vq, sgs, num_out, num_in);
+	ret = virtqueue_add_sgs(priv->vq, sgs, num_out, num_in, &out_hdr);
 	if (ret)
 		return ret;
 
diff --git a/drivers/hw_random/virtio-rng.c b/drivers/hw_random/virtio-rng.c
index 6c283c784fb7..1ce321352935 100644
--- a/drivers/hw_random/virtio-rng.c
+++ b/drivers/hw_random/virtio-rng.c
@@ -41,7 +41,7 @@ static int virtio_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wai
 	while (remaining) {
 		sg_init_one(&sg, buf, min(remaining, sizeof(buf)));
 
-		ret = virtqueue_add_inbuf(vi->rng_vq, &sg, 1);
+		ret = virtqueue_add_inbuf(vi->rng_vq, &sg, 1, buf);
 		if (ret)
 			return ret;
 
diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
index cdcee556a6c7..6e73e7873986 100644
--- a/drivers/input/virtio_input.c
+++ b/drivers/input/virtio_input.c
@@ -27,7 +27,7 @@ static void virtinput_queue_evtbuf(struct virtio_input *vi,
 {
 	struct scatterlist sg;
 	sg_init_one(&sg, evtbuf, sizeof(*evtbuf));
-	virtqueue_add_inbuf(vi->evt, &sg, 1);
+	virtqueue_add_inbuf(vi->evt, &sg, 1, evtbuf);
 }
 
 static int virtinput_recv_events(struct virtio_input *vi)
@@ -78,7 +78,7 @@ static int virtinput_send_status(struct sound_card *beeper, unsigned freq, unsig
 	stsbuf->value = cpu_to_le32(freq);
 	sg_init_one(&sg, stsbuf, sizeof(*stsbuf));
 
-	rc = virtqueue_add_outbuf(vi->sts, &sg, 1);
+	rc = virtqueue_add_outbuf(vi->sts, &sg, 1, stsbuf);
 	virtqueue_kick(vi->sts);
 
 	if (rc != 0)
diff --git a/drivers/net/virtio.c b/drivers/net/virtio.c
index 26a1dde5199a..73afbc7645bd 100644
--- a/drivers/net/virtio.c
+++ b/drivers/net/virtio.c
@@ -57,7 +57,7 @@ static int virtio_net_start(struct eth_device *edev)
 			sg.length = VIRTIO_NET_RX_BUF_SIZE;
 
 			sg_init_one(&sg, priv->rx_buff[i], VIRTIO_NET_RX_BUF_SIZE);
-			virtqueue_add_inbuf(priv->rx_vq, &sg, 1);
+			virtqueue_add_inbuf(priv->rx_vq, &sg, 1, priv->rx_buff[i]);
 		}
 
 		virtqueue_kick(priv->rx_vq);
@@ -86,7 +86,7 @@ static int virtio_net_send(struct eth_device *edev, void *packet, int length)
 
 	sg_set_buf(&sgs[1], packet, length);
 
-	ret = virtqueue_add_outbuf(priv->tx_vq, sgs, ARRAY_SIZE(sgs));
+	ret = virtqueue_add_outbuf(priv->tx_vq, sgs, ARRAY_SIZE(sgs), &sgs[0].address);
 	if (ret)
 		return ret;
 
@@ -119,7 +119,7 @@ static void virtio_net_recv(struct eth_device *edev)
 	net_receive(edev, buf, len);
 
 	/* Put the buffer back to the rx ring */
-	virtqueue_add_inbuf(priv->rx_vq, &sg, 1);
+	virtqueue_add_inbuf(priv->rx_vq, &sg, 1, addr);
 }
 
 static void virtio_net_stop(struct eth_device *dev)
diff --git a/drivers/serial/virtio_console.c b/drivers/serial/virtio_console.c
index eb3b1158171d..09249aef7a14 100644
--- a/drivers/serial/virtio_console.c
+++ b/drivers/serial/virtio_console.c
@@ -49,7 +49,7 @@ static void put_chars(struct virtio_console *virtcons, const char *buf, int coun
 	 * add_buf wants a token to identify this buffer: we hand it
 	 * any non-NULL pointer, since there's only ever one buffer.
 	 */
-	if (virtqueue_add_outbuf(out_vq, &sg, 1) >= 0) {
+	if (virtqueue_add_outbuf(out_vq, &sg, 1, (void *)buf) >= 0) {
 		/* Tell Host to go! */
 		virtqueue_kick(out_vq);
 		/* Chill out until it's done with the buffer. */
@@ -76,7 +76,7 @@ static void add_inbuf(struct virtio_console *virtcons)
 	sg_init_one(&sg, virtcons->inbuf, sizeof(virtcons->inbuf));
 
 	/* We should always be able to add one buffer to an empty queue. */
-	if (virtqueue_add_inbuf(virtcons->in_vq, &sg, 1) < 0)
+	if (virtqueue_add_inbuf(virtcons->in_vq, &sg, 1, virtcons->inbuf) < 0)
 		BUG();
 	virtqueue_kick(virtcons->in_vq);
 }
diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index cd3677ff73f9..29d7bb9ef662 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -58,7 +58,8 @@ static void vring_unmap_one(struct virtqueue *vq,
 }
 
 int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
-		      unsigned int out_sgs, unsigned int in_sgs)
+		      unsigned int out_sgs, unsigned int in_sgs,
+		      void *data)
 {
 	struct vring_desc *desc;
 	unsigned int total_sg = out_sgs + in_sgs;
@@ -67,6 +68,7 @@ int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
 	int head;
 
 	WARN_ON(total_sg == 0);
+	BUG_ON(data == NULL);
 
 	head = vq->free_head;
 
@@ -128,6 +130,9 @@ int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
 	/* Update free pointer */
 	vq->free_head = i;
 
+	/* Store token. */
+	vq->desc_state[head].data = data;
+
 	/*
 	 * Put entry in available array (but don't update avail->idx
 	 * until they do sync).
@@ -204,6 +209,9 @@ static void detach_buf(struct virtqueue *vq, unsigned int head)
 	unsigned int i;
 	__virtio16 nextflag = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT);
 
+	/* Clear data ptr. */
+	vq->desc_state[head].data = NULL;
+
 	/* Put back on free list: unmap first-level descriptors and find end */
 	i = head;
 
@@ -230,6 +238,7 @@ void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len)
 {
 	unsigned int i;
 	u16 last_used;
+	void *ret;
 
 	if (!more_used(vq)) {
 		vq_debug(vq, "No more buffers in queue\n");
@@ -252,6 +261,7 @@ void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len)
 		return NULL;
 	}
 
+	ret = vq->desc_state[i].data;
 	detach_buf(vq, i);
 	vq->last_used_idx++;
 	/*
@@ -263,8 +273,7 @@ void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len)
 		virtio_store_mb(&vring_used_event(&vq->vring),
 				cpu_to_virtio16(vq->vdev, vq->last_used_idx));
 
-	return IOMEM((uintptr_t)virtio64_to_cpu(vq->vdev,
-						  vq->vring.desc[i].addr));
+	return ret;
 }
 
 static struct virtqueue *__vring_new_virtqueue(unsigned int index,
@@ -274,7 +283,7 @@ static struct virtqueue *__vring_new_virtqueue(unsigned int index,
 	unsigned int i;
 	struct virtqueue *vq;
 
-	vq = malloc(sizeof(*vq));
+	vq = calloc(1, struct_size(vq, desc_state, vring.num));
 	if (!vq)
 		return NULL;
 
@@ -282,12 +291,6 @@ static struct virtqueue *__vring_new_virtqueue(unsigned int index,
 	vq->index = index;
 	vq->num_free = vring.num;
 	vq->vring = vring;
-	vq->last_used_idx = 0;
-	vq->avail_flags_shadow = 0;
-	vq->avail_idx_shadow = 0;
-	vq->num_added = 0;
-	vq->queue_dma_addr = 0;
-	vq->queue_size_in_bytes = 0;
 	list_add_tail(&vq->list, &vdev->vqs);
 
 	vq->event = virtio_has_feature(vdev, VIRTIO_RING_F_EVENT_IDX);
@@ -299,7 +302,6 @@ static struct virtqueue *__vring_new_virtqueue(unsigned int index,
 				vq->avail_flags_shadow);
 
 	/* Put everything in free lists */
-	vq->free_head = 0;
 	for (i = 0; i < vring.num - 1; i++)
 		vq->vring.desc[i].next = cpu_to_virtio16(vdev, i + 1);
 
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index 1fa9c2ed7428..04a2ad0cb1f9 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -82,6 +82,10 @@ struct vring {
 	struct vring_used *used;
 };
 
+struct vring_desc_state_split {
+	void *data;			/* Data for callback. */
+};
+
 /**
  * virtqueue - a queue to register buffers for sending or receiving.
  *
@@ -96,6 +100,7 @@ struct vring {
  * @last_used_idx: last used index we've seen
  * @avail_flags_shadow: last written value to avail->flags
  * @avail_idx_shadow: last written value to avail->idx in guest byte order
+ * @desc_state: cookie data associated with descritptors
  */
 struct virtqueue {
 	struct list_head list;
@@ -111,6 +116,7 @@ struct virtqueue {
 	u16 avail_idx_shadow;
 	dma_addr_t queue_dma_addr;
 	size_t queue_size_in_bytes;
+	struct vring_desc_state_split desc_state[];
 };
 
 /*
@@ -170,6 +176,7 @@ static inline int vring_need_event(__u16 event_idx, __u16 new_idx, __u16 old)
  * @out_sgs:	the number of scatterlists readable by other side
  * @in_sgs:	the number of scatterlists which are writable
  *		(after readable ones)
+ * @data:	the token identifying the buffer.
  *
  * Caller must ensure we don't call this with other virtqueue operations
  * at the same time (except where noted).
@@ -177,13 +184,15 @@ static inline int vring_need_event(__u16 event_idx, __u16 new_idx, __u16 old)
  * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
  */
 int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
-		      unsigned int out_sgs, unsigned int in_sgs);
+		      unsigned int out_sgs, unsigned int in_sgs,
+		      void *data);
 
 /**
  * virtqueue_add_outbuf - expose output buffers to other end
  * @vq: the struct virtqueue we're talking about.
  * @sg: scatterlist (must be well-formed and terminated!)
  * @num: the number of entries in @sg readable by other side
+ * @data: the token identifying the buffer.
  *
  * Caller must ensure we don't call this with other virtqueue operations
  * at the same time (except where noted).
@@ -191,9 +200,10 @@ int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
  * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
  */
 static inline int virtqueue_add_outbuf(struct virtqueue *vq,
-				       struct scatterlist *sg, unsigned int num)
+				       struct scatterlist *sg, unsigned int num,
+				       void *data)
 {
-	return virtqueue_add_sgs(vq, &sg, num, 0);
+	return virtqueue_add_sgs(vq, &sg, num, 0, data);
 }
 
 /**
@@ -201,6 +211,7 @@ static inline int virtqueue_add_outbuf(struct virtqueue *vq,
  * @vq: the struct virtqueue we're talking about.
  * @sg: scatterlist (must be well-formed and terminated!)
  * @num: the number of entries in @sg writable by other side
+ * @data: the token identifying the buffer.
  *
  * Caller must ensure we don't call this with other virtqueue operations
  * at the same time (except where noted).
@@ -208,9 +219,10 @@ static inline int virtqueue_add_outbuf(struct virtqueue *vq,
  * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
  */
 static inline int virtqueue_add_inbuf(struct virtqueue *vq,
-				      struct scatterlist *sg, unsigned int num)
+				      struct scatterlist *sg, unsigned int num,
+				      void *data)
 {
-	return virtqueue_add_sgs(vq, &sg, 0, num);
+	return virtqueue_add_sgs(vq, &sg, 0, num, data);
 }
 
 /**
@@ -240,7 +252,7 @@ void virtqueue_kick(struct virtqueue *vq);
  * Caller must ensure we don't call this with other virtqueue
  * operations at the same time (except where noted).
  *
- * Returns NULL if there are no used buffers, or the memory buffer
+ * Returns NULL if there are no used buffers, or the "data" token
  * handed to virtqueue_add_*().
  */
 void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len);
-- 
2.39.5



