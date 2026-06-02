Delivery-date: Tue, 02 Jun 2026 11:31:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wULSk-001XPM-2V
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 11:31:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wULSk-0000SL-5u
	for lore@pengutronix.de; Tue, 02 Jun 2026 11:31:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GcOUCbRGhQbWltu++tQml44PvFvqUgZGIv1yrBhPpH8=; b=xX/RdGCthwvuxXSY7Vp4jvC1TP
	LwinXPySpgShRhF2l6XMn4pbBCjg7MYG5HKBULzMM99kdI2PiafRAcN53W+pNO9Mo083nf7q4FcdK
	ThcMGg3Vqy1YhVajgQ5T6diR/dwD+HN0AVI3M1H0rrAE8u31Uy3jP4gmiXepcsV+PFq7QAYgf/m9o
	B8xNvRdXo8qo7aQmr9BvkWkF4Cqsr6YxCoqSiTqCGnZaNV03Zc5XvtW+sOFsPmNQJ7UZM9RYth7nO
	AOApxyIT/xZV0DeeFfysNqyrhYL/rXZgxYHzyRCRNzavrEBPqW9ePrV0ykiiBxuSu1bh0Ym04e8oL
	FdudWlqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wULR7-0000000CfMr-301W;
	Tue, 02 Jun 2026 09:29:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wULR5-0000000CfLE-0b4E
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 09:29:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-00008Y-Ic; Tue, 02 Jun 2026 11:29:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-000j0c-1c;
	Tue, 02 Jun 2026 11:29:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-00000006Lq0-1qJB;
	Tue, 02 Jun 2026 11:29:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 02 Jun 2026 11:29:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260602-usb-dwc2-usb-c-stick-v2-1-0e02782c7e32@pengutronix.de>
References: <20260602-usb-dwc2-usb-c-stick-v2-0-0e02782c7e32@pengutronix.de>
In-Reply-To: <20260602-usb-dwc2-usb-c-stick-v2-0-0e02782c7e32@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780392561; l=1167;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TBPPY9DJGSBpwR6xI01+ZE6Rw7Xzkq2FrK8UnpRW6i0=;
 b=ADvHaHPev/1uGJ2OZ4UAMtaDgP7nr/lJW8b5mklIOXIROtJab4QTZHyoxFEJU/4U98gVelF1b
 6SSKpG46/cbBVZ2L21e4ONpnfOVudXrRCZxIqBOXoBasexvX0xyemzu
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_022923_206071_6930212F 
X-CRM114-Status: GOOD (  12.65  )
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
Cc: anis chali <chalianis1@gmail.com>
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
Subject: [PATCH v2 1/3] usb: dwc2: Do not print error messages when URBs
 are nacked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's a normal usecase that a USB bulk transfer is nacked, so do not
print an error message in this case. The usbnet driver polls the
availability of RX frames with bulk transfers with short timeouts.
When it's nacked it just means that currently no RX data is available.

Currently wait_for_chhltd() returns -ETIMEDOUT when a transfer is
nacked, so the message is not printed. This however changes with
the next patch, so silence the error message now to avoid log spam
with the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc2/host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 93994f0be3..eede21c692 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -435,7 +435,7 @@ static int dwc2_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
 					 buffer, len);
 	} while (ret == -EAGAIN && !is_timeout(start, timeout * MSECOND));
 	if (ret == -EAGAIN) {
-		dwc2_err(dwc2, "Timeout on bulk endpoint\n");
+		dwc2_dbg(dwc2, "Timeout on bulk endpoint\n");
 		ret = -ETIMEDOUT;
 	}
 

-- 
2.47.3



