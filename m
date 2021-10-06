Delivery-date: Wed, 06 Oct 2021 10:45:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2YL-0003DJ-HZ
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 10:45:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2YK-0000nZ-EP
	for lore@pengutronix.de; Wed, 06 Oct 2021 10:45:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4L7ncyT2MnbPIZ8w4KrNdpdDBSHy9NFVKXD2DjsNZ8=; b=Ktx31knWMVTicB
	ymTMj3S0idA/D4+AW19TyGH+uTbLDKMzASWQ5Yf3WYy9d3oACaXS7/FKOaAbJTvOEub2EgZMxjz7E
	nQVThc6xbdlZa+qx7lyseR5TfzYwNOv8Wsy+08ysAAc1NgFt4s2rMDe2CKmlF0VmnBZlD5Mvb6ynX
	PtIeMpbh7WVUaxSxNHtRdcqTS2hqAIDVhFVQBv1IrJ4EpJAmOxchUYct7RnNUSb41YhR3glboT2iD
	v1XPEbCxZBw4EVb6IaJOogiVKBVKOKtW52i+gEhKqOl+uwZHctnanH6OLH2wuSBwIkgfOAE7XGjLS
	d6IUObNb8DHy5mItR5ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY2Wa-00DVth-Mt; Wed, 06 Oct 2021 08:43:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY2WO-00DVpZ-Uu
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 08:43:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WL-0000BN-2Q; Wed, 06 Oct 2021 10:43:25 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WK-0003fh-I7; Wed, 06 Oct 2021 10:43:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  6 Oct 2021 10:43:19 +0200
Message-Id: <20211006084323.14051-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006084323.14051-1-o.rempel@pengutronix.de>
References: <20211006084323.14051-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_014329_061838_B8130443 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 4/8] ARM: boards: skov-imx6: disable eth0 for barebox if no
 switch is detected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 1fa691945e..f42a0cad00 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -529,6 +529,7 @@ static void skov_init_board(const struct board_description *variant)
 static int skov_switch_test(void)
 {
 	struct phy_device *phydev;
+	struct device_d *eth0;
 	struct mii_bus *mii;
 	int ret;
 
@@ -556,6 +557,15 @@ no_switch:
 
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

