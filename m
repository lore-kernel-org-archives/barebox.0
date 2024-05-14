Delivery-date: Tue, 14 May 2024 15:04:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6rpu-00EHEw-2D
	for lore@lore.pengutronix.de;
	Tue, 14 May 2024 15:04:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6rpq-0003ea-Cn
	for lore@pengutronix.de; Tue, 14 May 2024 15:04:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HygI4iASShvd9RSnvc8PYKPiw21hqid+GRrXX0aj/ME=; b=KUXUQEUxubk+61NO2tvytOLVAJ
	5eOAVjvSJojie+cRIULgjAZEGg6UQvyVHxgaxiYk6aJIdDGQn/tZf7mmAidpEFVZFE3YMp41db5No
	iqQ0nJfCShWgYGRw2b3mTo/A+BOIFNVLVsI+/nylL1N6NW2loeOu5oiMnIfSIvHd4l2TdCNcNEQjR
	gKywnZOPvizCuV4LyEz9bes7fQb0cfe9XEnujj3TVk7lkA4/5lZSH3Q9BlEDXIxroFLareXWMZed/
	xOmXw5q9O12mjP8EUH1Y6A9NbHNQn4mKp2W87t/U3IWw3fbVI6uM82jRZ+cOdRIlzDNhGbrv6H9Pu
	sn4EYh3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6roy-0000000FxbA-2CLa;
	Tue, 14 May 2024 13:03:56 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6rou-0000000FxYz-26Mr
	for barebox@lists.infradead.org;
	Tue, 14 May 2024 13:03:55 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 44ED3Wn3791130
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 14 May 2024 15:03:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1715691812;
	bh=HygI4iASShvd9RSnvc8PYKPiw21hqid+GRrXX0aj/ME=; l=1792;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=e3bSoRPq2dZEDiodiB3xtu76wMzjmQKQzg4gAymH/3y2f9FtvtUjwkdXO5LpSOCAo
	 2BYstA/FvmkqkQyFZUXUz7NJttW5TE95dOfNlb/Nn4Rr4aIiB0WIMrB7R1W4M1fFKI
	 ljuiCbxEoqSHYOSDoj3YsMsoadt+WQpPtVdhLwJE/QLo2v2DntL7zZ0K0RzE91Uyno
	 nLUaA2plGjae5buuBFMqi6kK4iAaL/N5wf0M9rpSm8eCy6uQc07x7wIT5OrSg6jjv5
	 oKOShoYWw8soREZY0TgiItRsBmM9zO5AeWSiwtTXFgQV+xJol8hfLSgw3z3fEq409c
	 ri0qggedpCHmw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTP id 44ED3Uqw1716229
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 14 May 2024 15:03:31 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id 4NXC2W2V7H; Tue, 14 May 2024 15:03:30 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 44ED3URL767211
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 14 May 2024 15:03:30 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.97.1)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1s6roY-0000000CXNd-0RgX;
	Tue, 14 May 2024 15:03:30 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 14 May 2024 15:03:27 +0200
Message-ID: <20240514130327.2988227-2-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240514130327.2988227-1-enrico.scholz@sigma-chemnitz.de>
References: <20240514130327.2988227-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-REDDOXX-Id: 66436122b121c496daa9e77e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_060353_181896_652226C1 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-105.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] usb:gadget: use helper function to queue composite requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Fixes bookkeeping in composite driver.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/usb/gadget/function/dfu.c   | 2 +-
 drivers/usb/gadget/function/f_acm.c | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index 3a6d2cf385b1..a41ff22dcebc 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -807,7 +807,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 	if (value >= 0) {
 		req->zero = 0;
 		req->length = value;
-		value = usb_ep_queue(cdev->gadget->ep0, req);
+		value = composite_queue_setup_request(cdev);
 		if (value < 0)
 			ERROR(cdev, "dfu response on ttyGS%d, err %d\n",
 					dfu->port_num, value);
diff --git a/drivers/usb/gadget/function/f_acm.c b/drivers/usb/gadget/function/f_acm.c
index 3532fd589274..7fa0a4358fe6 100644
--- a/drivers/usb/gadget/function/f_acm.c
+++ b/drivers/usb/gadget/function/f_acm.c
@@ -309,6 +309,8 @@ static void acm_complete_set_line_coding(struct usb_ep *ep,
 	struct f_acm	*acm = ep->driver_data;
 	struct usb_composite_dev *cdev = acm->port.func.config->cdev;
 
+	composite_setup_complete(ep, req);
+
 	if (req->status != 0) {
 		DBG(cdev, "acm ttyGS%d completion, err %d\n",
 				acm->port_num, req->status);
@@ -406,7 +408,7 @@ static int acm_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			w_value, w_index, w_length);
 		req->zero = 0;
 		req->length = value;
-		value = usb_ep_queue(cdev->gadget->ep0, req);
+		value = composite_queue_setup_request(cdev);
 		if (value < 0)
 			ERROR(cdev, "acm response on ttyGS%d, err %d\n",
 					acm->port_num, value);
-- 
2.45.0



