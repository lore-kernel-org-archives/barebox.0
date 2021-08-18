Delivery-date: Wed, 18 Aug 2021 14:22:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa7-0005Y2-IN
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 14:22:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa1-0004vM-T9
	for lore@pengutronix.de; Wed, 18 Aug 2021 14:22:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OE8UQHo3Qpr272p9T2qAl1yrC0TYlA93wAeEynopyHo=; b=tB4uOyTaMd+jhk
	4yRsYM1HWYewC9ag/RKDpYFCx7bQ8nYey9lxqBmqlle+ZJUpFtW4K9v9aAiSThSqBehqKQejOmf+G
	OmS2m0Bdxq3OTup2djZRLK/NNewVVRDbWFdboooTNEoDMX4g50MaoMJ0UyQDn5TbczNEgpr2RDBfa
	DzU00nNa/faet/y6+DHMgZM4b853sDFw53mIm74ZYelDVog+aRKv+JRGpLWFglCs5O2x1TufH7YaU
	aM3+N7gYCzfZwyNwtCtViF7EP8g9BFpapKvCri04f5LPlyHkx84Dlbl/wfjipafsM0RfAlFPhRc6C
	7y5zdjmZo8ktXdEh9Ibg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKYO-005Tnt-AW; Wed, 18 Aug 2021 12:20:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKXy-005Tbi-Ug
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 12:19:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXs-0004Jq-Lb; Wed, 18 Aug 2021 14:19:48 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXr-0006ny-KA; Wed, 18 Aug 2021 14:19:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 18 Aug 2021 14:19:45 +0200
Message-Id: <20210818121945.26089-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818121945.26089-1-o.rempel@pengutronix.de>
References: <20210818121945.26089-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_051955_128038_4083EBDA 
X-CRM114-Status: GOOD (  12.14  )
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
Subject: [PATCH v1 6/6] ARM: boards: protonic-imx6: Enable bootchooser on
 prti6g board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

Bootchooser is now ported to the prti6g board. So, let barebox know
about it.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 0cfafdcc26..9ded94b3b0 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -962,7 +962,7 @@ static const struct prt_machine_data prt_imx6_cfg_prti6g[] = {
 		.i2c_adapter = 0,
 		.emmc_usdhc = 1,
 		.init = prt_imx6_init_prti6g,
-		.flags = PRT_IMX6_BOOTSRC_EMMC,
+		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
 	}, {
 		.hw_id = UINT_MAX
 	},
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

