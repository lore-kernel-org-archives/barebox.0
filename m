Delivery-date: Tue, 22 Jun 2021 10:28:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvblL-00088s-5u
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:28:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvblK-0003AU-6n
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:28:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBaIG6Dm++F9FSg8E2sNekXXkbADI1kDeSUwBHVTZ0Y=; b=bN+0eggevXWY2w
	u3DJ9WtiXfWQpRrsuVfIqRgtiW90Ffx8Rm8+Hi5txSdBcb1ZE6aQ2J/uJw0oEIWk0o08GOcgRjBWn
	06MPHVQcsCBMiyJTtOA+omi7cm8dPF/QKVYZd4BrNUov+GZ5a+I1dJXsoxR8ijbOrKsL6QM3EgbVd
	vgPt8EGJrrAinvIyGUJ/sMzY70d/fNA8R3+mZnS6OZT3tXmg9zhH48r9TQ1fkRtoV55s21tGw4x3X
	0ArBmuBn+eSEGcwSmDK4XUXkAU44ro/3yyqDe/jAiVdP3/pWC1uDVfEKUaLYdrcxqc6shQnGm14R+
	JIcT/PVgRBXyS0I6vbUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbkB-006EEA-Jd; Tue, 22 Jun 2021 08:26:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbjq-006E44-ML
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:26:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0002ic-Ch; Tue, 22 Jun 2021 10:26:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjg-0005hi-W7; Tue, 22 Jun 2021 10:26:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Jun 2021 10:26:10 +0200
Message-Id: <20210622082617.18011-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622082617.18011-1-a.fatoum@pengutronix.de>
References: <20210622082617.18011-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_012630_775175_3410835B 
X-CRM114-Status: GOOD (  15.30  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 1/8] input: virtio: poll from poller, not bthread
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the upcoming move of bthreads to be scheduled only in command
context, long running tasks (i.e. bareDOOM) may no longer process
VirtIO input in a timely manner. Move the input polling into a poller,
so input can once again be processed between frames.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/input/Kconfig        |  3 ++-
 drivers/input/virtio_input.c | 45 ++++++++++++++++--------------------
 2 files changed, 22 insertions(+), 26 deletions(-)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index ff3e9d33f6d7..ba9fa25a3dec 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -73,7 +73,8 @@ config INPUT_SPECIALKEYS
 
 config VIRTIO_INPUT
 	bool "Virtio input driver"
-	depends on VIRTIO && BTHREAD
+	depends on VIRTIO
+	select POLLER
 	select INPUT
 	help
 	 This driver supports virtio keyboard input devices.
diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
index 9c2e4d923f8d..b354933209fc 100644
--- a/drivers/input/virtio_input.c
+++ b/drivers/input/virtio_input.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <bthread.h>
+#include <poller.h>
 #include <linux/virtio.h>
 #include <linux/virtio_config.h>
 #include <linux/virtio_ring.h>
@@ -17,7 +17,7 @@ struct virtio_input {
 	struct virtio_device       *vdev;
 	struct virtqueue           *evt, *sts;
 	struct virtio_input_event  evts[64];
-	struct bthread             *bthread;
+	struct poller_struct       poller;
 	struct sound_card          beeper;
 	unsigned long              sndbit[BITS_TO_LONGS(SND_CNT)];
 };
@@ -100,21 +100,17 @@ static int virtinput_recv_status(struct virtio_input *vi)
 	return i;
 }
 
-static int virtinput_poll_vqs(void *_vi)
+static void virtinput_poll_vqs(struct poller_struct *poller)
 {
-	struct virtio_input *vi = _vi;
+	struct virtio_input *vi = container_of(poller, struct virtio_input, poller);
 
-	while (!bthread_should_stop()) {
-		int bufs = 0;
+	int bufs = 0;
 
-		bufs += virtinput_recv_events(vi);
-		bufs += virtinput_recv_status(vi);
+	bufs += virtinput_recv_events(vi);
+	bufs += virtinput_recv_status(vi);
 
-		if (bufs)
-			virtqueue_kick(vi->evt);
-	}
-
-	return 0;
+	if (bufs)
+		virtqueue_kick(vi->evt);
 }
 
 static u8 virtinput_cfg_select(struct virtio_input *vi,
@@ -213,6 +209,8 @@ static int virtinput_probe(struct virtio_device *vdev)
 			   name, min(size, sizeof(name)));
 	name[size] = '\0';
 
+	dev_info(&vdev->dev, "'%s' detected\n", name);
+
 	virtinput_cfg_bits(vi, VIRTIO_INPUT_CFG_EV_BITS, EV_SND,
 			   vi->sndbit, SND_CNT);
 
@@ -224,12 +222,12 @@ static int virtinput_probe(struct virtio_device *vdev)
 
 	virtinput_fill_evt(vi);
 
-	vi->bthread = bthread_run(virtinput_poll_vqs, vi,
-				  "%s/input0", dev_name(&vdev->dev));
-	if (!vi->bthread) {
-		err = -ENOMEM;
-		goto err_bthread_run;
-	}
+	vi->poller.func = virtinput_poll_vqs;
+	snprintf(name, sizeof(name), "%s/input0", dev_name(&vdev->dev));
+
+	err = poller_register(&vi->poller, name);
+	if (err)
+		goto err_poller_register;
 
 	if (IS_ENABLED(CONFIG_SOUND) &&
 	    (vi->sndbit[0] & (BIT_MASK(SND_BELL) | BIT_MASK(SND_TONE)))) {
@@ -246,12 +244,10 @@ static int virtinput_probe(struct virtio_device *vdev)
 			dev_info(&vdev->dev, "bell registered\n");
 	}
 
-	dev_info(&vdev->dev, "'%s' probed\n", name);
-
 	return 0;
 
-err_bthread_run:
-	bthread_free(vi->bthread);
+err_poller_register:
+	input_device_unregister(&vi->idev);
 err_input_register:
 	vdev->config->del_vqs(vdev);
 err_init_vq:
@@ -263,8 +259,7 @@ static void virtinput_remove(struct virtio_device *vdev)
 {
 	struct virtio_input *vi = vdev->priv;
 
-	bthread_stop(vi->bthread);
-	bthread_free(vi->bthread);
+	poller_unregister(&vi->poller);
 
 	vdev->config->reset(vdev);
 	vdev->config->del_vqs(vdev);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

