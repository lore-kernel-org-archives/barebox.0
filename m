Delivery-date: Thu, 07 May 2026 13:12:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKweZ-001wOq-20
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:12:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKweU-00054I-KJ
	for lore@pengutronix.de; Thu, 07 May 2026 13:12:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c7II4Hxvg3BSKiocx2CNZPSynkkfERAsStYKGjpA1es=; b=0/iICUiV9v8swgAlTZ0+A3rJL4
	IDmv2J2cFmdVPbluZqph4Zd/jot0NmsKQiUM7rJDhgOi4bvq4fje9OZ3O1D93k6WlurXz3jfB+2eb
	yAuYJGlmS4JGMdS7dNu7B3z4rGtShpXaHE8K+VODqLzAl3+iVN17dfsT4nHuA/l5y+3l2J25z7m1u
	9jTDE5CwQdNZ7sr65FMiTAjcESjQ010CZENJ1GVxy4HCksQcCQalaUWTvtbDVFfTs8LYUdObGrkbH
	UYQPhwfbEdxt/9sRDcbjSiO8CY2MCz4TA87bJjLQ+OSsbV2F/tyTQkO11Uyu+kEs8PHSKs63WPEkr
	ZCKIcUnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwd0-00000003aIf-1Clg;
	Thu, 07 May 2026 11:10:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwcz-00000003aI7-0XBD
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 11:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=c7II4Hxvg3BSKiocx2CNZPSynkkfERAsStYKGjpA1es=; b=hoF8x0RouKhTdLi12CUvXkVUpg
	Uyt8vlKR9fdsqznsRZoOolB9cka1ADHoxngy+tpJcjNezXMHZ7le0FFDO98aq/ig8shEbWgcF+Lzr
	W00N1cAN6sPL2F+zx1+vzDmhLWizNsUhhGB7yO02awgMNX5iCH2GI+/T+csBXwun/vQF0dSxc+8SS
	h5aNcPjBSq/P/C9bqdpjTHWWNlifeUJH1Ms0ARVhUEFrUGP010fBQB/ugviEgSjGjvyI1nl9/UljT
	QUF6yA8MWckeqY/LJq1ucHOM9ad3LopG0twHo3YP7gvN8J8h6uwrd/CUhY6t/DqD5ml/S8+gTTjYf
	3zr14nPQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwcv-00000003K93-3nl9
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:10:47 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wKwcu-00046U-GN; Thu, 07 May 2026 13:10:44 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 07 May 2026 13:10:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260507-input_is_key_pressed-v1-1-fc701980cb37@pengutronix.de>
References: <20260507-input_is_key_pressed-v1-0-fc701980cb37@pengutronix.de>
In-Reply-To: <20260507-input_is_key_pressed-v1-0-fc701980cb37@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1760; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=09f9SMxfsRF4AYJBzDmqEgJYkzK7jD8r0Ai9GSHorDs=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsj8U2zsUmat19u2/Kj3qzmm16O/TDffqpdTc1Bt9kmZI
 Mdo5QVlHaUsDGJcDLJiiiyxanIKQsb+180q7WJh5rAygQxh4OIUgInkvWZk+FNhtWDShE5XplCZ
 1zfYwpYLnTcWZNdMCbeSCbzOoz2PheGvkFxzT0Eh9yFTxoLNj549me1w+Kagc3bTxL/Kvi9a1v3
 gAgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_121046_389658_7DC2441C 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] input: add input_is_key_pressed() to read single key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

input_key_get_status() while being powerful and able to read all key
states at once, is difficult to use correctly, as the single incorrect
usage in upstream code shows.

Reading multiple key states at once, for any meaningful number of keys
combined (typically up to three) provides no advantage over checking the
keys sequentially.

Provide a simple input_is_key_pressed() function that checks a single
keycode.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/input/input.c | 14 ++++++++++++++
 include/input/input.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index e5509bf90d..ea3f4ef255 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -84,6 +84,20 @@ void input_key_get_status(unsigned long *keys, int bits)
 		bitmap_or(keys, keys, idev->keys, bits);
 }
 
+bool input_is_key_pressed(int key)
+{
+	struct input_device *idev;
+	bool pressed = false;
+
+	if (key > KEY_MAX)
+		return false;
+
+	list_for_each_entry(idev, &input_devices, list)
+		pressed = pressed || test_bit(key, idev->keys);
+
+	return pressed;
+}
+
 struct input_console {
 	struct console_device console;
 	struct input_notifier notifier;
diff --git a/include/input/input.h b/include/input/input.h
index 9445d20e56..3e03eb9a65 100644
--- a/include/input/input.h
+++ b/include/input/input.h
@@ -24,6 +24,7 @@ int input_device_register(struct input_device *);
 void input_device_unregister(struct input_device *);
 
 void input_key_get_status(unsigned long *keys, int bits);
+bool input_is_key_pressed(int key);
 
 struct input_notifier {
 	void (*notify)(struct input_notifier *in, struct input_event *event);

-- 
2.53.0.610.g30c4861dc6



