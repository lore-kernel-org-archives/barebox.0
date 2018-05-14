Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([185.138.26.202]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fI61N-0006mn-6b
 for barebox@lists.infradead.org; Mon, 14 May 2018 05:27:43 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 14 May 2018 05:26:50 +0000
Message-Id: <20180514052650.7778-2-akurz@blala.de>
In-Reply-To: <20180514052650.7778-1-akurz@blala.de>
References: <20180514052650.7778-1-akurz@blala.de>
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
Subject: [PATCH 2/2] ARM: i.MX50: Record reset reason as a part of startup
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Alexander Kurz <akurz@blala.de>

The given SRSR register location is also valid for the i.MX50.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/imx50.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
index 6d121eaf8..f7cbc9d4b 100644
--- a/arch/arm/mach-imx/imx50.c
+++ b/arch/arm/mach-imx/imx50.c
@@ -21,6 +21,7 @@
 #include <mach/revision.h>
 #include <mach/clock-imx51_53.h>
 #include <mach/generic.h>
+#include <mach/reset-reason.h>
 
 #define SI_REV 0x48
 
@@ -49,7 +50,10 @@ static int imx50_silicon_revision(void)
 
 int imx50_init(void)
 {
+	void __iomem *src = IOMEM(MX50_SRC_BASE_ADDR);
+
 	imx50_silicon_revision();
+	imx_set_reset_reason(src + IMX_SRC_SRSR, imx_reset_reasons);
 	imx53_boot_save_loc();
 
 	return 0;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
