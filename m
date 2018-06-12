Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x233.google.com ([2607:f8b0:400e:c01::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLJ-0008SR-Sz
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:49:00 +0000
Received: by mail-pl0-x233.google.com with SMTP id n10-v6so5580plp.0
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:59 -0700
Message-Id: <20180612184800.4940-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/14] VFxxx: DCD: Remove CR97, CR98 and CR99
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's no point enabling write leveling DQS adjustement, while
setting offsets for both slices to zero. This code is effectively a
no-op, so drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../include/mach/flash-header/vf610-ddr-cr-default.imxcfg      | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
index cce4c6de7..956cc5c58 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
@@ -107,9 +107,6 @@ wm 32 DDRMC_CR88 0x00040000
 wm 32 DDRMC_CR89 0x00000002
 wm 32 DDRMC_CR91 0x00020000
 wm 32 DDRMC_CR96 0x00002819
-wm 32 DDRMC_CR97 0x01000000
-wm 32 DDRMC_CR98 0x00000000
-wm 32 DDRMC_CR99 0x00000000
 wm 32 DDRMC_CR102 0x00010100
 wm 32 DDRMC_CR105 0x00000000
 wm 32 DDRMC_CR106 0x00000004
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
