Delivery-date: Mon, 20 Apr 2026 13:21:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmgv-00EKFY-0V
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 13:21:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmgu-00052e-LI
	for lore@pengutronix.de; Mon, 20 Apr 2026 13:21:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wX2a5lzJlMItPUN4qjPm/CYER6dlHPp9zMJBs73Sh4M=; b=f4L6r9BXLWSL+l
	L1KDkyeN6xjcxzhaC5V8eL31PnNdFSO6Gkdq3oDSh4h6t1TDlXm6EXtqfkg2TqdcB6xQAgRsfRmyL
	FB06MuZFSvR3PUUEtS2raQclefU1h1EznUts9oCTuQcfBCvQfyIkOiqq6GY64KkyDJW0G8MxfaHg3
	rvxOiZlGux/OwmWCXFc5t58K8GMgRZ8P0aviHZQT189AHnsyMl7lhoDpeT9EdcwtvcLUQpidVfDik
	/kXERPSaPqsxgJtluzRs4+rhENneDJZsdS/C8CkIFBRk0pJo+W7zyV/zkZ0lsG/Ffd7lr7L3T2b3/
	RO9eBpYFS/GLbL1nFyjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmgV-00000006n0H-1QXg;
	Mon, 20 Apr 2026 11:20:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmgS-00000006mzn-2B9k
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 11:20:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-0004sC-SJ; Mon, 20 Apr 2026 13:20:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-006KIN-1S;
	Mon, 20 Apr 2026 13:20:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-00000003hYN-1VbV;
	Mon, 20 Apr 2026 13:20:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2026 13:20:52 +0200
Message-Id: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABQM5mkC/x2MSQqAMAwAvyI5G6hVWvAr4kFj1CCoNG4g/t3S2
 8xh5gXlIKxQZy8EvkRlW6MUeQY0d+vEKEN0sMY6U1mDp/Y43GQTEOohtCB3ZUG+dJX3BDHdA4/
 ypG3Tft8PLBbPPWYAAAA=
X-Change-ID: 20260420-usb-dwc2-usb-c-stick-ea31c736477c
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776684054; l=655;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=krHNbj2Im3dfaKP2boKOdjRv9vl/0LSt6Wp629QBtwE=;
 b=bFery1PoFmQ1cMlPMg5lTpzKpqp2JbNKvG2kK1S2iN5GHKfOao3HB6myRAXL9mTnQf1C7vtQk
 l1QzuUTicLLCCTyEFIL0xc13sxLjhDVSYxhQlKCK2POI/aWcjAofygT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_042056_564266_50642009 
X-CRM114-Status: UNSURE (   6.34  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Sonnet 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] USB: dwc2: Fix handling NAK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A NAK should return -EAGAIN to let the retry logic work. This showed up
on a Samsung USB-C memory stick which otherwise was recognized, but
couldn't be initialized.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      usb: dwc2: handle NAK when CHHLTD does not fire
      usb: dwc2: fix data toggle reset direction on ClearFeature(ENDPOINT_HALT)

 drivers/usb/dwc2/host.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)
---
base-commit: 92d9725c3945aff9d157531be844fa256444165d
change-id: 20260420-usb-dwc2-usb-c-stick-ea31c736477c

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



