Delivery-date: Tue, 05 Aug 2025 17:47:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujJt8-007L8z-1D
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 17:47:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujJt7-00013M-Ro
	for lore@pengutronix.de; Tue, 05 Aug 2025 17:47:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0tE45j7+VWq2OzGAgoWeytEFoy59gOVwrrirZc7zUvc=; b=EuTSZqEUTd/WT+Y1ot0Yc4Z+Xt
	X+rujQTUl5pWul9fcXoyzGZL1rPoDyW3Kw7L45Z/LMQn+Sokg99Kwp4ZTjAheT5N37V6Ce7iPwB5R
	DTpX/Mcq1kYmIZTQg9kwripM9r21mKCAVWLBcBrhjF3UZ14a/dpqiCFYlWs2B2LACJudc4t1xNg0L
	ldeF8Jfr3Slw3Q4CzSLIzfOSNCDrTdH/KaIWa5lrFuFcH9PeDl5Z83c46GjyNXh/EXZk3YYsw84yt
	992oRcQl/iPYV+VYioyosrukZrQ6lcypAqMaEsbnxBApP1VMmfee0xxK48dyJd3cO4Pm96BYfI97D
	/ly7/AuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujJsS-0000000DC92-0Rww;
	Tue, 05 Aug 2025 15:47:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujIod-0000000D2Yf-3rwi
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 14:39:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1ujIoa-0003JT-Pt; Tue, 05 Aug 2025 16:38:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1ujIoa-00C3kH-1z;
	Tue, 05 Aug 2025 16:38:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1ujIoa-008NXj-1n;
	Tue, 05 Aug 2025 16:38:56 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 05 Aug 2025 16:38:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250805-fix-dwc3-dr-mode-v1-1-86dda9815c34@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHcXkmgC/x2MywqAIBAAfyX23IJpQvYr0aF0qz30QKEC8d9bO
 g7MTIZEkSlBX2WIdHPi8xBo6gr8Nh0rIQdh0Epb1SmLC78YHm8wRNzPQOjc3HbOeG1NA5JdkcT
 5l8NYygeJhjRqYgAAAA==
X-Change-ID: 20250805-fix-dwc3-dr-mode-99b4893c2531
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_073859_966826_98C165FE 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc3: remove CONFIG_USB_ROLE_SWITCH in condition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_USB_ROLE_SWITCH is only defined in the kernel and is always
undefined in barebox.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index dfc9c85ad8b70756d8f177d41bd53a7f412afbd9..985213deb4f1c96282138a98bf5e2aa4d65cbca6 100644
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

---
base-commit: 7be8b1bcb8aeb249e9d55f70ccb5ea93711e8efa
change-id: 20250805-fix-dwc3-dr-mode-99b4893c2531

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



