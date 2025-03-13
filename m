Delivery-date: Thu, 13 Mar 2025 08:52:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMn-00DTiy-1a
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:52:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMl-000179-FO
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:52:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rbMSU4UVu4d7LqLI+WqIR2PWliPaPeX9LWgumnaVlnI=; b=gaiP5fPSiZRGYk0WMPMl2M/hEK
	GhsdqccJCn8laraMwBhsweBTducmkaMD7dgIm3kdgeboPsTXcYIQti6s+T+m+g8SKrXv0Df/iDBWJ
	0vdlVyb9z/0vERXEwfF/0eoIXi/OkC9HjWw5f36+9ijfpH+Rz1XhgCvJdGtZwH+AeacE5+k5qQx4B
	pKgnFV54kX1cqIdBX5FaHowOTTY97D98ohWwbwZGwvp9gmwPON9uo/MTC6nKudbpjBJvBp7FilWfM
	7D9f/17FJJNHcPypj+8rgZ0Csxb/nvEtUsJbCik/vvcSp02eSKdFUHg/rhfCdfxpkOIx+/PcC3ofH
	Xa7G65qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdMI-0000000AReA-0BXE;
	Thu, 13 Mar 2025 07:52:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd6h-0000000AOm2-1MP9
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6g-00060s-3p; Thu, 13 Mar 2025 08:35:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6f-005Uwc-2t;
	Thu, 13 Mar 2025 08:35:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-2Q;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:41 +0100
Message-Id: <20250313073445.764875-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003555_366909_F446DDC2 
X-CRM114-Status: GOOD (  11.73  )
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
Subject: [PATCH 18/22] video: Rockchip: fix zero division in rk3588_calc_cru_cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This was detected by clang-analyzer and I don't understand how that
function could have ever worked, because it's running into the zero
division in the "successful" code path.

Peeking at rk3568_set_intf_mux, the CRTC clock is passed by the caller
in barebox, so let's do the same for rk3588_calc_cru_cfg.

Fixes: c8c0833beb77 ("video: Rockchip: Add VOP2 driver")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/rockchip/rockchip_drm_vop2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index 3a1c951ec7e4..f15ef1b57bf5 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -743,10 +743,10 @@ static unsigned long rk3588_calc_dclk(unsigned long child_clk, unsigned long max
  */
 static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 					 int *dclk_core_div, int *dclk_out_div,
-					 int *if_pixclk_div, int *if_dclk_div)
+					 int *if_pixclk_div, int *if_dclk_div,
+					 u32 crtc_clock)
 {
 	struct vop2 *vop2 = vp->vop2;
-	u32 crtc_clock = 0;
 	unsigned long v_pixclk = crtc_clock * 1000LL; /* video timing pixclk */
 	unsigned long dclk_core_rate = v_pixclk >> 2;
 	unsigned long dclk_rate = v_pixclk;
@@ -856,7 +856,7 @@ static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32
 	u32 die, dip, div, vp_clk_div, val;
 
 	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
-				    &if_pixclk_div, &if_dclk_div);
+				    &if_pixclk_div, &if_dclk_div, clock);
 	if (!clock)
 		return 0;
 
-- 
2.39.5



