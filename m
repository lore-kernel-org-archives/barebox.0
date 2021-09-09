Delivery-date: Thu, 09 Sep 2021 11:15:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9w-0004Ba-7Z
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 11:15:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9v-0004zn-6p
	for lore@pengutronix.de; Thu, 09 Sep 2021 11:15:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lafrcGka2j2CXmsefkoUZ6qHxQpwyxZPrZtl45HRku8=; b=RReD4N0n4WU89J
	omRFaudDk6SQzUkximFNtjzfY1epWNrTBrT+7fbT546dWldi13Y0hv9cpiwFj6eKrUg9h8yxWq2ZT
	S5A2piCdbj5GWxN0NEV0BGdj/qBaGv/BuWdYzAOM9YlhLPvQmMrTDEJK0JaXBHmgFiuoFLpVexXG3
	HZNdRD+qY3a8TMrpKjqMISNc4JYkJLHYxEROm0WJouuBwla17W3QeQoEQMpUL+Ap55LBXpJpTDM0k
	ashkVNO/tUCgwjfSoU1X8o7cw/2UmP/uU8EXAEnX6Hp+AneOobvK8Eew3HsQUGjuw4qnrBscHfcf/
	I5N8YNBudKPl0ga6NabQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOG8Q-008jx2-8y; Thu, 09 Sep 2021 09:14:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOG8A-008jt5-Kd
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 09:14:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG87-0004Ll-3K; Thu, 09 Sep 2021 11:13:59 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG86-0002TX-EF; Thu, 09 Sep 2021 11:13:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  9 Sep 2021 11:13:46 +0200
Message-Id: <20210909091349.9446-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909091349.9446-1-o.rempel@pengutronix.de>
References: <20210909091349.9446-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_021402_724361_E0B55E55 
X-CRM114-Status: GOOD (  12.21  )
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
Subject: [PATCH v1 5/8] ARM: boards: skov-imx6: fixup different DTS variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 47 +++++++++++++++++++++++++++----
 1 file changed, 42 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index c4665c2b45..8961c8dd53 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -401,13 +401,50 @@ static void skov_imx6_no_switch(struct device_node *root)
 	}
 }
 
+static int skov_imx6_switch_port(struct device_node *root, const char *path)
+{
+	size_t size;
+	char *buf;
+	int ret;
+
+	size = strlen(path) + 1;
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
+	 * the new variant the fall back for the old one
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

