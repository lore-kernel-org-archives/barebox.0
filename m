Delivery-date: Mon, 08 Sep 2025 11:30:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCQ-000ast-1y
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 11:30:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCQ-0006qO-0N
	for lore@pengutronix.de; Mon, 08 Sep 2025 11:30:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o+W/iHHerzpl8TDwpMlnuHb095ogtyxbPSH1SArbKBY=; b=FTAm0fjerQM8VzXcJEqHIfPTk8
	uVaM7qUQ2sm1K2B6L3yoAsDiL9g+lRaZa43I0FdqZoCS/wgkGwj9530dSBrCKipIMSElzGTUJahyW
	nA8q1uO+hteMCaftgUhj3PeTTGMJPn1LTRTWUz7yKkyLYJYMs+U5hhOst6FhhsrJrmnWywt8wBKiH
	0iFbq5bsUB5jDdEghXXkLkym1Sh+L5yew3HjcWbvXLa7dLcxcyhMn7om7jqRtfl6ylFdjbsUztSkS
	4RcmxqDWCDQjFAclyNvbuGRYrU+d/a/H8UCFqDMx1v8A8H4HY/CBRgfGrvXzVFHLcxl4+9uYY4mAF
	On8NUAKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYBe-0000000G2A5-47dZ;
	Mon, 08 Sep 2025 09:29:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvXI9-0000000Fj9y-2UrQ
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 08:32:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0005My-TD; Mon, 08 Sep 2025 10:31:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-000DZ5-26;
	Mon, 08 Sep 2025 10:31:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0000000269A-2Ogk;
	Mon, 08 Sep 2025 10:31:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Sep 2025 10:31:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-imx8-snvs-v1-2-1049458a0286@pengutronix.de>
References: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
In-Reply-To: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757320317; l=2103;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Mq9bAK4vmFqQi6drg53FIGN3d+MlKbFwDr82tDBrgBw=;
 b=VHGCnpSY2a1upYPiZPODyqC1S3bfibGVIbUGsrBYXXC5jlJSMZY5hbeTde8Fe72wO7OdV6uOl
 ocrg+3h2UZkBfVN3MdnA/rmWdWNqsW8LPvGNsKCej8th+jEGgCywcW+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_013201_640253_F7E012BB 
X-CRM114-Status: GOOD (  13.53  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] nvmem: snvs_lpgpr: Add i.MX7/8 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds i.MX7/8 support to the snvs_lpgpr driver. This is based on
Linux commit 80b820cae421a ("nvmem: add i.MX7 support to snvs-lpgpr")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/snvs_lpgpr.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index 9bbee6d587a437716cba2189fed839497fb6f3c7..e29fa2bf3aec1e9b5b19beee4ac5440b6b18e018 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -20,10 +20,18 @@
 #define IMX6Q_GPR_HL		BIT(5)
 #define IMX6Q_SNVS_LPGPR	0x68
 
+#define IMX7D_SNVS_HPLR		0x00
+#define IMX7D_SNVS_LPLR		0x34
+#define IMX7D_SNVS_LPGPR	0x90
+
+#define IMX_GPR_SL		BIT(5)
+#define IMX_GPR_HL		BIT(5)
+
 struct snvs_lpgpr_cfg {
 	int offset;
 	int offset_hplr;
 	int offset_lplr;
+	int size;
 };
 
 struct snvs_lpgpr_priv {
@@ -37,6 +45,14 @@ static const struct snvs_lpgpr_cfg snvs_lpgpr_cfg_imx6q = {
 	.offset		= IMX6Q_SNVS_LPGPR,
 	.offset_hplr	= IMX6Q_SNVS_HPLR,
 	.offset_lplr	= IMX6Q_SNVS_LPLR,
+	.size		= 4,
+};
+
+static const struct snvs_lpgpr_cfg snvs_lpgpr_cfg_imx7d = {
+	.offset		= IMX7D_SNVS_LPGPR,
+	.offset_hplr	= IMX7D_SNVS_HPLR,
+	.offset_lplr	= IMX7D_SNVS_LPLR,
+	.size		= 16,
 };
 
 static int snvs_lpgpr_write(void *ctx, unsigned offset, const void *val, size_t bytes)
@@ -106,7 +122,7 @@ static int snvs_lpgpr_probe(struct device *dev)
 	cfg->priv = priv;
 	cfg->stride = 4;
 	cfg->word_size = 4;
-	cfg->size = 4;
+	cfg->size = priv->dcfg->size;
 	cfg->reg_write = snvs_lpgpr_write;
 	cfg->reg_read  = snvs_lpgpr_read;
 
@@ -122,6 +138,7 @@ static int snvs_lpgpr_probe(struct device *dev)
 static __maybe_unused struct of_device_id snvs_lpgpr_dt_ids[] = {
 	{ .compatible = "fsl,imx6q-snvs-lpgpr", .data = &snvs_lpgpr_cfg_imx6q },
 	{ .compatible = "fsl,imx6ul-snvs-lpgpr", .data = &snvs_lpgpr_cfg_imx6q },
+	{ .compatible = "fsl,imx7d-snvs-lpgpr", .data = &snvs_lpgpr_cfg_imx7d },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, snvs_lpgpr_dt_ids);

-- 
2.47.3



