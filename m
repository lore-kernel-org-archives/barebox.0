Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrHw-0005RE-9Q
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:17 +0200
Message-Id: <20201012062619.20400-10-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 10/12] sandbox: add watchdog driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Add SIGALRM based watchdog driver. This can reset barebox if stuck and
plays nicely with $global.system.reset.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no changes
---
 arch/sandbox/board/Makefile                   |  1 +
 arch/sandbox/board/watchdog.c                 | 84 +++++++++++++++++++
 arch/sandbox/dts/sandbox.dts                  |  5 ++
 .../sandbox/mach-sandbox/include/mach/linux.h |  2 +
 arch/sandbox/os/common.c                      | 25 ++++++
 5 files changed, 117 insertions(+)
 create mode 100644 arch/sandbox/board/watchdog.c

diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index e50d2ca0f148..c504c967decd 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -6,5 +6,6 @@ obj-y += devices.o
 obj-y += dtb.o
 obj-y += power.o
 obj-y += dev-random.o
+obj-y += watchdog.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
new file mode 100644
index 000000000000..336451282fd3
--- /dev/null
+++ b/arch/sandbox/board/watchdog.c
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <errno.h>
+#include <driver.h>
+#include <mach/linux.h>
+#include <of.h>
+#include <watchdog.h>
+#include <mfd/syscon.h>
+#include <reset_source.h>
+
+struct sandbox_watchdog {
+	struct watchdog wdd;
+	bool cant_disable :1;
+};
+
+static inline struct sandbox_watchdog *to_sandbox_watchdog(struct watchdog *wdd)
+{
+	return container_of(wdd, struct sandbox_watchdog, wdd);
+}
+
+static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	struct sandbox_watchdog *wd = to_sandbox_watchdog(wdd);
+
+	if (!timeout && wd->cant_disable)
+		return -ENOSYS;
+
+	if (timeout > wdd->timeout_max)
+		return -EINVAL;
+
+	return linux_watchdog_set_timeout(timeout);
+}
+
+static int sandbox_watchdog_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct sandbox_watchdog *wd;
+	struct watchdog *wdd;
+	struct regmap *src;
+	u32 src_offset;
+	int ret;
+
+	wd = xzalloc(sizeof(*wd));
+
+	wdd = &wd->wdd;
+	wdd->hwdev = dev;
+	wdd->set_timeout = sandbox_watchdog_set_timeout;
+	wdd->timeout_max = 1000;
+
+	wd->cant_disable = of_property_read_bool(np, "barebox,cant-disable");
+
+	ret = watchdog_register(wdd);
+	if (ret) {
+		dev_err(dev, "Failed to register watchdog device\n");
+		return ret;
+	}
+
+	src = syscon_regmap_lookup_by_phandle(np, "barebox,reset-source");
+	if (IS_ERR(src))
+		return 0;
+
+	ret = of_property_read_u32_index(np, "barebox,reset-source", 1, &src_offset);
+	if (ret)
+		return 0;
+
+	regmap_update_bits(src, src_offset, 0xff, RESET_WDG);
+
+	dev_info(dev, "probed\n");
+	return 0;
+}
+
+
+static __maybe_unused struct of_device_id sandbox_watchdog_dt_ids[] = {
+	{ .compatible = "barebox,sandbox-watchdog" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d sandbox_watchdog_drv = {
+	.name  = "sandbox-watchdog",
+	.of_compatible = sandbox_watchdog_dt_ids,
+	.probe = sandbox_watchdog_probe,
+};
+device_platform_driver(sandbox_watchdog_drv);
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index be96745b4274..f830adecf796 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -54,4 +54,9 @@
 		compatible = "barebox,sandbox-power";
 		barebox,reset-source = <&stickypage 0>;
 	};
+
+	watchdog {
+		compatible = "barebox,sandbox-watchdog";
+		barebox,reset-source = <&stickypage 0>;
+	};
 };
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 7bb022a6de1d..b26bfc24a291 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -25,6 +25,8 @@ void linux_reexec(void);
 
 int linux_execve(const char * filename, char *const argv[], char *const envp[]);
 
+int linux_watchdog_set_timeout(unsigned int timeout);
+
 int barebox_register_console(int stdinfd, int stdoutfd);
 
 int barebox_register_dtb(const void *dtb);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 54d2b97b4af7..da87be29c74d 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -39,6 +39,8 @@
 #include <sys/wait.h>
 #include <sys/ioctl.h>
 #include <linux/fs.h>
+#include <sys/time.h>
+#include <signal.h>
 /*
  * ...except the ones needed to connect with barebox
  */
@@ -244,6 +246,29 @@ int linux_execve(const char * filename, char *const argv[], char *const envp[])
 	}
 }
 
+static void linux_watchdog(int signo)
+{
+	linux_reexec();
+	_exit(0);
+}
+
+int linux_watchdog_set_timeout(unsigned int timeout)
+{
+	static int signal_handler_installed;
+
+	if (!signal_handler_installed) {
+		struct sigaction sact = {
+			.sa_flags = SA_NODEFER, .sa_handler = linux_watchdog
+		};
+
+		sigemptyset(&sact.sa_mask);
+		sigaction(SIGALRM, &sact, NULL);
+		signal_handler_installed = 1;
+	}
+
+	return alarm(timeout);
+}
+
 extern void start_barebox(void);
 extern void mem_malloc_init(void *start, void *end);
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
