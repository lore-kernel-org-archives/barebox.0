Delivery-date: Mon, 15 Sep 2025 16:42:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyAP1-003LdN-1R
	for lore@lore.pengutronix.de;
	Mon, 15 Sep 2025 16:42:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyAP0-0004gZ-SY
	for lore@pengutronix.de; Mon, 15 Sep 2025 16:41:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1Ssn+jILcJHqk8T+D07MGzjvDILA0acBx4BMemVG8ng=; b=5BZ4R+D4RCxi1Qp2skOPc8BmdD
	a+vWQuy6cocP1oNKpv4mLUA4MsiAo1vMxs+KJ4gwUTsxMbvNOW6bd5JnzRBzsxj74q/EuL5GLGjD4
	Kch1cveXddovFIO+6oEceNfFRE1lCmKaIM3SZgrnLxR3+SFmapmbR1IcXin+/ig6vaTt0Wn6DZusP
	IvYnQytzX4LPNtyvBufd+WCTwesoHv/RUA8j/TNiAf3R6vbmkRErIrX0vAmDIJyIPkOEkdckLuBnC
	BZ7nlL4OBysCS8J48sc9UGLLMJ0zqP1NaBf6enqz7UwfvFyC+ORKnYh3HHIfRMfl6IlO3/RK1tItf
	mTkRUtKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyAOS-00000004keH-2o7R;
	Mon, 15 Sep 2025 14:41:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyAOQ-00000004kcI-0K5D
	for barebox@lists.infradead.org;
	Mon, 15 Sep 2025 14:41:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyAON-0004T2-UD; Mon, 15 Sep 2025 16:41:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyAON-001RAA-2Q;
	Mon, 15 Sep 2025 16:41:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyAON-00000007fao-2cgp;
	Mon, 15 Sep 2025 16:41:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 15 Sep 2025 16:41:19 +0200
Message-ID: <20250915144119.1828166-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_074122_114654_DC4C3902 
X-CRM114-Status: GOOD (  10.74  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc3: remove non existent Kconfig option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_USB_ROLE_SWITCH does not exist in barebox. Remove the test for
this option.

Fixes: 5d01c33175 ("usb: dwc3: sync with Linux-6.3-rc2")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index dfc9c85ad8..985213deb4 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -70,8 +70,7 @@ static int dwc3_get_dr_mode(struct dwc3 *dwc)
 		 * specified or set to OTG, then set the mode to peripheral.
 		 */
 		if (mode == USB_DR_MODE_OTG && !dwc->edev &&
-		    (!IS_ENABLED(CONFIG_USB_ROLE_SWITCH) ||
-		     !of_property_read_bool(dwc->dev->of_node, "usb-role-switch")) &&
+		    (!of_property_read_bool(dwc->dev->of_node, "usb-role-switch")) &&
 		    !DWC3_VER_IS_PRIOR(DWC3, 330A))
 			mode = USB_DR_MODE_PERIPHERAL;
 	}
-- 
2.47.3



