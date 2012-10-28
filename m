Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSGi0-0000Qv-3A
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 00:26:36 +0000
Received: from mail409.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3581CFFA578
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 02:33:30 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 28 Oct 2012 02:24:12 +0200
Message-Id: <1351383852-8488-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121028002134.GD28904@game.jcrosoft.org>
 <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
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
index 2c3615f..72fdb0e 100644
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
+	w1_mac_address_register(0, true, "ron", "w1-1-0");
 	/* Configure chip-select 2 (DM9000) */
 	sam9_smc_configure(2, &dm9000_smc_config);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
