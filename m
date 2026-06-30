Delivery-date: Tue, 30 Jun 2026 14:48:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXtL-00BT86-2d
	for lore@lore.pengutronix.de;
	Tue, 30 Jun 2026 14:48:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXtL-00069N-6r
	for lore@pengutronix.de; Tue, 30 Jun 2026 14:48:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OzDE0htTnOUrird9j4XNbEeZd4NcOI7+L5JFL2xXPLs=; b=G7ftida/ooglGW
	18UjxCAioGpK4nSlQcMxIM1veVXOUFjzg1BQ8egJNkofzxbIjKiqTRuV6/K7GuMEvmP3LeXpWRi1F
	C283qGd2eetYYl80x5bcvctyjDado/QJ5upqKiE3Cyb4/RarObaLs8B02AeAzE7J+INv7rctwRDIA
	5EZ+YTMaPkbvWzy0Z3To1eSMshqa2wb+thtDc665xPdxJSGiULIygmF5SEvfj6nExAxgWB3HW6H6X
	89JFEiJuJtyB4iY1FXjKPD7m5ppn/4dDcluJPGv0SXsFI/fjj6D0p++EJtWqvku8QRVwkW2R/TKIC
	q2RTcIZtjtGzfQ6l+cUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXsL-0000000H2U7-3XHL;
	Tue, 30 Jun 2026 12:47:41 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXsH-0000000H2TV-366k
	for barebox@lists.infradead.org;
	Tue, 30 Jun 2026 12:47:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E68C720045F;
	Tue, 30 Jun 2026 14:47:34 +0200 (CEST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1weXsE-005Pna-2n;
	Tue, 30 Jun 2026 14:47:34 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1weXsE-00000002yWP-3Hjh;
	Tue, 30 Jun 2026 14:47:34 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Jun 2026 14:47:32 +0200
Message-ID: <20260630124732.709291-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_054737_947306_30F8B3C8 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
Cc: =?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: boards: skov-imx6: fix device tree path of state node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The reference broke in commit [1] and led to the following error message during
boot while fixing up the kernel devicetree:

  Loading ARM Linux zImage '/mnt/nand0.firmware.ubi.system0//boot/zImage'
  Loading devicetree from '/mnt/nand0.firmware.ubi.system0//boot/imx6dl-skov-revc-lt2.dtb'
  ERROR: skov-imx6 machine: Node /state/ethaddr/eth2 defining the state variable not found.

[1] c00df6a4b552 ("ARM: dts: Fix dtc warnings in state nodes")
---
 arch/arm/boards/skov-imx6/board.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 164833568ab9..8c837b8a8fb9 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -384,7 +384,7 @@ static int skov_imx6_switch_port(struct device_node *root, const char *path)
 
 	ret = eth2_of_fixup_node_individually(root, buf, "eth0",
 					      "state.ethaddr.eth2",
-					      "/state/ethaddr/eth2");
+					      "/state/ethaddr/eth2@1e");
 	return ret;
 }
 
@@ -563,7 +563,7 @@ static void skov_init_board(const struct board_description *variant)
 
 static int skov_set_switch_lan2_mac(struct skov_imx6_priv *priv)
 {
-	const char *state = "/state/ethaddr/eth2";
+	const char *state = "/state/ethaddr/eth2@1e";
 	struct device_node *lan2_np;
 	u8 ethaddr[ETH_ALEN];
 	int ret;
-- 
2.47.3



