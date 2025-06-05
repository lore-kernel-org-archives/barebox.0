Delivery-date: Thu, 05 Jun 2025 15:15:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARX-0041fA-1O
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:15:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARW-00030Z-Qk
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:15:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uLQtrLRRCVzWLWaEHIY+wj0H9Jg+M94kdDhNNrg+h+w=; b=fFWGew2tOUL0SrRYVTCkkxs8mw
	rhROngNlAfIdTr8UM0/Ty0zacujpZFmMwycOnw7Be420QwNWxJRND/axX3lrbrXT1h+gDG9O6nv4l
	KCIWEDd5XstCnA7SPw8jB47WbLm4PmRVPktCgvg/GGLTUFHVSJKpOG14RjcDfrkuzISnkJl4jQf18
	dmyUNcTjCTf/ILvx1s848OYisEaOtztKRJLtqMteUl9BXyM4bkcfJK2QKxpPsFg2tNNiqa8TMZwcX
	P+qxjFj7GYhaTzLChqrKQln5Gl+5OMEGCvegAAVsErOTKcj3h+X1p6R3O2RChReke2m1nxIYnB36Z
	NZ2rZ3Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAR8-0000000FaMU-3FqL;
	Thu, 05 Jun 2025 13:15:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFM-0000000FXwl-1tOH
	for barebox@bombadil.infradead.org;
	Thu, 05 Jun 2025 13:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=uLQtrLRRCVzWLWaEHIY+wj0H9Jg+M94kdDhNNrg+h+w=; b=aUoUB27x2WkIopjA7n8erWzHTr
	H7fGcaDIwv2/54UKUPRRTqr8yW1TEGcShPyzMgRTE+3mWboZnjsOIVxOMkb1bVPPjjZgi0+SKGiv2
	CITv88wlmP/bd/yPOw+z7pmseyY7qYbPBuCGm4daClkL/M38H5FAZ35wRE3vRPftKeo/pI6WeXyad
	wqgg6nlxUFlgm/hHUHM3jJanvnF9B6ld5Fa4BJxCIGLLr1tNVO26ka+jqGTHSdy+BSAS5lBsRTseK
	S019zeMur8fuiSgUCyt2mIajfkWAodKCP5Uc49rORd+94TcNhdch88ZDa6Z2HI0OuYW3ebcE1aWTF
	Z8nvO63Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFH-00000001AJy-1l5n
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFF-00015A-07; Thu, 05 Jun 2025 15:02:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-001xkO-2b;
	Thu, 05 Jun 2025 15:02:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1d;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-14-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=2318;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=041o0f8FnBLpcgKGyjNcOVrUZ0fYxP/ijHTqq3+5Pnc=;
 b=G6SkoYbJpRGQarvidhwjBAzjUH4ytEqI6v53tlExumExHL6TF13n4y/U8BhfQnotTeguwF6uQ
 PuVyKIW2snrApCmtr4aOuGJqJgmXYtSeGWvi06Z/1wwvM67YJUZDzUm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140259_550345_08509196 
X-CRM114-Status: GOOD (  12.52  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/33] drivers: soc: ti: k3-ringacc: fix
 k3_ringacc_ring_reset_sci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on Linux downstream commit:

| commit 5591c7f9a0fedc8dde70e6f2143165e296084249
| Author: Sai Sree Kartheek Adivi <s-adivi@ti.com>
| Date:   Fri Mar 7 03:26:59 2025 +0530
|
|     PENDING: drivers: soc: ti: k3-ringacc: fix k3_ringacc_ring_reset_sci
|
|     Add non-tisci implementation for k3_ringacc_ring_reset_sci using direct
|     register writes.
|
|     Fixes: a621a1075550f ("PENDING: drivers: soc: ti: k3-ringacc: handle absence of tisci")
|     Signed-off-by: Sai Sree Kartheek Adivi <s-adivi@ti.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/ti/k3-navss-ringacc.c | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/ti/k3-navss-ringacc.c b/drivers/soc/ti/k3-navss-ringacc.c
index dfc397a1f5aca08a90ed773540bdeae9f50b8173..18fb9153caa467b3159e035448e16da65563b36e 100644
--- a/drivers/soc/ti/k3-navss-ringacc.c
+++ b/drivers/soc/ti/k3-navss-ringacc.c
@@ -472,20 +472,29 @@ static void k3_ringacc_ring_reset_sci(struct k3_ring *ring)
 	struct ti_sci_msg_rm_ring_cfg ring_cfg = { 0 };
 	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
+	u32 reg;
 
-	/* TODO: Implement ring reset without tisci */
-	if (!ringacc->tisci)
-		return;
+	if (!ringacc->tisci) {
+		if (ring->cfg == NULL)
+			return;
+		reg = readl(&ring->cfg->size);
+		reg &= ~K3_DMARING_CFG_SIZE_MASK;
 
-	ring_cfg.nav_id = ringacc->tisci_dev_id;
-	ring_cfg.index = ring->ring_id;
-	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID;
-	ring_cfg.count = ring->size;
+		writel(reg, &ring->cfg->size);
+		reg |= ring->size;
 
-	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
-	if (ret)
-		dev_err(ringacc->dev, "TISCI reset ring fail (%d) ring_idx %d\n",
-			ret, ring->ring_id);
+		writel(reg, &ring->cfg->size);
+	} else {
+		ring_cfg.nav_id = ringacc->tisci_dev_id;
+		ring_cfg.index = ring->ring_id;
+		ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID;
+		ring_cfg.count = ring->size;
+
+		ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
+		if (ret)
+			dev_err(ringacc->dev, "TISCI reset ring fail (%d) ring_idx %d\n",
+				ret, ring->ring_id);
+	}
 }
 
 void k3_ringacc_ring_reset(struct k3_ring *ring)

-- 
2.39.5



