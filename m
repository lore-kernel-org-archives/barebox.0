Delivery-date: Thu, 09 Sep 2021 11:15:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9s-0004Am-4j
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 11:15:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9r-0004yH-9c
	for lore@pengutronix.de; Thu, 09 Sep 2021 11:15:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cC98qQb8Z9awSG8Z4G4F7ae5gcno/CTaPxT5siJlXmo=; b=w1rDItSb65Dkbm
	1hgT2dOrzL7aOXKU49ys39YjiTY0rr7u1g9SsKBoheRHYPeabk3iJLdF4hUCaUnH0hYRcUY1+HIQq
	KxAyvUW2ZzrOwyLVTYik+Z6x+zcWyFsnCgplVtsLnqdd1Uhzj7MJOqQqT94TuR3Jhuga5MARm4bJe
	fNLxx95HSIIQ3zR6wZcft/kHbh5voqan/TtDPWciEwOD+OI00KZ+ct01xwhkHsJQhrc+g8uW4CB1Z
	bIK+gqGXfn0+s49eccPgP/gR3Dz3iUq9PrLDxFYtzZ8WpZjXCdC2Q4UEOpmoChgcP1uWBDwM1LMwG
	7SXh5ei/Qh1IrERFPjNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOG8T-008jxr-F2; Thu, 09 Sep 2021 09:14:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOG8A-008jt2-Mu
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 09:14:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG87-0004Lk-3d; Thu, 09 Sep 2021 11:13:59 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG86-0002TU-Dn; Thu, 09 Sep 2021 11:13:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  9 Sep 2021 11:13:45 +0200
Message-Id: <20210909091349.9446-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909091349.9446-1-o.rempel@pengutronix.de>
References: <20210909091349.9446-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_021402_884661_A7FCDD97 
X-CRM114-Status: GOOD (  11.29  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 4/8] ARM: boards: skov-imx6: disable eth0 for barebox if no
 switch is detected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 2bd21adaeb..c4665c2b45 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -540,6 +540,7 @@ static void skov_init_board(const struct board_description *variant)
 static int skov_switch_test(void)
 {
 	struct phy_device *phydev;
+	struct device_d *eth0;
 	struct mii_bus *mii;
 	int ret;
 
@@ -568,6 +569,15 @@ no_switch:
 
 	pr_notice("No-switch variant is detected\n");
 
+	eth0 = get_device_by_name("eth0");
+	if (eth0) {
+		ret = dev_set_param(eth0, "mode", "disabled");
+		if (ret)
+			pr_warn("Can't set eth0 mode\n");
+	} else {
+		pr_warn("Can't disable eth0\n");
+	}
+
 	return 0;
 }
 late_initcall(skov_switch_test);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

