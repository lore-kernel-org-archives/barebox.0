Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xbrqt-0006Ei-5i
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:04:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:03:58 +0200
Message-Id: <1412777041-23714-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412777041-23714-1-git-send-email-s.hauer@pengutronix.de>
References: <1412777041-23714-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] ARM: nitrogen6x: update 1066MHz 4x128M16 timing from
 U-Boot
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg   | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
index 4aa7ec7..c5a286b 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
@@ -1,5 +1,18 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
 wm 32 MX6_MMDC_P0_MDPDC			0x00020036
-wm 32 MX6_MMDC_P0_MDSCR			0x00008000
 wm 32 MX6_MMDC_P0_MDCFG0		0x555A7974
 wm 32 MX6_MMDC_P0_MDCFG1		0xDB538F64
 wm 32 MX6_MMDC_P0_MDCFG2		0x01FF00DB
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
