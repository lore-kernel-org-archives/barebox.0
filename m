Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6355-0001jF-No
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:45 +0000
Received: by mail-pf0-x243.google.com with SMTP id l27so18824pfk.12
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:17 -0700
Message-Id: <20180410235323.5440-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/10] ARM: i.MX6: esdctl: Factor out common code in
 imx6*_barebox_entry()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/esdctl.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index a7114effa..eda8184a0 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -595,16 +595,20 @@ void __noreturn imx53_barebox_entry(void *boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __noreturn imx6q_barebox_entry(void *boarddata)
+static void __noreturn
+imx6_barebox_entry(unsigned long membase, void *boarddata)
 {
-	barebox_arm_entry(0x10000000,
+	barebox_arm_entry(membase,
 			  imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR)),
 			  boarddata);
 }
 
+void __noreturn imx6q_barebox_entry(void *boarddata)
+{
+	imx6_barebox_entry(0x10000000, boarddata);
+}
+
 void __noreturn imx6ul_barebox_entry(void *boarddata)
 {
-	barebox_arm_entry(0x80000000,
-			  imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR)),
-			  boarddata);
+	imx6_barebox_entry(0x80000000, boarddata);
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
