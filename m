Delivery-date: Mon, 20 Apr 2026 13:21:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmh7-00EKGX-2t
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 13:21:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmh7-00057d-AN
	for lore@pengutronix.de; Mon, 20 Apr 2026 13:21:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HGQaZtu5SE0McFC7I24D5rKITzfUI2n5w2Ol0zATwU8=; b=JBIcb3JWwG7hUEe5t9clsR0dlJ
	KP2G2prUuP8N1+6q4tQV0n8QmSIxKtm/PfyYzmNlELRe0FAd+0Y290D5uR4FielH/fr/s20bwyS+d
	GuBgNPqbKSmtRISRr+vY+ouOAeROwHNVrjHHWO6S6i8BoRSYBBXBbDljCQzkjL0SJt78GPJx+DUDn
	KFqj5GpQdV4H/+vhZ74fRrdbZkf8NEoFCZEm11CysxDJEHKf32f3UfHdG9KR2gAe1mo3bxF3SCMSa
	vsQMSRzL3cY9QcSFcM/a3VD7CYQt+cl8eBOKcu6GXJkDJ3nC7A5qLU4IPWu1UCP19EZh+lUA/AGj+
	k/dmLiRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmgk-00000006n3h-0wbh;
	Mon, 20 Apr 2026 11:21:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmgi-00000006n2s-1WId
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 11:21:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-0004sD-SJ; Mon, 20 Apr 2026 13:20:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-006KIP-1V;
	Mon, 20 Apr 2026 13:20:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEmgQ-00000003hYN-1WkB;
	Mon, 20 Apr 2026 13:20:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2026 13:20:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-usb-dwc2-usb-c-stick-v1-1-c86f733f24f8@pengutronix.de>
References: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
In-Reply-To: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776684054; l=2125;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=F/KLDtK7Qiug+y4yXDuJy2fzV5UF5zP2P8TYF2sPaJQ=;
 b=HNGw4tVvDF6509j2unJctsbxGevwUM2LdvlDD/uaWFmXez0f9VIEgGUyXonT7VIXxcEdmeJ0O
 Ejnith2kXALBD7CS4lgQXE8y3t3/n67H3m7XN0ZRcUlI9LB1Y/jnc9D
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_042112_408879_EFD091BA 
X-CRM114-Status: GOOD (  11.71  )
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
Subject: [PATCH 1/2] usb: dwc2: handle NAK when CHHLTD does not fire
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

Some DWC2 configurations do not assert CHHLTD when a NAK is received;
the hardware keeps the channel active and only sets the NAK bit in HCINT.
wait_for_chhltd() polls for CHHLTD with a 10ms timeout; when CHHLTD never
fires the timeout expires and -ETIMEDOUT is returned without inspecting
HCINT. This causes the caller to treat the NAK as a hard error instead of
a retryable condition.

The symptom is that devices which NAK bulk or control transfers during
initialisation (e.g. some Samsung USB-C flash drives that NAK while their
firmware starts up) fail immediately rather than being retried via the
5-second NAK-retry loop in dwc2_submit_bulk_msg() or the do/while loops
in dwc2_submit_control_msg().

Fix by reading HCINT before aborting the channel when the CHHLTD timeout
fires. If the NAK or FRMOVRUN bit is set, abort the channel, wait for the
abort to complete, and return -EAGAIN so that the existing retry logic can
handle the NAK. Log a diagnostic message if the channel abort itself times
out, which would indicate a real hardware problem.

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <sascha@saschahauer.de>
---
 drivers/usb/dwc2/host.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 93994f0be3..ddad51c882 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -134,9 +134,14 @@ static int wait_for_chhltd(struct dwc2 *dwc2, u8 hc, uint32_t *sub, u8 *tgl)
 
 	ret = dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
 	if (ret) {
+		hcint = dwc2_readl(dwc2, HCINT(hc));
 		hcchar = dwc2_readl(dwc2, HCCHAR(hc));
 		dwc2_writel(dwc2, hcchar | HCCHAR_CHDIS, HCCHAR(hc));
-		dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
+		if (dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000))
+			dwc2_err(dwc2, "%s: channel abort timed out: HCINT=%08x HCCHAR=%08x\n",
+				 __func__, hcint, hcchar);
+		if (hcint & (HCINTMSK_NAK | HCINTMSK_FRMOVRUN))
+			return -EAGAIN;
 		return ret;
 	}
 

-- 
2.47.3



