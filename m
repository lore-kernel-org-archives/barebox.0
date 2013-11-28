Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm5xC-0008Uo-OU
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:04:49 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B47ACFFA8AD
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 19:04:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 28 Nov 2013 19:06:45 +0100
Message-Id: <1385662007-13057-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] AT91: detect SoC earlier
To: barebox@lists.infradead.org

Intoduce at91_initialize as we can init the clock at pure initcall
so drop at91_set_main_clock

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c        |  2 +-
 arch/arm/boards/at91rm9200ek/init.c     |  2 +-
 arch/arm/boards/at91sam9260ek/init.c    |  2 +-
 arch/arm/boards/at91sam9261ek/init.c    |  2 +-
 arch/arm/boards/at91sam9263ek/init.c    |  2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c |  2 +-
 arch/arm/boards/at91sam9m10ihd/init.c   |  2 +-
 arch/arm/boards/at91sam9n12ek/init.c    |  2 +-
 arch/arm/boards/at91sam9x5ek/init.c     |  2 +-
 arch/arm/boards/dss11/init.c            |  2 +-
 arch/arm/boards/mmccpu/init.c           |  2 +-
 arch/arm/boards/pm9261/init.c           |  2 +-
 arch/arm/boards/pm9263/init.c           |  2 +-
 arch/arm/boards/pm9g45/init.c           |  2 +-
 arch/arm/boards/qil-a926x/init.c        |  2 +-
 arch/arm/boards/sama5d3xek/init.c       |  2 +-
 arch/arm/boards/telit-evk-pro3/init.c   |  2 +-
 arch/arm/boards/tny-a926x/init.c        |  2 +-
 arch/arm/boards/usb-a926x/init.c        |  2 +-
 arch/arm/mach-at91/clock.c              | 10 ++--------
 arch/arm/mach-at91/generic.h            |  2 +-
 arch/arm/mach-at91/include/mach/board.h |  2 +-
 arch/arm/mach-at91/setup.c              | 12 +++++++-----
 23 files changed, 30 insertions(+), 34 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 2fee1ff..f095553 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -364,7 +364,7 @@ console_initcall(animeo_ip_console_init);
 
 static int animeo_ip_main_clock(void)
 {
-	at91_set_main_clock(18432000);
+	at91_initialize(18432000);
 	return 0;
 }
 pure_initcall(animeo_ip_main_clock);
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 2c8bf0e..279d819 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -194,7 +194,7 @@ console_initcall(at91rm9200ek_console_init);
 
 static int at91rm9200ek_main_clock(void)
 {
-	at91_set_main_clock(18432000);
+	at91_initialize(18432000);
 	return 0;
 }
 pure_initcall(at91rm9200ek_main_clock);
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 688ed99..8ae0942 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -281,7 +281,7 @@ console_initcall(at91sam9260ek_console_init);
 
 static int at91sam9260ek_main_clock(void)
 {
-	at91_set_main_clock(18432000);
+	at91_initialize(18432000);
 	return 0;
 }
 pure_initcall(at91sam9260ek_main_clock);
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 00fc745..88b48cb 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -418,7 +418,7 @@ console_initcall(at91sam9261ek_console_init);
 
 static int at91sam9261ek_main_clock(void)
 {
-	at91_set_main_clock(18432000);
+	at91_initialize(18432000);
 	return 0;
 }
 pure_initcall(at91sam9261ek_main_clock);
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index a889b5a..7011a94 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -291,7 +291,7 @@ console_initcall(at91sam9263ek_console_init);
 
 static int at91sam9263ek_main_clock(void)
 {
-	at91_set_main_clock(16367660);
+	at91_initialize(16367660);
 	return 0;
 }
 pure_initcall(at91sam9263ek_main_clock);
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 0ffbec2..0eb0f44 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -336,7 +336,7 @@ console_initcall(at91sam9m10g45ek_console_init);
 
 static int at91sam9m10g45ek_main_clock(void)
 {
-	at91_set_main_clock(12000000);
+	at91_initialize(12000000);
 	return 0;
 }
 pure_initcall(at91sam9m10g45ek_main_clock);
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index b75c51d..0452366 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -293,7 +293,7 @@ console_initcall(at91sam9m10ihd_console_init);
 
 static int at91sam9m10ihd_main_clock(void)
 {
-	at91_set_main_clock(12000000);
+	at91_initialize(12000000);
 	return 0;
 }
 pure_initcall(at91sam9m10ihd_main_clock);
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 779e4f7..eb21c51 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -344,7 +344,7 @@ console_initcall(at91sam9n12ek_console_init);
 
 static int at91sam9n12ek_main_clock(void)
 {
-	at91_set_main_clock(16000000);
+	at91_initialize(16000000);
 	return 0;
 }
 pure_initcall(at91sam9n12ek_main_clock);
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index c677e4d..e41cd53 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -338,7 +338,7 @@ console_initcall(at91sam9x5ek_console_init);
 
 static int at91sam9x5ek_main_clock(void)
 {
-	at91_set_main_clock(12000000);
+	at91_initialize(12000000);
 	return 0;
 }
 pure_initcall(at91sam9x5ek_main_clock);
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 8e992f4..1c76d4f 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -165,7 +165,7 @@ console_initcall(dss11_console_init);
 
 static int dss11_main_clock(void)
 {
-	at91_set_main_clock(18432000);
+	at91_initialize(18432000);
 	return 0;
 }
 pure_initcall(dss11_main_clock);
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index a666b9d..d13ef50 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -84,7 +84,7 @@ console_initcall(mmccpu_console_init);
 
 static int mmccpu_main_clock(void)
 {
-	at91_set_main_clock(18432000);
+	at91_initialize(18432000);
 	return 0;
 }
 pure_initcall(mmccpu_main_clock);
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 8c039b7..cced419 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -168,7 +168,7 @@ console_initcall(pm9261_console_init);
 
 static int pm9261_main_clock(void)
 {
-	at91_set_main_clock(18432000);
+	at91_initialize(18432000);
 	return 0;
 }
 pure_initcall(pm9261_main_clock);
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 3bc22f3..78ec9ce 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -153,7 +153,7 @@ console_initcall(pm9263_console_init);
 
 static int pm9263_main_clock(void)
 {
-	at91_set_main_clock(18432000);
+	at91_initialize(18432000);
 	return 0;
 }
 pure_initcall(pm9263_main_clock);
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 75fd8a4..caeec43 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -180,7 +180,7 @@ console_initcall(pm9g45_console_init);
 
 static int pm9g45_main_clock(void)
 {
-	at91_set_main_clock(12000000);
+	at91_initialize(12000000);
 	return 0;
 }
 pure_initcall(pm9g45_main_clock);
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 4192923..3ec7dba 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -250,7 +250,7 @@ static int qil_a9260_main_clock(void)
 		barebox_set_hostname("qil-a9260");
 	}
 
