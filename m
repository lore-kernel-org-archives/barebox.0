Delivery-date: Mon, 26 Sep 2022 10:19:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjLD-00F9l7-Uk
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:19:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjLB-0001jQ-VB
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:19:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XmyJQWsHvM9GuVHS6XyoniH2M5rCfNRidYBuYRWI7R8=; b=JDRr4OXbdUE6mZ1NKtPPpgbiec
	rohs/nLIXOwmR+3jsjzFsdi5CBKynrEAwB4clIHJNKVYcjA6ckdpL+H0RgBgNnx4pbYMGbI/Fwgm3
	XcKS3C/AtWl5s8dib9xpnrhpleGjJ4lRVxAdZgL1czxkgUxTPWSwI66LEJvibflicEhAox73ngfzp
	v5RZexyl3pKoKbllgOEgsHWn4fyE9UWqfC5CK4Q8mKxBiPQAnf/asx5de49wTmn6YBgP9aWCEv1Md
	0D6q4+O76mQbTdEHhDN48yenoPW3RWD2fcy193bm+Q3tb4q7UcEF6NsHb3LDMokScGKMm55ZjRDfs
	hbUPsj2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJq-0034Z9-Jf; Mon, 26 Sep 2022 08:18:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJE-00347s-FF
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-0001E3-FR; Mon, 26 Sep 2022 10:17:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJC-002zkM-7H; Mon, 26 Sep 2022 10:17:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJ9-000K2S-5F; Mon, 26 Sep 2022 10:17:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Sep 2022 10:17:36 +0200
Message-Id: <20220926081740.76968-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926081740.76968-1-o.rempel@pengutronix.de>
References: <20220926081740.76968-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_011748_564618_E3923AE0 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 4/8] ARM: boards: skov-imx6: free used gpio devices pins
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Free used gpio pins to allow to take over them by actual device nodes

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index bceb215a01..140689c87b 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -501,11 +501,13 @@ static void skov_init_board(const struct board_description *variant)
 		 */
 		gpio_request(24, "must_be_low");
 		gpio_direction_output(24, 0);
+		gpio_free(24);
 	}
 
 	/* SD card handling */
 	gpio_request(205, "mmc io supply");
 	gpio_direction_output(205, 0); /* select 3.3 V IO voltage */
+	gpio_free(205);
 
 	if (variant->flags & SKOV_ENABLE_MMC_POWER) {
 		/*
@@ -516,6 +518,7 @@ static void skov_init_board(const struct board_description *variant)
 		gpio_direction_output(200, 0); /* switch on */
 		mdelay(1);
 		gpio_direction_output(200, 1); /* switch on */
+		gpio_free(200);
 	}
 
 	if (variant->flags & SKOV_DISPLAY_PARALLEL) {
-- 
2.30.2



