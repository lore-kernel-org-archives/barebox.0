Delivery-date: Thu, 26 Oct 2023 14:48:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qvzmN-004Y59-E8
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 14:48:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qvzmM-0003iD-45
	for lore@pengutronix.de; Thu, 26 Oct 2023 14:48:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rrtB5ei8e3+RMJCBd5kCiwxHVwQKqpbS6YAMf9YnNLg=; b=DvdXuNB9aXxKoCsvFDlwvEg4O/
	rD4Z5wpGhsa0x5aTy++8Nbz+dEOUgWzGwVHUK0jwVfYeVaxlnAz6acO/vYyq5y/tUpB+t2UKrzoBv
	AK1HVU60+6Ulh5Wqe2q+A4u0zF4JuOAj7kueTBuVKGkwgWQFiurErgDcbMdMY2WncLvvqDMEoOBED
	j03jTruWZiZf/6MdQ2Wc/UQ4gBBO0SosJsdyWWIz015SZ4mKZFMOXh5NL/EzxXtVdSZUb4VywFMcc
	uPyu0lla6vHnSf4tJtZhjlvheXU0+EhTHY6hZNuuoKfYP/d8HanB0Qfcoj+OUwz5ZBpFKSWwKIPAA
	CcF+Tdew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvzkw-00ESdT-2f;
	Thu, 26 Oct 2023 12:46:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvzkt-00ESc5-2w
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 12:46:33 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qvzkm-0003Ii-VX
	for barebox@lists.infradead.org; Thu, 26 Oct 2023 14:46:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 26 Oct 2023 14:46:22 +0200
Message-Id: <20231026124623.4054582-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_054631_944266_E1C9D71B 
X-CRM114-Status: UNSURE (   8.92  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usb: gadget: initialize serialnumber as empty string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Windows hosts do require the serial number to be set to any ascii string
to enumerate correctly. Set the serial number to "empty" to provide a
sane default which works for both hosts. Users can still override this
via the gadget.serialnumber variable.

Reported-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/usb/gadget/udc/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
index b58498680ad1..dc5d1daa14bf 100644
--- a/drivers/usb/gadget/udc/core.c
+++ b/drivers/usb/gadget/udc/core.c
@@ -1204,7 +1204,7 @@ int usb_add_gadget(struct usb_gadget *gadget)
 	gadget->productname = xstrdup(barebox_get_model());
 	dev_add_param_string(&gadget->dev, "productname", NULL, NULL,
 			     &gadget->productname, NULL);
-	gadget->serialnumber = xstrdup("");
+	gadget->serialnumber = xstrdup("empty");
 	dev_add_param_string(&gadget->dev, "serialnumber", NULL, NULL,
 			     &gadget->serialnumber, NULL);
 
-- 
2.39.2



