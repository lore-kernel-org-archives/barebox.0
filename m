Delivery-date: Mon, 28 Oct 2024 15:41:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qve-001tj3-2i
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 15:41:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvd-00051G-OF
	for lore@pengutronix.de; Mon, 28 Oct 2024 15:41:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RlkWI7Qjhu9ziUtuAcpAxOCAu/29B3ksTlsRv91kmXk=; b=AdFtGcCuuNp3nr6EOqrtvQFnxd
	nsItjJK497DwEQeVlfFkja1Z9RfK7lHUe+sYKeUzpYma9mU16cjv/h/q5pbov1Cp3nccVndZyutUi
	JTigCUahilD/2Z0CZ+wJDymLom5AGVZwlFOwfjzeNt2QvrjIyQoyfd0wWyU4dJFjRhFdTiyqBzBnZ
	fwzlZWzDofBRi/07gVXDCAL/jldcjMr+KEFdGdc8QqHaLUWBKqJZOGHLV6sixNf0DI7r7880PjjIo
	wmZSxX5PCobc4J7OiXkbKrPojqVmYPzd/SFouAz+Fc1+1JNY0w87Ek6GaZn+28j9a3yRbxR7YKs4u
	fOUvRBug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Quy-0000000B9jv-0NSX;
	Mon, 28 Oct 2024 14:40:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Qb6-0000000B5qT-0Wp0
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:19:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-0002ni-Tq; Mon, 28 Oct 2024 15:19:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-000s7K-24;
	Mon, 28 Oct 2024 15:19:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-1n;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-vop2-rk3588-v1-2-a54bf7c28adc@pengutronix.de>
References: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
In-Reply-To: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=1539;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Xe5GJaEXPmW6EnwJsslAx+g6hdzjnMAyLaaMs/eLli4=;
 b=Jn5V9/uG04feM1HO3/ga1N+sL8c3rMVaUvbBWuNuOrm4l6pNsISFQQO/Zc5Clj14VCt0zUtqA
 Q/gxTAOtr7RDzi89Na+s0rCBws8WZHoFdJhyn9PnHZUrB5xRC9eIvM8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_071956_198672_0317ECB1 
X-CRM114-Status: GOOD (  10.92  )
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
Subject: [PATCH 02/12] vop2: rk3588: pass clock to rk3588_calc_cru_cfg()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

crtc_clock was initialized to 0 just to make the driver compile.
Initialize to the real value, needed for RK3588.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/rockchip/rockchip_drm_vop2.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index 3a1c951ec7..b211be39c7 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -743,11 +743,10 @@ static unsigned long rk3588_calc_dclk(unsigned long child_clk, unsigned long max
  */
 static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 					 int *dclk_core_div, int *dclk_out_div,
-					 int *if_pixclk_div, int *if_dclk_div)
+					 int *if_pixclk_div, int *if_dclk_div, unsigned int clock)
 {
 	struct vop2 *vop2 = vp->vop2;
-	u32 crtc_clock = 0;
-	unsigned long v_pixclk = crtc_clock * 1000LL; /* video timing pixclk */
+	unsigned long v_pixclk = clock; /* video timing pixclk */
 	unsigned long dclk_core_rate = v_pixclk >> 2;
 	unsigned long dclk_rate = v_pixclk;
 	unsigned long dclk_out_rate;
@@ -856,7 +855,7 @@ static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32
 	u32 die, dip, div, vp_clk_div, val;
 
 	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
-				    &if_pixclk_div, &if_dclk_div);
+				    &if_pixclk_div, &if_dclk_div, clock);
 	if (!clock)
 		return 0;
 

-- 
2.39.5



