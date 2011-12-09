Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYyd1-0000Hl-Tz
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 11:28:36 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYycx-000277-C2
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:28:31 +0100
Received: from mgr by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYycx-0002Bb-An
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:28:31 +0100
Date: Fri, 9 Dec 2011 12:28:31 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20111209112831.GE8203@pengutronix.de>
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
Subject: [PATCH 4/7] at91sam9260_devices: add flag to change ETX{2,3}
 pincfg on add_device_eth
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-at91/at91sam9260_devices.c |    9 +++++++--
 1 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 177f770..be1fdd9 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -63,8 +63,13 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
 		at91_set_B_periph(AT91_PIN_PA25, 0);	/* ERX2 */
 		at91_set_B_periph(AT91_PIN_PA26, 0);	/* ERX3 */
 		at91_set_B_periph(AT91_PIN_PA27, 0);	/* ERXCK */
-		at91_set_B_periph(AT91_PIN_PA23, 0);	/* ETX2 */
-		at91_set_B_periph(AT91_PIN_PA24, 0);	/* ETX3 */
+		if (data->flags & AT91SAM_ETX2_ETX3_ALTERNATIVE) {
+			at91_set_B_periph(AT91_PIN_PA10, 0);	/* ETX2 */
+			at91_set_B_periph(AT91_PIN_PA11, 0);	/* ETX3 */
+		} else {
+			at91_set_B_periph(AT91_PIN_PA23, 0);	/* ETX2 */
+			at91_set_B_periph(AT91_PIN_PA24, 0);	/* ETX3 */
+		}
 		at91_set_B_periph(AT91_PIN_PA22, 0);	/* ETXER */
 	}
 
-- 
1.7.7.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
