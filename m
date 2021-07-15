Delivery-date: Thu, 15 Jul 2021 14:39:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m40eB-0006vy-Pb
	for lore@lore.pengutronix.de; Thu, 15 Jul 2021 14:39:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m40eA-0004Ks-U0
	for lore@pengutronix.de; Thu, 15 Jul 2021 14:39:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ErS0J55prX4FkmkgVx8Df+LgZJHLeq7fnE81mWOY2/c=; b=sLLhHVeaaEEwqr
	6ZzAx3LxbURGFn4vJKyMK1j85+8VpsXZPr5JqfSz3oZpsQIKZvVx3Lc8CV6W4ks03D/ooOZdKHisw
	QVKWL88PpQqaMO3NLfWZ46ax/xCcg/JwMxNdrdt8n3Gwur8ooCjP8SUTaJXgwxTxiuw3gQiFfufHO
	vnae2nA65mTz7tJCPhI0W5K7APuoTye5Kf82JwsvWCFwT8oXTLewbhx5mDhmStqk12jstqJnZ2B1v
	kdMiN97pUqxdOjzaOYAz/6CnB0yu+VtL/PxXnZwSCd0zmhrbCnKEEFJiFfrV6N9G5U/w/mLrR2K0l
	/xZA8mkM2xjRbx3yN8vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m40cx-000r9y-Fr; Thu, 15 Jul 2021 12:38:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m40cj-000r4N-1a
 for barebox@lists.infradead.org; Thu, 15 Jul 2021 12:37:54 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1m40ch-0004DN-MR; Thu, 15 Jul 2021 14:37:51 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1m40ch-0007Yp-Ct; Thu, 15 Jul 2021 14:37:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org,
	david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 15 Jul 2021 14:37:47 +0200
Message-Id: <20210715123747.29020-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_053753_106307_C93E4C5B 
X-CRM114-Status: GOOD (  11.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: protonic-imx6: do not expose RFID to the kernel dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RFID node is not used and should not be used by kernel, so remove the
kernel devicetree fixup.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index a718d54df4..6eb31a4bc4 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -794,12 +794,6 @@ static int prt_imx6_probe(struct device_d *dev)
 	if (ret)
 		goto free_priv;
 
-	ret = of_register_fixup(prt_imx6_of_fixup, priv);
-	if (ret) {
-		dev_err(dev, "Failed to register fixup\n");
-		goto free_priv;
-	}
-
 	prt_priv = priv;
 
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

