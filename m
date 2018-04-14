Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKB-0001d6-FW
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:50:58 +0000
Received: by mail-pf0-x241.google.com with SMTP id o16so8511730pfk.9
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:50:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:18 -0700
Message-Id: <20180414175024.9962-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175024.9962-1-andrew.smirnov@gmail.com>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/10] ARM: i.MX7: Record reset reason as a part of startup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx7.c                      | 3 +++
 arch/arm/mach-imx/include/mach/reset-reason.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index 4eef99c87..a5debd06c 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -19,6 +19,7 @@
 #include <mach/imx7.h>
 #include <mach/generic.h>
 #include <mach/revision.h>
+#include <mach/reset-reason.h>
 #include <mach/imx7-regs.h>
 
 void imx7_init_lowlevel(void)
@@ -171,6 +172,7 @@ int imx7_init(void)
 {
 	const char *cputypestr;
 	u32 imx7_silicon_revision;
+	void __iomem *src = IOMEM(MX7_SRC_BASE_ADDR);
 
 	imx7_init_lowlevel();
 
@@ -197,6 +199,7 @@ int imx7_init(void)
 	}
 
 	imx_set_silicon_revision(cputypestr, imx7_silicon_revision);
+	imx_set_reset_reason(src + IMX7_SRC_SRSR);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index f65224a55..a8a9dc682 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -13,6 +13,7 @@
 #define IMX_SRC_SRSR_WARM_BOOT		BIT(16)
 
 #define IMX6_SRC_SRSR	0x008
+#define IMX7_SRC_SRSR	0x05c
 
 void imx_set_reset_reason(void __iomem *srsr);
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
