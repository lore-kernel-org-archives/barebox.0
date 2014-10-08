Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbrrC-0006JZ-UZ
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:04:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:04:01 +0200
Message-Id: <1412777041-23714-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: nitrogen6x: remove clock gate manipulation from DCD
To: barebox@lists.infradead.org

The clock driver will ungate all clocks anyway during startup, so
manipulating them in the DCD has no effect.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg           | 7 -------
 .../boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg  | 1 -
 .../boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg   | 1 -
 3 files changed, 9 deletions(-)
 delete mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg
deleted file mode 100644
index 55adb60..0000000
--- a/arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg
+++ /dev/null
@@ -1,7 +0,0 @@
-wm 32 MX6_CCM_CCGR0		0x00C03F3F
-wm 32 MX6_CCM_CCGR1		0x0030FC03
-wm 32 MX6_CCM_CCGR2		0x0FFFC000
-wm 32 MX6_CCM_CCGR3		0x3FF00000
-wm 32 MX6_CCM_CCGR4		0x00FFF300
-wm 32 MX6_CCM_CCGR5		0x0F0000C3
-wm 32 MX6_CCM_CCGR6		0x000003FF
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
index d077a65..0773f4d 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
@@ -8,4 +8,3 @@ dcdofs 0x400
 
 #include "ram-base.imxcfg"
 #include "800mhz_4x128mx16.imxcfg"
-#include "clocks.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
index ee3145b..bd4134f 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
@@ -8,4 +8,3 @@ dcdofs 0x400
 
 #include "ram-base.imxcfg"
 #include "1066mhz_4x128mx16.imxcfg"
-#include "clocks.imxcfg"
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
