Delivery-date: Tue, 02 Jun 2026 11:30:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wULSE-001XNf-1w
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 11:30:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wULSD-0000Kk-UY
	for lore@pengutronix.de; Tue, 02 Jun 2026 11:30:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pqPvSFwZsoa/5M+ZYpQK4W13vwV9TnzmYRwgK70qkt4=; b=QAvuaBEsPoqtgr
	r1ZNyurOdbD2Wz+s6PPo6jTJKjaiksm0/tv6nups7G7VzaZKDlAYha+sMt0RuU6wA4yzvhFYJ76a0
	ZP6gtFL3GwGRmwmQloJYsV3XyrKzK2lTj8b0CoXDHlOKEOnj4KDQlSv+nbW/TYamVGoqBZVjrUmHk
	/kpFyRZRcea4pGIVTJVHIWAmrA/Vk6ZI81LE+F8gxio4DqhRac3UKBsqRSD51gHk682jXUdQPxhxE
	Knh2OQdF8BPJ8G1A4gGlNNv9dRWXW2bM6kfLya4cES3ag27K4VPJU+DCu65gIhQe3EHNg3hWL9fr8
	SRtRWB/LL7S/u2uzxDCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wULRA-0000000CfNv-04Y7;
	Tue, 02 Jun 2026 09:29:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wULR5-0000000CfLJ-2Smk
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 09:29:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-00008Z-Lq; Tue, 02 Jun 2026 11:29:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-000j0b-1d;
	Tue, 02 Jun 2026 11:29:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-00000006Lq0-1p5N;
	Tue, 02 Jun 2026 11:29:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 02 Jun 2026 11:29:19 +0200
Message-Id: <20260602-usb-dwc2-usb-c-stick-v2-0-0e02782c7e32@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG+iHmoC/4WNQQqDMBBFryKz7pSYiJGueo/iwo4THQpRkmgt4
 t2beoHu/vvw398hchCOcCt2CLxKlMln0JcCaOz8wCh9ZtBK16rSCpf4xP5N+gyEMQm9kDtTkjV
 1ZS1Bns6BnWyn9tFmHiWmKXzOl7X8tX+Ea4kKqamdNcbpyjX3mf2wpDB52a49Q3scxxdvtapuv
 QAAAA==
X-Change-ID: 20260420-usb-dwc2-usb-c-stick-ea31c736477c
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780392561; l=1383;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/GTV6tOR58jxZ2vl7OwW+xKVsxiu491OJIwP1GLOyMY=;
 b=prYGzqFGQihn7itaw8pdKM6TKqvYaJ7xnkHRrqrRRPCCHRhOAvYRK1foA9oWnRfhmRZQtZ454
 +HxtpZdJ6ozBWlVrgtiwgaf8hUbxGJRDur/MSOMSKzpMrYnTyZNR3Xn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_022923_667693_64E37599 
X-CRM114-Status: UNSURE (   9.66  )
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
Cc: anis chali <chalianis1@gmail.com>, Sascha Hauer <sascha@saschahauer.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/3] USB: dwc2: Fix handling NAK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A NAK should return -EAGAIN to let the retry logic work. This showed up
on a Samsung USB-C memory stick which otherwise was recognized, but
couldn't be initialized.

The v2 now adddresses Anis' log spamming problems. The solution here is
to just silence the error message by turning it into dev_dbg. The
message says "Timeout on bulk endpoint" which is normal and expected
behaviour. The usbnet driver expects bulk messages to timeout when
no RX data is available.

I do not have a Rpi4 CM to reproduce Anis problems, but I have seen the
same on a Rpi3B. With this series USB memory sticks now work on the
Rpi3B, hopefully on the Rpi4 CM as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Address Anis Chalis log spam problems
- Link to v1: https://lore.barebox.org/20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de

---
Sascha Hauer (3):
      usb: dwc2: Do not print error messages when URBs are nacked
      usb: dwc2: handle NAK when CHHLTD does not fire
      usb: dwc2: fix data toggle reset direction on ClearFeature(ENDPOINT_HALT)

 drivers/usb/dwc2/host.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)
---
base-commit: 651343da8af78d134d7ead4d2b36095d7ddc2d8f
change-id: 20260420-usb-dwc2-usb-c-stick-ea31c736477c

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



