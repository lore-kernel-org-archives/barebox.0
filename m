Delivery-date: Mon, 19 Feb 2024 14:45:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3xy-00Eaz4-34
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:45:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3xx-00020T-Vu
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:45:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=79NzYSmmcmfAVFh//hxU3QrJi47A0/FkN6ghxff35vk=; b=rVrYm6G2RilkNpji+tCANVR5gH
	UjBAcPfr7pxLmF2YMO8NcBwRaLXErOHQktUKuPiiEyoSEjLkX+RQl5ecirfKVPUyI9yDFx4/zWfTI
	JSGiPZkdfA/3zp+Q2cmZT6ZKiAC4PzQzIcgEBqM/Vw7zyY3TncVDKM5g7+D0QfzsYuvJQz5E/6Zp5
	7etuRb6H4zw2Qgvlii5KnFLJ9gHLJ5B0GQQ3iAEtgPACwcacFhG2BC03rmOsMNggqyLkzBy0g3wS1
	gLrW3mvFROok/1n91cX06eAMZ7cMAuNprJ1+0xTCFgm7QyJL0WjUYJgdFRvHB/rkN3M4lQqbk6hEf
	PzdTTFUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xS-0000000AiIr-2Llc;
	Mon, 19 Feb 2024 13:45:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xQ-0000000AiIc-3oXj
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:45:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=79NzYSmmcmfAVFh//hxU3QrJi47A0/FkN6ghxff35vk=; b=R3LDW3mOCDEnHPWjnvC/tlbr2t
	PoDio5orD4ag8YarNbWIptoJi8o15Sj1RHei/ELOWLoghAjbhRyZ/1wa+oAdWaH3N7xbBHo3YXCZd
	puzHlMqvM/B15S0zzUCy0YGbyWx8DZjUvwPVX3AAoix2QaU9Itrvnww+kRDx6jWJQ8gnpZQvPCl5L
	tGdrGiPGHyr+3q+DI+ahGqjRaifL93UAWOP+1v9XdkgpjgsKDUJ397Gr5v3b0HFEx8EQcArLRNWZ0
	2hFXSTxlygceidyLiJo2D0diEv6ziE7nB7dvmFTAzmPOaQH7+ZrTyFGLOsCJb2FGU+rtQjNepqqpl
	/6CPW7JA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xH-00000001GoG-1xO0
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:45:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-0001LW-G3; Mon, 19 Feb 2024 14:45:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-001f5O-3e; Mon, 19 Feb 2024 14:45:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-1n;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:35 +0100
Message-Id: <20240219133835.3886399-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_134515_310333_A1593283 
X-CRM114-Status: GOOD (  11.14  )
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
Subject: [PATCH 15/15] usb: xhci: Do not panic on event timeouts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports U-Boot commit 2fd7037122a920ae22377b06aa5b32651cc71f13:

| Author:     Hector Martin <marcan@marcan.st>
| AuthorDate: Sun Oct 29 15:37:43 2023 +0900
|
| usb: xhci: Do not panic on event timeouts
|
| Now that we always check the return value, just return NULL on timeouts.
| We can still log the error since this is a problem, but it's not reason
| to panic.
|
| Signed-off-by: Hector Martin <marcan@marcan.st>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 6a859dbbfac9..5f68bc7c2f35 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -497,8 +497,9 @@ union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected,
 	if (expected == TRB_TRANSFER)
 		return NULL;
 
-	dev_err(ctrl->dev, "XHCI timeout on event type %d... cannot recover.\n", expected);
-	BUG();
+	dev_warn(ctrl->dev, "XHCI timeout on event type %d...\n", expected);
+
+	return NULL;
 }
 
 /*
-- 
2.39.2