-	at91_set_main_clock(12000000);
+	at91_initialize(12000000);
 	return 0;
 }
 pure_initcall(qil_a9260_main_clock);
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 482c74a..312b319 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -439,7 +439,7 @@ console_initcall(at91sama5d3xek_console_init);
 
 static int at91sama5d3xek_main_clock(void)
 {
-	at91_set_main_clock(12000000);
+	at91_initialize(12000000);
 	return 0;
 }
 pure_initcall(at91sama5d3xek_main_clock);
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index 005d207..c077d3f 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -181,7 +181,7 @@ console_initcall(evk_console_init);
 
 static int evk_main_clock(void)
 {
-	at91_set_main_clock(6000000);
+	at91_initialize(6000000);
 	return 0;
 }
 pure_initcall(evk_main_clock);
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index e3dd784..91ee82e 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -267,7 +267,7 @@ console_initcall(tny_a9260_console_init);
 
 static int tny_a9260_main_clock(void)
 {
-	at91_set_main_clock(12000000);
+	at91_initialize(12000000);
 	return 0;
 }
 pure_initcall(tny_a9260_main_clock);
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index fd2603f..f1046ae 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -451,7 +451,7 @@ console_initcall(usb_a9260_console_init);
 
 static int usb_a9260_main_clock(void)
 {
-	at91_set_main_clock(12000000);
+	at91_initialize(12000000);
 	return 0;
 }
 pure_initcall(usb_a9260_main_clock);
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index a10d7f6..28f3e96 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -616,20 +616,14 @@ static void at91_upll_usbfs_clock_init(unsigned long main_clock)
 
 static int pll_overclock = 0;
 static u32 cpu_freq = 0;
-static unsigned long at91_main_clock = 0;
 
-void at91_set_main_clock(unsigned long rate)
-{
-	at91_main_clock = rate;
-}
-
-int at91_clock_init(void)
+int at91_clock_init(unsigned long rate)
 {
 	unsigned tmp, freq, mckr;
 	int i;
 	unsigned long main_clock;
 
-	main_clock = at91_main_clock;
+	main_clock = rate;
 
 	/*
 	 * When the bootloader initialized the main oscillator correctly,
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index a47bcb2..3c5f127 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -9,7 +9,7 @@
  */
 
  /* Clocks */
-extern int __init at91_clock_init(void);
+extern int __init at91_clock_init(unsigned long main_clock);
 
 static inline struct device_d *at91_add_rm9200_gpio(int id, resource_size_t start)
 {
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index aa0fdae..13cd465 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -30,7 +30,7 @@
 #include <linux/phy.h>
 #include <platform_data/macb.h>
 
-void at91_set_main_clock(unsigned long rate);
+void at91_initialize(unsigned long rate);
 
  /* USB Host */
 struct at91_usbh_data {
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 65d0588..852152d 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -214,7 +214,7 @@ const char *at91_get_soc_subtype(struct at91_socinfo *c)
 }
 EXPORT_SYMBOL(at91_get_soc_subtype);
 
-static int at91_detect(void)
+static void at91_detect(void)
 {
 	at91_soc_initdata.type = AT91_SOC_NONE;
 	at91_soc_initdata.subtype = AT91_SOC_SUBTYPE_NONE;
@@ -233,16 +233,18 @@ static int at91_detect(void)
 
 	if (!at91_soc_is_enabled())
 		panic("AT91: Soc not enabled");
+}
+
+void at91_initialize(unsigned long main_clock)
+{
+	at91_detect();
 
 	/* Init clock subsystem */
-	at91_clock_init();
+	at91_clock_init(main_clock);
 
 	if (at91_boot_soc.init)
 		at91_boot_soc.init();
-
-	return 0;
 }
-postcore_initcall(at91_detect);
 
 static int at91_soc_device(void)
 {
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
