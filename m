Delivery-date: Mon, 20 Sep 2021 13:17:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSHIZ-0002tM-VZ
	for lore@lore.pengutronix.de; Mon, 20 Sep 2021 13:17:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSHIZ-00066n-2i
	for lore@pengutronix.de; Mon, 20 Sep 2021 13:17:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7gYSXPX0GnQFx8dvbNGdbMir3SXt63pC7EN2e2iQdg=; b=IwPYOJTMF/uXqe
	RCn+N+PHj2Lg9KRJEfkl/DJZLszhbd2tvgPLfaSCARNTKAuLhRYtDKdEGFPv3ai23tinqvs3evT/K
	G871w3Y9UvpKGHY2UQ/sv956XZF3raH5q1nItJ3a9Dw/DwuKESJhPDpqLNqi9g1EmAVlqBlhfur5F
	sHwYHCrk7wLFxL55JppyOIyWSDuWkRIGxUKZjA7yUcRB8NrdIxqGFtH3EzbTAFqJ6H4Wg4sbGxG4A
	bOA40q0fMc7CMfzWG+oTl+zJrPrvKsRbqq5Ijk3hrFh+QnJs8MWzk0NURsViwDPZQBbPH/Kq5onAW
	PQMU2iZbgbyftGaamw7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSHHL-001O95-Th; Mon, 20 Sep 2021 11:16:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSHGq-001Ntn-EW
 for barebox@lists.infradead.org; Mon, 20 Sep 2021 11:15:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mSHGm-0005S5-BN; Mon, 20 Sep 2021 13:15:32 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mSHGl-00049Z-RM; Mon, 20 Sep 2021 13:15:31 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 20 Sep 2021 13:15:23 +0200
Message-Id: <20210920111528.14575-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920111528.14575-1-o.rempel@pengutronix.de>
References: <20210920111528.14575-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_041536_598612_E9A6ED9C 
X-CRM114-Status: GOOD (  12.98  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/7] ARM: boards: skov-imx6: fixup_machine_compatible() add
 optional root node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This will be needed by the next patch

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index a58172b2b1..030ac62c52 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -432,16 +432,18 @@ static void skov_init_board(const struct board_description *variant)
 	}
 }
 
-static void fixup_machine_compatible(const char *compat)
+static void fixup_machine_compatible(const char *compat,
+				     struct device_node *root)
 {
 	const char *curcompat;
-	struct device_node *root;
 	int cclen = 0, clen = strlen(compat) + 1;
 	void *buf;
 
-	root = of_get_root_node();
-	if (!root)
-		return;
+	if (!root) {
+		root = of_get_root_node();
+		if (!root)
+			return;
+	}
 
 	curcompat = of_get_property(root, "compatible", &cclen);
 
@@ -487,7 +489,7 @@ static int skov_imx6_probe(struct device_d *dev)
 	globalvar_add_simple("board.dts", variant->dts_compatible);
 	globalvar_add_simple("board.display", variant->display ?: NULL);
 
-	fixup_machine_compatible(variant->dts_compatible);
+	fixup_machine_compatible(variant->dts_compatible, NULL);
 
 	skov_init_board(variant);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

