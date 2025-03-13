Delivery-date: Thu, 13 Mar 2025 09:10:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsde8-00DU3G-0M
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 09:10:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsde6-0004HY-Ul
	for lore@pengutronix.de; Thu, 13 Mar 2025 09:10:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FLeHJxGPBxxEV9zo9xUqUALx0kl/PLuRibqVSKlrKhU=; b=O1o5rxpTcF98vssIgZ46GZtn+f
	EHLHs35ZPcUJwZBiIliUNNmyPqFcG8QGtZrq31CQ26hQAviaLE9RcZGbMJwGRIKWPGPJfy4tt5n9k
	xyMsGjEOJbO89xap0jY+Xip/DNoiDf6ppCaaCJhMpzyVtOdhhW4azLeSoMMIZ+mu91nvsQREb8BKh
	IFgKNxKN4VWpyB5Pm6pIKpLnb1DKbHherc+VEw3CsvChpScpG63/tvfG+INb3JS5ioRmFoirTmmnR
	4TV0Kss0WqbP3GFVxm7/3zvOtPpuL/bhND645Ym7yNz7a5Ap2i1xeexMKoEvrFXvjKNmOn4Yr4ehf
	S37cGOrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsddc-0000000AVP6-2oPW;
	Thu, 13 Mar 2025 08:09:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsddZ-0000000AVMr-1De0
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 08:09:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsddX-0004BG-Nz; Thu, 13 Mar 2025 09:09:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsddX-005VHz-1n;
	Thu, 13 Mar 2025 09:09:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsddX-00DWP4-1V;
	Thu, 13 Mar 2025 09:09:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 09:09:50 +0100
Message-Id: <20250313080950.3222757-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-19-a.fatoum@pengutronix.de>
References: <20250313073445.764875-19-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_010953_329009_0D990AF0 
X-CRM114-Status: GOOD (  12.58  )
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
Subject: [PATCH] fixup! video: Rockchip: fix zero division in rk3588_calc_cru_cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GCC in CI detects that a number of arguments to rk3588_calc_cru_cfg()
may be passed to ilog2() uninitialized. This issue also exists in the
kernel:

 - if_pixclk_div, if_dclk_div are seemingly unused by rk3588_set_intf_mux
   in cases where an uninitialized value is passed to ilog2

 - dclk_out_div is used unconditionally, but is uninitialized in the
   case of eDP and HDMI.

This will be reported upstream, but until it's resolved, initialize the
values to zero (ilog2(0) == 0 in Linux/barebox).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index f15ef1b57bf5..e45492360d6f 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -852,7 +852,7 @@ static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32
 					 unsigned int clock)
 {
 	struct vop2 *vop2 = vp->vop2;
-	int dclk_core_div, dclk_out_div, if_pixclk_div, if_dclk_div;
+	int dclk_core_div, dclk_out_div = 0, if_pixclk_div = 0, if_dclk_div = 0;
 	u32 die, dip, div, vp_clk_div, val;
 
 	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
-- 
2.39.5



