Delivery-date: Wed, 28 May 2025 14:04:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWG-001B1X-2o
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFW8-0006jF-E5
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uLQtrLRRCVzWLWaEHIY+wj0H9Jg+M94kdDhNNrg+h+w=; b=oHMSSkde57VdRcuDD3iP/oK5Vx
	5bzpudwHlS2pbHxBhUsBHsamfJKuPzreXGTspjWAMWo3v6eGQbEk9bjJpdT56JD2CvMRx2ClzjGur
	hEoRE36voFqz1/9uvs779hENMf02ypl6uqWAV+R77HPD+oAI49kMc1InCq9wJJNGl7xT5xxI9dC/P
	Ae0JTcAHUUUeGFznKgj67Ix2gToe+IV52VEgrfKXfO91CN0JVM3oLDHaFQLNjWUedadIDvxyz7xCW
	jGpY5A4rHnaJ+lKDijjByYRUinhJRzsyQdYyTfMEXcEMb5uzb3bMiEBTj2VUi9qqf/yF1RBRtEJnF
	nnhKww9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVP-0000000D2gi-212D;
	Wed, 28 May 2025 12:03:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFTz-0000000D2aa-1cE0
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=uLQtrLRRCVzWLWaEHIY+wj0H9Jg+M94kdDhNNrg+h+w=; b=vIZdnVc+jSfAgExhsCYYl6FQoa
	hIqxVWi1ZYjrSbjVK4bvt0FAcYDQJNVLsrS2Qxi8ITKYft6U5KAj+ZJT2+FzLWyU0fm+9fg2Bz+pb
	sQ7G6AEn8pqzIzWXKTDT8qIs3pBXKnApY6fNZzryw4vtlVSnxTatv0rmPnXgCgwYfl9DVFGObpSSa
	2OpN28p9PrjPb8vGItAWecWc5sXKZc60W2hAZ062/oy3yBndm48StzXlamPTDnfp9ZuybogiMCda9
	bFvvYZm72kynVEOyZjC+Mkxj0aNU4I++po+Z9cOLoGEnxubCOoOjoAxlULE+0/0k12eA42pw1u9af
	4fUbG/ew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFTw-0000000Dape-2wYp
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-0004So-UW; Wed, 28 May 2025 14:01:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-000a9p-2M;
	Wed, 28 May 2025 14:01:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1g;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-13-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=2318;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=041o0f8FnBLpcgKGyjNcOVrUZ0fYxP/ijHTqq3+5Pnc=;
 b=KgZwJgiNlVEtk819rBoOiKbOxhB1ag4rRBbqaAZMkX2AKM26YtHtceIq2q6l4mpynyAISN/sp
 UWoAP4GAziXAt31INS/FkucXdgId13/n31qWGLUfXNdMfmsM99LCHZ3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130204_751801_9FB777A7 
X-CRM114-Status: GOOD (  11.04  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/31] drivers: soc: ti: k3-ringacc: fix
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



