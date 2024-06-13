Delivery-date: Thu, 13 Jun 2024 15:10:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDq-005Njx-0G
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:10:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDp-000648-A9
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:10:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lPPnuln4XiNWLeiqCjmJUlM0XIaZ2ej5vFaoZWb0tQw=; b=1hZB/00km5sOfvx7szGrqSTMm0
	EGsTxFFjLbq+yAS8swGr017kf5RG4U/IrQY5GM7L2yNSGzI97fZ7t3utlEdem83Abq2843uPnIwVx
	Vy+1LLEi0P5FCOwftIytSWTq8cyYCrac+VHRbkbgXilAoYsXsPZmyIW67i7g7vzZSJVC0RpDYiXA8
	aVMo+XY6i02H4m9v8bzgE3JCwmZng19oCmBWe6LrLkI6tbqcx9M/dnXV7AmldNuN+xtoYgEsxilcm
	R1Z5uHHgU00wv6N+wTHBUbHQ82TaeNdWbP13GKla9SlbF8BMZRBiA49SWdZnMwmuWM10DPmtbkVfW
	cNhUyPpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkDI-0000000GdUh-03bi;
	Thu, 13 Jun 2024 13:10:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkD9-0000000GdNh-2CAm
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:09:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkD8-0005fE-CF
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:09:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:09:37 +0200
Message-Id: <20240613130944.264396-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613130944.264396-1-m.felsch@pengutronix.de>
References: <20240613130944.264396-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_060951_625045_EC8DE4D8 
X-CRM114-Status: GOOD (  12.48  )
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
Subject: [PATCH 2/9] nvmem: ocotp: add support to get/set srk_revoke sticky bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8M* devices do have an sticky bit which indicates if the
srk_revoke fuse can be written. Add support to query and to set the lock
bit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/ocotp.c    | 55 ++++++++++++++++++++++++++++++++++++++++
 include/mach/imx/ocotp.h |  2 ++
 2 files changed, 57 insertions(+)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index c282efefa824..c0517980fb18 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -52,6 +52,7 @@
 #define OCOTP_DATA			0x20
 #define OCOTP_READ_CTRL			0x30
 #define OCOTP_READ_FUSE_DATA		0x40
+#define OCOTP_SW_STICKY			0x50
 
 #define MX7_OCOTP_DATA0			0x20
 #define MX7_OCOTP_DATA1			0x30
@@ -89,6 +90,8 @@
 #define OCOTP_TIMING_STROBE_PROG	GENMASK(11, 0)
 #define OCOTP_TIMING_WAIT		GENMASK(27, 22)
 
+#define OCOTP_SW_STICKY_SRK_REVOKE_LOCK		BIT(1)
+
 #define OCOTP_READ_CTRL_READ_FUSE	BIT(1)
 
 #define OCOTP_OFFSET_TO_ADDR(o) (OCOTP_OFFSET_TO_INDEX(o) * 4)
@@ -147,6 +150,8 @@ struct imx_ocotp_data {
 	int (*set_timing)(struct ocotp_priv *priv);
 	int (*fuse_read)(struct ocotp_priv *priv, u32 addr, u32 *pdata);
 	int (*fuse_blow)(struct ocotp_priv *priv, u32 addr, u32 value);
+	bool (*srk_revoke_locked)(struct ocotp_priv *priv);
+	void (*lock_srk_revoke)(struct ocotp_priv *priv);
 	u8  mac_offsets[MAX_MAC_OFFSETS];
 	u8  mac_offsets_num;
 	struct imx8m_featctrl_data *feat;
@@ -273,6 +278,20 @@ static int imx6_ocotp_prepare(struct ocotp_priv *priv)
 	return 0;
 }
 
+static bool imx8m_srk_revoke_locked(struct ocotp_priv *priv)
+{
+	return readl(priv->base + OCOTP_SW_STICKY) & OCOTP_SW_STICKY_SRK_REVOKE_LOCK;
+}
+
+static void imx8m_lock_srk_revoke(struct ocotp_priv *priv)
+{
+	u32 val;
+
+	val = readl(priv->base + OCOTP_SW_STICKY);
+	val |= OCOTP_SW_STICKY_SRK_REVOKE_LOCK;
+	writel(val, priv->base + OCOTP_SW_STICKY);
+}
+
 static int imx6_fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 {
 	const u32 bm_ctrl_error = priv->data->ctrl->bm_error;
@@ -625,6 +644,36 @@ int imx_ocotp_sense_enable(bool enable)
 	return old_value;
 }
 
+int imx_ocotp_srk_revoke_locked(void)
+{
+	int ret;
+
+	ret = imx_ocotp_ensure_probed();
+	if (ret)
+		return ret;
+
+	if (imx_ocotp->data->srk_revoke_locked)
+		return imx_ocotp->data->srk_revoke_locked(imx_ocotp);
+
+	return -ENOSYS;
+}
+
+int imx_ocotp_lock_srk_revoke(void)
+{
+	int ret;
+
+	ret = imx_ocotp_ensure_probed();
+	if (ret)
+		return ret;
+
+	if (imx_ocotp->data->lock_srk_revoke) {
+		imx_ocotp->data->lock_srk_revoke(imx_ocotp);
+		return 0;
+	}
+
+	return -ENOSYS;
+}
+
 static void imx_ocotp_format_mac(u8 *dst, const u8 *src,
 				 enum imx_ocotp_format_mac_direction dir)
 {
@@ -985,6 +1034,8 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.srk_revoke_locked = imx8m_srk_revoke_locked,
+	.lock_srk_revoke = imx8m_lock_srk_revoke,
 	.ctrl = &ocotp_ctrl_reg_8mp,
 };
 
@@ -1014,6 +1065,8 @@ static struct imx_ocotp_data imx8mm_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.srk_revoke_locked = imx8m_srk_revoke_locked,
+	.lock_srk_revoke = imx8m_lock_srk_revoke,
 	.feat = &imx8mm_featctrl_data,
 	.ctrl = &ocotp_ctrl_reg_default,
 };
@@ -1032,6 +1085,8 @@ static struct imx_ocotp_data imx8mn_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.srk_revoke_locked = imx8m_srk_revoke_locked,
+	.lock_srk_revoke = imx8m_lock_srk_revoke,
 	.feat = &imx8mn_featctrl_data,
 	.ctrl = &ocotp_ctrl_reg_default,
 };
diff --git a/include/mach/imx/ocotp.h b/include/mach/imx/ocotp.h
index 5f7b88f716a7..7a516ff789b9 100644
--- a/include/mach/imx/ocotp.h
+++ b/include/mach/imx/ocotp.h
@@ -36,6 +36,8 @@ int imx_ocotp_read_field(uint32_t field, unsigned *value);
 int imx_ocotp_write_field(uint32_t field, unsigned value);
 int imx_ocotp_permanent_write(int enable);
 int imx_ocotp_sense_enable(bool enable);
+int imx_ocotp_srk_revoke_locked(void);
+int imx_ocotp_lock_srk_revoke(void);
 
 static inline u64 imx_ocotp_read_uid(void __iomem *ocotp)
 {
-- 
2.39.2



