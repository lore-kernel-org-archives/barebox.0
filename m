Delivery-date: Sun, 08 Nov 2026 11:46:53 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQ0QG-008eYR-2M
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 11:46:53 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E4993200B4C
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 11:46:52 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YLWxzopR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794134812;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kuahcV1G/b6g/yqox9/xWOJoDI+Cxd1KngiWeE4JkaM=;
	b=IAneieZ8gg017ZoFXndmRTHTG64Q4mg4G+iqeev300DdEDFT9jAdilfXYPy+30bKJCNCtZ
	oALW6rIvFyloF00Vi+2aqh1Ol3MO+kenyCsbkq0dAzL+xPPfx8ADbw3/2pqeJ6nVRezlMc
	DEKz5ZCA0P+gbTlQuSF61UYxm7d4DveEW8gXUJdkePWfZ8k+Phg6TGAF5N+ERuIBUlagCL
	pHArSmbEpP+a69A+L2HcYWiPtkSr7CDKldNtBHe7qtexGAgjcM8WsTbxl0Mh1LrOaaNgxK
	QFUGoskXyPbdfB3P+n0IkHcFLTMuemq88s6AY6WC7aBjj+4yRnjXKXtcuhwAKw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YLWxzopR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794134812; a=rsa-sha256;
	cv=none;
	b=gu/heIjuKHHzODljLrvpOw/XN6+4cKI/Pos/vOVBi909YSVsUNmlnfRz3Kx4gD+dAhxQOO
	ZttAU9kvutzY21HoAkW/OHAQYvkg5tqRy67Hchkq0rvsD93YWnCndBQs81IrGVW/lJyUAf
	JjngAicqZxap6MQqnPITfKIXUsa0Tx7142Kpl97t4YcGLEUGfNKR4jp8ohH7vfOQVEu65M
	Z8mTTSYeGwC3X4dNSSqCZuPkCZmUDgp2i/m+0Yqjhr6q806nDv1W8WQLHSAYPEL/utcSao
	2qSGqu3mCM+C4mqHf0LacOv8paLO+rPAnzI9XMPzGVwNDY2XfGpxtO0eqgj7Uw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=kuahcV1G/b6g/yqox9/xWOJoDI+Cxd1KngiWeE4JkaM=; b=YLWxzopRXfhkDoa0uVCmPgthtB
	C6ssJo/C0wecZCEMenh196XfUqdln+VbMIgmWx/KAtBpBriKen/SJCIZjo5yt8pbZ8w/V++yXiCRN
	IEpLdhSr1T+YY+tyDdriY/a/C6JlG4pVB0IYi2UZa0gJf1Yfah9fVCBk9BwagR16kJIUNaRtH2tXK
	u00bIOV1GMBASzT72vt5J9ujv3Wgd28n4Ew7o9FhpUVnJzKP9DcZnspbKXcU9oOXf3bLBJM1Gvy9R
	tV/3WyAdvOtfbriscaadFR3WdBqB3coUjBbPB0ZC7KI7d7LZ3koBAxSmXzlGQSKav7XEdYPLjjRv4
	xB5JRFig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ0PE-0000000Fzzd-4BDC;
	Sun, 08 Nov 2026 10:45:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ0PC-0000000FzzE-2yFI
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 10:45:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xQ0PA-0003y2-R5; Sun, 08 Nov 2026 11:45:44 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master] input: virtio_input: don't free poller-enabled beeper on remove
Date: Sun,  8 Nov 2026 11:45:42 +0100
Message-ID: <20261108104543.1296711-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_024546_750575_D7288584 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The sound card of a virtio keyboard is embedded in the driver's
    private data, which virtinput_remove() frees. Drop the free and instead just
    disable the soundcard, so it can no longer beep. A proper fix would be to
    add support for unregistering sound cards, but that can follow after devm
    support lands. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E4993200B4C
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: cc3jbd1tx44f8g5u9hdyp6omfuzi374e

