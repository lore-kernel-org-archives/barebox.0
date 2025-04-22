Delivery-date: Tue, 22 Apr 2025 10:39:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79AD-003ycX-3A
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79A7-0002Ys-Nj
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WKV4oz8DXkcYWD9h1r9gsZZO8cHxWceAUKQspOylF/0=; b=aKxO2MLjR0Fyovn0QuXDDkR1kj
	PbczbuHLl9JAYJdx+Luq9htP0bS+34yGwLudwFujJ6aawGWNIWTl797b00loOuANPeC+v8Fgb9TNS
	Oz10NVf4QEiTe5HPxQ82BEFSo9NwH95125LFwFzDQMK98WB3pX4v1b/HSvMC5oxH3ZH1eEp9p5RH6
	M6uWODeaM4hz3YKFMPDap3WBUVB1Z6hNM19iwlGQwRzCL4quBXE/FIHFzw791l1Fdgq/GbjJOeRtp
	jco0PMdyhtx+GEGsw16mg65oU5UpOploWDF+Gt0iaFef9N1iRvFAq1KP05ua/2G6aso4KdmtewV1V
	moRVKoLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u799F-00000006Mr5-2rgb;
	Tue, 22 Apr 2025 08:38:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78V3-00000006CXm-1DHa
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:57:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78V1-0000la-V2; Tue, 22 Apr 2025 09:56:59 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78V1-001Vwc-2R;
	Tue, 22 Apr 2025 09:56:59 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78V1-000vZB-29;
	Tue, 22 Apr 2025 09:56:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 09:56:58 +0200
Message-Id: <20250422075658.221273-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005701_324742_2E0EE3E7 
X-CRM114-Status: GOOD (  18.44  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] virtio: make more robust in face of misbehaving devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The virtio device drivers assume at a number of places that polling
indefinitely with virtqueue_get_buf will eventually succeed.

It was observed that sometimes after a warm reboot inside QEMU, barebox
finds itself inside an infinite poll loop.

This needs to be further analyzed, of course, but it's already and
improvement for barebox to recover from such situations by returning an
error code or at least printing an error message.

It's unlikely though that the system will be completely functional
after this, but it gives the user a fighting chance.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/virtio_blk.c      |  4 ++--
 drivers/hw_random/virtio-rng.c  |  4 ++--
 drivers/net/virtio.c            |  6 ++----
 drivers/serial/virtio_console.c |  4 ++--
 drivers/virtio/virtio_ring.c    | 15 +++++++++++++++
 include/linux/virtio_ring.h     | 22 ++++++++++++++++++++++
 6 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 11111f174142..f1ee76da9750 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -55,8 +55,8 @@ static int virtio_blk_do_req(struct virtio_blk_priv *priv, void *buffer,
 
 	virtqueue_kick(priv->vq);
 
-	while (!virtqueue_get_buf(priv->vq, NULL))
-		;
+	if (!virtqueue_get_buf_timeout(priv->vq, NULL, NSEC_PER_SEC))
+		return -ETIMEDOUT;
 
 	return status == VIRTIO_BLK_S_OK ? 0 : -EIO;
 }
diff --git a/drivers/hw_random/virtio-rng.c b/drivers/hw_random/virtio-rng.c
index 1ce321352935..3d144e4ab654 100644
--- a/drivers/hw_random/virtio-rng.c
+++ b/drivers/hw_random/virtio-rng.c
@@ -47,8 +47,8 @@ static int virtio_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wai
 
 		virtqueue_kick(vi->rng_vq);
 
-		while (!virtqueue_get_buf(vi->rng_vq, &rsize))
-			;
+		if (!virtqueue_get_buf_timeout(vi->rng_vq, &rsize, NSEC_PER_SEC))
+			return -ETIMEDOUT;
 
 		memcpy(ptr, buf, rsize);
 		remaining -= rsize;
diff --git a/drivers/net/virtio.c b/drivers/net/virtio.c
index 73afbc7645bd..8d46acb99a25 100644
--- a/drivers/net/virtio.c
+++ b/drivers/net/virtio.c
@@ -92,10 +92,8 @@ static int virtio_net_send(struct eth_device *edev, void *packet, int length)
 
 	virtqueue_kick(priv->tx_vq);
 
-	while (1) {
-		if (virtqueue_get_buf(priv->tx_vq, NULL))
-			break;
-	}
+	if (!virtqueue_get_buf_timeout(priv->tx_vq, NULL, NSEC_PER_SEC))
+		return -ETIMEDOUT;
 
 	return 0;
 }
diff --git a/drivers/serial/virtio_console.c b/drivers/serial/virtio_console.c
index 09249aef7a14..ae36cad6e5bd 100644
--- a/drivers/serial/virtio_console.c
+++ b/drivers/serial/virtio_console.c
@@ -53,8 +53,8 @@ static void put_chars(struct virtio_console *virtcons, const char *buf, int coun
 		/* Tell Host to go! */
 		virtqueue_kick(out_vq);
 		/* Chill out until it's done with the buffer. */
-		while (!virtqueue_get_buf(out_vq, &len))
-			cpu_relax();
+		if (!virtqueue_get_buf_timeout(out_vq, &len, NSEC_PER_SEC))
+			dev_warn(virtcons->cdev.dev, "Timeout waiting for TX ack\n");
 	}
 }
 
diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 29d7bb9ef662..284721aeff5b 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -13,6 +13,7 @@
 #include <linux/virtio_types.h>
 #include <linux/virtio.h>
 #include <linux/virtio_ring.h>
+#include <linux/ktime.h>
 #include <linux/bug.h>
 #include <dma.h>
 
@@ -276,6 +277,20 @@ void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len)
 	return ret;
 }
 
+void *virtqueue_get_buf_timeout(struct virtqueue *vq, unsigned int *len,
+				ktime_t timeout)
+{
+	ktime_t start = get_time_ns();
+
+	do {
+		void *ret = virtqueue_get_buf(vq, len);
+		if (ret)
+			return ret;
+	} while (!is_timeout(start, timeout));
+
+	return NULL;
+}
+
 static struct virtqueue *__vring_new_virtqueue(unsigned int index,
 					       struct vring vring,
 					       struct virtio_device *vdev)
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index 04a2ad0cb1f9..7548504bc42b 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -11,6 +11,7 @@
 
 #include <linux/virtio_types.h>
 #include <linux/scatterlist.h>
+#include <linux/ktime.h>
 
 /* This marks a buffer as continuing via the next field */
 #define VRING_DESC_F_NEXT		1
@@ -257,6 +258,27 @@ void virtqueue_kick(struct virtqueue *vq);
  */
 void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len);
 
+/**
+ * virtqueue_get_buf_timeout - poll the next used buffer with timeout
+ *
+ * @vq:		the struct virtqueue we're talking about
+ * @len:	the length written into the buffer
+ * @timeout:	the timeout in nanoseconds
+ *
+ * If the device wrote data into the buffer, @len will be set to the
+ * amount written. This means you don't need to clear the buffer
+ * beforehand to ensure there's no data leakage in the case of short
+ * writes.
+ *
+ * Caller must ensure we don't call this with other virtqueue
+ * operations at the same time (except where noted).
+ *
+ * Returns NULL on timeout, or the "data" token
+ * handed to virtqueue_add_*().
+ */
+void *virtqueue_get_buf_timeout(struct virtqueue *vq, unsigned int *len,
+				ktime_t timeout);
+
 /**
  * vring_create_virtqueue - create a virtqueue for a virtio device
  *
-- 
2.39.5



