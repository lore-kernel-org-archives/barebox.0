Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwVt3-0005Ez-3Z
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 11:15:17 +0000
Received: from mail631.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 697FFDC5739
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 13:14:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  9 Jul 2013 13:14:50 +0200
Message-Id: <1373368492-4627-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] ARM: at91: move main clock define to C
To: barebox@lists.infradead.org

This will allow to drop the config.h and switch to multi board support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/config.h        |  2 --
 arch/arm/boards/animeo_ip/init.c          |  7 +++++++
 arch/arm/boards/at91rm9200ek/config.h     |  2 --
 arch/arm/boards/at91rm9200ek/init.c       |  7 +++++++
 arch/arm/boards/at91sam9260ek/config.h    |  2 --
 arch/arm/boards/at91sam9260ek/init.c      |  7 +++++++
 arch/arm/boards/at91sam9261ek/config.h    |  2 --
 arch/arm/boards/at91sam9261ek/init.c      |  7 +++++++
 arch/arm/boards/at91sam9263ek/config.h    |  2 --
 arch/arm/boards/at91sam9263ek/init.c      |  7 +++++++
 arch/arm/boards/at91sam9m10g45ek/config.h |  2 --
 arch/arm/boards/at91sam9m10g45ek/init.c   |  7 +++++++
 arch/arm/boards/at91sam9m10ihd/config.h   |  2 --
 arch/arm/boards/at91sam9m10ihd/init.c     |  7 +++++++
 arch/arm/boards/at91sam9n12ek/config.h    |  2 --
 arch/arm/boards/at91sam9n12ek/init.c      |  7 +++++++
 arch/arm/boards/at91sam9x5ek/config.h     |  2 --
 arch/arm/boards/at91sam9x5ek/init.c       |  7 +++++++
 arch/arm/boards/dss11/config.h            |  2 --
 arch/arm/boards/dss11/init.c              |  7 +++++++
 arch/arm/boards/mmccpu/config.h           |  2 --
 arch/arm/boards/mmccpu/init.c             |  7 +++++++
 arch/arm/boards/pm9261/config.h           |  2 --
 arch/arm/boards/pm9261/init.c             |  7 +++++++
 arch/arm/boards/pm9263/config.h           |  2 --
 arch/arm/boards/pm9263/init.c             |  7 +++++++
 arch/arm/boards/pm9g45/config.h           |  2 --
 arch/arm/boards/pm9g45/init.c             |  7 +++++++
 arch/arm/boards/qil-a926x/config.h        |  2 --
 arch/arm/boards/qil-a926x/init.c          |  7 +++++++
 arch/arm/boards/sama5d3xek/config.h       |  2 --
 arch/arm/boards/sama5d3xek/init.c         |  7 +++++++
 arch/arm/boards/telit-evk-pro3/config.h   |  2 --
 arch/arm/boards/telit-evk-pro3/init.c     |  7 +++++++
 arch/arm/boards/tny-a926x/config.h        |  2 --
 arch/arm/boards/tny-a926x/init.c          |  7 +++++++
 arch/arm/boards/usb-a926x/config.h        |  2 --
 arch/arm/boards/usb-a926x/init.c          |  7 +++++++
 arch/arm/mach-at91/at91rm9200.c           |  3 ---
 arch/arm/mach-at91/at91sam9260.c          |  3 ---
 arch/arm/mach-at91/at91sam9261.c          |  3 ---
 arch/arm/mach-at91/at91sam9263.c          |  3 ---
 arch/arm/mach-at91/at91sam9g45.c          |  3 ---
 arch/arm/mach-at91/at91sam9n12.c          |  3 ---
 arch/arm/mach-at91/at91sam9x5.c           |  3 ---
 arch/arm/mach-at91/clock.c                | 11 +++++++++--
 arch/arm/mach-at91/generic.h              |  2 +-
 arch/arm/mach-at91/include/mach/board.h   |  2 ++
 arch/arm/mach-at91/sama5d3.c              |  3 ---
 arch/arm/mach-at91/setup.c                |  4 ++++
 50 files changed, 149 insertions(+), 65 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/config.h b/arch/arm/boards/animeo_ip/config.h
