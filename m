Delivery-date: Mon, 31 Aug 2026 15:37:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x12Ci-009IGv-18
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:37:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DAA97202487
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:37:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OueF4LTD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RRMExrK2TDSFXrM3pb8Lb8Z+t6lVjv69MXc14qMckps=; b=OueF4LTDJu+JsNt0h06lXwWv9h
	4b+gyrIRj+qm7fdlDuPvQstdwSWs/A/svbz7wjv+SsyunMwOQg2VJ1J1+pVXS86RGgwkYlg5auAnx
	Lmf5pQw6NiF2qXaOSe5QwlGnkfeotsGHaOeJhokq64kGvGGZQqgz0SvlZWmmOJtTrBDhDa2F1z61M
	KY3HJ9VB7B29+V1wQghrK7dDiF0/1oly/mVWlk3cjTs3AeYPfDXqce8LneAo2aciyqWLz099UhUKJ
	YmvCM810LN/27g2TQKm7KOyu9zn6VzGVRBlsxET5RWs3AEU27svDJvY4zAt5TW5bAl6Nd6RyBjOsT
	/ZlUN1AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Bt-00000009ROs-3kph;
	Mon, 31 Aug 2026 13:36:49 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Br-00000009RNk-17C4
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:36:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6B86E2020E6;
	Mon, 31 Aug 2026 15:36:41 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x12Bl-004GXc-15;
	Mon, 31 Aug 2026 15:36:41 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-23ys;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:20 +0200
Subject: [PATCH 13/13] usb: storage: stop talking to a device that is gone
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-13-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=2013;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nAG7JZf1nPqyN8wXhlEcd51jccWH7IFlp4mpXNdm91A=;
 b=eTvPMrkWVRWzXX6PYbVy0z4sYmeoNI3azhfWoNoSBE5WY4ha4gOMXdT5qmCzL6LYv6KRFC4M+
 HBx9hxfhrkqDYb0GhEiQ3Aw5VctnGzRjvF0BncX9mqLc6JZj/lg+kq2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_063647_482288_CF6209CD 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  usb_stor_transport() retries a failed command ten times, and
    every attempt runs usb_stor_Bulk_reset(), which issues three more control
    transfers to the device. For a device that has been unplugged all [...] 
 
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
X-Stat-Signature: 8cfsck4x96rxxwejzbcp16pcedu47g9d
X-Rspamd-Queue-Id: DAA97202487
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
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

usb_stor_transport() retries a failed command ten times, and every
attempt runs usb_stor_Bulk_reset(), which issues three more control
transfers to the device. For a device that has been unplugged all of
these run into their timeouts, so a single read takes minutes and fills
the console with endpoint reset messages.

Now that the USB core notices that a device has been unplugged, check
for it: skip the reset, which cannot work without a device, and give up
instead of retrying. A read of an unplugged stick fails after the first
timeout and every further one fails immediately.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 drivers/usb/storage/transport.c | 4 ++++
 drivers/usb/storage/usb.c       | 7 +++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index be3b18dc66..bda8f93c7a 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -220,6 +220,10 @@ int usb_stor_Bulk_reset(struct us_data *us)
 
 	dev_dbg(dev, "%s called\n", __func__);
 
+	/* Nothing to reset if the device isn't there anymore */
+	if (usb_device_disconnected(us->pusb_dev))
+		return -ENODEV;
+
 	/* issue the command */
 	result = usb_control_msg(us->pusb_dev,
 	                         usb_sndctrlpipe(us->pusb_dev, 0),
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 7c19207a8d..55facf8a60 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -86,6 +86,13 @@ static int usb_stor_transport(struct us_blk_dev *usb_blkdev,
 		if (ret == USB_STOR_TRANSPORT_GOOD)
 			return 0;
 
+		/* Retrying is pointless once the device has been unplugged */
+		if (usb_device_disconnected(us->pusb_dev)) {
+			dev_dbg(dev, "%s: device is gone\n",
+				usb_stor_opcode_name(cmd[0]));
+			return -ENODEV;
+		}
+
 		if (request_sense_delay_ms == USB_STOR_NO_REQUEST_SENSE)
 			continue;
 

-- 
2.47.3



