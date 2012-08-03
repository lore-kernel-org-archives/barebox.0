Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxBkY-0008T1-NP
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 06:52:44 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 51551FFACFD
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 08:58:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 08:52:40 +0200
Message-Id: <1343976760-2400-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343976760-2400-1-git-send-email-plagnioj@jcrosoft.com>
References: <1343976760-2400-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] at91: Calao and Atmel reboard
 sam{9260/9g20/9261/9g10/9263}ek autodetect sdram size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c |    2 +-
 arch/arm/boards/at91sam9261ek/init.c |    2 +-
 arch/arm/boards/at91sam9263ek/init.c |    2 +-
 arch/arm/boards/qil-a9260/init.c     |    6 +-----
 arch/arm/boards/tny-a926x/init.c     |    2 +-
 arch/arm/boards/usb-a926x/init.c     |    6 +-----
 6 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index daadf94..826f00e 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -234,7 +234,7 @@ static void __init ek_add_led(void)
 
 static int at91sam9260ek_mem_init(void)
 {
-	at91_add_device_sdram(64 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index b0cab5b..5abe87c 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -236,7 +236,7 @@ static void ek_device_add_leds(void) {}
 
 static int at91sam9261ek_mem_init(void)
 {
-	at91_add_device_sdram(64 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 68f4bfc..573fac4 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -166,7 +166,7 @@ static void __init ek_add_device_buttons(void)
 
 static int at91sam9263ek_mem_init(void)
 {
-	at91_add_device_sdram(64 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
index 305d733..ee204fb 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -150,11 +150,7 @@ static void __init ek_add_led(void)
 
 static int qil_a9260_mem_init(void)
 {
-#ifdef CONFIG_AT91_HAVE_SRAM_128M
-	at91_add_device_sdram(128 * 1024 * 1024);
-#else
-	at91_add_device_sdram(64 * 1024 * 1024);
-#endif
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 2cb7da7..d58132a 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -171,7 +171,7 @@ static void __init ek_add_device_udc(void)
 
 static int tny_a9260_mem_init(void)
 {
-	at91_add_device_sdram(64 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 824a38a..4d5fdca 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -203,11 +203,7 @@ static void __init ek_add_led(void)
 
 static int usb_a9260_mem_init(void)
 {
-#ifdef CONFIG_AT91_HAVE_SRAM_128M
-	at91_add_device_sdram(128 * 1024 * 1024);
-#else
-	at91_add_device_sdram(64 * 1024 * 1024);
-#endif
+	at91_add_device_sdram(0);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
