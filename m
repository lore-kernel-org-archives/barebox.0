Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezIIz-0002e3-N9
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 08:44:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1ezIIk-0006L7-TO
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 09:43:54 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.90_1)
 (envelope-from <mgr@pengutronix.de>) id 1ezIIk-0006rA-L1
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 09:43:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 23 Mar 2018 09:43:49 +0100
Message-Id: <20180323084352.20931-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
References: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 1/4] i.MX53/TX53: cfg revxx30: don't disable usb clks,
 so imx-usb-loader works
To: barebox@lists.infradead.org

In the current configuration the usb related clocks get disabled
immediately which breaks the imx-usb-loader boot. We fix that by leaving
them enabled.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
index aec88ad59b..df0c2d7f10 100644
--- a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
@@ -3,9 +3,9 @@ soc imx53
 dcdofs 0x400
 wm 32 0x53fd4068 0xffcc0fff
 wm 32 0x53fd406c 0x000fffc3
-wm 32 0x53fd4070 0x033c0000
+wm 32 0x53fd4070 0x0f3c0000
 wm 32 0x53fd4074 0x00000000
-wm 32 0x53fd4078 0x00000000
+wm 32 0x53fd4078 0x00000c00
 wm 32 0x53fd407c 0x00fff033
 wm 32 0x53fd4080 0x0f00030f
 wm 32 0x53fd4084 0xfff00000
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
