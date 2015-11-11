Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwbTQ-0007TO-KF
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 19:54:29 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBB9.dip0.t-ipconnect.de
 [87.181.251.185]) by lynxeye.de (Postfix) with ESMTPA id 99AD826C2001
 for <barebox@lists.infradead.org>; Wed, 11 Nov 2015 20:53:33 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 11 Nov 2015 20:53:29 +0100
Message-Id: <1447271609-13292-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: ventana: remove unneeded clock init in DCD
To: barebox@lists.infradead.org

The clock driver will overwrite those values anyway, so no
point in setting them in the DCD.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/gateworks-ventana/clocks.imxcfg                   | 8 --------
 .../gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg      | 1 -
 2 files changed, 9 deletions(-)
 delete mode 100644 arch/arm/boards/gateworks-ventana/clocks.imxcfg

diff --git a/arch/arm/boards/gateworks-ventana/clocks.imxcfg b/arch/arm/boards/gateworks-ventana/clocks.imxcfg
deleted file mode 100644
index bfd5331..0000000
--- a/arch/arm/boards/gateworks-ventana/clocks.imxcfg
+++ /dev/null
@@ -1,8 +0,0 @@
-wm 32 MX6_CCM_CCGR0	0x00C03F3F
-wm 32 MX6_CCM_CCGR1	0x0030FC03
-wm 32 MX6_CCM_CCGR2	0x0FFFC000
-wm 32 MX6_CCM_CCGR3	0x3FF00000
-wm 32 MX6_CCM_CCGR4	0xFFFFF300
-wm 32 MX6_CCM_CCGR5	0x0F0000C3
-wm 32 MX6_CCM_CCGR6	0x000003FF
-wm 32 MX6_CCM_CCOSR	0x000000FB
diff --git a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
index 75271e4..f4506f1 100644
--- a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
+++ b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
@@ -8,4 +8,3 @@ dcdofs 0x400
 
 #include "ram-base.imxcfg"
 #include "quad_128x64.imxcfg"
-#include "clocks.imxcfg"
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
