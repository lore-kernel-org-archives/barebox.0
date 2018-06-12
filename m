Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLh-0000El-Iy
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:49:11 +0000
Received: by mail-pl0-x243.google.com with SMTP id w17-v6so14872414pll.9
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:57 -0700
Message-Id: <20180612184800.4940-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/14] VFxxx: DCD: Remove CR151 initialization
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

CR151 contains parameters specific to HW gate training and read
leveling which are not an officially supported featre of the HW.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../include/mach/flash-header/vf610-ddr-cr-default.imxcfg        | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
index ac85bd59f..0cb0bee45 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
@@ -140,7 +140,6 @@ wm 32 DDRMC_CR145 0x00000040
 wm 32 DDRMC_CR146 0x00000040
 wm 32 DDRMC_CR147 0x000f0000
 wm 32 DDRMC_CR148 0x000f0000
-wm 32 DDRMC_CR151 0x00000101
 wm 32 DDRMC_CR154 0x682c4000
 wm 32 DDRMC_CR155 0x00000009
 wm 32 DDRMC_CR158 0x00000006
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
