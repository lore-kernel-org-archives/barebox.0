Delivery-date: Fri, 14 Feb 2025 11:13:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisho-002E6Q-14
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:13:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tishm-0007v3-8P
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:13:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xVlcyqqSkJ7382u264Ad9LWSAPkRqYk+UUpYyXhQBc0=; b=ag7OZQ4jyQZg6fcWMnLjmwOvnV
	+BAlSR90Co67eAcPcnLQuOSbRvYYRYpPvlJct3XamTNVBwfpejSFGhVGZEIigtNlO+LNZ/jVDYEbt
	mJXLE6CqcrhNz3jR2hKG73e0ky8C+7I/C52V4r9MBTb3PzkoFYVStjK8LLlzwG7HbHLgIUP3mYmw4
	zrUnP+LpoptW5jfWffhiwoV3BpukMkzKz+VBKgTbeDGH46rJVwtMAKDHVf/bnkhjOOh9UgnGwA7gP
	xNVRanlwu3ygX2qNl/iEc+Tciec0ZoXCf/N8dUyvwmcMU4isr49w0iyCEZ9MlPOfWGO6YP/4Zhvsn
	n8ZeMxuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tishK-0000000ESl9-1yLs;
	Fri, 14 Feb 2025 10:13:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisg7-0000000ESX4-23lN
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:12:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-0007Z6-Ji; Fri, 14 Feb 2025 11:12:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-000thl-1J;
	Fri, 14 Feb 2025 11:12:07 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-00C4ID-12;
	Fri, 14 Feb 2025 11:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:12:05 +0100
Message-Id: <20250214101206.2876051-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214101206.2876051-1-a.fatoum@pengutronix.de>
References: <20250214101206.2876051-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_021211_830949_C71A7621 
X-CRM114-Status: GOOD (  24.87  )
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
Subject: [PATCH 2/3] virtio: replace virtio_sg with common scatterlist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have a basic scatterlist implementation in barebox, let's
switch virtio to use it instead of the virtio_sg knock-off.

