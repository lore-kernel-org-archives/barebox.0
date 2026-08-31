Delivery-date: Mon, 31 Aug 2026 15:21:52 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x11xP-009I1n-2G
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:21:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 37D2220248B
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:21:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QqNlQZZ9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TE/TtcC8ksRa3h1MKfqld1Ke905K3Y+g0R+8pn6Sff8=; b=QqNlQZZ9rYElxQJ7BQn7lN6Tkp
	2REe3crdTyegMCpzNe++5dbUWbkpA5tDbcyXXKvBWp2luJGeGtgwAb2cxjKnlJlFW1I7oPzTuNUbZ
	TOy20MuGCe5h/BNB/oIPP6vKnY+Z2szQ4KyrS9PcufxgwDCVvUUET1nIHEgH5c4apWG3obMeduF4a
	74sfX0QqgUp2asqCcZ4WADPYEtnPuORmsj7FfLUG/5TEC6h6cij9c/+wppmXvMTUW/UMc9m1DOT4p
	FVaoCIIJ26HoWye3qFbDuyoNtVCeyJq3yu9EG0bjuSPRy1zuZvQj+XYLuD/hjE67ig1ogSZ1m+nFV
	dUE9Aw8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vy-00000009Nwq-1mXm;
	Mon, 31 Aug 2026 13:20:22 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vs-00000009NtE-2aa2
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D4179202484;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GR3-1x;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-1yJE;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:13 +0200
Subject: [PATCH 06/13] usb: storage: tear the disk down properly on
 disconnect
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-6-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=2335;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=NWLgwr1H0CfrUBEK+ntgrTKd/eopoUfN3J3o935jpXY=;
 b=/wfRLsTtIrK2C0OIj7VjinUS/1RJLl34DBOphxyEl6x3cWQLEnaTTVN/6dIJmk3SL4BQ/WyP3
 493Gs8ZM59uCQKwFj2rsEl5lrwej3bevXb/uReDtYQguj4yigs0jm1W
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062016_836286_0CC13C4C 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  usb_stor_disconnect() unregistered the block device and freed
    it right away, no matter whether the removal actually worked. With a filesystem
    mounted from the stick it does not: the partition cdev is [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: dn33tus7oejs5e5q7gfxnyneemsgmxmt
X-Rspamd-Queue-Id: 37D2220248B
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

usb_stor_disconnect() unregistered the block device and freed it right
away, no matter whether the removal actually worked. With a filesystem
mounted from the stick it does not: the partition cdev is still open, so
the disk cannot go away and the cdevs would be left pointing into freed
memory.

Use blockdevice_unregister_removed(), which drops the filesystems that
were mounted from the stick before removing it. They are stale anyway,
the medium they live on is gone.

Should something else still hold the disk open we now keep it around
instead of freeing it. That leaks the disk and the us_data it refers to,
but a leak is preferable to handing out a cdev that points at freed
memory. barebox has no refcounting on devices, so there is no way to do
better than that here.

While at it, free the cdev name, which nobody did so far.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 drivers/usb/storage/usb.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 39c4695b0a..7c19207a8d 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -608,16 +608,34 @@ static void usb_stor_disconnect(struct usb_device *usbdev)
 {
 	struct us_data *us = (struct us_data *)usbdev->drv_data;
 	struct us_blk_dev *bdev, *bdev_tmp;
+	bool busy = false;
+	int ret;
 
 	list_for_each_entry_safe(bdev, bdev_tmp, &us->blk_dev_list, list) {
+		ret = blockdevice_unregister_removed(&bdev->blk);
+		if (ret) {
+			/*
+			 * Something still holds the disk open. Leaking it is
+			 * not nice, but freeing it would leave the cdev that
+			 * is still in use pointing at freed memory.
+			 */
+			dev_err(&usbdev->dev, "%s is still in use, leaking it: %pe\n",
+				bdev->blk.cdev.name, ERR_PTR(ret));
+			busy = true;
+			continue;
+		}
+
 		list_del(&bdev->list);
-		blockdevice_unregister(&bdev->blk);
+		free(bdev->blk.cdev.name);
 		free(bdev);
 	}
 
 	/* release device's private data */
-	usbdev->drv_data = 0;
-	free(us);
+	usbdev->drv_data = NULL;
+
+	/* a leaked disk still refers to us, so that has to stay as well */
+	if (!busy)
+		free(us);
 }
 
 #define USUAL_DEV(use_proto, use_trans, drv_info) \

-- 
2.47.3



