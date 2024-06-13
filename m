Delivery-date: Thu, 13 Jun 2024 15:10:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDk-005NiW-38
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:10:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDk-00060c-9f
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:10:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P2fd4lxvYbAOzXnLRco51HrapC6i99EsBlnELVtUPcU=; b=vBq3yk/aP/BcB6FNmFzJi9Q3Zo
	3MUVZh0F9yEZSeyRhn0AvRj48/+J18BMf9rbEXJPFxMqVCNKaosSBuotrzbbkkWu+Bzl4hmLLyRsz
	7yC69JJ5yfR/81fnNy8SerZhsmeihwEA9f8fVpokZNAlgNAyxrBZZJVTKTjeU9CWfHVv51g4NKnEP
	D1imdsF3jHROBv0IoQQT7jdp8TDkd8E+0FSyD4xmoIpMubcRJzBW24UNm7wbscJHJzp6AehilGGxr
	V+XxuVskFWYoCNT3QzW5jNqD1h1RQ/YTHvaFOTvU7I7hw412+6RHdWs98dv0new8H/S/3GagjDlUC
	W8NXCcpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkDF-0000000GdSq-3w4r;
	Thu, 13 Jun 2024 13:09:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkD9-0000000GdNi-2Bzt
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:09:53 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkD8-0005fE-DF
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:09:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:09:38 +0200
Message-Id: <20240613130944.264396-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613130944.264396-1-m.felsch@pengutronix.de>
References: <20240613130944.264396-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_060951_620181_A738D56F 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/9] nvmem: ocotp: add support to query the field-return sticky bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8M* devices do have an sticky bit which indicates if the
field-return fuse can be written. Add support to query the lock bit.

To make it easy to read align the STICKY bit definitions as well.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/ocotp.c    | 24 ++++++++++++++++++++++++
 include/mach/imx/ocotp.h |  1 +
 2 files changed, 25 insertions(+)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index c0517980fb18..87cc95a636f3 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -91,6 +91,7 @@
 #define OCOTP_TIMING_WAIT		GENMASK(27, 22)
 
 #define OCOTP_SW_STICKY_SRK_REVOKE_LOCK		BIT(1)
+#define OCOTP_SW_STICKY_FIELD_RETURN_LOCK	BIT(2)
 
 #define OCOTP_READ_CTRL_READ_FUSE	BIT(1)
 
@@ -152,6 +153,7 @@ struct imx_ocotp_data {
 	int (*fuse_blow)(struct ocotp_priv *priv, u32 addr, u32 value);
 	bool (*srk_revoke_locked)(struct ocotp_priv *priv);
 	void (*lock_srk_revoke)(struct ocotp_priv *priv);
+	bool (*field_return_locked)(struct ocotp_priv *priv);
 	u8  mac_offsets[MAX_MAC_OFFSETS];
 	u8  mac_offsets_num;
 	struct imx8m_featctrl_data *feat;
@@ -292,6 +294,11 @@ static void imx8m_lock_srk_revoke(struct ocotp_priv *priv)
 	writel(val, priv->base + OCOTP_SW_STICKY);
 }
 
+static bool imx8m_field_return_locked(struct ocotp_priv *priv)
+{
+	return readl(priv->base + OCOTP_SW_STICKY) & OCOTP_SW_STICKY_FIELD_RETURN_LOCK;
+}
+
 static int imx6_fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 {
 	const u32 bm_ctrl_error = priv->data->ctrl->bm_error;
@@ -674,6 +681,20 @@ int imx_ocotp_lock_srk_revoke(void)
 	return -ENOSYS;
 }
 
+int imx_ocotp_field_return_locked(void)
+{
+	int ret;
+
+	ret = imx_ocotp_ensure_probed();
+	if (ret)
+		return ret;
+
+	if (imx_ocotp->data->field_return_locked)
+		return imx_ocotp->data->field_return_locked(imx_ocotp);
+
+	return -ENOSYS;
+}
+
 static void imx_ocotp_format_mac(u8 *dst, const u8 *src,
 				 enum imx_ocotp_format_mac_direction dir)
 {
@@ -1036,6 +1057,7 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
 	.fuse_read = imx6_fuse_read_addr,
 	.srk_revoke_locked = imx8m_srk_revoke_locked,
 	.lock_srk_revoke = imx8m_lock_srk_revoke,
+	.field_return_locked = imx8m_field_return_locked,
 	.ctrl = &ocotp_ctrl_reg_8mp,
 };
 
@@ -1067,6 +1089,7 @@ static struct imx_ocotp_data imx8mm_ocotp_data = {
 	.fuse_read = imx6_fuse_read_addr,
 	.srk_revoke_locked = imx8m_srk_revoke_locked,
 	.lock_srk_revoke = imx8m_lock_srk_revoke,
+	.field_return_locked = imx8m_field_return_locked,
 	.feat = &imx8mm_featctrl_data,
 	.ctrl = &ocotp_ctrl_reg_default,
 };
@@ -1087,6 +1110,7 @@ static struct imx_ocotp_data imx8mn_ocotp_data = {
 	.fuse_read = imx6_fuse_read_addr,
 	.srk_revoke_locked = imx8m_srk_revoke_locked,
 	.lock_srk_revoke = imx8m_lock_srk_revoke,
+	.field_return_locked = imx8m_field_return_locked,
 	.feat = &imx8mn_featctrl_data,
 	.ctrl = &ocotp_ctrl_reg_default,
 };
diff --git a/include/mach/imx/ocotp.h b/include/mach/imx/ocotp.h
index 7a516ff789b9..e6f62a9da48c 100644
--- a/include/mach/imx/ocotp.h
+++ b/include/mach/imx/ocotp.h
@@ -38,6 +38,7 @@ int imx_ocotp_permanent_write(int enable);
 int imx_ocotp_sense_enable(bool enable);
 int imx_ocotp_srk_revoke_locked(void);
 int imx_ocotp_lock_srk_revoke(void);
+int imx_ocotp_field_return_locked(void);
 
 static inline u64 imx_ocotp_read_uid(void __iomem *ocotp)
 {
-- 
2.39.2



