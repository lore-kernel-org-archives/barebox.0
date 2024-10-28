Delivery-date: Mon, 28 Oct 2024 15:41:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qve-001tii-0p
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 15:41:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvd-000511-3h
	for lore@pengutronix.de; Mon, 28 Oct 2024 15:41:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y03oBvTFYaF6kQlIPmasGRfdz+w+tMitZAMG2EE2rgg=; b=qyCmKhINg29QxC7Gn36zMKGpoD
	ZLa+tpYtXr6JWevK9mA1dwTfFT9yCttiyF/5ECPoRu/uMvUARusdaar5fJCjGRXUAwGB1bw/OqNGS
	GEk3IE4xJLES5mmd/ycvSG+FX3oaiXkvky0U/BlWnOQDM8dPsiGgTkNEl5tQCHNlv2Kj+BP+dzkCW
	JqyWG2cnJp0iRAUFpc8tr2enttL2lfcSoQVYcgSphVYUcfCDqdx2+6+JtczxsdJ3GcOMw4qv6ox5F
	cXGi8Txq7riONdSQ2n9y7CG2S7nzuO4s3r56QNhN/DvBH2lq2d4lU9PQ3UVqB8Hh3N+Kv9oHZTXQy
	e4+zaQ1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Quy-0000000B9kJ-3CCo;
	Mon, 28 Oct 2024 14:40:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Qb6-0000000B5qU-0xFV
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:19:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qax-0002nn-2M; Mon, 28 Oct 2024 15:19:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-000s7P-2F;
	Mon, 28 Oct 2024 15:19:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-1w;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-vop2-rk3588-v1-7-a54bf7c28adc@pengutronix.de>
References: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
In-Reply-To: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=1058;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YKQAF54DklybBF3KstMsKTSOKqTyNRXckDDTh6FEkP4=;
 b=/EYNSC9vOT6UotWaJu0jinI1nBHCcDsye6Rln2LSQEjXcMt79Gj0hgcfz1rmaSNHDJD46NzEs
 foZO2SS2xNZCgG/K6j1xxiLr2xGOws2P8VzxuA3VBJEneVk1LZzy7oo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_071956_391192_015BBA17 
X-CRM114-Status: GOOD (  11.33  )
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
Subject: [PATCH 07/12] video: rockchip vop2: fix uninitialized variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In rk3588_calc_cru_cfg() dclk_core_div, dclk_out_div, if_pixclk_div and
if_dclk_div might be used uninitialized. The compiler doesn't warn about
these, but does so with subsequent patches. Initialize the variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index b211be39c7..6464c27d68 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -851,7 +851,7 @@ static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32
 					 unsigned int clock)
 {
 	struct vop2 *vop2 = vp->vop2;
-	int dclk_core_div, dclk_out_div, if_pixclk_div, if_dclk_div;
+	int dclk_core_div = 0, dclk_out_div = 0, if_pixclk_div = 0, if_dclk_div = 0;
 	u32 die, dip, div, vp_clk_div, val;
 
 	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,

-- 
2.39.5



