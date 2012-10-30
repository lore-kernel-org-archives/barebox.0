Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTIxK-0008V2-1S
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 21:02:39 +0000
Received: from mail643.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 286DA104E886
 for <barebox@lists.infradead.org>; Tue, 30 Oct 2012 22:09:40 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 30 Oct 2012 22:00:22 +0100
Message-Id: <1351630822-20803-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351630822-20803-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121030205459.GE29599@game.jcrosoft.org>
 <1351630822-20803-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/8] pm9261: use w1 serial number to generate local mac address
To: barebox@lists.infradead.org

The OUI will be 'ron' => 72:6F:6E

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pm9261/init.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 2c3615f..6d2ac98 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -37,6 +37,7 @@
 #include <mach/sam9_smc.h>
 #include <dm9000.h>
 #include <linux/w1-gpio.h>
+#include <w1_mac_address.h>
 
 struct w1_gpio_platform_data w1_pdata = {
 	.pin = AT91_PIN_PA7,
@@ -120,6 +121,7 @@ static struct sam9_smc_config __initdata dm9000_smc_config = {
 
 static void __init pm_add_device_dm9000(void)
 {
+	w1_local_mac_address_register(0, "ron", "w1-1-0");
 	/* Configure chip-select 2 (DM9000) */
 	sam9_smc_configure(2, &dm9000_smc_config);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
