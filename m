Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f46.google.com ([74.125.83.46])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6IjG-0000pA-Vb
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 10:41:19 +0000
Received: by mail-ee0-f46.google.com with SMTP id e49so1593935eek.33
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 02:41:17 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 15 Feb 2013 11:41:10 +0100
Message-Id: <1360924870-13979-3-git-send-email-fabio.porcedda@gmail.com>
In-Reply-To: <1360924870-13979-1-git-send-email-fabio.porcedda@gmail.com>
References: <1360924870-13979-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH 2/2] at91sam9260/9g20ek: remove #ifdef for
 ek_usb_add_device_mci()
To: barebox@lists.infradead.org

Remove #ifdef for ek_usb_add_device_mci() because there is already
the #ifdef inside at91_add_device_mci(), this way the compiler can check
always the code without any penality.

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index bb0025d..e6de72f 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -158,7 +158,6 @@ static void at91sam9260ek_phy_reset(void)
 /*
  * MCI (SD/MMC)
  */
-#if defined(CONFIG_MCI_ATMEL)
 static struct atmel_mci_platform_data __initdata ek_mci_data = {
 	.bus_width	= 4,
 	.slot_b		= 1,
@@ -171,9 +170,6 @@ static void ek_usb_add_device_mci(void)
 
 	at91_add_device_mci(0, &ek_mci_data);
 }
-#else
-static void ek_usb_add_device_mci(void) {}
-#endif
 
 /*
  * USB Host port
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
