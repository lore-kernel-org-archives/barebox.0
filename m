Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzVJ8-0007MG-0W
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 16:42:15 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 05199FFA5A5
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 17:52:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 17:40:54 +0100
Message-Id: <1359304854-12641-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359304854-12641-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130127163903.GN26329@game.jcrosoft.org>
 <1359304854-12641-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] at91: Atmel ref board sam{9x5/9n12/m109g45} EK and
 Ronetix pm9g45 autodetect ddr size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10g45ek/init.c |    2 +-
 arch/arm/boards/at91sam9m10ihd/init.c   |    2 +-
 arch/arm/boards/at91sam9n12ek/init.c    |    2 +-
 arch/arm/boards/at91sam9x5ek/init.c     |    2 +-
 arch/arm/boards/pm9g45/init.c           |    2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 214de96..a32e6cc 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -230,7 +230,7 @@ static void ek_add_device_usb(void) {}
 
 static int at91sam9m10g45ek_mem_init(void)
 {
-	at91_add_device_sdram(128 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index beede0b..32f6a8c 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -167,7 +167,7 @@ static void ek_add_device_usb(void)
 
 static int at91sam9m10g45ek_mem_init(void)
 {
-	at91_add_device_sdram(128 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 310f418..57ab607 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -228,7 +228,7 @@ static void __init ek_add_device_buttons(void)
 
 static int at91sam9n12ek_mem_init(void)
 {
-	at91_add_device_sdram(128 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 5e11241..29224e2 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -238,7 +238,7 @@ static void __init ek_add_led(void)
 
 static int at91sam9x5ek_mem_init(void)
 {
-	at91_add_device_sdram(128 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 8e29f62..db1c551 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -137,7 +137,7 @@ static void pm9g45_add_device_eth(void)
 
 static int pm9g45_mem_init(void)
 {
-	at91_add_device_sdram(128 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