index 006820c..ca15136 100644
--- a/arch/arm/boards/animeo_ip/config.h
+++ b/arch/arm/boards/animeo_ip/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 07525b7..d8f9796 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -249,3 +249,10 @@ static int animeo_ip_console_init(void)
 	return 0;
 }
 console_initcall(animeo_ip_console_init);
+
+static int animeo_ip_main_clock(void)
+{
+	at91_set_main_clock(18432000);
+	return 0;
+}
+pure_initcall(animeo_ip_main_clock);
diff --git a/arch/arm/boards/at91rm9200ek/config.h b/arch/arm/boards/at91rm9200ek/config.h
index b630a67..070c9a1 100644
--- a/arch/arm/boards/at91rm9200ek/config.h
+++ b/arch/arm/boards/at91rm9200ek/config.h
@@ -1,8 +1,6 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
-
 #define MASTER_PLL_MUL		39
 #define MASTER_PLL_DIV		4
 
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 30aaae2..cd8a165 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -187,3 +187,10 @@ static int at91rm9200ek_console_init(void)
 	return 0;
 }
 console_initcall(at91rm9200ek_console_init);
+
+static int at91rm9200ek_main_clock(void)
+{
+	at91_set_main_clock(18432000);
+	return 0;
+}
+pure_initcall(at91rm9200ek_main_clock);
diff --git a/arch/arm/boards/at91sam9260ek/config.h b/arch/arm/boards/at91sam9260ek/config.h
index 006820c..ca15136 100644
--- a/arch/arm/boards/at91sam9260ek/config.h
+++ b/arch/arm/boards/at91sam9260ek/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 4e4a69d..d2ace1d 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -269,3 +269,10 @@ static int at91sam9260ek_console_init(void)
 	return 0;
 }
 console_initcall(at91sam9260ek_console_init);
+
+static int at91sam9260ek_main_clock(void)
+{
+	at91_set_main_clock(18432000);
+	return 0;
+}
+pure_initcall(at91sam9260ek_main_clock);
diff --git a/arch/arm/boards/at91sam9261ek/config.h b/arch/arm/boards/at91sam9261ek/config.h
index 006820c..ca15136 100644
--- a/arch/arm/boards/at91sam9261ek/config.h
+++ b/arch/arm/boards/at91sam9261ek/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 177bb34..91640f9 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -406,3 +406,10 @@ static int at91sam9261ek_console_init(void)
 }
 
 console_initcall(at91sam9261ek_console_init);
