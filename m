Delivery-date: Wed, 18 Aug 2021 14:22:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa5-0005XI-6s
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 14:22:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKZx-0004uI-Cu
	for lore@pengutronix.de; Wed, 18 Aug 2021 14:22:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIzuWrtf3zZyhe1om9vfw9ixxOLVK8gf/6CkyvPsR1I=; b=Tum99f19FGtupQ
	/Cv0w9Frevfp0axvSqlUTSaCwUWKtCIBVYsnHzbhE6xGjzVnSw8pW180GlxmNyRkHVc+XakX96eSZ
	Ya8DRoGOotQreSz6EP2ns0fQNoC5Rs1MyB56+Tbar6eUhPuquu6p5PY+jg+UMvo+/TIUEDLE16cQz
	98pGQke7ogeEap/KS7KPtL2j1s36C6RgyBSQDh1Oab6w6rVOiIJJaiMcw1zarXj0mq2cYw4vOOTAY
	W/qCo5FMYui4xNS9hVPqhKWLp+775s3tYBJs9tDS31DPXnMv6HXa3r/TUrJ3Gy/uuZRyO9ZPYfX7C
	ipEmTVEo2pYrMYhgQR+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKY7-005Tft-BV; Wed, 18 Aug 2021 12:20:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKXy-005Tbl-SS
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 12:19:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXs-0004Jo-La; Wed, 18 Aug 2021 14:19:48 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXr-0006ns-J2; Wed, 18 Aug 2021 14:19:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 18 Aug 2021 14:19:43 +0200
Message-Id: <20210818121945.26089-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818121945.26089-1-o.rempel@pengutronix.de>
References: <20210818121945.26089-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_051954_971070_B8A2E60E 
X-CRM114-Status: GOOD (  10.17  )
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
Subject: [PATCH v1 4/6] ARM: boards: protonic-imx6: Don't register SD with bbu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

SD boot is only used during development. Since the usdhc interface index
differs from board to board removing it is easier than adding another
board variable/flag.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 7368f3458f..38630dc2af 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -427,10 +427,6 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
 	if (ret)
 		goto exit_bbu;
 
-	ret = imx6_bbu_internal_mmc_register_handler("SD", "/dev/mmc0", 0);
-	if (ret)
-		goto exit_bbu;
-
 	return 0;
 exit_bbu:
 	dev_err(priv->dev, "Failed to register bbu: %i\n", ret);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

