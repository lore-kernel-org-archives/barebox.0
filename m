Delivery-date: Thu, 16 Sep 2021 11:36:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnof-0006bS-Mx
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:36:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnoe-0007AW-KA
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kngOV4P14WQKst7TFp3qbYPnw/OiyhboW5/0v60jVKQ=; b=IXrTtFpI9vOOqK
	xf60ydeInic+WchNq7JZSANL/k36VRPmBmVpSOxzeycCgzXdHKFgvY2ALiwRlpjq0mu3ipffcXWXg
	mld0hs69/2F876j3V/QKVstZHuKqU6uR8k8BCHfZRdRgJiO6/d7v+6plRyJ90WOh7C8wtiDHcbyOl
	G5/80kdBqDUzr4dq6EB6h9QNIYphNxik+E6Xsvi0uvRVpaw4zyOwXH4GU8JgfTYmSFwUens117+dB
	G2GWQCMwNeaxInNyksiplpM2uViUZEnrt+JUhFm+aiazTdQ67bWv4+2nUKD30bvXy1YrZLxaeOFO7
	UrcP5gYdG4FR6IZuBl3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnnP-00AiZm-CH; Thu, 16 Sep 2021 09:35:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnnK-00AiYS-8D
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:35:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnnJ-0006jk-05; Thu, 16 Sep 2021 11:35:01 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnnI-0005VK-OA; Thu, 16 Sep 2021 11:35:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Sep 2021 11:34:58 +0200
Message-Id: <20210916093458.21102-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_023502_349935_2EAECB2B 
X-CRM114-Status: GOOD (  15.99  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] virtio: implement remove callbacks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

virtio parent device drivers (e.g. PCI and MMIO) create child devices
and free them on remove. The virtio drivers for the child devices (e.g.
block and console) however don't unregister with their respective
subsystems in the remove callbacks. So these subsystems may have stale
pointers pointing at removed devices. This is especially problematic for
the console driver, because the virtio console device_d will be removed,
but the console itself remains registered leading to a use-after-free
as soon as printf is invoked for the previously active console.

This leads to a crash when typing reset in

  https://www.barebox.org/jsbarebox/?graphic=0

Fix this for all virtio drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/virtio_blk.c      |  6 ++++++
 drivers/hw_random/core.c        | 12 ++++++++++++
 drivers/hw_random/virtio-rng.c  |  6 ++++++
 drivers/input/virtio_input.c    |  5 +++--
 drivers/serial/virtio_console.c | 14 ++++++++++++++
 include/linux/hw_random.h       |  2 ++
 6 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index b7a83cf686c1..87ab505f8326 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -95,6 +95,7 @@ static int virtio_blk_probe(struct virtio_device *vdev)
 		return ret;
 
 	priv->vdev = vdev;
+	vdev->priv = priv;
 
 	devnum = cdev_find_free_index("virtioblk");
 	priv->blk.cdev.name = xasprintf("virtioblk%d", devnum);
@@ -115,8 +116,13 @@ static int virtio_blk_probe(struct virtio_device *vdev)
 
 static void virtio_blk_remove(struct virtio_device *vdev)
 {
+	struct virtio_blk_priv *priv = vdev->priv;
+
 	vdev->config->reset(vdev);
+	blockdevice_unregister(&priv->blk);
 	vdev->config->del_vqs(vdev);
+
+	free(priv);
 }
 
 static const struct virtio_device_id id_table[] = {
diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
index ee3d5a52ddf3..86214dc8bae7 100644
--- a/drivers/hw_random/core.c
+++ b/drivers/hw_random/core.c
@@ -92,6 +92,12 @@ static int hwrng_register_cdev(struct hwrng *rng)
 	return devfs_create(&rng->cdev);
 }
 
+static void hwrng_unregister_cdev(struct hwrng *rng)
+{
+	devfs_remove(&rng->cdev);
+	free(rng->cdev.name);
+}
+
 struct hwrng *hwrng_get_first(void)
 {
 	if (list_empty(&hwrngs))
@@ -122,3 +128,9 @@ int hwrng_register(struct device_d *dev, struct hwrng *rng)
 
 	return err;
 }
+
+void hwrng_unregister(struct hwrng *rng)
+{
+	hwrng_unregister_cdev(rng);
+	free(rng->buf);
+}
diff --git a/drivers/hw_random/virtio-rng.c b/drivers/hw_random/virtio-rng.c
index 7bdacc976e72..f0a3d3cb74e7 100644
--- a/drivers/hw_random/virtio-rng.c
+++ b/drivers/hw_random/virtio-rng.c
@@ -78,8 +78,14 @@ static int virtrng_probe(struct virtio_device *vdev)
 
 static void virtrng_remove(struct virtio_device *vdev)
 {
+	struct virtrng_info *vi = vdev->priv;
+
 	vdev->config->reset(vdev);
+	if (vi->hwrng_register_done)
+		hwrng_unregister(&vi->hwrng);
 	vdev->config->del_vqs(vdev);
+
+	kfree(vi);
 }
 
 static void virtrng_scan(struct virtio_device *vdev)
diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
index b354933209fc..b5430886ab84 100644
--- a/drivers/input/virtio_input.c
+++ b/drivers/input/virtio_input.c
@@ -259,10 +259,11 @@ static void virtinput_remove(struct virtio_device *vdev)
 {
 	struct virtio_input *vi = vdev->priv;
 
-	poller_unregister(&vi->poller);
-
 	vdev->config->reset(vdev);
+	poller_unregister(&vi->poller);
+	input_device_unregister(&vi->idev);
 	vdev->config->del_vqs(vdev);
+
 	kfree(vi);
 }
 
diff --git a/drivers/serial/virtio_console.c b/drivers/serial/virtio_console.c
index a1331035d9ef..a4adb77610f6 100644
--- a/drivers/serial/virtio_console.c
+++ b/drivers/serial/virtio_console.c
@@ -134,6 +134,8 @@ static int virtcons_probe(struct virtio_device *vdev)
 
 	virtcons = xzalloc(sizeof(*virtcons));
 
+	vdev->priv = virtcons;
+
 	virtcons->in_vq = vqs[0];
 	virtcons->out_vq = vqs[1];
 
@@ -150,6 +152,17 @@ static int virtcons_probe(struct virtio_device *vdev)
 	return console_register(&virtcons->cdev);
 }
 
+static void virtcons_remove(struct virtio_device *vdev)
+{
+	struct virtio_console *virtcons = vdev->priv;
+
+	vdev->config->reset(vdev);
+	console_unregister(&virtcons->cdev);
+	vdev->config->del_vqs(vdev);
+
+	free(virtcons);
+}
+
 static struct virtio_device_id id_table[] = {
 	{ VIRTIO_ID_CONSOLE, VIRTIO_DEV_ANY_ID },
 	{ 0 },
@@ -159,6 +172,7 @@ static struct virtio_driver virtio_console = {
 	.driver.name =	"virtio_console",
 	.id_table =	id_table,
 	.probe =	virtcons_probe,
+	.remove =	virtcons_remove,
 };
 device_virtio_driver(virtio_console);
 
diff --git a/include/linux/hw_random.h b/include/linux/hw_random.h
index bae442166c10..116afd9721e5 100644
--- a/include/linux/hw_random.h
+++ b/include/linux/hw_random.h
@@ -44,4 +44,6 @@ struct hwrng *hwrng_get_first(void);
 static inline struct hwrng *hwrng_get_first(void) { return ERR_PTR(-ENODEV); };
 #endif
 
+void hwrng_unregister(struct hwrng *rng);
+
 #endif /* LINUX_HWRANDOM_H_ */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

