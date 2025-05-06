Delivery-date: Tue, 06 May 2025 08:36:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBub-002hzR-3D
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:36:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBub-00011p-Ds
	for lore@pengutronix.de; Tue, 06 May 2025 08:36:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GQ+skzETXFg4AwtDrdFYXWb+yivWQHconqSaoNr0p0s=; b=uJRZl4V3qDRjvypHjSyQrOXEsK
	QhrIOK7hf06ohPGOnxgjpLAr2wVEq5xlSMq7Q89AvjaNnvKNV2s/xaUs3UIhAzujpXsFibMK5V1li
	xWiB3qndq8b7nufgR72z9IUh3XY0luhPvCpJrwT8Kd4TvrL4VsdtuZ3TuN7LrVrf3d2jTREIfTQqV
	1cAo7C61sp2tkFNZrXZlKrvhh4rKToNpwJENht08aKXZdYRgeoOqsYCq0UVYQj1dKU26DVJngKnxm
	uFbfzkiV3gjAo+pFPpHqMXGUhmalCqWkmbPt8IjYyblx7yuP9mZL3WHxNRCmH8Js9iHbHxPRHdoK+
	zN5z4rQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBuE-0000000AicK-1vLP;
	Tue, 06 May 2025 06:35:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBh7-0000000Aeft-40lK
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:22:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBh6-00069Z-Mm; Tue, 06 May 2025 08:22:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBh6-001LjW-1e;
	Tue, 06 May 2025 08:22:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBh6-00CyEs-2r;
	Tue, 06 May 2025 08:22:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:22:18 +0200
Message-Id: <20250506062219.3091457-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_232221_992184_384133C7 
X-CRM114-Status: UNSURE (   7.12  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] video: ipuv3: drop unused drm_ forward declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

None of these types are actually used, so drop their forward
declaration.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipuv3-plane.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/ipuv3-plane.h b/drivers/video/imx-ipu-v3/ipuv3-plane.h
index cade98e3e96b..af8c13376cfd 100644
--- a/drivers/video/imx-ipu-v3/ipuv3-plane.h
+++ b/drivers/video/imx-ipu-v3/ipuv3-plane.h
@@ -2,11 +2,7 @@
 #ifndef __IPUV3_PLANE_H__
 #define __IPUV3_PLANE_H__
 
-struct drm_plane;
-struct drm_device;
 struct ipu_soc;
-struct drm_crtc;
-struct drm_framebuffer;
 
 struct ipuv3_channel;
 struct dmfc_channel;
-- 
2.39.5