+
+static int at91sam9261ek_main_clock(void)
+{
+	at91_set_main_clock(18432000);
+	return 0;
+}
+pure_initcall(at91sam9261ek_main_clock);
diff --git a/arch/arm/boards/at91sam9263ek/config.h b/arch/arm/boards/at91sam9263ek/config.h
index cc12040..ca15136 100644
--- a/arch/arm/boards/at91sam9263ek/config.h
+++ b/arch/arm/boards/at91sam9263ek/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		16367660	/* 16.367 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index a731d58..ebc1697 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -284,3 +284,10 @@ static int at91sam9263ek_console_init(void)
 }
 
 console_initcall(at91sam9263ek_console_init);
+
+static int at91sam9263ek_main_clock(void)
+{
+	at91_set_main_clock(16367660);
+	return 0;
+}
+pure_initcall(at91sam9263ek_main_clock);
diff --git a/arch/arm/boards/at91sam9m10g45ek/config.h b/arch/arm/boards/at91sam9m10g45ek/config.h
index ac3114d..ca15136 100644
--- a/arch/arm/boards/at91sam9m10g45ek/config.h
+++ b/arch/arm/boards/at91sam9m10g45ek/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		12000000	/* from 12 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index d9a2f1f..5aa8695 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -329,3 +329,10 @@ static int at91sam9m10g45ek_console_init(void)
 	return 0;
 }
 console_initcall(at91sam9m10g45ek_console_init);
+
+static int at91sam9m10g45ek_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(at91sam9m10g45ek_main_clock);
diff --git a/arch/arm/boards/at91sam9m10ihd/config.h b/arch/arm/boards/at91sam9m10ihd/config.h
index ac3114d..ca15136 100644
--- a/arch/arm/boards/at91sam9m10ihd/config.h
+++ b/arch/arm/boards/at91sam9m10ihd/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		12000000	/* from 12 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index fe77b3a..9135b0c 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -286,3 +286,10 @@ static int at91sam9m10ihd_console_init(void)
 	return 0;
 }
 console_initcall(at91sam9m10ihd_console_init);
+
+static int at91sam9m10ihd_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(at91sam9m10ihd_main_clock);
diff --git a/arch/arm/boards/at91sam9n12ek/config.h b/arch/arm/boards/at91sam9n12ek/config.h
index 5779a47..ca15136 100644
--- a/arch/arm/boards/at91sam9n12ek/config.h
+++ b/arch/arm/boards/at91sam9n12ek/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		16000000	/* 16 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index a181666..0267a7d 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -337,3 +337,10 @@ static int at91sam9n12ek_console_init(void)
 	return 0;
 }
 console_initcall(at91sam9n12ek_console_init);
+
+static int at91sam9n12ek_main_clock(void)
+{
+	at91_set_main_clock(16000000);
+	return 0;
+}
+pure_initcall(at91sam9n12ek_main_clock);
diff --git a/arch/arm/boards/at91sam9x5ek/config.h b/arch/arm/boards/at91sam9x5ek/config.h
index d971810..ca15136 100644
--- a/arch/arm/boards/at91sam9x5ek/config.h
+++ b/arch/arm/boards/at91sam9x5ek/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 74cc7ab..3d4d95b 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -331,3 +331,10 @@ static int at91sam9x5ek_console_init(void)
 	return 0;
 }
 console_initcall(at91sam9x5ek_console_init);
+
+static int at91sam9x5ek_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(at91sam9x5ek_main_clock);
diff --git a/arch/arm/boards/dss11/config.h b/arch/arm/boards/dss11/config.h
index 006820c..ca15136 100644
--- a/arch/arm/boards/dss11/config.h
+++ b/arch/arm/boards/dss11/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index b33cd12..e53ae88 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -158,3 +158,10 @@ static int dss11_console_init(void)
 	return 0;
 }
 console_initcall(dss11_console_init);
+
+static int dss11_main_clock(void)
+{
+	at91_set_main_clock(18432000);
+	return 0;
+}
+pure_initcall(dss11_main_clock);
diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
index c896a93..ca15136 100644
--- a/arch/arm/boards/mmccpu/config.h
+++ b/arch/arm/boards/mmccpu/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		18432000
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index b7a94cc..1569487 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -77,3 +77,10 @@ static int mmccpu_console_init(void)
 }
 
 console_initcall(mmccpu_console_init);
+
+static int mmccpu_main_clock(void)
+{
+	at91_set_main_clock(18432000);
+	return 0;
+}
+pure_initcall(mmccpu_main_clock);
diff --git a/arch/arm/boards/pm9261/config.h b/arch/arm/boards/pm9261/config.h
index 006820c..ca15136 100644
--- a/arch/arm/boards/pm9261/config.h
+++ b/arch/arm/boards/pm9261/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 207092c..51dc351 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -161,3 +161,10 @@ static int pm9261_console_init(void)
 	return 0;
 }
 console_initcall(pm9261_console_init);
+
+static int pm9261_main_clock(void)
+{
+	at91_set_main_clock(18432000);
+	return 0;
+}
+pure_initcall(pm9261_main_clock);
diff --git a/arch/arm/boards/pm9263/config.h b/arch/arm/boards/pm9263/config.h
index 9066613..ca15136 100644
--- a/arch/arm/boards/pm9263/config.h
+++ b/arch/arm/boards/pm9263/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK	18432000
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index ff405bd..559e321 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -146,3 +146,10 @@ static int pm9263_console_init(void)
 }
 
 console_initcall(pm9263_console_init);
+
+static int pm9263_main_clock(void)
+{
+	at91_set_main_clock(18432000);
+	return 0;
+}
+pure_initcall(pm9263_main_clock);
diff --git a/arch/arm/boards/pm9g45/config.h b/arch/arm/boards/pm9g45/config.h
index ac3114d..ca15136 100644
--- a/arch/arm/boards/pm9g45/config.h
+++ b/arch/arm/boards/pm9g45/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		12000000	/* from 12 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index c3886bb..9bb1f1f 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -173,3 +173,10 @@ static int pm9g45_console_init(void)
 	return 0;
 }
 console_initcall(pm9g45_console_init);
+
+static int pm9g45_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(pm9g45_main_clock);
diff --git a/arch/arm/boards/qil-a926x/config.h b/arch/arm/boards/qil-a926x/config.h
index d971810..ca15136 100644
--- a/arch/arm/boards/qil-a926x/config.h
+++ b/arch/arm/boards/qil-a926x/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 504abc6..58ab386 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -238,3 +238,10 @@ static int qil_a9260_console_init(void)
 }
 console_initcall(qil_a9260_console_init);
 #endif
+
+static int qil_a9260_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(qil_a9260_main_clock);
diff --git a/arch/arm/boards/sama5d3xek/config.h b/arch/arm/boards/sama5d3xek/config.h
index d971810..ca15136 100644
--- a/arch/arm/boards/sama5d3xek/config.h
+++ b/arch/arm/boards/sama5d3xek/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 743b907..6aae167 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -432,3 +432,10 @@ static int at91sama5d3xek_console_init(void)
 	return 0;
 }
 console_initcall(at91sama5d3xek_console_init);
+
+static int at91sama5d3xek_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(at91sama5d3xek_main_clock);
diff --git a/arch/arm/boards/telit-evk-pro3/config.h b/arch/arm/boards/telit-evk-pro3/config.h
index 7aeff30..ca15136 100644
--- a/arch/arm/boards/telit-evk-pro3/config.h
+++ b/arch/arm/boards/telit-evk-pro3/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		6000000		/*  6.000 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index 9900dd1..b933f9f 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -174,3 +174,10 @@ static int evk_console_init(void)
 	return 0;
 }
 console_initcall(evk_console_init);
+
+static int evk_main_clock(void)
+{
+	at91_set_main_clock(6000000);
+	return 0;
+}
+pure_initcall(evk_main_clock);
diff --git a/arch/arm/boards/tny-a926x/config.h b/arch/arm/boards/tny-a926x/config.h
index d971810..ca15136 100644
--- a/arch/arm/boards/tny-a926x/config.h
+++ b/arch/arm/boards/tny-a926x/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 43c227b..cdfe046 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -252,3 +252,10 @@ static int tny_a9260_console_init(void)
 	return 0;
 }
 console_initcall(tny_a9260_console_init);
+
+static int tny_a9260_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(tny_a9260_main_clock);
diff --git a/arch/arm/boards/usb-a926x/config.h b/arch/arm/boards/usb-a926x/config.h
index d971810..ca15136 100644
--- a/arch/arm/boards/usb-a926x/config.h
+++ b/arch/arm/boards/usb-a926x/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 0c89d39..74d4867 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -436,3 +436,10 @@ static int usb_a9260_console_init(void)
 }
 console_initcall(usb_a9260_console_init);
 #endif
+
+static int usb_a9260_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(usb_a9260_main_clock);
diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index 8eeaa55..d740463 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -225,9 +225,6 @@ static void __init at91rm9200_register_clocks(void)
  * -------------------------------------------------------------------- */
 static void __init at91rm9200_initialize(void)
 {
-	/* Init clock subsystem */
-	at91_clock_init(AT91_MAIN_CLOCK);
-
 	/* Register the processor-specific clocks */
 	at91rm9200_register_clocks();
 
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index fa65fe7..e3c2996 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -224,9 +224,6 @@ static void __init at91sam9260_register_clocks(void)
 
 static void at91sam9260_initialize(void)
 {
-	/* Init clock subsystem */
-	at91_clock_init(AT91_MAIN_CLOCK);
-
 	/* Register the processor-specific clocks */
 	at91sam9260_register_clocks();
 
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index edac177..c992f71 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -216,9 +216,6 @@ static void at91sam9261_register_clocks(void)
 
 static void at91sam9261_initialize(void)
 {
-	/* Init clock subsystem */
-	at91_clock_init(AT91_MAIN_CLOCK);
-
 	/* Register the processor-specific clocks */
 	at91sam9261_register_clocks();
 
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index 49d280d..db4a705 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -234,9 +234,6 @@ static void __init at91sam9263_register_clocks(void)
 
 static void at91sam9263_initialize(void)
 {
-	/* Init clock subsystem */
-	at91_clock_init(AT91_MAIN_CLOCK);
-
 	/* Register the processor-specific clocks */
 	at91sam9263_register_clocks();
 
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index deb9b62..9a50deb 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -247,9 +247,6 @@ static void __init at91sam9g45_register_clocks(void)
 
 static void at91sam9g45_initialize(void)
 {
-	/* Init clock subsystem */
-	at91_clock_init(AT91_MAIN_CLOCK);
-
 	/* Register the processor-specific clocks */
 	at91sam9g45_register_clocks();
 
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index e5aabd1..2a825b4 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -207,9 +207,6 @@ static void __init at91sam9n12_register_clocks(void)
 
 static void at91sam9n12_initialize(void)
 {
-	/* Init clock subsystem */
-	at91_clock_init(AT91_MAIN_CLOCK);
-
 	/* Register the processor-specific clocks */
 	at91sam9n12_register_clocks();
 
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 01eac18..9ddd592 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -293,9 +293,6 @@ static void __init at91sam9x5_register_clocks(void)
 
 static void at91sam9x5_initialize(void)
 {
-	/* Init clock subsystem */
-	at91_clock_init(AT91_MAIN_CLOCK);
-
 	/* Register the processor-specific clocks */
 	at91sam9x5_register_clocks();
 
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 296f5d5..a10d7f6 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -616,13 +616,20 @@ static void at91_upll_usbfs_clock_init(unsigned long main_clock)
 
 static int pll_overclock = 0;
 static u32 cpu_freq = 0;
+static unsigned long at91_main_clock = 0;
 
-int at91_clock_init(unsigned long main_clock)
+void at91_set_main_clock(unsigned long rate)
+{
+	at91_main_clock = rate;
+}
+
+int at91_clock_init(void)
 {
 	unsigned tmp, freq, mckr;
 	int i;
+	unsigned long main_clock;
 
-
+	main_clock = at91_main_clock;
 
 	/*
 	 * When the bootloader initialized the main oscillator correctly,
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index a19c1c5..deba019 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -9,7 +9,7 @@
  */
 
  /* Clocks */
-extern int __init at91_clock_init(unsigned long main_clock);
+extern int __init at91_clock_init(void);
 
 static inline struct device_d *at91_add_rm9200_gpio(int id, resource_size_t start)
 {
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 3ecc603..d695020 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -30,6 +30,8 @@
 #include <linux/phy.h>
 #include <platform_data/macb.h>
 
+void at91_set_main_clock(unsigned long rate);
+
  /* USB Host */
 struct at91_usbh_data {
 	u8		ports;		/* number of ports on root hub */
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index 0eec696..aa681aa 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -375,9 +375,6 @@ static void __init sama5d3_register_clocks(void)
 
 static void sama5d3_initialize(void)
 {
-	/* Init clock subsystem */
-	at91_clock_init(AT91_MAIN_CLOCK);
-
 	/* Register the processor-specific clocks */
 	sama5d3_register_clocks();
 
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 0444a5f..65d0588 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -14,6 +14,7 @@
 #include <mach/at91_dbgu.h>
 
 #include "soc.h"
+#include "generic.h"
 
 struct at91_init_soc __initdata at91_boot_soc;
 
@@ -233,6 +234,9 @@ static int at91_detect(void)
 	if (!at91_soc_is_enabled())
 		panic("AT91: Soc not enabled");
 
+	/* Init clock subsystem */
+	at91_clock_init();
+
 	if (at91_boot_soc.init)
 		at91_boot_soc.init();
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
