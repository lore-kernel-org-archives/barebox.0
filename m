Delivery-date: Tue, 02 Jun 2026 11:30:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wULSL-001XOG-2u
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 11:30:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wULSL-0000MY-9o
	for lore@pengutronix.de; Tue, 02 Jun 2026 11:30:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9xe9kP/JEKojHACDLzV2iDo7U07edQ5fsX1k1Yo27C0=; b=0UVIIW5pB8DQ6IQHeyBvgY9fSc
	O4sR40l4Zm3WiN+6WBGIvsYShh+Jgzzm37Ugte1bfU+x3ltjX++isEm0XHtZgv1HUQVTe3PIBPkkH
	LK3BlAiDvdkBUTXo4LoWHygBgamm/p/Nie5zHkx5wN+VqpVnMKZDGDAcGMwFSmMiWEopaK6ITyj+t
	xC7wRMJ/o4DkITFdpaIs0LuFsEq+EiaxC5Dzf1o4y1bNiMXE/71C/ZTykUu4RsDN1ySywPPqFPkZz
	1LtiIg4tmmZ1McPp3jtCvO4kHn7Iao+UFLCObxfZzP/eIKw7rYQCgTB3igdKhQdDvyDzA3f12lzL9
	TWr3nJ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wULR8-0000000CfNN-3K7i;
	Tue, 02 Jun 2026 09:29:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wULR5-0000000CfLK-2RPt
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 09:29:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-00008b-Lp; Tue, 02 Jun 2026 11:29:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-000j0e-1k;
	Tue, 02 Jun 2026 11:29:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wULR3-00000006Lq0-1s2l;
	Tue, 02 Jun 2026 11:29:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 02 Jun 2026 11:29:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260602-usb-dwc2-usb-c-stick-v2-3-0e02782c7e32@pengutronix.de>
References: <20260602-usb-dwc2-usb-c-stick-v2-0-0e02782c7e32@pengutronix.de>
In-Reply-To: <20260602-usb-dwc2-usb-c-stick-v2-0-0e02782c7e32@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780392561; l=1479;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ar/AZuTsljsXg4Qh+peedi/ipDoqMrEz//03gi3KOrk=;
 b=V7P1QKJILvWDyR6MxtQiqEn2/ys0r4OpjCjFq58msALWhmZs3ZeZgzdRy8yO66YIJ6bMGQRVg
 vRus+dnrVx6BPPeyztGve9t9c1690nZalFpbo1Z1x5Q9XnzgaVe1JM3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_022923_645972_425B1CE6 
X-CRM114-Status: GOOD (  12.17  )
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
Subject: [PATCH v2 3/3] usb: dwc2: fix data toggle reset direction on
 ClearFeature(ENDPOINT_HALT)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

dwc2_submit_control_msg() resets the data toggle after a successful
ClearFeature(ENDPOINT_HALT) request. It passes usb_pipein(pipe) as the
direction to dwc2_endpoint_reset(), but pipe is always the control-out
pipe used to send the request, so usb_pipein() always returns 0 (OUT).

As a result, clearing an IN endpoint halt resets the OUT toggle instead
of the IN toggle, leaving the IN data toggle in an incorrect state for
subsequent transfers.

Fix by extracting the direction from the endpoint address in setup->index
(wIndex), where bit 7 is the direction flag per USB 2.0 section 9.3.4.

Fixes: 446bcf875395 ("usb: dwc2: host: Fix toggle reset")
Assisted-by: Claude Sonnet 4.6
Signed-off-by: Sascha Hauer <sascha@saschahauer.de>
---
 drivers/usb/dwc2/host.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index a779cade59..5ee0593fe7 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -401,8 +401,8 @@ static int dwc2_submit_control_msg(struct usb_device *udev,
 		 * ClearFeature(ENDPOINT_HALT) request always results
 		 * in the data toggle being reinitialized to DATA0.
 		 */
-		int ep = le16_to_cpu(setup->index) & 0xf;
-		dwc2_endpoint_reset(dwc2, usb_pipein(pipe), devnum, ep);
+		int ep_addr = le16_to_cpu(setup->index);
+		dwc2_endpoint_reset(dwc2, ep_addr >> 7, devnum, ep_addr & 0xf);
 	}
 
 	udev->act_len = act_len;

-- 
2.47.3



