Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6355-0001jD-Nr
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:44 +0000
Received: by mail-pf0-x243.google.com with SMTP id p6so32027pfn.4
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:15 -0700
Message-Id: <20180410235323.5440-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180410235323.5440-1-andrew.smirnov@gmail.com>
References: <20180410235323.5440-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/10] ARM: i.MX51: esdctl: Replace magic value with
 ESDMISC_DDR2_8_BANK
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/esdctl.c              | 2 +-
 arch/arm/mach-imx/include/mach/esdctl.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 895761e73..1d6fa2995 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -120,7 +120,7 @@ static inline unsigned long imx_v3_sdram_size(void __iomem *esdctlbase, int num)
 
 	size = imx_v2_sdram_size(esdctlbase, num);
 
-	if (readl(esdctlbase + IMX_ESDMISC) & (1 << 6))
+	if (readl(esdctlbase + IMX_ESDMISC) & ESDMISC_DDR2_8_BANK)
 		size *= 2;
 
 	if (size > SZ_256M)
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 66dcc8974..53710b0f2 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -48,6 +48,7 @@
 #define ESDMISC_MDDR_MDIS		0x00000010
 #define ESDMISC_LHD			0x00000020
 #define ESDMISC_SDRAMRDY		0x80000000
+#define ESDMISC_DDR2_8_BANK		BIT(6)
 
 #define	ESDCFGx_tXP_MASK 		0x00600000
 #define ESDCFGx_tXP_1			0x00000000
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