This introduces no functional change, but will make porting virtio
driver from Linux easier in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/virtio_blk.c      | 13 ++++----
 drivers/hw_random/virtio-rng.c  | 11 +++----
 drivers/input/virtio_input.c    | 12 +++----
 drivers/net/virtio.c            | 46 +++++++++++++--------------
 drivers/serial/virtio_console.c | 16 +++++-----
 drivers/virtio/virtio_ring.c    | 55 +++++++++++++++++++--------------
 include/linux/virtio.h          | 18 -----------
 include/linux/virtio_ring.h     | 19 ++++++------
 8 files changed, 87 insertions(+), 103 deletions(-)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index cbef500d59b3..3ee7972fe859 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -23,20 +23,20 @@ static int virtio_blk_do_req(struct virtio_blk_priv *priv, void *buffer,
 			     sector_t sector, blkcnt_t blkcnt, u32 type)
 {
 	unsigned int num_out = 0, num_in = 0;
-	struct virtio_sg *sgs[3];
-	u8 status;
+	struct scatterlist hdr_sg, data_sg, status_sg, *sgs[3];
+	u8 status = VIRTIO_BLK_S_IOERR;
 	int ret;
 
 	struct virtio_blk_outhdr out_hdr = {
 		.type = cpu_to_virtio32(priv->vdev, type),
 		.sector = cpu_to_virtio64(priv->vdev, sector),
 	};
-	struct virtio_sg hdr_sg = { &out_hdr, sizeof(out_hdr) };
-	struct virtio_sg data_sg = { buffer, blkcnt * 512 };
-	struct virtio_sg status_sg = { &status, sizeof(status) };
 
+	sg_init_one(&hdr_sg, &out_hdr, sizeof(out_hdr));
 	sgs[num_out++] = &hdr_sg;
 
+	sg_init_one(&data_sg, buffer, blkcnt * 512);
+
 	switch(type) {
 	case VIRTIO_BLK_T_OUT:
 		sgs[num_out++] = &data_sg;
@@ -46,9 +46,10 @@ static int virtio_blk_do_req(struct virtio_blk_priv *priv, void *buffer,
 		break;
 	}
 
+	sg_init_one(&status_sg, &status, sizeof(status));
 	sgs[num_out + num_in++] = &status_sg;
 
-	ret = virtqueue_add(priv->vq, sgs, num_out, num_in);
+	ret = virtqueue_add_sgs(priv->vq, sgs, num_out, num_in);
 	if (ret)
 		return ret;
 
diff --git a/drivers/hw_random/virtio-rng.c b/drivers/hw_random/virtio-rng.c
index f0a3d3cb74e7..6c283c784fb7 100644
--- a/drivers/hw_random/virtio-rng.c
+++ b/drivers/hw_random/virtio-rng.c
@@ -32,19 +32,16 @@ static int virtio_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wai
 {
 	int ret;
 	unsigned int rsize;
-	unsigned char buf[BUFFER_SIZE] __aligned(4);
+	unsigned char buf[BUFFER_SIZE] __aligned(8);
 	unsigned char *ptr = data;
-	struct virtio_sg sg;
-	struct virtio_sg *sgs[1];
+	struct scatterlist sg;
 	struct virtrng_info *vi = to_virtrng_info(hwrng);
 	size_t remaining = len;
 
 	while (remaining) {
-		sg.addr = buf;
-		sg.length = min(remaining, sizeof(buf));
-		sgs[0] = &sg;
+		sg_init_one(&sg, buf, min(remaining, sizeof(buf)));
 
-		ret = virtqueue_add(vi->rng_vq, sgs, 0, 1);
+		ret = virtqueue_add_inbuf(vi->rng_vq, &sg, 1);
 		if (ret)
 			return ret;
 
diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
index 655a9051726a..cdcee556a6c7 100644
--- a/drivers/input/virtio_input.c
+++ b/drivers/input/virtio_input.c
@@ -25,9 +25,9 @@ struct virtio_input {
 static void virtinput_queue_evtbuf(struct virtio_input *vi,
 				   struct virtio_input_event *evtbuf)
 {
-	struct virtio_sg sg[1];
-	virtio_sg_init_one(sg, evtbuf, sizeof(*evtbuf));
-	virtqueue_add_inbuf(vi->evt, sg, 1);
+	struct scatterlist sg;
+	sg_init_one(&sg, evtbuf, sizeof(*evtbuf));
+	virtqueue_add_inbuf(vi->evt, &sg, 1);
 }
 
 static int virtinput_recv_events(struct virtio_input *vi)
@@ -63,7 +63,7 @@ static int virtinput_send_status(struct sound_card *beeper, unsigned freq, unsig
 {
 	struct virtio_input *vi = container_of(beeper, struct virtio_input, beeper);
 	struct virtio_input_event *stsbuf;
-	struct virtio_sg sg[1];
+	struct scatterlist sg;
 	u16 code;
 	int rc;
 
@@ -76,9 +76,9 @@ static int virtinput_send_status(struct sound_card *beeper, unsigned freq, unsig
 	stsbuf->type  = cpu_to_le16(EV_SND);
 	stsbuf->code  = cpu_to_le16(code);
 	stsbuf->value = cpu_to_le32(freq);
-	virtio_sg_init_one(sg, stsbuf, sizeof(*stsbuf));
+	sg_init_one(&sg, stsbuf, sizeof(*stsbuf));
 
-	rc = virtqueue_add_outbuf(vi->sts, sg, 1);
+	rc = virtqueue_add_outbuf(vi->sts, &sg, 1);
 	virtqueue_kick(vi->sts);
 
 	if (rc != 0)
diff --git a/drivers/net/virtio.c b/drivers/net/virtio.c
index 0c8a88530f0f..26a1dde5199a 100644
--- a/drivers/net/virtio.c
+++ b/drivers/net/virtio.c
@@ -46,18 +46,18 @@ static inline struct virtio_net_priv *to_priv(struct eth_device *edev)
 static int virtio_net_start(struct eth_device *edev)
 {
 	struct virtio_net_priv *priv = to_priv(edev);
-	struct virtio_sg sg;
-	struct virtio_sg *sgs[] = { &sg };
+	struct scatterlist sg;
 	int i;
 
 	if (!priv->rx_running) {
-		/* receive buffer length is always 1526 */
-		sg.length = VIRTIO_NET_RX_BUF_SIZE;
 
 		/* setup the receive buffer address */
 		for (i = 0; i < VIRTIO_NET_NUM_RX_BUFS; i++) {
-			sg.addr = priv->rx_buff[i];
-			virtqueue_add(priv->rx_vq, sgs, 0, 1);
+			/* receive buffer length is always 1526 */
+			sg.length = VIRTIO_NET_RX_BUF_SIZE;
+
+			sg_init_one(&sg, priv->rx_buff[i], VIRTIO_NET_RX_BUF_SIZE);
+			virtqueue_add_inbuf(priv->rx_vq, &sg, 1);
 		}
 
 		virtqueue_kick(priv->rx_vq);
@@ -72,22 +72,21 @@ static int virtio_net_start(struct eth_device *edev)
 static int virtio_net_send(struct eth_device *edev, void *packet, int length)
 {
 	struct virtio_net_priv *priv = to_priv(edev);
-	struct virtio_net_hdr_v1 hdr_v1;
-	struct virtio_net_hdr hdr;
-	struct virtio_sg hdr_sg;
-	struct virtio_sg data_sg = { packet, length };
-	struct virtio_sg *sgs[] = { &hdr_sg, &data_sg };
+	struct virtio_net_hdr_v1 hdr_v1 = {};
+	struct virtio_net_hdr hdr = {};
+	struct scatterlist sgs[2];
 	int ret;
 
+	sg_init_table(sgs, ARRAY_SIZE(sgs));
+
 	if (priv->net_hdr_len == sizeof(struct virtio_net_hdr))
-		hdr_sg.addr = &hdr;
+		sg_set_buf(&sgs[0], &hdr, priv->net_hdr_len);
 	else
-		hdr_sg.addr = &hdr_v1;
+		sg_set_buf(&sgs[0], &hdr_v1, priv->net_hdr_len);
 
-	hdr_sg.length = priv->net_hdr_len;
-	memset(hdr_sg.addr, 0, priv->net_hdr_len);
+	sg_set_buf(&sgs[1], packet, length);
 
-	ret = virtqueue_add(priv->tx_vq, sgs, 2, 0);
+	ret = virtqueue_add_outbuf(priv->tx_vq, sgs, ARRAY_SIZE(sgs));
 	if (ret)
 		return ret;
 
@@ -104,24 +103,23 @@ static int virtio_net_send(struct eth_device *edev, void *packet, int length)
 static void virtio_net_recv(struct eth_device *edev)
 {
 	struct virtio_net_priv *priv = to_priv(edev);
-	struct virtio_sg sg;
-	struct virtio_sg *sgs[] = { &sg };
+	struct scatterlist sg;
 	unsigned int len;
-	void *buf;
+	void *buf, *addr;
 
-	sg.addr = virtqueue_get_buf(priv->rx_vq, &len);
-	if (!sg.addr)
+	addr = virtqueue_get_buf(priv->rx_vq, &len);
+	if (!addr)
 		return;
 
-	sg.length = VIRTIO_NET_RX_BUF_SIZE;
+	sg_init_one(&sg, addr, VIRTIO_NET_RX_BUF_SIZE);
 
-	buf = sg.addr + priv->net_hdr_len;
+	buf = sg.address + priv->net_hdr_len;
 	len -= priv->net_hdr_len;
 
 	net_receive(edev, buf, len);
 
 	/* Put the buffer back to the rx ring */
-	virtqueue_add(priv->rx_vq, sgs, 0, 1);
+	virtqueue_add_inbuf(priv->rx_vq, &sg, 1);
 }
 
 static void virtio_net_stop(struct eth_device *dev)
diff --git a/drivers/serial/virtio_console.c b/drivers/serial/virtio_console.c
index a4adb77610f6..eb3b1158171d 100644
--- a/drivers/serial/virtio_console.c
+++ b/drivers/serial/virtio_console.c
@@ -41,15 +41,15 @@ static void put_chars(struct virtio_console *virtcons, const char *buf, int coun
 {
 	struct virtqueue *out_vq = virtcons->out_vq;
 	unsigned int len;
-	struct virtio_sg *sgs[1] = {
-		&(struct virtio_sg) { .addr = (void *)buf, .length = count }
-	};
+	struct scatterlist sg;
+
+	sg_init_one(&sg, buf, count);
 
 	/*
 	 * add_buf wants a token to identify this buffer: we hand it
 	 * any non-NULL pointer, since there's only ever one buffer.
 	 */
-	if (virtqueue_add(out_vq, sgs, 1, 0) >= 0) {
+	if (virtqueue_add_outbuf(out_vq, &sg, 1) >= 0) {
 		/* Tell Host to go! */
 		virtqueue_kick(out_vq);
 		/* Chill out until it's done with the buffer. */
@@ -71,12 +71,12 @@ static void virtcons_putc(struct console_device *cdev, char c)
  */
 static void add_inbuf(struct virtio_console *virtcons)
 {
-	struct virtio_sg *sgs[1] = { &(struct virtio_sg) {
-		.addr = virtcons->inbuf, .length = sizeof(virtcons->inbuf) }
-	};
+	struct scatterlist sg;
+
+	sg_init_one(&sg, virtcons->inbuf, sizeof(virtcons->inbuf));
 
 	/* We should always be able to add one buffer to an empty queue. */
-	if (virtqueue_add(virtcons->in_vq, sgs, 0, 1) < 0)
+	if (virtqueue_add_inbuf(virtcons->in_vq, &sg, 1) < 0)
 		BUG();
 	virtqueue_kick(virtcons->in_vq);
 }
diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index b0b402834aca..cd3677ff73f9 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -29,10 +29,12 @@ static inline struct device *vring_dma_dev(const struct virtqueue *vq)
 
 /* Map one sg entry. */
 static dma_addr_t vring_map_one_sg(struct virtqueue *vq,
-				   struct virtio_sg *sg,
+				   struct scatterlist *sg,
 				   enum dma_data_direction direction)
 {
-	return dma_map_single(vring_dma_dev(vq), sg->addr, sg->length, direction);
+	return dma_map_single(vring_dma_dev(vq),
+			      sg->address, sg->length,
+			      direction);
 }
 
 static int vring_mapping_error(struct virtqueue *vq,
@@ -55,11 +57,12 @@ static void vring_unmap_one(struct virtqueue *vq,
 		       DMA_FROM_DEVICE : DMA_TO_DEVICE);
 }
 
-int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
-		  unsigned int out_sgs, unsigned int in_sgs)
+int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
+		      unsigned int out_sgs, unsigned int in_sgs)
 {
 	struct vring_desc *desc;
 	unsigned int total_sg = out_sgs + in_sgs;
+	struct scatterlist *sg;
 	unsigned int i, err_idx, n, avail, descs_used, uninitialized_var(prev);
 	int head;
 
@@ -85,33 +88,37 @@ int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
 	}
 
 	for (n = 0; n < out_sgs; n++) {
-		struct virtio_sg *sg = sgs[n];
-		dma_addr_t addr = vring_map_one_sg(vq, sg, DMA_TO_DEVICE);
-		if (vring_mapping_error(vq, addr))
-			goto unmap_release;
+		for (sg = sgs[n]; sg; sg = sg_next(sg)) {
+			dma_addr_t addr = vring_map_one_sg(vq, sg, DMA_TO_DEVICE);
+			if (vring_mapping_error(vq, addr))
+				goto unmap_release;
 
+			desc[i].flags = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT);
+			desc[i].addr = cpu_to_virtio64(vq->vdev, addr);
+			desc[i].len = cpu_to_virtio32(vq->vdev, sg->length);
 
-		desc[i].flags = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT);
-		desc[i].addr = cpu_to_virtio64(vq->vdev, addr);
-		desc[i].len = cpu_to_virtio32(vq->vdev, sg->length);
-
-		prev = i;
-		i = virtio16_to_cpu(vq->vdev, desc[i].next);
+			prev = i;
+			i = virtio16_to_cpu(vq->vdev, desc[i].next);
+		}
 	}
+
 	for (; n < (out_sgs + in_sgs); n++) {
-		struct virtio_sg *sg = sgs[n];
-		dma_addr_t addr = vring_map_one_sg(vq, sg, DMA_FROM_DEVICE);
-		if (vring_mapping_error(vq, addr))
-			goto unmap_release;
+		for (sg = sgs[n]; sg; sg = sg_next(sg)) {
+			struct scatterlist *sg = sgs[n];
+			dma_addr_t addr = vring_map_one_sg(vq, sg, DMA_FROM_DEVICE);
+			if (vring_mapping_error(vq, addr))
+				goto unmap_release;
 
-		desc[i].flags = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT |
-						VRING_DESC_F_WRITE);
-		desc[i].addr = cpu_to_virtio64(vq->vdev, addr);
-		desc[i].len = cpu_to_virtio32(vq->vdev, sg->length);
+			desc[i].flags = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT |
+							VRING_DESC_F_WRITE);
+			desc[i].addr = cpu_to_virtio64(vq->vdev, addr);
+			desc[i].len = cpu_to_virtio32(vq->vdev, sg->length);
 
-		prev = i;
-		i = virtio16_to_cpu(vq->vdev, desc[i].next);
+			prev = i;
+			i = virtio16_to_cpu(vq->vdev, desc[i].next);
+		}
 	}
+
 	/* Last one doesn't continue */
 	desc[prev].flags &= cpu_to_virtio16(vq->vdev, ~VRING_DESC_F_NEXT);
 
diff --git a/include/linux/virtio.h b/include/linux/virtio.h
index a4a54531ca63..3d4c88336055 100644
--- a/include/linux/virtio.h
+++ b/include/linux/virtio.h
@@ -13,24 +13,6 @@ struct virtio_device_id {
 };
 #define VIRTIO_DEV_ANY_ID	0xffffffff
 
-/**
- * virtio scatter-gather struct
- *
- * @addr:		sg buffer address
- * @lengh:		sg buffer length
- */
-struct virtio_sg {
-	void *addr;
-	size_t length;
-};
-
-static inline void virtio_sg_init_one(struct virtio_sg *sg,
-				      void *addr, size_t length)
-{
-	sg[0].addr = addr;
-	sg[0].length = length;
-}
-
 struct virtio_config_ops;
 
 /**
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index bdef47b0fa6c..1fa9c2ed7428 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -10,6 +10,7 @@
 #define _LINUX_VIRTIO_RING_H
 
 #include <linux/virtio_types.h>
+#include <linux/scatterlist.h>
 
 /* This marks a buffer as continuing via the next field */
 #define VRING_DESC_F_NEXT		1
@@ -161,10 +162,8 @@ static inline int vring_need_event(__u16 event_idx, __u16 new_idx, __u16 old)
 	return (__u16)(new_idx - event_idx - 1) < (__u16)(new_idx - old);
 }
 
-struct virtio_sg;
-
 /**
- * virtqueue_add - expose buffers to other end
+ * virtqueue_add_sgs - expose buffers to other end
  *
  * @vq:		the struct virtqueue we're talking about
  * @sgs:	array of terminated scatterlists
@@ -177,8 +176,8 @@ struct virtio_sg;
  *
  * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
  */
-int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
-		  unsigned int out_sgs, unsigned int in_sgs);
+int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
+		      unsigned int out_sgs, unsigned int in_sgs);
 
 /**
  * virtqueue_add_outbuf - expose output buffers to other end
@@ -192,9 +191,9 @@ int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
  * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
  */
 static inline int virtqueue_add_outbuf(struct virtqueue *vq,
-                                      struct virtio_sg *sg, unsigned int num)
+				       struct scatterlist *sg, unsigned int num)
 {
-	return virtqueue_add(vq, &sg, num, 0);
+	return virtqueue_add_sgs(vq, &sg, num, 0);
 }
 
 /**
@@ -209,9 +208,9 @@ static inline int virtqueue_add_outbuf(struct virtqueue *vq,
  * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
  */
 static inline int virtqueue_add_inbuf(struct virtqueue *vq,
-                                     struct virtio_sg *sg, unsigned int num)
+				      struct scatterlist *sg, unsigned int num)
 {
-	return virtqueue_add(vq, &sg, 0, num);
+	return virtqueue_add_sgs(vq, &sg, 0, num);
 }
 
 /**
@@ -219,7 +218,7 @@ static inline int virtqueue_add_inbuf(struct virtqueue *vq,
  *
  * @vq:		the struct virtqueue
  *
- * After one or more virtqueue_add() calls, invoke this to kick
+ * After one or more virtqueue_add_sgs() calls, invoke this to kick
  * the other side.
  *
  * Caller must ensure we don't call this with other virtqueue
-- 
2.39.5



