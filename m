Delivery-date: Mon, 17 Feb 2025 15:56:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk2YF-003WTs-23
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 15:56:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk2YE-0001la-EP
	for lore@pengutronix.de; Mon, 17 Feb 2025 15:56:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZIcH3JT9YygepanSehn739D9RC4vyb/s4yncZme8AZE=; b=oCG0vAWwc+JyNWaOUhb+i8ciW2
	ck4leJT31kVAIZohjo7itx1Es3SRIx5eCTwx7P4lWo9QspPQa4jaWa/G9SYD9h/DArdR9gDlsSOYB
	s0hFBUdFvHDB95VjU21NA/t0BIgjvy7o+rthPCMLBoC0gWuHbXU5S9GJEacCWt8CgD7SNPBnQ9+Y7
	arVKrM64lH2xsr3aH8zP6EWcbKs1nsw/DfE3cIg7rgsDvS/u/8O3KCuFFEf8g3+ssD9nPifT6nMZy
	JaTWUdIBnAj6b7ovKi+kpzJiCNAJEOG+Yf3oJ/mVIYgBe4zXtR6pnOK6vy1DTM7EiU0VKZ9o+enhh
	/onMzGHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk2Xn-00000004wxD-0dFN;
	Mon, 17 Feb 2025 14:56:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk2NX-00000004upI-3hDq
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 14:45:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk2NW-0008L3-Ir; Mon, 17 Feb 2025 15:45:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk2NW-001QdY-1H;
	Mon, 17 Feb 2025 15:45:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk2NW-007SV2-0u;
	Mon, 17 Feb 2025 15:45:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 Feb 2025 15:45:42 +0100
Message-Id: <20250217144543.1777605-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_064547_917879_ABCE44FB 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usb: dwc3: am62: Use HZ_PER_KHZ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use HZ_PER_KHZ to make intention clear and drop now unnecessary comment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/dwc3-am62.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-am62.c b/drivers/usb/dwc3/dwc3-am62.c
index fd7f5e54d2..7dac8981fb 100644
--- a/drivers/usb/dwc3/dwc3-am62.c
+++ b/drivers/usb/dwc3/dwc3-am62.c
@@ -203,7 +203,7 @@ static int dwc3_ti_probe(struct device *dev)
 
 	/* Calculate the rate code */
 	rate = clk_get_rate(am62->usb2_refclk);
-	rate /= 1000;	// To KHz
+	rate /= HZ_PER_KHZ;
 	for (i = 0; i < ARRAY_SIZE(dwc3_ti_rate_table); i++) {
 		if (dwc3_ti_rate_table[i] == rate)
 			break;
-- 
2.39.5



