Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLI-0008Rv-F0
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:59 +0000
Received: by mail-pl0-x243.google.com with SMTP id a7-v6so1232plp.3
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:58 -0700
Message-Id: <20180612184800.4940-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/14] VFxxx: DCD: Drop initialization of CR139 - CR148
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All of those registers contain paramters applicable only to write
leveling, gate training and read leveling procedures. They should have
no effect on normal mode of operations, so remove them from the common
settings file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../include/mach/flash-header/vf610-ddr-cr-default.imxcfg | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
index 0cb0bee45..cce4c6de7 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
@@ -132,14 +132,6 @@ wm 32 DDRMC_CR126 0x00000800
 wm 32 DDRMC_CR132 0x00000506
 wm 32 DDRMC_CR137 0x00020000
 wm 32 DDRMC_CR138 0x01000100
-wm 32 DDRMC_CR139 0x04070303
-wm 32 DDRMC_CR140 0x00000040
-wm 32 DDRMC_CR143 0x06000080
-wm 32 DDRMC_CR144 0x04070303
-wm 32 DDRMC_CR145 0x00000040
-wm 32 DDRMC_CR146 0x00000040
-wm 32 DDRMC_CR147 0x000f0000
-wm 32 DDRMC_CR148 0x000f0000
 wm 32 DDRMC_CR154 0x682c4000
 wm 32 DDRMC_CR155 0x00000009
 wm 32 DDRMC_CR158 0x00000006
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
