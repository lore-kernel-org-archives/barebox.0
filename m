Delivery-date: Tue, 06 May 2025 08:36:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBud-002i0L-0E
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:36:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBuc-00012G-ED
	for lore@pengutronix.de; Tue, 06 May 2025 08:36:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PM9CnUBZS6A24I6RYEqf9wEoRv4Kt/RJsKHXfE25uFk=; b=gd/z1cbZdmGQnXVAiuvl40IxDK
	ESFGf43t+RpqSc+/ZnKS9w7WYpaYyR1Poii3x3DsZH+5Q/h4xAYHoqxbdzdJqXyjKm90gGtUHOZdk
	wzUKiciYezNseHrJzxfMagtQrKzGn2PB6Vv4ZINIbipf79aZAYnAsGWN4JiOkS+WZSUv5n4Y4A30z
	scJmn2SPmE6XTeUYAssZUeDDJRN9ETFrIemg+VzPlbqq/rjWt3tUhwxeQKqvEro5GuwzKruPSf8cu
	8It+Nwxj7BvsAZ+VAp7uVvdCK8c3fRdhLt5LFwOnmuY9A6hnVR5t7vCXO1l5GxOL5lvVFeqWOfg3s
	51HjKFuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBuF-0000000AidF-1R0Q;
	Tue, 06 May 2025 06:35:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBh7-0000000Aefs-40V0
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:22:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBh6-00069a-Nm; Tue, 06 May 2025 08:22:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBh6-001LjX-1m;
	Tue, 06 May 2025 08:22:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBh6-00CyEs-30;
	Tue, 06 May 2025 08:22:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:22:19 +0200
Message-Id: <20250506062219.3091457-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506062219.3091457-1-a.fatoum@pengutronix.de>
References: <20250506062219.3091457-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_232221_996682_5B1829EE 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] video: Rockchip: drop unused declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These definitions are a left over from the original Linux code, but are
wholly unused in barebox, so they can be safely dropped.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/rockchip/rockchip_drm_drv.h | 21 ---------------------
 drivers/video/rockchip/rockchip_drm_vop.h |  2 --
 2 files changed, 23 deletions(-)

diff --git a/drivers/video/rockchip/rockchip_drm_drv.h b/drivers/video/rockchip/rockchip_drm_drv.h
index 9bc480ee049e..ad8edb76e6d9 100644
--- a/drivers/video/rockchip/rockchip_drm_drv.h
+++ b/drivers/video/rockchip/rockchip_drm_drv.h
@@ -30,37 +30,16 @@
 /* output flags */
 #define ROCKCHIP_OUTPUT_DSI_DUAL	BIT(0)
 
-struct drm_device;
-struct drm_connector;
-struct iommu_domain;
-
 struct rockchip_crtc_state {
 	int output_type;
 	int output_mode;
 	int output_bpc;
 	int output_flags;
-	bool enable_afbc;
 	bool yuv_overlay;
 	u32 bus_format;
 	u32 bus_flags;
-	int color_space;
 };
 #define to_rockchip_crtc_state(s) \
 		container_of(s, struct rockchip_crtc_state, base)
 
-/*
- * Rockchip drm private structure.
- *
- * @crtc: array of enabled CRTCs, used to map from "pipe" to drm_crtc.
- * @num_pipe: number of pipes for this device.
- * @mm_lock: protect drm_mm on multi-threads.
- */
-struct rockchip_drm_private {
-	struct device *iommu_dev;
-};
-
-struct rockchip_encoder {
-	int crtc_endpoint_id;
-};
-
 #endif /* _ROCKCHIP_DRM_DRV_H_ */
diff --git a/drivers/video/rockchip/rockchip_drm_vop.h b/drivers/video/rockchip/rockchip_drm_vop.h
index 255b6aa165ee..d4649910e861 100644
--- a/drivers/video/rockchip/rockchip_drm_vop.h
+++ b/drivers/video/rockchip/rockchip_drm_vop.h
@@ -419,6 +419,4 @@ static inline int scl_vop_cal_lb_mode(int width, bool is_yuv)
 
 	return lb_mode;
 }
-
-extern const struct component_ops vop_component_ops;
 #endif /* _ROCKCHIP_DRM_VOP_H */
-- 
2.39.5



