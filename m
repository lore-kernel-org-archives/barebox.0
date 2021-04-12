Delivery-date: Tue, 13 Apr 2021 00:37:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5B1-0006Ey-Md
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:37:03 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5B0-0007BV-PM
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:37:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VyspN3CNRDn0fVz0q4zdW5voGEMKQ5ArBW066FZkC88=; b=BqFtGRZsOWY5KHo+I0LKyU5zX
	BlHFnycJCSN1hZn0gvAQP37Xu4y7x68Kx4Pe8bfnL0sqJmZBaLPloTzos0Uub7F2M41cBv4uJp7HB
	u1eRHueTJ7JjCGtTjr/KKexhxTKjvDfaR6SkzscjbnPOdUDF2BMHaRtdTGDS5QTmUYKHauD8qDBR8
	98C0mJETD/dB0j1XXLnwGeWKoj4BzD9QO2Hmcnx/6Lfn10G2I27DXX4mMjBVRyo74N2ZI8XCblDFF
	thieGY0fP3gu8NRBRcpe1SEzNx2dvcK02yFHqoDQ2LuO4thCuNDSURCAd9jUzvb4EoqLgRR419kYw
	4uNRUSm/A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW59t-007nGY-42; Mon, 12 Apr 2021 22:35:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59E-007n6w-SB
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=oqJt6gDQNktoBAUXNaJT0u1xemni+yxIyYVQ9PfSBSE=; b=Ieu9cB9vtnKbLM8YkQVlh6I4+A
 lbzpywpygb1zVw+dauohnKvaYIVcAAGzGuajKpJTJay2MVhGYu07cY3ih/CYxVwO9yEhq37LkPhfO
 KGPqMgiskqFQldIbOwocqVkC1vmxN3c4H3j63V9+5fK9rRI4v/rFGNfOoLRzAOMVwVlo2puN+2G34
 D4xWgZfiC2S9BBKtO3sdl+V3ag+tbpHabeCu1FR3Nq26l6mw5n67zsDTzKUGRpLTIV1hmkxeVfc4m
 O7uyadr+1Ug2NYsTvp4SF9ywro6ZhYYI9/2L9fXM2GxMHK6CkOLoCXGEmNCO9RgTM0JvYv3tHv2mM
 8qPdmxig==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW598-006ap9-JD
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BO-BE; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003tB-ER; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:56 +0200
Message-Id: <20210412223502.29691-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153506_772128_FBCFF070 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/14] usb: gadget: dfu: change status message to info log
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
index bb0b34aa9440..7388e6f1525b 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -446,8 +446,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 
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

