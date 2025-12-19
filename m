Delivery-date: Fri, 19 Dec 2025 11:50:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWY3e-00DAx4-0Q
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:50:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWY3d-0000aE-G5
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:50:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VCKRrdcryAWA272ej1uGj+Ze/2MEhKEKI2fRAeeK6Q0=; b=AwyHsaeqFZtnBn/NSpLfRMVtAs
	MpVbc05BCFOtzr5rcAWdIw3ILqNBT4nBgJWqDeFUJ4cKsDSy7n9s8HRbN6/aLwTqdCZkHyQ4hfovD
	cQ/kUNpbeiWejZKE5ekLjcFOas5pN/NXhDiTJLkc/EcCQb6CulPoSlguDThNZPw23Ksz+/FkMvHT1
	KyvJWwPH5eF0JRXDBS5JOdBeKIew2OAtqhhViYpPf7V94C5i+lTd4bxE8YRKCdB0p97kFxUcCipM8
	GKpTL4tNHaf0o6CIiZjUgnydPADmHqU8bd70v7ym5npXCLTCYikd49/P1nuOuCPcNEiBtm005lItM
	FBkolP4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2r-0000000A9db-1DuA;
	Fri, 19 Dec 2025 10:49:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2p-0000000A9co-36x4
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=VCKRrdcryAWA272ej1uGj+Ze/2MEhKEKI2fRAeeK6Q0=; b=VqiQb2WBFABcDqcGTR5bDNu6gC
	Miw+EWGtW3dGIcyISFumBWJHOMyqrElcFfP22Q1PY9xrZCneJrdfieniobqj9Am1xoh8FALnORgoX
	d2NS7e/9cy1flEt1P1JvY0eeUgIcZMlUQufbzpU2nmyNvhXkbrDGgRNxxo4tQyD+o5hwOWz6svhfU
	dp1lhhFPpVXw2IQLmPOySQoUzv/y2qDdpRmIURF7SGMPGBJYNSpn1YJ3Or7A4PKYJpXwhjBPuCh6q
	DnBR2ir/DVtEsMabCiLM/OPQ+xwikyEnJWZmZgMsim2DsdgO5H6fKVsIThQPgIWuMQLOxTSnEIIRc
	FNqAVKIw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2m-00000007SGc-2ZYL
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:49:10 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWY2l-0000Cr-P7; Fri, 19 Dec 2025 11:49:07 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 11:49:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v3-2-690fdeb78978@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v3-0-690fdeb78978@pengutronix.de>
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v3-0-690fdeb78978@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_104908_769323_89438163 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/5] nvmem: ocotp: extend support to query the sticky
 bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX* devices do have an sticky bit which indicates if the
field-return fuse can be written. Before only support for i.MX8* was
provided. Extend this for the i.MX6* series.

Since i.MX8 and i.MX6 share the same code, rename
imx8m_field_return_locked to imx_field_return_locked to not confuse the
user.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 7bca275404..1f74fddb60 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -294,7 +294,7 @@ static void imx8m_lock_srk_revoke(struct ocotp_priv *priv)
 	writel(val, priv->base + OCOTP_SW_STICKY);
 }
 
-static bool imx8m_field_return_locked(struct ocotp_priv *priv)
+static bool imx_field_return_locked(struct ocotp_priv *priv)
 {
 	return readl(priv->base + OCOTP_SW_STICKY) & OCOTP_SW_STICKY_FIELD_RETURN_LOCK;
 }
@@ -990,6 +990,7 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
 	.ctrl = &ocotp_ctrl_reg_default,
+	.field_return_locked = imx_field_return_locked,
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
@@ -1002,6 +1003,7 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
 	.ctrl = &ocotp_ctrl_reg_default,
+	.field_return_locked = imx_field_return_locked,
 };
 
 static struct imx_ocotp_data imx6ul_ocotp_data = {
@@ -1014,6 +1016,7 @@ static struct imx_ocotp_data imx6ul_ocotp_data = {
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
 	.ctrl = &ocotp_ctrl_reg_default,
+	.field_return_locked = imx_field_return_locked,
 };
 
 static struct imx_ocotp_data imx6ull_ocotp_data = {
@@ -1026,6 +1029,7 @@ static struct imx_ocotp_data imx6ull_ocotp_data = {
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
 	.ctrl = &ocotp_ctrl_reg_default,
+	.field_return_locked = imx_field_return_locked,
 };
 
 static struct imx_ocotp_data vf610_ocotp_data = {
@@ -1063,7 +1067,7 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
 	.fuse_read = imx6_fuse_read_addr,
 	.srk_revoke_locked = imx8m_srk_revoke_locked,
 	.lock_srk_revoke = imx8m_lock_srk_revoke,
-	.field_return_locked = imx8m_field_return_locked,
+	.field_return_locked = imx_field_return_locked,
 	.ctrl = &ocotp_ctrl_reg_8mp,
 };
 
@@ -1095,7 +1099,7 @@ static struct imx_ocotp_data imx8mm_ocotp_data = {
 	.fuse_read = imx6_fuse_read_addr,
 	.srk_revoke_locked = imx8m_srk_revoke_locked,
 	.lock_srk_revoke = imx8m_lock_srk_revoke,
-	.field_return_locked = imx8m_field_return_locked,
+	.field_return_locked = imx_field_return_locked,
 	.feat = &imx8mm_featctrl_data,
 	.ctrl = &ocotp_ctrl_reg_default,
 };
@@ -1116,7 +1120,7 @@ static struct imx_ocotp_data imx8mn_ocotp_data = {
 	.fuse_read = imx6_fuse_read_addr,
 	.srk_revoke_locked = imx8m_srk_revoke_locked,
 	.lock_srk_revoke = imx8m_lock_srk_revoke,
-	.field_return_locked = imx8m_field_return_locked,
+	.field_return_locked = imx_field_return_locked,
 	.feat = &imx8mn_featctrl_data,
 	.ctrl = &ocotp_ctrl_reg_default,
 };

-- 
2.47.3



