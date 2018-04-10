Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6358-0001jJ-Vu
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:48 +0000
Received: by mail-pf0-x242.google.com with SMTP id j2so22144pff.10
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:19 -0700
Message-Id: <20180410235323.5440-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/10] ARM: i.MX: esdctl: Make use of min_t()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use min_t() instead of explicit if ().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/esdctl.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 3cd7c5738..a4eb3f196 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -77,10 +77,7 @@ static inline unsigned long imx_v1_sdram_size(void __iomem *esdctlbase, int num)
 
 	size = (1 << cols) * (1 << rows) * banks * width;
 
-	if (size > SZ_64M)
-		size = SZ_64M;
-
-	return size;
+	return min_t(unsigned long, size, SZ_64M);
 }
 
 /*
@@ -105,10 +102,7 @@ static inline unsigned long imx_v2_sdram_size(void __iomem *esdctlbase, int num)
 
 	size = (1 << cols) * (1 << rows) * banks * width;
 
-	if (size > SZ_256M)
-		size = SZ_256M;
-
-	return size;
+	return min_t(unsigned long, size, SZ_256M);
 }
 
 /*
@@ -123,10 +117,7 @@ static inline unsigned long imx_v3_sdram_size(void __iomem *esdctlbase, int num)
 	if (readl(esdctlbase + IMX_ESDMISC) & ESDMISC_DDR2_8_BANK)
 		size *= 2;
 
-	if (size > SZ_256M)
-		size = SZ_256M;
-
-	return size;
+	return min_t(unsigned long, size, SZ_256M);
 }
 
 /*
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
