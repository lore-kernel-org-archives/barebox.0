Delivery-date: Mon, 17 Nov 2025 09:36:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuih-001urH-03
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:36:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuif-0001eS-Up
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:36:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wpgM6kAU1tIvrcqOs9AhJ6WVcE2GFgQBH2FkVhPUoI4=; b=S7GR8n1V6BT3gtjoyW53Cw4WDX
	fJiPRMqAS82dlLPinV1HU8Yaa0IJkYRrooEkz9DyckZEKAqV5/ixDWA6edCjWATvqbnDtWlwbYt7o
	3JK5w3sOGYJNZRIL1QvLKGUkeJSL+QRoy3QQRGhyAvgCo34BO5ytsoKHvaxC6dneTpXGI6JYXP7Ky
	s4LbcvFsss/PCiJSmEp0hataSOoNcSIdnCHduq0mxbq4F8bPjYD8M8X869BxH9xgwc4BU7hnI1SQB
	Qsgm7zIep0PamBs2SkokuTn7sONv5IDhtjvE4mDEVqzuM+p7C3IzfTtWa2nvhn+S7SrRfM6C5ix2z
	Ore+O7Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuiC-0000000Fguv-2M8l;
	Mon, 17 Nov 2025 08:35:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui9-0000000FgrG-2g6d
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:35:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-0001E1-6j; Mon, 17 Nov 2025 09:35:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuhz-000sfj-2Q;
	Mon, 17 Nov 2025 09:35:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-00000005QZR-0ImP;
	Mon, 17 Nov 2025 09:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Nov 2025 09:35:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-uid-v2-5-a2415bf9133d@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
In-Reply-To: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763368535; l=1632;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=GesspUQWr9jEtOuT/+LuFOokoB7UycETvxf98IVO8DA=;
 b=lT70O7VOH8mvtDTwgx0u0059ONO/QogXxImVHs3cElU/vUuI0pPMuJjUtaTHRNFWjHaEO0rTa
 uxQswttoV9MAe/hNraYngAi7Z93uWLc3XMmEJZCdkG60+rcanZX94jf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003545_710730_810499C2 
X-CRM114-Status: GOOD (  11.99  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/9] nvmem: imx-ocotp-ele: call barebox_set_soc_uid()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox_set_soc_uid() calls barebox_set_soc_uid() the same way as done
previously, but also exposes the SoC ID in the barebox environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 797c6f8d7a2a069fbf342c517031eb5dc3f09d7a..ee7c5a3d4a43e00a7d09ebbca3b703db685053f5 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -143,13 +143,20 @@ static void imx_ocotp_set_unique_machine_id(struct imx_ocotp_priv *priv)
 {
 	uint32_t unique_id_parts[UNIQUE_ID_NUM];
 	int i;
+	char *uidstr;
 
 	for (i = 0; i < UNIQUE_ID_NUM; i++)
 		if (imx_ocotp_reg_read(priv, OCOTP_UNIQUE_ID(i),
 					 &unique_id_parts[i]))
 			return;
 
-	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
+	uidstr = xasprintf("%08X%08X%08X%08X",
+			   unique_id_parts[1], unique_id_parts[0],
+			   unique_id_parts[3], unique_id_parts[2]);
+
+	barebox_set_soc_uid(uidstr, unique_id_parts, sizeof(unique_id_parts));
+
+	free(uidstr);
 }
 
 static int permanent_write_enable_set(struct param_d *param, void *ctx)
@@ -194,8 +201,7 @@ static int imx_ele_ocotp_probe(struct device *dev)
 	if (IS_ERR(priv->map))
 		return PTR_ERR(priv->map);
 
-	if (IS_ENABLED(CONFIG_MACHINE_ID))
-		imx_ocotp_set_unique_machine_id(priv);
+	imx_ocotp_set_unique_machine_id(priv);
 
 	nvmem = nvmem_regmap_register_with_pp(priv->map, "imx_ocotp",
 					      imx_ocotp_fixup_dt_cell_info);

-- 
2.47.3



