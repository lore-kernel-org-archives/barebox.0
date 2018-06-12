Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLC-0008QR-1K
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:35 +0000
Received: by mail-pl0-x22d.google.com with SMTP id c41-v6so14856130plj.10
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:52 -0700
Message-Id: <20180612184800.4940-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184800.4940-1-andrew.smirnov@gmail.com>
References: <20180612184800.4940-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/14] VFxxx: Reconcile shared DDR DCD configuration with
 U-Boot
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

U-Boot was originally used as a source of DCD for VFxxx, so update our
settings against latest upstream (sha1:
b8aa55cb6414e512cce30bb7db3268eea934466d) to reconcile the
differences.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg       | 1 -
 .../include/mach/flash-header/vf610-ddr-cr-default.imxcfg | 8 +++-----
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 7bb7e8ac6..6445cbe9d 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -9,7 +9,6 @@ dcdofs 0x400
 #include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
 #include <mach/flash-header/vf610-ddr-cr-default.imxcfg>
 
-wm 32 DDRMC_CR02 0x00000005
 wm 32 DDRMC_CR12 0x00000506
 wm 32 DDRMC_CR13 0x06040400
 wm 32 DDRMC_CR14 0x1006040e
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
index e64f4838e..3563494cc 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
@@ -1,5 +1,5 @@
 wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3
-wm 32 DDRMC_CR02 0x00000020
+wm 32 DDRMC_CR02 0x00000005
 wm 32 DDRMC_CR10 0x00013880
 wm 32 DDRMC_CR11 0x00030d40
 wm 32 DDRMC_CR12 0x0000050c
@@ -50,8 +50,6 @@ wm 32 DDRMC_CR102 0x00010100
 wm 32 DDRMC_CR105 0x00000000
 wm 32 DDRMC_CR106 0x00000004
 wm 32 DDRMC_CR110 0x00040000
-wm 32 DDRMC_CR114 0x00000000
-wm 32 DDRMC_CR115 0x00000000
 wm 32 DDRMC_CR117 0x00000000
 wm 32 DDRMC_CR118 0x01010000
 wm 32 DDRMC_CR120 0x02020000
@@ -69,7 +67,7 @@ wm 32 DDRMC_CR126 0x00000800
  */
 wm 32 DDRMC_CR132 0x00000506
 wm 32 DDRMC_CR137 0x00020000
-wm 32 DDRMC_CR138 0x01000000
+wm 32 DDRMC_CR138 0x01000100
 wm 32 DDRMC_CR139 0x04070303
 wm 32 DDRMC_CR140 0x00000040
 wm 32 DDRMC_CR143 0x06000080
@@ -80,6 +78,6 @@ wm 32 DDRMC_CR147 0x000f0000
 wm 32 DDRMC_CR148 0x000f0000
 wm 32 DDRMC_CR151 0x00000101
 wm 32 DDRMC_CR154 0x682c4000
-wm 32 DDRMC_CR155 0x00000012
+wm 32 DDRMC_CR155 0x00000009
 wm 32 DDRMC_CR158 0x00000006
 wm 32 DDRMC_CR161 0x00010202
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
