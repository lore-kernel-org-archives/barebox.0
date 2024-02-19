Delivery-date: Mon, 19 Feb 2024 14:39:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rn-00Ea4Q-1N
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rm-0005wa-QJ
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DlGwdqncaE07uewamI0wyzTClGsramYXouGuTNxMnjw=; b=wm06eztKF3vYirX30KZGVq3rmS
	4ED/R1+HzfveeBww8J/M9kekEN42yaX3eeS3uqgDpxZyns9I7CKISxGIsfKLg7UiUxVptiB9zCBWu
	Jx/3Xl4Cbl15vKik44x6Ga+VV0K0qatK7J3v3qD+E+NrV4qDcYiFyrUM8LXuaH1NrY+ZD0RzU40HB
	GzZd8QttZkhOlPy61tqXqvqWCbxyNAAFIyRUO26nGnWTRAg2RTLlLv15pK+dRWcAB61bf6o/saDth
	pGVyS49bdHRa97Cbh9IXJGMNi8jwjFqCNGPTZsNQbK9hEte6YzALGNEad1Ccfrdj3fcN3HoGIfL/u
	4KqxjkdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3rJ-0000000Ag8U-3Ref;
	Mon, 19 Feb 2024 13:39:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r8-0000000Afzj-2SnM
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DlGwdqncaE07uewamI0wyzTClGsramYXouGuTNxMnjw=; b=Kxbmf8dvIfGC7OaXCQac5093oW
	Ok9xRNOCr9A84SYuz4MpFGE2lSTKhHh352hujhe+pM3RmXQKR6stNIX/u+tBpM3b0ukddCvbUUSC0
	/I5XSiSFmmJJao87tgUECMNNXQ4afh8Rwc5+3YYnHKNAvwi2WpoDIEpUQDHyjnP5PMRXaqk3dQX1O
	P24+UN3ZvwI4+dXjG/g2d9RRMAwsykEujhkhcQjHfUQMnO4Pzcnb/Rfrej9Ys6FTGWjV/TmiuHX6f
	EhQxTbtTlUIIAYMOOCtre78tp/8pCcSILU8blhsWidgWl6uP2lA/5iMmMEep5PLa1MZCVHd5vZ6WD
	3/LB3+RA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r4-00000001Gf6-1Y0I
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00051i-J0; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-001f3Z-6C; Mon, 19 Feb 2024 14:38:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-0C;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:26 +0100
Message-Id: <20240219133835.3886399-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_133847_133683_9EFCF3EB 
X-CRM114-Status: UNSURE (   9.96  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/15] usb: xhci: Add missing xhci_readl()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

xhci_readl() doesn't differ from readl(), but for uniformity, use
xhci_ prefixed accessors throughout.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-mem.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index c49693bd9f1b..915b083bfd1d 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -440,9 +440,9 @@ static struct xhci_container_ctx
 	BUG_ON((type != XHCI_CTX_TYPE_DEVICE) && (type != XHCI_CTX_TYPE_INPUT));
 	ctx->type = type;
 	ctx->size = (MAX_EP_CTX_NUM + 1) *
-			CTX_SIZE(readl(&ctrl->hccr->cr_hccparams));
+			CTX_SIZE(xhci_readl(&ctrl->hccr->cr_hccparams));
 	if (type == XHCI_CTX_TYPE_INPUT)
-		ctx->size += CTX_SIZE(readl(&ctrl->hccr->cr_hccparams));
+		ctx->size += CTX_SIZE(xhci_readl(&ctrl->hccr->cr_hccparams));
 
 	ctx->bytes = xhci_malloc(ctrl, ctx->size);
 
@@ -646,7 +646,7 @@ struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_ctrl *ctrl,
 		return (struct xhci_slot_ctx *)ctx->bytes;
 
 	return (struct xhci_slot_ctx *)
-		(ctx->bytes + CTX_SIZE(readl(&ctrl->hccr->cr_hccparams)));
+		(ctx->bytes + CTX_SIZE(xhci_readl(&ctrl->hccr->cr_hccparams)));
 }
 
 /**
@@ -668,7 +668,7 @@ struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_ctrl *ctrl,
 
 	return (struct xhci_ep_ctx *)
 		(ctx->bytes +
-		(ep_index * CTX_SIZE(readl(&ctrl->hccr->cr_hccparams))));
+		(ep_index * CTX_SIZE(xhci_readl(&ctrl->hccr->cr_hccparams))));
 }
 
 /**
-- 
2.39.2



