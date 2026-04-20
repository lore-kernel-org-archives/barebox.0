Delivery-date: Mon, 20 Apr 2026 13:21:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmgz-00EKG9-0O
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 13:21:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmgy-00054a-I4
	for lore@pengutronix.de; Mon, 20 Apr 2026 13:21:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UR7zHPiDXEMKrg/4vgEdYdHBek+Gj/scXHhnvB0477Y=; b=FDybZVtwzFirzbs37X4MFK4022
	TdEBCeNRHHgMdKLTNOLR3lvhHmbC5MBNMmXtWj5AaTc9o/tqNm3Ipv75PSY/agzfxIBA+rtZwL6p4
	H3yRdZilL+A0Zv9VAW5eHVdZrUx460yub/qrjq4e8YxHbrzCSeN7wNaUrHtJc11tqOC/ymS5hxtBm
	I3y5vh0cHoyZjU92K9mqG09ENM91NiHS6MnJk5kTX3fMIe1LEYYPmw+lUtjsRHsk11iTF9/y187Ak
	107kQgshvygN04B0+d3iQpYWKuvavxaiPAd16t8uUo8qxkKVnf0GTs7WFA8tl3WpJElZ01y69TX1R
	eHS0YxGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmgc-00000006n1e-3Gk2;
	Mon, 20 Apr 2026 11:21:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmga-00000006n0o-15s0
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 11:21:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-0004sE-SK; Mon, 20 Apr 2026 13:20:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-006KIO-1S;
	Mon, 20 Apr 2026 13:20:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-00000003hYN-1YMs;
	Mon, 20 Apr 2026 13:20:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2026 13:20:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-usb-dwc2-usb-c-stick-v1-2-c86f733f24f8@pengutronix.de>
References: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
In-Reply-To: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776684054; l=1506;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=v7Sn2H62U9kIj8/qRH4YQ4DeRrJrxdIIdp8odDf/zPM=;
 b=BQacr5bEYRZ4hJgTjzpqX+Ltymcc9N8lsT8Y5knXmbNPyCA/3T557T+YAEAvtRh8+HlOH/7sQ
 EgB97GndihnDLwqhUwJt1QG3X44vyeELMB/RXmbYuHoCEyuFqtTMUtP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_042104_306816_1A6A7B09 
X-CRM114-Status: GOOD (  12.27  )
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
Subject: [PATCH 2/2] usb: dwc2: fix data toggle reset direction on
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
Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <sascha@saschahauer.de>
---
 drivers/usb/dwc2/host.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index ddad51c882..2be2666574 100644
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



