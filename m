Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzSmM-0001wW-JT
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 14:00:15 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 45320DC0ABC
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 15:10:02 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 14:58:50 +0100
Message-Id: <1359295130-31690-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359295130-31690-1-git-send-email-plagnioj@jcrosoft.com>
References: <1359295130-31690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [For-master PATCH 2/2] at91sam9x5ek: fix wp_pin and detect_pin pin
 invalid value
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 5e11241..2cbaa8c 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -125,13 +125,13 @@ static void ek_add_device_eth(void)
 static struct atmel_mci_platform_data mci0_data = {
 	.bus_width	= 4,
 	.detect_pin	= AT91_PIN_PD15,
-	.wp_pin		= 0,
+	.wp_pin		= -EINVAL,
 };
 
 static void ek_add_device_mci(void)
 {
 	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT))
-		mci0_data.detect_pin = 0;
+		mci0_data.detect_pin = -EINVAL;
 
 	/* MMC0 */
 	at91_add_device_mci(0, &mci0_data);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
