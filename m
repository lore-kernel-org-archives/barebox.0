Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXse4-0003ks-Su
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 19:29:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id 83so2022996pgg.8
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2019 12:29:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Jun 2019 12:28:57 -0700
Message-Id: <20190603192857.28852-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: rdu2: Initialize DEBUG_LL in entry function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

When bootstrapping Barebox via JTAG rdu2_sram_setup() won't be
executed resulting in non functional DEBUG_LL API. Move low-level UART
initialization code to be a part of start_imx6_zii_rdu2() to avoid
that problem.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index a5ac6f64c..9672a69bf 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -271,11 +271,6 @@ static noinline void rdu2_sram_setup(void)
 	enum bootsource bootsrc;
 	int instance;
 
-	imx6_ungate_all_peripherals();
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
 	arm_setup_stack(0x00920000 - 8);
 	relocate_to_current_adr();
 	setup_c();
@@ -296,6 +291,11 @@ ENTRY_FUNCTION(start_imx6_zii_rdu2, r0, r1, r2)
 {
 	imx6_cpu_lowlevel_init();
 
+	imx6_ungate_all_peripherals();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	/*
 	 * When still running in SRAM, we need to setup the DRAM now and load
 	 * the remaining image.
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
