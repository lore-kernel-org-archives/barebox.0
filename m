Delivery-date: Mon, 29 Mar 2021 20:30:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQwen-0006Dc-OI
	for lore@lore.pengutronix.de; Mon, 29 Mar 2021 20:30:33 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQwem-000836-Nr
	for lore@pengutronix.de; Mon, 29 Mar 2021 20:30:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kmj0nOifvpta0jyWf6jHTEmvRmDE4CBzaf8ufDLFf5w=; b=DPczmlkI+7EvHm+b8hGa/cBGy
	Mlje2QFXCTCZtp0I9hushGEYhq2MBissGtnxuLoDABlo3FqO4JqlcWh9uGXZ0KnI9T0XGy3TCuI7n
	T+52xP86VQAlrXVgV5N0fs/l5Nnf9TZalli9bBk4rd7qALY74LkRzjtDrexig0U6euFctXREtbY7i
	HZQxD856DOfl42nUXlgRb3orc7k1ebV7Fz9fElAn8acX4DmYnupmn1o5Gc141XJ3QMw4gc7JUIo91
	14ZDmQnNb4YSbs9N5scnv0EnjnqtTzbOvPpl9y58n9Fp4ajMf76JQw5MmRCyn9QzxdZWg/5/j+ww6
	sI1v2aPJA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQwdL-0013Kx-MI; Mon, 29 Mar 2021 18:29:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQpEr-000aWO-21
 for barebox@desiato.infradead.org; Mon, 29 Mar 2021 10:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=6TwZOqOq0rWolMKzhWJ6aQaDkTaLKgOnXCWPRnUmELQ=; b=Pw6oUJX2Jq5BIhwu/RNwnyY0iP
 PLEMPd08yrsFAAUNApQ1aQT+FbdH036eOCDVREAFINzDLfS7VezOVvyNjp6RGlc7q72MIOLA2bEAJ
 FkEWYwyy1soV7nU4ixiqyGiUO6NIs1SWdmpne3ShM01wxdWPajZFIRmCMsEor344cb5eegBfjDWEW
 8u5AjRnB0zBNyKGMDu8d/1MR7tqcjRkn3+hPvC+PFQS7Ya64tTzsAlwWfi8PaubCix0T7HrxGKsCS
 V6o128XPwFBZ4s+j1ptc0nQfQeUpxDehhWQOay7LnARLB3ZzDW9p0jdDM0R9rba/n+4BXL/2uh9Zq
 Sm4n9CVw==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQlEm-0015iY-7G
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 06:19:09 +0000
X-Originating-IP: 83.135.83.82
Received: from geraet.fritz.box (unknown [83.135.83.82])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5923040008;
 Mon, 29 Mar 2021 06:18:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 29 Mar 2021 08:18:10 +0200
Message-Id: <20210329061810.1996248-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210329061810.1996248-1-ahmad@a3f.at>
References: <20210329061810.1996248-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_071901_570885_86C6AD43 
X-CRM114-Status: GOOD (  17.70  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] input: virtio_input: add sound support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Virtio input devices have an output channel for LEDs and a beeper.
Register a sound card for the beeper if sound support is compiled
in and the virtualized device reports sound support via the event
config bits.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/input/virtio_input.c | 105 ++++++++++++++++++++++++++++++++++-
 1 file changed, 102 insertions(+), 3 deletions(-)

diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
index 406dc613dc37..9c2e4d923f8d 100644
--- a/drivers/input/virtio_input.c
+++ b/drivers/input/virtio_input.c
@@ -6,6 +6,7 @@
 #include <linux/virtio_config.h>
 #include <linux/virtio_ring.h>
 #include <input/input.h>
+#include <sound.h>
 #include <dt-bindings/input/linux-event-codes.h>
 
 #include <uapi/linux/virtio_ids.h>
@@ -14,9 +15,11 @@
 struct virtio_input {
 	struct input_device        idev;
 	struct virtio_device       *vdev;
-	struct virtqueue           *evt;
+	struct virtqueue           *evt, *sts;
 	struct virtio_input_event  evts[64];
 	struct bthread             *bthread;
+	struct sound_card          beeper;
+	unsigned long              sndbit[BITS_TO_LONGS(SND_CNT)];
 };
 
 static void virtinput_queue_evtbuf(struct virtio_input *vi,
@@ -52,6 +55,51 @@ static int virtinput_recv_events(struct virtio_input *vi)
 	return i;
 }
 
