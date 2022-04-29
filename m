Delivery-date: Fri, 29 Apr 2022 09:32:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkL6t-001m79-Vs
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 09:32:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkL6r-00019Q-1Q
	for lore@pengutronix.de; Fri, 29 Apr 2022 09:32:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7mv3soz58kdY08dYB7ySfRN9d7MJ7P/k3lmDdwA4B0=; b=eljjEVrhLXgsEb
	qBbPoSU16jC/AefknCbVeAFhpOsutvGTD+3CUbdzCTv5drg5372/H55JX+LWeTdcOB/CLek4PLF6e
	oFAxwMQrTZKh/bTePl7Z+staj8FLbHzr7vreGRY3k5azGOf/uCApPbZrHFZDdF/ew2niwiVOmBvWs
	DBk1u2W1yu2C9A5H36cuFuUkmaE+OtGyYW/Twi/LP/PlbukpIDqPPWCTmM2ewkhY2tXnrcEVGAeis
	6dT4JYfDZwyVufQDB0H5s9LJI1rklch39JP1g8zCOuU3Ld5feXn1ndzhseMGsg/EhJLJiW+sr88Dj
	yWYafU1Jq22+YwafObaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkL5g-009yXI-0W; Fri, 29 Apr 2022 07:31:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkL5L-009yRr-DC
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 07:30:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nkL5K-0000gG-7i; Fri, 29 Apr 2022 09:30:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nkL5K-005u6S-6X; Fri, 29 Apr 2022 09:30:36 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nkL5H-000pMJ-Te; Fri, 29 Apr 2022 09:30:35 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 29 Apr 2022 09:30:33 +0200
Message-Id: <20220429073034.197362-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220429073034.197362-1-o.rempel@pengutronix.de>
References: <20220429073034.197362-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_003039_478783_A6802BA5 
X-CRM114-Status: GOOD (  12.36  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 4/5] ARM: boards: skov-imx6: make use of
 of_fixup_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Replace board specific fixup_machine_compatible() with generic
of_fixup_machine_compatible()

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 40 +++----------------------------
 1 file changed, 3 insertions(+), 37 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 2702bc1de9..53c213f33b 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -312,55 +312,21 @@ static int skov_board_no = -1;
 static bool skov_have_switch = true;
 static const char *no_switch_suffix = "-noswitch";
 
-static void fixup_machine_compatible(const char *compat,
-				     struct device_node *root)
-{
-	int cclen = 0, clen = strlen(compat) + 1;
-	const char *curcompat;
-	void *buf;
-
-	if (!root) {
-		root = of_get_root_node();
-		if (!root)
-			return;
-	}
-
-	curcompat = of_get_property(root, "compatible", &cclen);
-
-	buf = xzalloc(cclen + clen);
-
-	memcpy(buf, compat, clen);
-	memcpy(buf + clen, curcompat, cclen);
-
-	/*
-	 * Prepend the compatible from board entry to the machine compatible.
-	 * Used to match bootspec entries against it.
-	 */
-	of_set_property(root, "compatible", buf, cclen + clen, true);
-
-	free(buf);
-}
-
 static void fixup_noswitch_machine_compatible(struct device_node *root)
 {
 	const char *compat = imx6_variants[skov_board_no].dts_compatible;
 	const char *generic = "skov,imx6";
-	size_t size, size_generic;
 	char *buf;
 
-	size = strlen(compat) + strlen(no_switch_suffix) + 1;
-	size_generic = strlen(generic) + strlen(no_switch_suffix) + 1;
-	size = max(size, size_generic);
-
 	/* add generic compatible, so systemd&co can make right decisions */
 	buf = xasprintf("%s%s", generic, no_switch_suffix);
-	fixup_machine_compatible(buf, root);
+	of_fixup_machine_compatible(root, buf);
 
 	/* add specific compatible as fallback, in case this board has new
 	 * challenges.
 	 */
 	buf = xasprintf("%s%s", compat, no_switch_suffix);
-	fixup_machine_compatible(buf, root);
+	of_fixup_machine_compatible(root, buf);
 
 	free(buf);
 }
@@ -648,7 +614,7 @@ static int skov_imx6_probe(struct device_d *dev)
 	globalvar_add_simple("board.dts", variant->dts_compatible);
 	globalvar_add_simple("board.display", variant->display ?: NULL);
 
-	fixup_machine_compatible(variant->dts_compatible, NULL);
+	of_fixup_machine_compatible(NULL, variant->dts_compatible);
 
 	skov_init_board(variant);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

