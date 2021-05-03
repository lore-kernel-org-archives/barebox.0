Delivery-date: Mon, 03 May 2021 13:52:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX7c-00033y-Gg
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:52:20 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX7b-0000vq-LS
	for lore@pengutronix.de; Mon, 03 May 2021 13:52:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dVhn0lOGRSSF3XbdLQ3waEoGy9SIS4v5DNSaA42a8iY=; b=WOKNZYV5pv5wWFPDEID/o8Wyb
	A7+E/N2FNFEZKLAUMao3F1dOAGq/9gdsT0/TcBvwvEwbXkCuHuStxB0HGkkrUrmPME3dB9pPx2rO8
	kWwThqXmugQBIM7VvcmRN5j9Zc1kpmHNT+OvEgVFojk/BLe1dWefdBrtF6ltm0P6/f18Acg1++QFB
	54/+kn5fyAw4ABeP/32CA2OtcpjQVJdVF8U2n+A6q6coMx2DD96Gm3KHRuo37hdkFXRmHv38hVpAk
	7zGGFoT3M6DHq7tYVfkFksLe4zmhF76GzVCOdET5tTdbC9mG75nrqCFbjz/SV/gk/pUHmpPMJnK3P
	jfhdrTPbA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX6P-00Dn7h-E8; Mon, 03 May 2021 11:51:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4x-00Dmha-7a
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=HWZvx4m6uZ04ra4EujGB+OIUJ57mMZKVWDhuwE11FAA=; b=CpStMGdgxAcrJ7zf3PYFslpcDY
 7C88k8TMLHZ91L2Fad+PaxowtRBssfloyQCmdNd+j3duj0o57gutk9syXc1bzBFTf2+vkzft23tly
 a7aG7oQtIe9hEJ2gk1XneFMGBcWMN/4JNUBbGAE8b7SFgMkeiVXOQpDraTaSa9HdTKqZFKReu0SNo
 Q23OmB1wmlpfqzKjpriHhWuGGT784XcBDmVxeAg5OPFr28uXpDjTLwBnBrwx4RFjM+LLyu7Iqv+7j
 I/n6ARm5avm7o0lqR8ZPV1GY6GFMMseThqonto/CEzsXKa1HmLTZKPHZrFJH1va7pQTQwQlmqY80Y
 dbTqKD0g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4u-0031da-Rq
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4d-0007pk-I8; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4c-0003ba-Fk; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 13:48:53 +0200
Message-Id: <20210503114901.13095-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044932_915488_ECB9E5DA 
X-CRM114-Status: GOOD (  10.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/16] usb: gadget: dfu: change status message to info log
 level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This used to be a printf, but was changed to pr_err in
f6f521ec38ea ("usb: gadget: dfu: Rework print messages").

This is likely unintended as this is an expected output.
Change it to pr_info.

Fixes: f6f521ec38ea ("usb: gadget: dfu: Rework print messages")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 1ac63c464206..fd0ec505dc68 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -447,8 +447,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 
 	i = 0;
 	file_list_for_each_entry(dfu_files, fentry) {
-		pr_err("register alt%d(%s) with device %s\n",
-				i, fentry->name, fentry->filename);
+		pr_info("register alt%d(%s) with device %s\n", i, fentry->name, fentry->filename);
 		i++;
 	}
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

