Delivery-date: Thu, 23 Mar 2023 18:31:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfOn5-00CBDa-IT
	for lore@lore.pengutronix.de; Thu, 23 Mar 2023 18:31:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfOn5-0007d3-F8
	for lore@pengutronix.de; Thu, 23 Mar 2023 18:31:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ix6T8RJAT4+3QzT/krnKMF8laGp2wd3OoeZ2ZtaEdT0=; b=EbYt+qfAahN6hdLFEiUy9IdKs8
	czIqv1b7oEZYnmVGnG4OLyzFKNkr3IluecbBsl3Fr2bku/4MIYjjMeDiHqr6iX1wd3iYgZzPuoxxo
	gLOnLIYlF0vrVS4e3sxE953Mdg+Qt9jJcJnPH1J9NmDd0cqPav4HjPRIT/CB8Sh7ukn9bdM3/cVuq
	oDcXS5YwAeFmaHlB9jhAKqTrbJhXnQxtaDG3QVOa1E8JiyRVEQCGN4t46plXuOEFGSJxyNJbyTx3K
	erVKfe7X0HL2VIdc5xa72Zv7oSKc8/MqFwimknBWNd9cKbGn2jLGKA8j/5uhM5gjNiTBd1GQPOYC/
	YagKcPOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfOlc-002bQY-0l;
	Thu, 23 Mar 2023 17:30:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfOlZ-002bPj-05
	for barebox@lists.infradead.org;
	Thu, 23 Mar 2023 17:30:22 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pfOlV-0007Qw-RS
	for barebox@lists.infradead.org; Thu, 23 Mar 2023 18:30:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 23 Mar 2023 18:30:16 +0100
Message-Id: <20230323173016.4089191-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_103021_066475_E587466A 
X-CRM114-Status: GOOD (  11.92  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc3: gadget: lower informal user notifaction dequeue operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I encounted the below error message on the i.MX8MP if a fastboot gadget
was up and running and barebox does a reset() or boots the kernel:

  ERROR: dwc3 38100000.usb@38100000.of: request 00000000bfd91568 was not queued to ep1out

Printing an error message during usb_ep_dequeue() is more confusing than
helpful since the usb_ep_dequeue() could be called during unbind() like
it is done for fastboot. Lower the dev_err() message to dev_dbg() to
keep the message for developers.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/usb/dwc3/gadget.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index 48be74f7e9..ffe4f30c67 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -1955,7 +1955,7 @@ static int dwc3_gadget_ep_dequeue(struct usb_ep *ep,
 		}
 	}
 
-	dev_err(dwc->dev, "request %pK was not queued to %s\n",
+	dev_dbg(dwc->dev, "request %pK was not queued to %s\n",
 		request, ep->name);
 	ret = -EINVAL;
 out:
-- 
2.30.2