The sound card of a virtio keyboard is embedded in the driver's private
data, which virtinput_remove() frees.

Drop the free and instead just disable the soundcard, so it can no
longer beep. A proper fix would be to add support for unregistering
sound cards, but that can follow after devm support lands.

Fixes: deb9d7c18b07 ("input: virtio_input: add sound support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/input/virtio_input.c | 12 ++++++++----
 drivers/sound/core.c         | 11 ++++++++++-
 include/sound.h              |  6 ++++++
 3 files changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
index 6e73e7873986..48a3aef2522c 100644
--- a/drivers/input/virtio_input.c
+++ b/drivers/input/virtio_input.c
@@ -19,6 +19,7 @@ struct virtio_input {
 	struct virtio_input_event  evts[64];
 	struct poller_struct       poller;
 	struct sound_card          beeper;
+	bool                       beeper_registered;
 	unsigned long              sndbit[BITS_TO_LONGS(SND_CNT)];
 };
 
@@ -239,10 +240,12 @@ static int virtinput_probe(struct virtio_device *vdev)
 		beeper->beep = virtinput_send_status;
 
 		err = sound_card_register(&vi->beeper);
-		if (err)
+		if (err) {
 			dev_warn(&vdev->dev, "bell registration failed: %pe\n", ERR_PTR(err));
-		else
+		} else {
+			vi->beeper_registered = true;
 			dev_info(&vdev->dev, "bell registered\n");
+		}
 	}
 
 	return 0;
@@ -260,12 +263,13 @@ static void virtinput_remove(struct virtio_device *vdev)
 {
 	struct virtio_input *vi = vdev->priv;
 
+	if (vi->beeper_registered)
+		sound_card_disable(&vi->beeper);
+
 	vdev->config->reset(vdev);
 	poller_unregister(&vi->poller);
 	input_device_unregister(&vi->idev);
 	vdev->config->del_vqs(vdev);
-
-	kfree(vi);
 }
 
 static const struct virtio_device_id id_table[] = {
diff --git a/drivers/sound/core.c b/drivers/sound/core.c
index 801b1fade552..aabcfee2822f 100644
--- a/drivers/sound/core.c
+++ b/drivers/sound/core.c
@@ -18,6 +18,9 @@ struct beep {
 static int sound_card_do_beep(struct sound_card *card,
 			      int freq, unsigned int us)
 {
+	if (!card->beep)
+		return -ENODEV;
+
 	if (freq == -1)
 		freq = card->bell_frequency;
 
@@ -110,7 +113,7 @@ int sound_card_beep_cancel(struct sound_card *card)
 
 	poller_async_cancel(&card->poller);
 
-	ret = card->beep(card, 0, 0);
+	ret = sound_card_do_beep(card, 0, 0);
 
 	list_for_each_entry_safe(beep, tmp, &card->tune, list) {
 		list_del(&beep->list);
@@ -119,3 +122,9 @@ int sound_card_beep_cancel(struct sound_card *card)
 
 	return ret;
 }
+
+void sound_card_disable(struct sound_card *card)
+{
+	sound_card_beep_cancel(card);
+	card->beep = NULL;
+}
diff --git a/include/sound.h b/include/sound.h
index 62fef106ee73..56c3c328d081 100644
--- a/include/sound.h
+++ b/include/sound.h
@@ -25,6 +25,12 @@ int sound_card_beep_wait(struct sound_card *card, unsigned timeout_us);
 int sound_card_beep(struct sound_card *card, int freq, unsigned int us);
 int sound_card_beep_cancel(struct sound_card *card);
 
+#ifdef CONFIG_SOUND
+void sound_card_disable(struct sound_card *card);
+#else
+static inline void sound_card_disable(struct sound_card *card) {}
+#endif
+
 struct sound_card *sound_card_get_default(void);
 
 static inline int beep(int freq, unsigned us)
-- 
2.47.3



