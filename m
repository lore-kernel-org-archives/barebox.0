Delivery-date: Mon, 28 Oct 2024 15:41:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvg-001tjb-0I
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 15:41:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qve-000526-Gb
	for lore@pengutronix.de; Mon, 28 Oct 2024 15:41:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f9Rg7zwz1E2Irq/KBkCzsMa7CxwFLrN9dP0xpvA6lsE=; b=x/UA+RGWR7McN1uxsz6LtTLVHX
	jYOcXfTYeEXYOxMbCxs8U/S/GEIp/XRgF3LZ6Py08qC8gHdJ7VlyqWBk78JZPzqSHIjaeIwCuVqT3
	z+FdKWuWVY7fhEHOABKg6U+lJ2EmP4ZgZulbfbXJoZO8KohTeMcK5HQ3CkW4EAFPIpSwYtRd8ydvx
	8jt7vjQFInkxOUdVAQOT5NYPsM3nKXygBbRdK0Arb8cp7EI2/C4qtUi5lw/ccy6DBOrrX3gZMwzK/
	Uco2QvL+SHFeyPMyaBZx1B7TXnSk2qJ1+nP+dnhqUbwztzlx0cMSg4Aapc9/wjA7Z2nAH2MtZ1S26
	z/SBXGjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Quv-0000000B9iZ-2kOW;
	Mon, 28 Oct 2024 14:40:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Qb3-0000000B5oe-04TG
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:19:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-0002nh-WA; Mon, 28 Oct 2024 15:19:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-000s7I-21;
	Mon, 28 Oct 2024 15:19:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-1m;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-vop2-rk3588-v1-1-a54bf7c28adc@pengutronix.de>
References: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
In-Reply-To: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=1805;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BrEvlS9r0yTpQhUeUf/fglNs1j6YlcafJUDcZRa4/FA=;
 b=e/k9+IL24zhQhTqX0m0WPtmxwLwnbgs95y6XazvENFokzQen+/iBOinAXhSuoJkaLXCVoX1u3
 WiUwsvwrFsOBTNZI/B4ZeaC1i5NT8Mpih3fb6/4/9FrjhJVFFwCJfCp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_071953_088619_A641E1BE 
X-CRM114-Status: UNSURE (   9.81  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/12] vop2: rk3588: make windows primary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Needed to register the VOP windows on RK3588 as primary windows.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/rockchip/rockchip_vop2_reg.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/video/rockchip/rockchip_vop2_reg.c b/drivers/video/rockchip/rockchip_vop2_reg.c
index 1ce71c227c..e5ef00cf4b 100644
--- a/drivers/video/rockchip/rockchip_vop2_reg.c
+++ b/drivers/video/rockchip/rockchip_vop2_reg.c
@@ -183,7 +183,7 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.nformats = ARRAY_SIZE(formats_smart),
 		.base = 0x1800,
 		.layer_sel_id = 2,
-		.type = DRM_PLANE_TYPE_OVERLAY,
+		.type = DRM_PLANE_TYPE_PRIMARY,
 		.max_upscale_factor = 8,
 		.max_downscale_factor = 8,
 		.dly = { 23, 45, 48 },
@@ -194,7 +194,7 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.nformats = ARRAY_SIZE(formats_smart),
 		.base = 0x1a00,
 		.layer_sel_id = 3,
-		.type = DRM_PLANE_TYPE_OVERLAY,
+		.type = DRM_PLANE_TYPE_PRIMARY,
 		.max_upscale_factor = 8,
 		.max_downscale_factor = 8,
 		.dly = { 23, 45, 48 },
@@ -205,7 +205,7 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.formats = formats_smart,
 		.nformats = ARRAY_SIZE(formats_smart),
 		.layer_sel_id = 6,
-		.type = DRM_PLANE_TYPE_OVERLAY,
+		.type = DRM_PLANE_TYPE_PRIMARY,
 		.max_upscale_factor = 8,
 		.max_downscale_factor = 8,
 		.dly = { 23, 45, 48 },
@@ -216,7 +216,7 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.nformats = ARRAY_SIZE(formats_smart),
 		.base = 0x1e00,
 		.layer_sel_id = 7,
-		.type = DRM_PLANE_TYPE_OVERLAY,
+		.type = DRM_PLANE_TYPE_PRIMARY,
 		.max_upscale_factor = 8,
 		.max_downscale_factor = 8,
 		.dly = { 23, 45, 48 },

-- 
2.39.5



