Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qL-0000MI-MR
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:37 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 550FCDC3792
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:27 +0100
Message-Id: <1325344898-7076-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: [PATCH 01/12] atmel: reference boards and Caloa boards bbt option
 enabled
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c    |    1 +
 arch/arm/boards/at91sam9261ek/init.c    |    1 +
 arch/arm/boards/at91sam9263ek/init.c    |    1 +
 arch/arm/boards/at91sam9m10g45ek/init.c |    1 +
 arch/arm/boards/usb-a926x/init.c        |    1 +
 5 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index dbd6541..b10d0dc 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -71,6 +71,7 @@ static struct atmel_nand_data nand_pdata = {
 #else
 	.bus_width_16	= 0,
 #endif
+	.on_flash_bbt	= 1,
 };
 
 static struct sam9_smc_config ek_9260_nand_smc_config = {
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 0854eea..8b192b2 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -50,6 +50,7 @@ static struct atmel_nand_data nand_pdata = {
 #else
 	.bus_width_16	= 0,
 #endif
+	.on_flash_bbt	= 1,
 };
 
 static struct sam9_smc_config ek_nand_smc_config = {
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index bb564d7..d7b9afe 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -51,6 +51,7 @@ static struct atmel_nand_data nand_pdata = {
 #else
 	.bus_width_16	= 0,
 #endif
+	.on_flash_bbt	= 1,
 };
 
 static struct sam9_smc_config ek_nand_smc_config = {
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 5fdc960..eff2769 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -72,6 +72,7 @@ static struct atmel_nand_data nand_pdata = {
 #else
 	.bus_width_16	= 0,
 #endif
+	.on_flash_bbt	= 1,
 };
 
 static struct sam9_smc_config ek_nand_smc_config = {
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 20af4b0..41daab8 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -57,6 +57,7 @@ static struct atmel_nand_data nand_pdata = {
 /*	.det_pin	= ... not connected */
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
+	.on_flash_bbt	= 1,
 };
 
 static struct sam9_smc_config usb_a9260_nand_smc_config = {
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
