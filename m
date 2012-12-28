Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRK-0004IS-3y
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:18:03 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id EB322FF974B
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:14 +0100
Message-Id: <1356722174-22598-13-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 13/13] at91: drop AT91_BASE_PIOx for soc specific one for none
 boot code
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200.c  |    8 ++++----
 arch/arm/mach-at91/at91sam9260.c |    6 +++---
 arch/arm/mach-at91/at91sam9261.c |    6 +++---
 arch/arm/mach-at91/at91sam9263.c |   10 +++++-----
 arch/arm/mach-at91/at91sam9g45.c |   10 +++++-----
 arch/arm/mach-at91/at91sam9n12.c |    8 ++++----
 arch/arm/mach-at91/at91sam9x5.c  |    8 ++++----
 7 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index d3aedea..8eeaa55 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -232,10 +232,10 @@ static void __init at91rm9200_initialize(void)
 	at91rm9200_register_clocks();
 
 	/* Register GPIO subsystem */
-	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
-	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
-	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
-	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
+	at91_add_rm9200_gpio(0, AT91RM9200_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91RM9200_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91RM9200_BASE_PIOC);
+	at91_add_rm9200_gpio(3, AT91RM9200_BASE_PIOD);
 }
 
 AT91_SOC_START(rm9200)
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 2a06f0d..fa65fe7 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -231,9 +231,9 @@ static void at91sam9260_initialize(void)
 	at91sam9260_register_clocks();
 
 	/* Register GPIO subsystem */
-	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
-	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
-	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
+	at91_add_rm9200_gpio(0, AT91SAM9260_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91SAM9260_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91SAM9260_BASE_PIOC);
 
 	at91_add_pit(AT91SAM9260_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9260_BASE_SMC, 0x200);
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index c801d9d..edac177 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -223,9 +223,9 @@ static void at91sam9261_initialize(void)
 	at91sam9261_register_clocks();
 
 	/* Register GPIO subsystem */
-	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
-	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
-	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
+	at91_add_rm9200_gpio(0, AT91SAM9261_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91SAM9261_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91SAM9261_BASE_PIOC);
 
 	at91_add_pit(AT91SAM9261_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9261_BASE_SMC, 0x200);
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index 42777d0..eeea1ce 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -240,11 +240,11 @@ static void at91sam9263_initialize(void)
 	at91sam9263_register_clocks();
 
 	/* Register GPIO subsystem */
-	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
-	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
-	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
-	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
-	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
+	at91_add_rm9200_gpio(0, AT91SAM9263_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91SAM9263_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91SAM9263_BASE_PIOC);
+	at91_add_rm9200_gpio(3, AT91SAM9263_BASE_PIOD);
+	at91_add_rm9200_gpio(4, AT91SAM9263_BASE_PIOE);
 
 	at91_add_pit(AT91SAM9263_BASE_PIT);
 	at91_add_sam9_smc(0, AT91SAM9263_BASE_SMC0, 0x200);
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 7ca1f3b..7118efe 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -252,11 +252,11 @@ static void at91sam9g45_initialize(void)
 	at91sam9g45_register_clocks();
 
 	/* Register GPIO subsystem */
-	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
-	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
-	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
-	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
-	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
+	at91_add_rm9200_gpio(0, AT91SAM9G45_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91SAM9G45_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91SAM9G45_BASE_PIOC);
+	at91_add_rm9200_gpio(3, AT91SAM9G45_BASE_PIOD);
+	at91_add_rm9200_gpio(4, AT91SAM9G45_BASE_PIOE);
 
 	at91_add_pit(AT91SAM9G45_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9G45_BASE_SMC, 0x200);
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index 967885a..c177975 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -213,10 +213,10 @@ static void at91sam9n12_initialize(void)
 	at91sam9n12_register_clocks();
 
 	/* Register GPIO subsystem */
-	at91_add_sam9x5_gpio(0, AT91_BASE_PIOA);
-	at91_add_sam9x5_gpio(1, AT91_BASE_PIOB);
-	at91_add_sam9x5_gpio(2, AT91_BASE_PIOC);
-	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
+	at91_add_sam9x5_gpio(0, AT91SAM9N12_BASE_PIOA);
+	at91_add_sam9x5_gpio(1, AT91SAM9N12_BASE_PIOB);
+	at91_add_sam9x5_gpio(2, AT91SAM9N12_BASE_PIOC);
+	at91_add_sam9x5_gpio(3, AT91SAM9N12_BASE_PIOD);
 
 	at91_add_pit(AT91SAM9N12_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9N12_BASE_SMC, 0x200);
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 090d9dd..5d43423 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -298,10 +298,10 @@ static void at91sam9x5_initialize(void)
 	at91sam9x5_register_clocks();
 
 	/* Register GPIO subsystem */
-	at91_add_sam9x5_gpio(0, AT91_BASE_PIOA);
-	at91_add_sam9x5_gpio(1, AT91_BASE_PIOB);
-	at91_add_sam9x5_gpio(2, AT91_BASE_PIOC);
-	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
+	at91_add_sam9x5_gpio(0, AT91SAM9X5_BASE_PIOA);
+	at91_add_sam9x5_gpio(1, AT91SAM9X5_BASE_PIOB);
+	at91_add_sam9x5_gpio(2, AT91SAM9X5_BASE_PIOC);
+	at91_add_sam9x5_gpio(3, AT91SAM9X5_BASE_PIOD);
 
 	at91_add_pit(AT91SAM9X5_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9X5_BASE_SMC, 0x200);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
