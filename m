Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhfz-0008JQ-Dp
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 05:04:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id f21so7933264plj.10
 for <barebox@lists.infradead.org>; Mon, 07 Oct 2019 22:04:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  7 Oct 2019 22:04:26 -0700
Message-Id: <20191008050426.29849-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] Documentation: zii-vf610-dev: Fix bogus DDR configuration
 values
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's a clear mismatch between actual TCL code and comment right
next to it. Comments are definetly right, so fix the TCL code.

Fixes: 02738f4b59 ("Documentation: zii-vf610-dev: Reconcile DDR setup with DCD")
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/boards/imx/zii-vf610-dev/openocd.cfg | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
index 5127c7623d..c94f9d048d 100644
--- a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
+++ b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
@@ -148,10 +148,10 @@ proc ddr_init { } {
 	mww phys 0x400ae210 0x00000506 ;# wm 32 DDRMC_CR132 0x00000506
 	mww phys 0x400ae224 0x00020000 ;# wm 32 DDRMC_CR137 0x00020000
 	mww phys 0x400ae228 0x01000100 ;# wm 32 DDRMC_CR138 0x01000100
-	mww phys 0x400ae22c 0x04070303 ;# wm 32 DDRMC_CR154 0x682c4000
-	mww phys 0x400ae230 0x00000040 ;# wm 32 DDRMC_CR155 0x00000009
-	mww phys 0x400ae23c 0x06000080 ;# wm 32 DDRMC_CR158 0x00000006
-	mww phys 0x400ae240 0x04070303 ;# wm 32 DDRMC_CR161 0x00010606
+	mww phys 0x400ae268 0x682c4000 ;# wm 32 DDRMC_CR154 0x682c4000
+	mww phys 0x400ae26c 0x00000009 ;# wm 32 DDRMC_CR155 0x00000009
+	mww phys 0x400ae278 0x00000006 ;# wm 32 DDRMC_CR158 0x00000006
+	mww phys 0x400ae284 0x00010606 ;# wm 32 DDRMC_CR161 0x00010606
 
 	#
 	# flash-header-zii-vf610-dev.imxcfg
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
