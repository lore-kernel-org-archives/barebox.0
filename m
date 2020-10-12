Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrHw-0005RB-9M
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:14 +0200
Message-Id: <20201012062619.20400-7-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 07/12] sandbox: poweroff: migrate to driver probed from
 device tree
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Follow-up will extend the poweroff driver to support system reset source.
Set the stage by renaming the driver to power (as it does reset as well)
and make it probe from device tree, so it can point at the system reset
source syscon via phandle.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no changes
---
 arch/sandbox/board/Makefile   |  2 +-
 arch/sandbox/board/power.c    | 61 +++++++++++++++++++++++++++++++++++
 arch/sandbox/board/poweroff.c | 42 ------------------------
 arch/sandbox/dts/sandbox.dts  |  4 +++
 4 files changed, 66 insertions(+), 43 deletions(-)
 create mode 100644 arch/sandbox/board/power.c
 delete mode 100644 arch/sandbox/board/poweroff.c

diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 26f6cb192269..e50d2ca0f148 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -4,7 +4,7 @@ obj-y += hostfile.o
 obj-y += console.o
 obj-y += devices.o
 obj-y += dtb.o
-obj-y += poweroff.o
+obj-y += power.o
 obj-y += dev-random.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
new file mode 100644
index 000000000000..ffd8692845ef
--- /dev/null
+++ b/arch/sandbox/board/power.c
@@ -0,0 +1,61 @@
+#include <common.h>
+#include <driver.h>
+#include <poweroff.h>
+#include <restart.h>
+#include <mach/linux.h>
+#include <reset_source.h>
+
+struct sandbox_power {
+	struct restart_handler rst_hang, rst_reexec;
+};
+
+static void sandbox_poweroff(struct poweroff_handler *poweroff)
+{
+	linux_exit();
+}
+
+static void sandbox_rst_hang(struct restart_handler *rst)
+{
+	linux_hang();
+}
+
+static void sandbox_rst_reexec(struct restart_handler *rst)
+{
+	linux_reexec();
+}
+
+static int sandbox_power_probe(struct device_d *dev)
+{
+	struct sandbox_power *power = xzalloc(sizeof(*power));
+
+	poweroff_handler_register_fn(sandbox_poweroff);
+
+	power->rst_hang = (struct restart_handler) {
+		.name = "hang",
+		.restart = sandbox_rst_hang
+	};
+
+	power->rst_reexec = (struct restart_handler) {
+		.name = "reexec", .priority = 200,
+		.restart = sandbox_rst_reexec,
+	};
+
+	restart_handler_register(&power->rst_hang);
+
+	if (IS_ENABLED(CONFIG_SANDBOX_REEXEC))
+		restart_handler_register(&power->rst_reexec);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id sandbox_power_dt_ids[] = {
+	{ .compatible = "barebox,sandbox-power" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d sandbox_power_drv = {
+	.name  = "sandbox-power",
+	.of_compatible = sandbox_power_dt_ids,
+	.probe = sandbox_power_probe,
+};
+coredevice_platform_driver(sandbox_power_drv);
diff --git a/arch/sandbox/board/poweroff.c b/arch/sandbox/board/poweroff.c
deleted file mode 100644
index 8ce739af72c1..000000000000
--- a/arch/sandbox/board/poweroff.c
+++ /dev/null
@@ -1,42 +0,0 @@
-#include <common.h>
-#include <init.h>
-#include <poweroff.h>
-#include <restart.h>
-#include <mach/linux.h>
-
-static void sandbox_poweroff(struct poweroff_handler *poweroff)
-{
-	linux_exit();
-}
-
-static void sandbox_rst_hang(struct restart_handler *rst)
-{
-	linux_hang();
-}
-
-static struct restart_handler rst_hang = {
-	.name = "hang",
-	.restart = sandbox_rst_hang
-};
-
-static void sandbox_rst_reexec(struct restart_handler *rst)
-{
-	linux_reexec();
-}
-
-static struct restart_handler rst_reexec = {
-	.name = "reexec", .priority = 200,
-	.restart = sandbox_rst_reexec,
-};
-
-static int poweroff_register_feature(void)
-{
-	poweroff_handler_register_fn(sandbox_poweroff);
-	restart_handler_register(&rst_hang);
-
-	if (IS_ENABLED(CONFIG_SANDBOX_REEXEC))
-		restart_handler_register(&rst_reexec);
-
-	return 0;
-}
-coredevice_initcall(poweroff_register_feature);
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index afca02d41014..d32999292eb3 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -37,4 +37,8 @@
 			};
 		};
 	};
+
+	power {
+		compatible = "barebox,sandbox-power";
+	};
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
