Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91Pb-0002uE-Mr
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:20:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so19404459pfb.7
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:19:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:19:43 -0700
Message-Id: <20190914061943.4715-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190914061943.4715-1-andrew.smirnov@gmail.com>
References: <20190914061943.4715-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 8/8] ARM: zii-common: Share MAC address configuration between
 RDU2/3
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

Both RDU2 and RDU3 share the same MAC address configuration
mechanism. Reflect that by moving that code into zii-common and
changing it to be executed on both platforms.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-common/board.c     | 58 ++++++++++++++++++++++++++
 arch/arm/boards/zii-imx6q-rdu2/board.c | 55 ------------------------
 arch/arm/dts/imx8mq-zii-ultra.dtsi     | 26 ++++++++++++
 3 files changed, 84 insertions(+), 55 deletions(-)

diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
index 20ec64d2d4..9a9564e6d1 100644
--- a/arch/arm/boards/zii-common/board.c
+++ b/arch/arm/boards/zii-common/board.c
@@ -16,6 +16,64 @@
 #include <globalvar.h>
 #include <init.h>
 #include <fs.h>
+#include <net.h>
+#include <linux/nvmem-consumer.h>
+
+static int rdu_eth_register_ethaddr(struct device_node *np)
+{
+	u8 mac[ETH_ALEN];
+	u8 *data;
+	int i;
+
+	data = nvmem_cell_get_and_read(np, "mac-address", ETH_ALEN);
+	if (IS_ERR(data))
+		return PTR_ERR(data);
+	/*
+	 * EEPROM stores MAC address in reverse (to what we expect it
+	 * to be) byte order.
+	 */
+	for (i = 0; i < ETH_ALEN; i++)
+		mac[i] = data[ETH_ALEN - i - 1];
+
+	free(data);
+
+	of_eth_register_ethaddr(np, mac);
+
+	return 0;
+}
+
+static int rdu_ethernet_init(void)
+{
+	static const char * const aliases[] = { "ethernet0", "ethernet1" };
+	struct device_node *np, *root;
+	int i, ret;
+
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx8mq-ultra"))
+		return 0;
+
+	root = of_get_root_node();
+
+	for (i = 0; i < ARRAY_SIZE(aliases); i++) {
+		const char *alias = aliases[i];
+
+		np = of_find_node_by_alias(root, alias);
+		if (!np) {
+			pr_warn("Failed to find %s\n", alias);
+			continue;
+		}
+
+		ret = rdu_eth_register_ethaddr(np);
+		if (ret) {
+			pr_warn("Failed to register MAC for %s\n", alias);
+			continue;
+		}
+	}
+
+	return 0;
+}
+late_initcall(rdu_ethernet_init);
 
 static int rdu_networkconfig(void)
 {
diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 6adb0b1c6f..63367a419a 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -159,61 +159,6 @@ static int rdu2_devices_init(void)
 }
 device_initcall(rdu2_devices_init);
 
-static int rdu2_eth_register_ethaddr(struct device_node *np)
-{
-	u8 mac[ETH_ALEN];
-	u8 *data;
-	int i;
-
-	data = nvmem_cell_get_and_read(np, "mac-address", ETH_ALEN);
-	if (IS_ERR(data))
-		return PTR_ERR(data);
-	/*
-	 * EEPROM stores MAC address in reverse (to what we expect it
-	 * to be) byte order.
-	 */
-	for (i = 0; i < ETH_ALEN; i++)
-		mac[i] = data[ETH_ALEN - i - 1];
-
-	free(data);
-
-	of_eth_register_ethaddr(np, mac);
-
-	return 0;
-}
-
-static int rdu2_ethernet_init(void)
-{
-	const char *aliases[] = { "ethernet0", "ethernet1" };
-	struct device_node *np, *root;
-	int i, ret;
-
-	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
-	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
-		return 0;
-
-	root = of_get_root_node();
-
-	for (i = 0; i < ARRAY_SIZE(aliases); i++) {
-		const char *alias = aliases[i];
-
-		np = of_find_node_by_alias(root, alias);
-		if (!np) {
-			pr_warn("Failed to find %s\n", alias);
-			continue;
-		}
-
-		ret = rdu2_eth_register_ethaddr(np);
-		if (ret) {
-			pr_warn("Failed to register MAC for %s\n", alias);
-			continue;
-		}
-	}
-
-	return 0;
-}
-late_initcall(rdu2_ethernet_init);
-
 static int rdu2_fixup_egalax_ts(struct device_node *root, void *context)
 {
 	struct device_node *np;
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 1a9ba160a3..6180f21ab0 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -23,6 +23,8 @@
 	};
 
 	aliases {
+		ethernet0 = &fec1;
+		ethernet1 = &i210;
 		/*
 		 * NVMEM device corresponding to EEPROM attached to
 		 * the switch shared DT node with it, so we use that
@@ -32,6 +34,11 @@
 	};
 };
 
+&fec1 {
+	nvmem-cells = <&mac_address_0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &ocotp {
 	barebox,provide-mac-address = <&fec1 0x640>;
 };
@@ -49,6 +56,25 @@
 	};
 };
 
+&i210 {
+	nvmem-cells = <&mac_address_1>;
+	nvmem-cell-names = "mac-address";
+};
+
+&uart2 {
+	rave-sp {
+		eeprom@a4 {
+			mac_address_0: mac-address@180 {
+				reg = <0x180 6>;
+			};
+
+			mac_address_1: mac-address@190 {
+				reg = <0x190 6>;
+			};
+		};
+	};
+};
+
 &usdhc1 {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
