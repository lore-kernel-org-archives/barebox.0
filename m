Delivery-date: Mon, 19 Feb 2024 14:46:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yA-00Eb0q-2y
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:46:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yA-0002Kl-BJ
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:46:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VuTUVUHtpAvSfOFa/ei1O6Ph8Kj9kYscbIKrNz/L8Lw=; b=2rHAEceWpTaD+OgDsi0WRmKc4Q
	elF7kzkS7nHq42dhWlPpqZQm1Okm31cXJpSdVPsyfhnk4FXVbYl9nEed7Cq8jg+aclQGKrgd0Hy2Y
	/T3CpARynf7ZwBPP5DnyfRcUUMO/gkjTf8LiDHclw8UaKsidwAw0t44IIsBhR3GVvSuTc70nFqlNr
	2IGvottXJkZG3fsBvg34WEpziZAuwU0ZIHpvREqbXkOkfOTw6qCU3lp2KyjpaiWlVAmvwKcuAYneg
	g1qEKTDybuopNl6VIYA0AVQahZZbP/D65sveYxKYyRTCRuIiiqTw+ZruzeBISaoqDX5OJLCM7T/yr
	5/n4erXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xk-0000000AiLL-0upp;
	Mon, 19 Feb 2024 13:45:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xi-0000000AiL5-0ruj
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VuTUVUHtpAvSfOFa/ei1O6Ph8Kj9kYscbIKrNz/L8Lw=; b=WraDEMUHoZtKiNuSpaVRFe84Gn
	0SaMwcH4jvXnfmc+yaigkOR1VIDCIfAIsPrj7mjqvapHkP9EXCXooNvdJ4dp+qYRaUnwqoBmZDjyy
	sNyEbiuvoNYt4JdXxRloRlP+SVEMb77Ybej+BbMhDhvg43auz4p3V+PAplYUnx0pYs6lx91iIJJ3n
	Vso87R7YnBBba8uiwpreso7lrA0DQHvuow247VCRmOC6nFN+y+3ploF/VGvWyYWYRV2zpnBnhTMSg
	NxFOuQC0aJgRQ4Dwu8fQ7UN+sXApNx/FlOCWtoz66m2/2sB6JVg6XDeYgUmwN+7zLCP4act5NGFIt
	1kPLL0Wg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xH-00000001GoF-1xJi
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:45:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-0001LK-Di; Mon, 19 Feb 2024 14:45:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-001f5L-1E; Mon, 19 Feb 2024 14:45:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-1e;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:34 +0100
Message-Id: <20240219133835.3886399-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_134515_483647_F9213A48 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/15] usb: xhci: Recover from halted bulk endpoints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports U-Boot commit 9d88bd4dcf1628bf129163eb5a25c48068423601:

| Author:     Hector Martin <marcan@marcan.st>
| AuthorDate: Sun Oct 29 15:37:41 2023 +0900
|
| usb: xhci: Recover from halted bulk endpoints
|
| There is currently no codepath to recover from this case. In principle
| we could require that the upper layer do this explicitly, but let's just
| do it in xHCI when the next bulk transfer is started, since that
| reasonably implies whatever caused the problem has been dealt with.
|
| Signed-off-by: Hector Martin <marcan@marcan.st>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 1b9a5b7867e0..6a859dbbfac9 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -695,6 +695,14 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 
 	ep_ctx = xhci_get_ep_ctx(ctrl, virt_dev->out_ctx, ep_index);
 
+	/*
+	 * If the endpoint was halted due to a prior error, resume it before
+	 * the next transfer. It is the responsibility of the upper layer to
+	 * have dealt with whatever caused the error.
+	 */
+	if ((le32_to_cpu(ep_ctx->ep_info) & EP_STATE_MASK) == EP_STATE_HALTED)
+		reset_ep(udev, ep_index, timeout_ms);
+
 	ring = virt_dev->eps[ep_index].ring;
 	/*
 	 * How much data is (potentially) left before the 64KB boundary?
-- 
2.39.2



