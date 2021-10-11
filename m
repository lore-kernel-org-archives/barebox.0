Delivery-date: Mon, 11 Oct 2021 10:05:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJH-0007OT-Gq
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 10:05:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJE-0006jp-V2
	for lore@pengutronix.de; Mon, 11 Oct 2021 10:05:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3CBFx9xIv10Ve81BiAuSm+A9DEBHkTMOUcKOvdJBWw=; b=qBFbGRTMmlMPRc
	gVHbClJpmdhJxeDNyJaUHrLJVOEVd8dTaskgACjEQjmY0OiiWeKjKfdx7ip+mM4fE9Ucqa3a1IEAh
	bNWhRMazMDwj/C/DeBEvRrKX0/mH+gzIugmkmt9ZdaTR778WMfwlI07Qq33iw9ycs6E5Lt3dLuYvL
	mOgtxRl/FlbGIOKy4WoIb9eiPNJ5iiGg6ORwi5zIODVj+n3nLH5aghan5UlNiO5zea78DWPG/c25h
	1hqGIKXsYI+EQEkpf5pqIbjPISZjvtJVcKEpEO0sHUK0K2qKM/4fgfhXoLkRVBzfItGWDXLrPkAHG
	b5ZviN0x6zYxiLdhs4Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZqHy-008DOh-ER; Mon, 11 Oct 2021 08:04:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZqHl-008DJp-Bs
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 08:03:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHk-0006Dq-3b; Mon, 11 Oct 2021 10:03:48 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0009i5-9O; Mon, 11 Oct 2021 10:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Oct 2021 10:03:43 +0200
Message-Id: <20211011080346.37197-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011080346.37197-1-s.hauer@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_010349_496281_57E921B5 
X-CRM114-Status: GOOD (  13.03  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] usb: dwc3: Clarify error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When the DWC3 controller uses a mode which is currently not compiled
into barebox we answer with "Controller does not support ... mode". Make
clear that it's not the controller which doesn't support it, but the
currently running barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index f618435cb6..17caf136ef 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -43,7 +43,7 @@ static int dwc3_get_dr_mode(struct dwc3 *dwc)
 	case DWC3_GHWPARAMS0_MODE_GADGET:
 		if (IS_ENABLED(CONFIG_USB_DWC3_HOST)) {
 			dev_err(dev,
-				"Controller does not support host mode.\n");
+				"This barebox does not support DWC3 host mode.\n");
 			return -EINVAL;
 		}
 		mode = USB_DR_MODE_PERIPHERAL;
@@ -51,7 +51,7 @@ static int dwc3_get_dr_mode(struct dwc3 *dwc)
 	case DWC3_GHWPARAMS0_MODE_HOST:
 		if (IS_ENABLED(CONFIG_USB_DWC3_GADGET)) {
 			dev_err(dev,
-				"Controller does not support device mode.\n");
+				"This barebox does not support DWC3 device mode.\n");
 			return -EINVAL;
 		}
 		mode = USB_DR_MODE_HOST;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

