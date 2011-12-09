Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYyct-0000Gz-Lq
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 11:28:28 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYycn-00026Q-O3
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:28:21 +0100
Received: from mgr by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYycn-0002BT-Mg
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:28:21 +0100
Date: Fri, 9 Dec 2011 12:28:21 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20111209112821.GD8203@pengutronix.de>
References: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] at91sam9260_devices: properly set slot id
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-at91/at91sam9260_devices.c |   34 +++++++++++++++++++++--------
 1 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 9d1acda..177f770 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -261,18 +261,32 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 	/* CLK */
 	at91_set_A_periph(AT91_PIN_PA8, 0);
 
-	/* CMD */
-	at91_set_A_periph(AT91_PIN_PA7, 1);
-
-	/* DAT0, maybe DAT1..DAT3 */
-	at91_set_A_periph(AT91_PIN_PA6, 1);
-	if (data->bus_width == 4) {
-		at91_set_A_periph(AT91_PIN_PA9, 1);
-		at91_set_A_periph(AT91_PIN_PA10, 1);
-		at91_set_A_periph(AT91_PIN_PA11, 1);
+
+	if (mmc_id == 0) {
+		/* CMD */
+		at91_set_A_periph(AT91_PIN_PA7, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_A_periph(AT91_PIN_PA6, 1);
+		if (data->bus_width == 4) {
+			at91_set_A_periph(AT91_PIN_PA9, 1);
+			at91_set_A_periph(AT91_PIN_PA10, 1);
+			at91_set_A_periph(AT91_PIN_PA11, 1);
+		}
+	} else if (mmc_id == 1) {
+		/* CMD */
+		at91_set_B_periph(AT91_PIN_PA1, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_B_periph(AT91_PIN_PA0, 1);
+		if (data->bus_width == 4) {
+			at91_set_B_periph(AT91_PIN_PA3, 1);
+			at91_set_B_periph(AT91_PIN_PA4, 1);
+			at91_set_B_periph(AT91_PIN_PA5, 1);
+		}
 	}
 
-	dev = add_generic_device("atmel_mci", 0, NULL, AT91SAM9260_BASE_MCI, SZ_16K,
+	dev = add_generic_device("atmel_mci", mmc_id, NULL, AT91SAM9260_BASE_MCI, SZ_16K,
 			   IORESOURCE_MEM, data);
 }
 #else
-- 
1.7.7.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
