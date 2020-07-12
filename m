Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jul56-0005ft-VG
 for barebox@lists.infradead.org; Sun, 12 Jul 2020 23:08:25 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Jul 2020 01:08:13 +0200
Message-Id: <20200712230814.7207-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200712230814.7207-1-a.fatoum@pengutronix.de>
References: <20200712230814.7207-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] fixup! ARM: add imx6 based Protonic boads
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

dcdofs was renamed to ivtofs meanwhile, which causes the build to fail.
Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg  | 2 +-
 15 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
index a73857cae9e9..c778391d7576 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
index d926cecc5f71..b08e14983454 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
index d91b38cc2ddb..dbbb9818b645 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
index d91b38cc2ddb..dbbb9818b645 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
index f58b0181eae0..ec9fb8410834 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 #include "padsetup-ul.imxcfg"
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
index 8b7c9ea3b018..68b7909f82fd 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
index caffae26c772..1131174f70a6 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
index d91b38cc2ddb..dbbb9818b645 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
index c548d5f78e71..019696295de5 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
index 4e38ae42854c..5f847c004dce 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "lpddr2-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
index f7ad652cc16a..054043cc800e 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "lpddr2-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
index 55aa0594312b..d3de7b6aab4f 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
index 7ebb52c2ab80..9926fbf4a292 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
index fdc328d892ef..a73a2c6fd007 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
index 3ca21f683a2a..13887ade0b45 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include "ddr3-defines.imxcfg"
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
