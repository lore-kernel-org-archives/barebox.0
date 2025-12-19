Delivery-date: Fri, 19 Dec 2025 10:07:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWSm-00D993-0x
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 10:07:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWSl-0002yE-Lo
	for lore@pengutronix.de; Fri, 19 Dec 2025 10:07:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VCKRrdcryAWA272ej1uGj+Ze/2MEhKEKI2fRAeeK6Q0=; b=SerGHiHMJu1caFYToNq52IxXON
	T7RmcYa63K+7drNhLzqN5AgbP+lh/zIXYg3rQK9g5G3TSfZnCvU7H0TtdySu+Hbatkh2PLcIxV1i+
	WuL+dvaQlbdlMK1Gs+7wPITpVLsvFlQAs1/OZPFWfhAgnFEgZLR3k9gXYGI8ljMEFab5pEQR/4dHv
	1WPN3N/aOzS+v+u8s9WlLsb++d2JcE9z09o2WadZ4u0i5qDSZ6PP1iLj1R4bilmQJZvwRDZwfma/v
	8ve3d4PBecJezN6twUzaaIWkh0KQkic4iLezmn2a3xwISB4EoZa+r8IWGUJvyeXOMFkIRnqibloII
	sGdR4dZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWSA-00000009uJv-0azX;
	Fri, 19 Dec 2025 09:07:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWS7-00000009uIw-3Mzp
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 09:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=VCKRrdcryAWA272ej1uGj+Ze/2MEhKEKI2fRAeeK6Q0=; b=Gq+XBaz/1L9H+qJos9Ih3TyGYA
	AHg1+2HJEIt8+yY/MeZB30f8K4uyN9QQcFiCsFpajETveLfw5LCTWu8EdOK3llUqOcrM+83m3wKK9
	54AtRg6ryd2Q7WcNqG73Vs9sWyB2YVfSUW/HSqcGqbf3YDp7nCuyC0KC3DkvLpV8FZAfzUSE9BzVz
	G+ctRhSh5XoTydF1pGrz1YUqWkRhEXbhGZVcpxhLJUZpcjnNOndy6X78UkQV+PV7expZYZmUbLJWO
	uwwEEvNwUkw+wiJJf9945T5QR1evrEeim3GcuA0n9NmWURR6GlpTse3pAUm1cqvozKRuFVg8iKbsI
	ClJ5hR4Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWVaa-0000000AS4h-2wXr
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 08:11:56 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWWS1-0002hO-BR; Fri, 19 Dec 2025 10:07:05 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 10:06:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v2-2-2696ac61ae2d@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_081153_255527_B555E127 
X-CRM114-Status: UNSURE (   9.56  )
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
Subject: [PATCH v2 2/4] nvmem: ocotp: extend support to query the sticky
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



