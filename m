Delivery-date: Tue, 17 Oct 2023 23:37:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrkq-00CDIu-1O
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 23:37:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrko-0008Ig-Um
	for lore@pengutronix.de; Tue, 17 Oct 2023 23:37:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4anwFryLkhEmFxlarSoyUZcYKLhDTxQZueiEgqaj2tU=; b=EfMA6RHvZtAJNA65uGkFVn8KH1
	FHKOSHRHNZxsQ2YqVdr7em9XBaCErvespNeduRuVDU8MBO7YFQLG5JQTe41WxLYPlWp5MquyWqTi9
	1y11OfNygXl+f8nOvh8FoRpxEl4RbakR7sdI/07Ms8LmATPOxuqfAopVcIcvCqE5j+p9sZ8WqjLQk
	hLm4vL4CsBjansKTqgystcIJRttB3w2mYS6rV6cWrqOw8kEQUR3KR6pS0EK6XI7oXL0l0MCwWLllW
	NgDHDEvXQJXxHIIH0DB7juhDePoo1yajsyL/Hf2zce4OnLR0ncrevxUwpjjYEuGB7UQmI9jyWTdvc
	M0EpfyNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrjg-00DJCI-0k;
	Tue, 17 Oct 2023 21:36:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrja-00DJA6-0h
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 21:36:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-0007wQ-Tu
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-002PIY-HJ
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-00Ef1q-1Y
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 23:36:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 23:36:07 +0200
Message-Id: <20231017213608.3494255-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017213608.3494255-1-m.felsch@pengutronix.de>
References: <20231017213608.3494255-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_143614_260420_A53B63B8 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] usb: gadget: fsl_udc: lower state_complete constraints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signal state_complete if the host send more data than specified first.
This may become crucial with different host usb loader tools and
different host OSes.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/usb/gadget/udc/fsl_udc_pbl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/fsl_udc_pbl.c b/drivers/usb/gadget/udc/fsl_udc_pbl.c
index 6a4e0557fc..a5364decb1 100644
--- a/drivers/usb/gadget/udc/fsl_udc_pbl.c
+++ b/drivers/usb/gadget/udc/fsl_udc_pbl.c
@@ -136,7 +136,7 @@ static void dtd_complete_irq(struct usb_dr_device *dr)
 		actual += len - 1;
 		to_transfer -= len - 1;
 
-		if (to_transfer == 0)
+		if (to_transfer <= 0)
 			state = state_complete;
 	}
 
-- 
2.41.0



