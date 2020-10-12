Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrIB-0005XX-TD
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:44 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:15 +0200
Message-Id: <20201012062619.20400-8-a.fatoum@pengutronix.de>
In-Reply-To: <20201012062619.20400-1-a.fatoum@pengutronix.de>
References: <20201012062619.20400-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 08/12] sandbox: power: implement reset source support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We can differentiate between POR and RST by explicitly storing RST as
reset reason when we invoke the reset handler. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no changes
---
 arch/sandbox/board/power.c   | 21 +++++++++++++++++++++
 arch/sandbox/dts/sandbox.dts |  5 ++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index ffd8692845ef..3cc944795895 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -4,9 +4,12 @@
 #include <restart.h>
 #include <mach/linux.h>
 #include <reset_source.h>
+#include <mfd/syscon.h>
 
 struct sandbox_power {
 	struct restart_handler rst_hang, rst_reexec;
+	struct regmap *src;
+	u32 src_offset;
 };
 
 static void sandbox_poweroff(struct poweroff_handler *poweroff)
@@ -21,12 +24,16 @@ static void sandbox_rst_hang(struct restart_handler *rst)
 
 static void sandbox_rst_reexec(struct restart_handler *rst)
 {
+	struct sandbox_power *power = container_of(rst, struct sandbox_power, rst_reexec);
+	regmap_update_bits(power->src, power->src_offset, 0xff, RESET_RST);
 	linux_reexec();
 }
 
 static int sandbox_power_probe(struct device_d *dev)
 {
 	struct sandbox_power *power = xzalloc(sizeof(*power));
+	unsigned int rst;
+	int ret;
 
 	poweroff_handler_register_fn(sandbox_poweroff);
 
@@ -45,6 +52,20 @@ static int sandbox_power_probe(struct device_d *dev)
 	if (IS_ENABLED(CONFIG_SANDBOX_REEXEC))
 		restart_handler_register(&power->rst_reexec);
 
+	power->src = syscon_regmap_lookup_by_phandle(dev->device_node, "barebox,reset-source");
+	if (IS_ERR(power->src))
+		return 0;
+
+	ret = of_property_read_u32_index(dev->device_node, "barebox,reset-source", 1,
+					 &power->src_offset);
+	if (ret)
+		return 0;
+
+	ret = regmap_read(power->src, power->src_offset, &rst);
+	if (ret == 0 && rst == 0)
+		rst = RESET_POR;
+
+	reset_source_set_prinst(rst, RESET_SOURCE_DEFAULT_PRIORITY, 0);
 	return 0;
 }
 
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index d32999292eb3..93824cba9da5 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -23,7 +23,7 @@
 	};
 
 	stickypage: stickypage {
-		compatible = "barebox,hostfile";
+		compatible = "barebox,hostfile", "syscon";
 		reg = <0 0 0 4096>;
 
 		partitions {
@@ -31,6 +31,8 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			/* 0x00+4 reserved for syscon use */
+
 			part_env: env@400 {
 				reg = <0x400 0x800>;
 				label = "env";
@@ -40,5 +42,6 @@
 
 	power {
 		compatible = "barebox,sandbox-power";
+		barebox,reset-source = <&stickypage 0>;
 	};
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
