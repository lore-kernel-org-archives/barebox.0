Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91Pb-0002sT-5K
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:20:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id 205so19424643pfw.2
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:19:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:19:39 -0700
Message-Id: <20190914061943.4715-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190914061943.4715-1-andrew.smirnov@gmail.com>
References: <20190914061943.4715-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/8] ARM: zii-imx6-rdu2: Swith to using compressed DTB
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Reduces image size by ~100K (from 699K to 598K) on my test
configuration.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c | 8 ++++----
 arch/arm/mach-imx/Kconfig                 | 1 +
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index 3f5d90b61d..87e634509f 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -263,8 +263,8 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
-extern char __dtb_imx6q_zii_rdu2_start[];
-extern char __dtb_imx6qp_zii_rdu2_start[];
+extern char __dtb_z_imx6q_zii_rdu2_start[];
+extern char __dtb_z_imx6qp_zii_rdu2_start[];
 
 static noinline void rdu2_sram_setup(void)
 {
@@ -304,9 +304,9 @@ ENTRY_FUNCTION(start_imx6_zii_rdu2, r0, r1, r2)
 		rdu2_sram_setup();
 
 	if (__imx6_cpu_type() == IMX6_CPUTYPE_IMX6QP)
-		imx6q_barebox_entry(__dtb_imx6qp_zii_rdu2_start +
+		imx6q_barebox_entry(__dtb_z_imx6qp_zii_rdu2_start +
 				    get_runtime_offset());
 	else
-		imx6q_barebox_entry(__dtb_imx6q_zii_rdu2_start +
+		imx6q_barebox_entry(__dtb_z_imx6q_zii_rdu2_start +
 				    get_runtime_offset());
 }
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index db072caad9..a84a8abc21 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -453,6 +453,7 @@ config MACH_ZII_RDU2
 	select ARCH_IMX6
 	select MCI_IMX_ESDHC_PBL
 	select MACH_ZII_COMMON
+	select ARM_USE_COMPRESSED_DTB
 
 config MACH_ZII_IMX8MQ_DEV
 	bool "ZII i.MX8MQ based devices"
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
