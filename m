Delivery-date: Sun, 16 Aug 2026 19:57:16 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvf6g-003pbY-2V
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 19:57:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E916A201B02
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 19:57:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lUIUmBUo;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iJTH/lr8GSb0A+4yfZ1n5lK3x7tXiV1zh+bDSTkvQIg=; b=lUIUmBUodSMttAwr3Lo+73F+hs
	jzRPw2Zc7pLsgjtNVsSkR0rIPYVabwT/KaBsC9Mp6Na/otFRnHmeXL793j+p6+RP1CkKmhJlfS+R2
	1uONVq+VxXUqOW/CFGmzwUajNGKHdOF/QqX4QRDqLN0Vt78asNTnU82I0n1K9nL57Vb/86KQOZcVy
	QNPWho1Z3Fva/eI5kQkfnuSfsAAWLVWn1hEXM1cbqOVo37ju9ravCrFeOU3U0Y8Kx5N9sk4sh/f12
	fJB4ZhU9yYEmYoQO3ntKgm6GJ5aRr6XKBST6SisWyeddAVkCZ613ytW15sR90xkHCCNC3F1MQWS/o
	pqCT4rkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf66-00000004wgK-3ddh;
	Sun, 16 Aug 2026 17:56:38 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf64-00000004wdY-0oHI
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A9339201EA9;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeW-1H;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-12we;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:29 +0200
Subject: [PATCH 09/27] mtd: nand: nand_mrvl_nfc: support the
 nand-controller bindings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-9-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=4229;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Pj1g0QWMVmSgxiMdG4JuOiqOtAuS6NPwVbvfGoc7Lgk=;
 b=FWyhdNAu3nFA8w3fmnsVzhoDf7VddO+shMAMupdcCrlQ0xLj5FEENB6qdOLzbTXRlS1UfSK9K
 IyJ5MM0weu1CqOi5HR+4hqnxSmVTtgYn0wNu9Nf+kofJx8AUoEKiAB1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105636_439673_80EC4510 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver only knows the deprecated "marvell,pxa3xx-nand"
    and "marvell,armada370-nand" compatibles, where the chip properties are in
    the controller node. The upstream device trees use the newer "...- [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: w65bm46yephn7191a8ky6xp98p8gmj3j
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: E916A201B02

The driver only knows the deprecated "marvell,pxa3xx-nand" and
"marvell,armada370-nand" compatibles, where the chip properties are in
the controller node. The upstream device trees use the newer
"...-nand-controller" bindings, where the chip lives in a child node
along with its partitions.

Add the new compatibles and read the chip properties from the child
node. Handing that node to the NAND core via nand_set_flash_node() is
what makes the generic properties and the partitions below it work at
all: mtd_get_of_node() otherwise falls back to the parent, which is the
controller node.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/nand_mrvl_nfc.c | 69 ++++++++++++++++++++++++++++++------
 1 file changed, 58 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_mrvl_nfc.c b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
index 6f3fb57062..ebb1fd81fb 100644
--- a/drivers/mtd/nand/raw/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
@@ -132,6 +132,12 @@
 
 struct mrvl_nand_variant {
 	unsigned int	hwflags;
+	/*
+	 * True for the "nand-controller" bindings, where the chip properties
+	 * live in per chip select child nodes instead of in the controller
+	 * node itself.
+	 */
+	bool		chip_subnodes;
 };
 
 struct mrvl_nand_host {
@@ -288,7 +294,26 @@ static const struct mrvl_nand_variant armada370_variant = {
 	.hwflags	= HWFLAGS_ECC_BCH | HWFLAGS_HAS_NDCB3,
 };
 
+static const struct mrvl_nand_variant pxa3xx_controller_variant = {
+	.hwflags	= 0,
+	.chip_subnodes	= true,
+};
+
+static const struct mrvl_nand_variant armada370_controller_variant = {
+	.hwflags	= HWFLAGS_ECC_BCH | HWFLAGS_HAS_NDCB3,
+	.chip_subnodes	= true,
+};
+
 static struct of_device_id mrvl_nand_dt_ids[] = {
+	{
+		.compatible = "marvell,pxa3xx-nand-controller",
+		.data = &pxa3xx_controller_variant,
+	},
+	{
+		.compatible = "marvell,armada370-nand-controller",
+		.data = &armada370_controller_variant,
+	},
+	/* Deprecated bindings, the chip properties are in the controller node */
 	{
 		.compatible = "marvell,pxa3xx-nand",
 		.data = &pxa3xx_variant,
@@ -1199,33 +1224,55 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device *dev)
 static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 {
 	struct device_node *np = host->dev->of_node;
-	const struct of_device_id *match;
 	const struct mrvl_nand_variant *variant;
+	struct device_node *chip_np;
 
 	if (!IS_ENABLED(CONFIG_OFTREE) || host->dev->platform_data)
 		return 0;
 
-	match = of_match_node(mrvl_nand_dt_ids, np);
-	if (!match)
+	variant = device_get_match_data(host->dev);
+	if (!variant)
 		return -EINVAL;
-	variant = match->data;
 
-	if (of_get_property(np, "marvell,nand-keep-config", NULL))
-		host->keep_config = 1;
+	host->hwflags = variant->hwflags;
+
 	of_property_read_u32(np, "num-cs", &host->num_cs);
-	if (of_get_nand_on_flash_bbt(np))
+
+	/*
+	 * With the "nand-controller" bindings the chip lives in a child node
+	 * of the controller. Only a single chip is supported, so take the
+	 * first one. The deprecated bindings have the chip properties in the
+	 * controller node itself.
+	 */
+	if (variant->chip_subnodes) {
+		chip_np = of_get_next_available_child(np, NULL);
+		if (!chip_np) {
+			dev_err(host->dev, "no chip node found\n");
+			return -ENODEV;
+		}
+	} else {
+		chip_np = np;
+	}
+
+	/*
+	 * Hand the chip node to the NAND core so that the generic properties
+	 * and the partitions below it are evaluated.
+	 */
+	nand_set_flash_node(&host->chip, chip_np);
+
+	if (of_get_property(chip_np, "marvell,nand-keep-config", NULL))
+		host->keep_config = 1;
+	if (of_get_nand_on_flash_bbt(chip_np))
 		host->flash_bbt = 1;
 
-	host->ecc_strength = of_get_nand_ecc_strength(np);
+	host->ecc_strength = of_get_nand_ecc_strength(chip_np);
 	if (host->ecc_strength < 0)
 		host->ecc_strength = 0;
 
-	host->ecc_step = of_get_nand_ecc_step_size(np);
+	host->ecc_step = of_get_nand_ecc_step_size(chip_np);
 	if (host->ecc_step < 0)
 		host->ecc_step = 0;
 
-	host->hwflags = variant->hwflags;
-
 	return 0;
 }
 

-- 
2.47.3



