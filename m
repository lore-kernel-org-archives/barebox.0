Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0lX-0008P5-GR
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 16:01:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Apr 2020 18:01:10 +0200
Message-Id: <20200424160111.10532-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200424160111.10532-1-a.fatoum@pengutronix.de>
References: <20200424160111.10532-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] ARM: stm32mp: lxa-mc1: break reg_3v3 dependency on PMIC
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While the regulator is indeed powered by the PMIC, basically the whole
system is, and it's always on. Linux doesn't handle this specially
however and will defer SDMMC probe till after the PMIC is probed costing
us some valuable boot time. Fix this up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/lxa-mc1/board.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
index d36924fc2793..7f1f3ccd7e06 100644
--- a/arch/arm/boards/lxa-mc1/board.c
+++ b/arch/arm/boards/lxa-mc1/board.c
@@ -5,6 +5,28 @@
 #include <asm/memory.h>
 #include <mach/bbu.h>
 #include <bootsource.h>
+#include <of.h>
+
+static int of_fixup_regulator_supply_disable(struct device_node *root, void *path)
+{
+	struct device_node *node;
+	struct property *prop;
+
+	node = of_find_node_by_path_from(root, path);
+	if (!node) {
+		pr_warn("fixup for %s failed: not found\n", (const char *)path);
+		return -ENOENT;
+	}
+
+	if (!of_property_read_bool(node, "regulator-always-on"))
+		return 0;
+
+	prop = of_find_property(node, "vin-supply", NULL);
+	if (prop)
+		of_delete_property(prop);
+
+	return 0;
+}
 
 static int mc1_device_init(void)
 {
@@ -26,6 +48,11 @@ static int mc1_device_init(void)
 
 	barebox_set_hostname("lxa-mc1");
 
-	return 0;
+	/* The regulator is powered by the PMIC, but is always on as far as
+	 * software is concerned. Break the reference to the PMIC, so the OS
+	 * doesn't need to defer SDMMC/Ethernet peripherals till after the PMIC
+	 * is up.
+	 */
+	return of_register_fixup(of_fixup_regulator_supply_disable, "/regulator_3v3");
 }
 device_initcall(mc1_device_init);
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
