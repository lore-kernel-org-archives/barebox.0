Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4yjI-0007bm-Ev
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 01:35:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id k19-v6so12459112pfi.1
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2018 18:34:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 25 Sep 2018 18:34:14 -0700
Message-Id: <20180926013418.26920-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180926013418.26920-1-andrew.smirnov@gmail.com>
References: <20180926013418.26920-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] ARM: freescale-mx7-sabresd: Make used of
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
