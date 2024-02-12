Delivery-date: Mon, 12 Feb 2024 14:29:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZWNf-003PkN-1O
	for lore@lore.pengutronix.de;
	Mon, 12 Feb 2024 14:29:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZWNe-0004Sa-Oy
	for lore@pengutronix.de; Mon, 12 Feb 2024 14:29:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fk0uyybwRWcqNk7l9kvQdBJYJtA2ebYSXim+eqUPgZY=; b=anGOAq+fdQ8Ud2
	C/J43xOpxk6UhF0DBwkBTGlYX2xSTwhMeuy2BWnshJwtA8zu6T37OYAzAHFKITqhSzfgTpThQltvM
	2ZM+/6Vl0LsXuNG1DovcDlVH9vrte1PVhtGXkx4rRItLzDMCMjooKxe7RDJQhlTaCG5idDvipp2o+
	yTdmA71/ISvnKs1I5MhDoLHG8WeIc28YhkP5QxTEEIa2PnYfm8ECQ4uK5U33aqiufFEJ4zOLBaBJ2
	zj/EWz8Q44rZCRHowjV6mBwRdMm4NnzVSH/yRAX46QPSFf07FPfBHKzwxBVZNYyxsMEXxzN16KWlR
	iilMLwc8fkG/syqKR9bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWMz-00000005VrK-3WKN;
	Mon, 12 Feb 2024 13:29:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWMv-00000005Vnj-1OLO
	for barebox@lists.infradead.org;
	Mon, 12 Feb 2024 13:29:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZWMs-0004BJ-NW
	for barebox@lists.infradead.org; Mon, 12 Feb 2024 14:29:06 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZWMs-000ISS-9w
	for barebox@lists.infradead.org; Mon, 12 Feb 2024 14:29:06 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id EB05E28C4C4
	for <barebox@lists.infradead.org>; Mon, 12 Feb 2024 13:29:05 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id B637B28C4C1;
	Mon, 12 Feb 2024 13:29:05 +0000 (UTC)
Received: from blackshift.org (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 03367983;
	Mon, 12 Feb 2024 13:29:04 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: sha@pengutronix.de
Date: Mon, 12 Feb 2024 14:27:53 +0100
Message-ID: <20240212132901.1641599-4-mkl@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240212132901.1641599-1-mkl@pengutronix.de>
References: <20240212132901.1641599-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_052909_449832_DB590BD0 
X-CRM114-Status: GOOD (  10.21  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] nvmem: ocotp: mark data as const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Mark values obtained from "priv->data->ctrl" as const.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 16d2a6be9fce..c282efefa824 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -275,11 +275,11 @@ static int imx6_ocotp_prepare(struct ocotp_priv *priv)
 
 static int imx6_fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 {
+	const u32 bm_ctrl_error = priv->data->ctrl->bm_error;
+	const u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
+	const u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 	u32 ctrl_reg;
 	int ret;
-	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
-	u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
-	u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 
 	writel(bm_ctrl_error, priv->base + OCOTP_CTRL_CLR);
 
@@ -304,13 +304,13 @@ static int imx6_fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 
 static int imx7_fuse_read_addr(struct ocotp_priv *priv, u32 index, u32 *pdata)
 {
+	const u32 bm_ctrl_error = priv->data->ctrl->bm_error;
+	const u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
+	const u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 	u32 ctrl_reg;
 	u32 bank_addr;
 	u16 word;
 	int ret;
-	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
-	u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
-	u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 
 	word = index & 0x3;
 	bank_addr = index >> 2;
@@ -391,10 +391,10 @@ static int imx_ocotp_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 
 static void imx_ocotp_clear_unlock(struct ocotp_priv *priv, u32 index)
 {
+	const u32 bm_ctrl_error = priv->data->ctrl->bm_error;
+	const u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
+	const u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 	u32 ctrl_reg;
-	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
-	u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
-	u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 
 	writel(bm_ctrl_error, priv->base + OCOTP_CTRL_CLR);
 
@@ -408,8 +408,8 @@ static void imx_ocotp_clear_unlock(struct ocotp_priv *priv, u32 index)
 
 static int imx6_fuse_blow_addr(struct ocotp_priv *priv, u32 index, u32 value)
 {
+	const u32 bm_ctrl_error = priv->data->ctrl->bm_error;
 	int ret;
-	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
 
 	imx_ocotp_clear_unlock(priv, index);
 
@@ -474,7 +474,7 @@ static int imx7_fuse_blow_addr(struct ocotp_priv *priv, u32 index, u32 value)
 
 static int imx6_ocotp_reload_shadow(struct ocotp_priv *priv)
 {
-	u32 bm_ctrl_reload_shadows = priv->data->ctrl->bm_reload_shadows;
+	const u32 bm_ctrl_reload_shadows = priv->data->ctrl->bm_reload_shadows;
 
 	dev_info(&priv->dev, "reloading shadow registers...\n");
 	writel(bm_ctrl_reload_shadows, priv->base + OCOTP_CTRL_SET);
@@ -486,8 +486,8 @@ static int imx6_ocotp_reload_shadow(struct ocotp_priv *priv)
 static int imx6_ocotp_blow_one_u32(struct ocotp_priv *priv, u32 index, u32 data,
 			    u32 *pfused_value)
 {
+	const u32 bm_ctrl_error = priv->data->ctrl->bm_error;
 	int ret;
-	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
 
 	ret = imx6_ocotp_prepare(priv);
 	if (ret) {
-- 
2.43.0