+/*
+ * On error we are losing the status update, which isn't critical as
+ * this is used for the bell.
+ */
+static int virtinput_send_status(struct sound_card *beeper, unsigned freq, unsigned duration)
+{
+	struct virtio_input *vi = container_of(beeper, struct virtio_input, beeper);
+	struct virtio_input_event *stsbuf;
+	struct virtio_sg sg[1];
+	u16 code;
+	int rc;
+
+	stsbuf = kzalloc(sizeof(*stsbuf), 0);
+	if (!stsbuf)
+		return -ENOMEM;
+
+	code = vi->sndbit[0] & BIT_MASK(SND_TONE) ? SND_TONE : SND_BELL;
+
+	stsbuf->type  = cpu_to_le16(EV_SND);
+	stsbuf->code  = cpu_to_le16(code);
+	stsbuf->value = cpu_to_le32(freq);
+	virtio_sg_init_one(sg, stsbuf, sizeof(*stsbuf));
+
+	rc = virtqueue_add_outbuf(vi->sts, sg, 1);
+	virtqueue_kick(vi->sts);
+
+	if (rc != 0)
+		kfree(stsbuf);
+	return rc;
+}
+
+static int virtinput_recv_status(struct virtio_input *vi)
+{
+	struct virtio_input_event *stsbuf;
+	unsigned int len;
+	int i = 0;
+
+	while ((stsbuf = virtqueue_get_buf(vi->sts, &len)) != NULL) {
+		kfree(stsbuf);
+		i++;
+	}
+
+	return i;
+}
+
 static int virtinput_poll_vqs(void *_vi)
 {
 	struct virtio_input *vi = _vi;
@@ -60,6 +108,7 @@ static int virtinput_poll_vqs(void *_vi)
 		int bufs = 0;
 
 		bufs += virtinput_recv_events(vi);
+		bufs += virtinput_recv_status(vi);
 
 		if (bufs)
 			virtqueue_kick(vi->evt);
@@ -79,6 +128,37 @@ static u8 virtinput_cfg_select(struct virtio_input *vi,
 	return size;
 }
 
+static void virtinput_cfg_bits(struct virtio_input *vi, int select, int subsel,
+			       unsigned long *bits, unsigned int bitcount)
+{
+	unsigned int bit;
+	u8 *virtio_bits;
+	u8 bytes;
+
+	bytes = virtinput_cfg_select(vi, select, subsel);
+	if (!bytes)
+		return;
+	if (bitcount > bytes * 8)
+		bitcount = bytes * 8;
+
+	/*
+	 * Bitmap in virtio config space is a simple stream of bytes,
+	 * with the first byte carrying bits 0-7, second bits 8-15 and
+	 * so on.
+	 */
+	virtio_bits = kzalloc(bytes, GFP_KERNEL);
+	if (!virtio_bits)
+		return;
+	virtio_cread_bytes(vi->vdev, offsetof(struct virtio_input_config,
+					      u.bitmap),
+			   virtio_bits, bytes);
+	for (bit = 0; bit < bitcount; bit++) {
+		if (virtio_bits[bit / 8] & (1 << (bit % 8)))
+			__set_bit(bit, bits);
+	}
+	kfree(virtio_bits);
+}
+
 static void virtinput_fill_evt(struct virtio_input *vi)
 {
 	int i, size;
@@ -93,15 +173,16 @@ static void virtinput_fill_evt(struct virtio_input *vi)
 
 static int virtinput_init_vqs(struct virtio_input *vi)
 {
-	struct virtqueue *vqs[1];
+	struct virtqueue *vqs[2];
 	int err;
 
 
-	err = virtio_find_vqs(vi->vdev, 1, vqs);
+	err = virtio_find_vqs(vi->vdev, 2, vqs);
 	if (err)
 		return err;
 
 	vi->evt = vqs[0];
+	vi->sts = vqs[1];
 
 	return 0;
 }
@@ -132,6 +213,9 @@ static int virtinput_probe(struct virtio_device *vdev)
 			   name, min(size, sizeof(name)));
 	name[size] = '\0';
 
+	virtinput_cfg_bits(vi, VIRTIO_INPUT_CFG_EV_BITS, EV_SND,
+			   vi->sndbit, SND_CNT);
+
 	virtio_device_ready(vdev);
 
 	err = input_device_register(&vi->idev);
@@ -147,6 +231,21 @@ static int virtinput_probe(struct virtio_device *vdev)
 		goto err_bthread_run;
 	}
 
+	if (IS_ENABLED(CONFIG_SOUND) &&
+	    (vi->sndbit[0] & (BIT_MASK(SND_BELL) | BIT_MASK(SND_TONE)))) {
+		struct sound_card *beeper;
+
+		beeper = &vi->beeper;
+		beeper->name = basprintf("%s/beeper0", dev_name(&vdev->dev));
+		beeper->beep = virtinput_send_status;
+
+		err = sound_card_register(&vi->beeper);
+		if (err)
+			dev_warn(&vdev->dev, "bell registration failed: %pe\n", ERR_PTR(err));
+		else
+			dev_info(&vdev->dev, "bell registered\n");
+	}
+
 	dev_info(&vdev->dev, "'%s' probed\n", name);
 
 	return 0;
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

