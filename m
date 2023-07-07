Delivery-date: Fri, 07 Jul 2023 14:15:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHkMx-001a7s-L0
	for lore@lore.pengutronix.de; Fri, 07 Jul 2023 14:15:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHkMv-0004cT-8F
	for lore@pengutronix.de; Fri, 07 Jul 2023 14:15:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YshzVjM2x+E1q+7RKd9gi/LcSWLD0x7Rnc2fXBQfFfA=; b=ADtjGP5mRwTEyO2Ve5se5zB7l8
	Rg8cL6OOVjPvwq9y5/EtJKGb6+QhaLOYo8hnJAg5t+BMV6SUX5lfa9qSJY5QgZfvHR+7yTia6y+Fa
	mxhJulNf3bXxGJHXOloIVlH5VNvthUhKvm572VN4srPaznfoyc9/iFtlI/Yk0Tdruwlb0guSn8FUB
	Usik7HqzTQlNFtIBnnh5Hr4+N7yeabKRMro1kLYvESxHnuZ9ecHIlHQnu/K2RPmVtxlUzDpKVkkFC
	+Pl//Oj661Yt//epzfjOf5+cW18D8wvPfhaAZ0ra330913+Rc1B8oi0EZbC+QlqDD00rSLm1l82to
	GeP3wnrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHkLf-004azj-0y;
	Fri, 07 Jul 2023 12:14:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHkLb-004ayA-1i
	for barebox@lists.infradead.org;
	Fri, 07 Jul 2023 12:14:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLU-0004Du-EG; Fri, 07 Jul 2023 14:13:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLT-00Cj6W-PV; Fri, 07 Jul 2023 14:13:55 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLT-00Dd3I-0E;
	Fri, 07 Jul 2023 14:13:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Jul 2023 14:13:52 +0200
Message-Id: <20230707121354.3248365-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_051403_613948_B20922BD 
X-CRM114-Status: UNSURE (   9.56  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/3] usb: gadget: multi: do not double free on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Recent sync with kernel changed usb_composite_probe to free resources on
error as expected, so calling usb_composite_unregister on failed probe
is now a double free. Fix that.

Fixes: 14211ab8b0e1 ("usb: gadget: Update core to Linux-6.3-rc2")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/legacy/multi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/legacy/multi.c b/drivers/usb/gadget/legacy/multi.c
index 7046a529b1db..ddb3d4158cd7 100644
--- a/drivers/usb/gadget/legacy/multi.c
+++ b/drivers/usb/gadget/legacy/multi.c
@@ -294,10 +294,8 @@ int usb_multi_register(struct f_multi_opts *opts)
 	gadget_multi_opts = opts;
 
 	ret = usb_composite_probe(&multi_driver);
-	if (ret) {
-		usb_composite_unregister(&multi_driver);
+	if (ret)
 		gadget_multi_opts = NULL;
-	}
 
 	return ret;
 }
-- 
2.39.2



