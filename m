Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBvzn-00024d-0p
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:32:36 +0000
Received: by mail-pf0-x242.google.com with SMTP id p6so630554pfn.4
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:32:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:32:16 -0700
Message-Id: <20180427053216.10040-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: i.MX7: Remove unnecessary local variable
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It looks this code was based on analogous code for i.MX6, but there
that variable was being used as a part of following switch
statement. Since this is not the case for i.MX7, just replace the
variable with direct function call.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx7.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index 5ad91c2d7..e49baf6f7 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -182,7 +182,6 @@ static const struct imx_reset_reason imx7_reset_reasons[] = {
 int imx7_init(void)
 {
 	const char *cputypestr;
-	u32 imx7_silicon_revision;
 	void __iomem *src = IOMEM(MX7_SRC_BASE_ADDR);
 
 	imx7_init_lowlevel();
@@ -193,8 +192,6 @@ int imx7_init(void)
 
 	imx7_boot_save_loc();
 
-	imx7_silicon_revision = imx7_cpu_revision();
-
 	psci_set_ops(&imx7_psci_ops);
 
 	switch (imx7_cpu_type()) {
@@ -209,7 +206,7 @@ int imx7_init(void)
 		break;
 	}
 
-	imx_set_silicon_revision(cputypestr, imx7_silicon_revision);
+	imx_set_silicon_revision(cputypestr, imx7_cpu_revision());
 	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 
 	return 0;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
