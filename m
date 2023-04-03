Delivery-date: Mon, 03 Apr 2023 14:26:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjJGj-008VZM-3j
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 14:26:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjJGj-0004L3-0y
	for lore@pengutronix.de; Mon, 03 Apr 2023 14:26:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IHx4WE2jL6oyvjS5Gd2ggfGOojIjoOJwPp2vLOI4wbk=; b=q7Eu2VuEvK2MNeOSPU62e8m57K
	CtcQcy32GNKo9y3bCpXSnnKGPVs3QDIoiOf93/pZ65i41SMv4k4iUmCwI1mGvWc40q9EJABFz/crl
	AZOjiNtkUWLis9TShqTyG2NEtaMdfX6xXQfSXN17XBRyJiasDQTCuxS3NbJ9Nk79RrPq61nok4Kdd
	89/tLfjzTgiJwxS8sokaoFwlx+ZTer6CBbzJ7rnCDaIf8oKjwyvNeocHpyj531SqXsnVNKnEGjP5B
	pAFR0RQl1BVnKDUlm7XWQER8tLPS9RLv8doWHcdknueWV1lDASkc9EJu2gmm7TJFxZkp5VcI+uazO
	sXM/Y4vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjJFe-00FGVk-1x;
	Mon, 03 Apr 2023 12:25:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjJFb-00FGUX-38
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 12:25:33 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pjJFY-00042z-VX
	for barebox@lists.infradead.org; Mon, 03 Apr 2023 14:25:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 Apr 2023 14:25:09 +0200
Message-Id: <20230403122509.258800-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_052532_006897_67589FFD 
X-CRM114-Status: GOOD (  10.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: boards: protonic-imx6: fix bbu_handler device paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The update handler path must be a full-path starting at '/'. Fix this by
adding the '/dev/' path prefix.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index d2fb25d3cc..0d57f409d2 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -530,7 +530,7 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
 		emmc_flags = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	devicefile = basprintf("mmc%d", dcfg->emmc_usdhc);
+	devicefile = basprintf("/dev/mmc%d", dcfg->emmc_usdhc);
 	if (!devicefile) {
 		ret = -ENOMEM;
 		goto exit_bbu;
@@ -540,7 +540,7 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
 	if (ret)
 		goto exit_bbu;
 
-	devicefile = basprintf("mmc%d", dcfg->sd_usdhc);
+	devicefile = basprintf("/dev/mmc%d", dcfg->sd_usdhc);
 	if (!devicefile) {
 		ret = -ENOMEM;
 		goto exit_bbu;
-- 
2.39.2



