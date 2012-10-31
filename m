Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTcxf-0008GV-Lm
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 18:24:20 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 15FFAFF9887
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2012 19:34:22 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 31 Oct 2012 19:22:04 +0100
Message-Id: <1351707724-28704-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351707724-28704-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121031165240.GG29599@game.jcrosoft.org>
 <1351707724-28704-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] at91sam9x5ek: use w1 serial number to generate local mac
 address
To: barebox@lists.infradead.org

The OUI will be 'tml' => 76:6D:6C

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c |   11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index b3d7ab2..78f7349 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -40,6 +40,7 @@
 #include <gpio_keys.h>
 #include <readkey.h>
 #include <linux/w1-gpio.h>
+#include <w1_mac_address.h>
 
 #include "hw_version.h"
 
@@ -105,6 +106,14 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr = 0,
 };
 
+static void ek_add_device_eth(void)
+{
+	if (w1_local_mac_address_register(0, "tml", "w1-2d-0"))
+		w1_local_mac_address_register(0, "tml", "w1-23-0");
+
+	at91_add_device_eth(0, &macb_pdata);
+}
+
 /*
  * USB Host port
  */
@@ -160,7 +169,7 @@ static int at91sam9x5ek_devices_init(void)
 {
 	ek_add_device_w1();
 	ek_add_device_nand();
-	at91_add_device_eth(0, &macb_pdata);
+	ek_add_device_eth();
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_led();
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
