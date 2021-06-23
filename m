Delivery-date: Wed, 23 Jun 2021 07:18:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvH4-0005Ch-AG
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:18:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvH2-0007Hl-KP
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:18:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wo23PUMHWHgy671SiQxWqr9cYBFr4BiHVF/k7mCcDDs=; b=pTOr3X6Tbil6zu
	SDRKADUBKan8/1YY4URV+Kokyh9jKQGLoYMeNW9bGQqh6a91Zt7ufFAGfbE9ckUfTOgJmJoH++Qyb
	cIx5xncaQVDCt3XZrAYPh0w8WsuhqvcQaxsdD7+xxMsKIzej3Y0GmNl40iTN/HJa05yG3MIWFOgy3
	CfRBJILapAY0GOMvzwe3VDBN/6b7967m2fa72Gtx1qwqlXwdRDnIatz/iVnhydJ99ialWVg5GzQPR
	prq6W2V75lAioP8ED2/JTsa4Ve8Op77l+rc3JQigkiS7ZnYXamnlDH+dz/Xc3dqtHhVqNde4vjxGn
	z5tgOVpAWXr9LeBx9M/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvFm-009MU3-EF; Wed, 23 Jun 2021 05:16:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFd-009MQE-Ep
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFc-0006rS-8g; Wed, 23 Jun 2021 07:16:36 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFb-0000Vg-0t; Wed, 23 Jun 2021 07:16:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:32 +0200
Message-Id: <20210623051632.30253-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221637_614005_96B00A13 
X-CRM114-Status: GOOD (  14.98  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/17] of_firmware: Fix handling of firmware-name property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The fpga-region binding states that the firmware-name property must be
in the same node as the fpga-region compatible, so checking for this
compatible when walking up the parents is wrong. Instead, only test for
it in the target node. Also, when the current node is not a fpga-region
we must return successfully.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_firmware.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index 2d8245a02e..687e675302 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -11,11 +11,9 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 	struct device_node *mgr_node;
 
 	do {
-		if (of_device_is_compatible(np, "fpga-region")) {
-			mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
-			if (mgr_node)
-				return firmwaremgr_find_by_node(mgr_node);
-		}
+		mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
+		if (mgr_node)
+			return firmwaremgr_find_by_node(mgr_node);
 	} while ((np = of_get_parent(np)) != NULL);
 
 	return NULL;
@@ -48,6 +46,9 @@ static int load_firmware(struct device_node *target,
 	if (!target)
 		return -EINVAL;
 
+	if (!of_device_is_compatible(target, "fpga-region"))
+		return 0;
+
 	mgr = of_node_get_mgr(target);
 	if (!mgr)
 		return -EINVAL;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

