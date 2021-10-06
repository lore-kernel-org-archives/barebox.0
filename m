Delivery-date: Wed, 06 Oct 2021 10:45:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2Y8-0003At-Hn
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 10:45:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2Y7-0000hx-1i
	for lore@pengutronix.de; Wed, 06 Oct 2021 10:45:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdcJpUru54ckuxnSEMMm78KXgd+UVmEvV+pe928Emmg=; b=Vp+/1kAEYlOVIH
	S+5mxLRbgeWvMkK6QUEDRnKfoMQGgxlLJaKG9QyHIRxHgIJH14JlavkIY/mHdjWt2fjaSUN9ufWvE
	lEiJ32bbLZyk8p99sX7LtiB2XBwdeKcJSK1i6VDBZreo+tPHleS1KwdEO4UlwOhH/gLhmyk4HNQuh
	9ZzPJ2Rlb6olt6hsn6YACfuoD+mGtoUsuoRbML7js3GZe2JahITHHrAgJF14jrmebA1mBHRls42r+
	TCN/EhdRHhVi1TJlQRFlebU097QHAncOwf4keBrrHWoWusDRbICUBi0INKzqQdirn3Vc0BAqpnRtI
	+5UEm4CvNOHj8hmMMtDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY2WV-00DVsy-R2; Wed, 06 Oct 2021 08:43:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY2WO-00DVpc-Rt
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 08:43:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WL-0000BO-3Z; Wed, 06 Oct 2021 10:43:25 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WK-0003fk-IW; Wed, 06 Oct 2021 10:43:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  6 Oct 2021 10:43:20 +0200
Message-Id: <20211006084323.14051-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006084323.14051-1-o.rempel@pengutronix.de>
References: <20211006084323.14051-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_014328_935604_F0758CB0 
X-CRM114-Status: GOOD (  12.60  )
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
Subject: [PATCH v4 5/8] ARM: boards: skov-imx6: fixup different DTS variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 48 +++++++++++++++++++++++++++----
 1 file changed, 43 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index f42a0cad00..c09a2cd898 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -390,13 +390,51 @@ static void skov_imx6_no_switch(struct device_node *root)
 	}
 }
 
+static int skov_imx6_switch_port(struct device_node *root, const char *path)
+{
+	size_t size;
+	char *buf;
+	int ret;
+
+	/* size is, string + '\0' + port number */
+	size = strlen(path) + 2;
+	buf = xzalloc(size);
+	if (!buf)
+		return -ENOMEM;
+
+	ret = snprintf(buf, size, "%s0", path);
+	if (ret < 0)
+		return ret;
+
+	ret = eth_of_fixup_node_from_eth_device(root, buf, "eth0");
+	if (ret)
+		return ret;
+
+	ret = snprintf(buf, size, "%s1", path);
+	if (ret < 0)
+		return ret;
+
+	ret = eth2_of_fixup_node_individually(root, buf, "eth0",
+					      "state.ethaddr.eth2",
+					      "/state/ethaddr/eth2");
+	return ret;
+}
+
 static void skov_imx6_switch(struct device_node *root)
 {
-	eth_of_fixup_node_from_eth_device(root,
-			"/mdio-gpio/ksz8873@3/ports/ports@0", "eth0");
-	eth2_of_fixup_node_individually(root,
-		"/mdio-gpio/ksz8873@3/ports/ports@1", "eth0",
-		"state.ethaddr.eth2", "/state/ethaddr/eth2");
+	const char *old = "/mdio-gpio/ksz8873@3/ports/ports@";
+	const char *new = "/mdio/switch@0/ports/ports@";
+	int ret;
+
+	/* Old DTS variants (pre kernel mainline) use different path. Try first
+	 * the new variant, then fall back to the old one.
+	 */
+	ret = skov_imx6_switch_port(root, new);
+	if (ret) {
+		ret = skov_imx6_switch_port(root, old);
+		if (ret)
+			pr_err("Filed to set mac address\n");
+	}
 }
 
 static int skov_imx6_fixup(struct device_node *root, void *unused)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

