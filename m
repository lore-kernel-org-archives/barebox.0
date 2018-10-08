Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P7f-0004wm-GA
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:34:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id v133-v6so7374978pgb.2
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:34:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:34:05 -0700
Message-Id: <20181008063409.17566-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063409.17566-1-andrew.smirnov@gmail.com>
References: <20181008063409.17566-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/6] ARM: freescale-mx7-sabresd: Make use of
 imx7d_barebox_entry()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index 43aa61075..f718ea73b 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -9,6 +9,7 @@
 #include <mach/iomux-mx7.h>
 #include <mach/debug_ll.h>
 #include <asm/cache.h>
+#include <mach/esdctl.h>
 
 extern char __dtb_imx7d_sdb_start[];
 
@@ -33,14 +34,10 @@ static inline void setup_uart(void)
 
 ENTRY_FUNCTION(start_imx7d_sabresd, r0, r1, r2)
 {
-	void *fdt;
-
 	imx7_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx7d_sdb_start + get_runtime_offset();
-
-	barebox_arm_entry(0x80000000, SZ_1G, fdt);
+	imx7d_barebox_entry(__dtb_imx7d_sdb_start + get_runtime_offset());
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
