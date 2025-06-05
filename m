Delivery-date: Thu, 05 Jun 2025 23:14:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv5-0049QM-1i
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHuy-00061B-OA
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gf6YPHBlY941yZrBB7FQnR8A/fmtFiV9FIk+dtGUoyI=; b=VxLgeBkei1AHhdUSuIM3Q9MewS
	tW5JhZBmjpF7kk42ZovNCWJ5dOAmXUciBZ7zAYmgbneA2Swio7O1mG9iyrlPF8Z/7V45bo8EXGG+M
	bMKj4aHGzFdn1knk7bBkBe1qYL5QzZeyssO/LU4lc7I5pIHQ6LTxKJR+bLgA2PvBtuZWz7Oo5/QFz
	AXc/OeaKfWh28RjfjYO4vx/+o14O2UvI3f8vAl5AEfIkX6KmRcv9IbZmBiMxMIsBVqMQr5Hp8q9au
	IvzD9ZHhR1i89nr1HoXrZY0d0XPh+5yeIglJaKs8hCvRjKE8KKgGSWOjfHvHnsf13lRz5mnNjnYUM
	RDNNTKvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuG-0000000GevA-2PCP;
	Thu, 05 Jun 2025 21:13:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHoB-0000000GeGG-1Kdl
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHoA-00079B-17; Thu, 05 Jun 2025 23:07:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:21 +0200
Message-Id: <20250605210726.1916656-12-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140731_374511_A5744BDC 
X-CRM114-Status: GOOD (  24.04  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/16] video: factor out drm_mode_vrefresh
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function is going to be used for the incoming MIPI-DSI support, so
let's make it reusable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/Makefile                     |  1 +
 drivers/video/drm/Makefile                 |  2 +
 drivers/video/drm/drm_modes.c              | 67 ++++++++++++++++++++++
 drivers/video/rockchip/rockchip_drm_vop2.c | 13 -----
 include/video/drm/drm_modes.h              |  2 +
 5 files changed, 72 insertions(+), 13 deletions(-)
 create mode 100644 drivers/video/drm/Makefile
 create mode 100644 drivers/video/drm/drm_modes.c

diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index f851837ebcdb..dde1da1bb98b 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_VIDEO) += fb.o mode-helpers.o
+obj-$(CONFIG_VIDEO) += drm/
 obj-$(CONFIG_DRIVER_VIDEO_EDID) += edid.o
 obj-$(CONFIG_OFDEVICE) += of_display_timing.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT) += backlight.o
diff --git a/drivers/video/drm/Makefile b/drivers/video/drm/Makefile
new file mode 100644
index 000000000000..06d586eb2184
--- /dev/null
+++ b/drivers/video/drm/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_VIDEO) += drm_modes.o
diff --git a/drivers/video/drm/drm_modes.c b/drivers/video/drm/drm_modes.c
new file mode 100644
index 000000000000..00fcfb9070ae
--- /dev/null
+++ b/drivers/video/drm/drm_modes.c
@@ -0,0 +1,67 @@
+/*
+ * Copyright © 1997-2003 by The XFree86 Project, Inc.
+ * Copyright © 2007 Dave Airlie
+ * Copyright © 2007-2008 Intel Corporation
+ *   Jesse Barnes <jesse.barnes@intel.com>
+ * Copyright 2005-2006 Luc Verhaegen
+ * Copyright (c) 2001, Andy Ritger  aritger@nvidia.com
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice shall be included in
+ * all copies or substantial portions of the Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
+ * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
+ * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ * OTHER DEALINGS IN THE SOFTWARE.
+ *
+ * Except as contained in this notice, the name of the copyright holder(s)
+ * and author(s) shall not be used in advertising or otherwise to promote
+ * the sale, use or other dealings in this Software without prior written
+ * authorization from the copyright holder(s) and author(s).
+ */
+
+#include <linux/ctype.h>
+#include <linux/export.h>
+#include <linux/list.h>
+#include <of.h>
+
+#include <video/drm/drm_modes.h>
+
+/**
+ * drm_mode_vrefresh - get the vrefresh of a mode
+ * @mode: mode
+ *
+ * Returns:
+ * @modes's vrefresh rate in Hz, rounded to the nearest integer. Calculates the
+ * value first if it is not yet set.
+ */
+int drm_mode_vrefresh(const struct drm_display_mode *mode)
+{
+	unsigned int num, den;
+
+	if (mode->htotal == 0 || mode->vtotal == 0)
+		return 0;
+
+	num = mode->clock;
+	den = mode->htotal * mode->vtotal;
+
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		num *= 2;
+	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
+		den *= 2;
+	if (mode->vscan > 1)
+		den *= mode->vscan;
+
+	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(num, 1000), den);
+}
+EXPORT_SYMBOL(drm_mode_vrefresh);
diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index b49053c6e915..d81e0357528b 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -975,19 +975,6 @@ static int us_to_vertical_line(struct drm_display_mode *mode, int us)
 	return us * mode->clock / mode->htotal / 1000;
 }
 
-static int drm_mode_vrefresh(const struct drm_display_mode *mode)
-{
-	unsigned int num, den;
-
-	if (mode->htotal == 0 || mode->vtotal == 0)
-		return 0;
-
-	num = mode->clock;
-	den = mode->htotal * mode->vtotal;
-
-	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(num, 1000), den);
-}
-
 static void vop2_crtc_atomic_enable(struct vop2_video_port *vp,
 				    struct drm_display_mode *mode,
 				    struct rockchip_crtc_state *vcstate)
diff --git a/include/video/drm/drm_modes.h b/include/video/drm/drm_modes.h
index afce8a25a9c4..003c76cab6e0 100644
--- a/include/video/drm/drm_modes.h
+++ b/include/video/drm/drm_modes.h
@@ -406,4 +406,6 @@ struct drm_display_mode {
 	enum drm_mode_status status;
 };
 
+int drm_mode_vrefresh(const struct drm_display_mode *mode);
+
 #endif /* __DRM_MODES_H__ */
-- 
2.39.5



