Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6z31-0002Ry-0U
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 10:33:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002E2-IZ
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002j6-9a
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 22 Jun 2015 12:33:22 +0200
Message-Id: <1434969204-11433-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
References: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/6] Watchdog: add a scope value to the watchdog feature
To: barebox@lists.infradead.org

Sometimes the SoC internal watchdogs are inappropriate to restart the
machine in a reliable manner. This change should help to handle more than
one watchdog unit by adding a scope parameter. The framework always
prefers the watchdog with the widest scope. For example a watchdog
which is able to restart the whole machine (SoC + external devices) gets
precedence over a watchdog which can restart the SoC only.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/user-manual.rst |  1 +
 Documentation/user/watchdog.rst    | 74 ++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/im28wd.c          |  2 +-
 drivers/watchdog/imxwd.c           |  2 +-
 drivers/watchdog/wd_core.c         | 45 +++++++++++++++++++++--
 include/watchdog.h                 |  6 ++--
 6 files changed, 123 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/user/watchdog.rst

diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 0d6daee..8a32469 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -30,6 +30,7 @@ Contents:
    system-setup
    reset-reason
    system-reset
+   watchdog
 
 * :ref:`search`
 * :ref:`genindex`
diff --git a/Documentation/user/watchdog.rst b/Documentation/user/watchdog.rst
new file mode 100644
index 0000000..b98d11c
--- /dev/null
+++ b/Documentation/user/watchdog.rst
@@ -0,0 +1,74 @@
+.. _watchdog_usage:
+
+Using a watchdog
+----------------
+
+Watchdogs are commonly used to prevent bad software from hanging the whole
+system for ever. Sometimes a simple approach can help to make a system work
+if hanging failures are happen very seldom: just restart the system and do
+everything again in the same way as it was done when the system starts the
+last time.
+
+But using a watchdog should always be the 'last resort' to keep a machine
+working. The focus should still be on finding and fixing the bug ;)
+
+A more complex way to use a watchdog in a real-word example is when the state
+frameworks comes into play. Then the watchdog's task isn't only to keep the
+machine working. It also monitors the whole health of the machine including
+hardware and software. Especially something like a firmware update can go
+wrong: a wrong firmware was programmed (wrong release or for a different machine),
+programming was incomplete due to a user intervention or power fail and so on.
+
+In this case the watchdog does not just restart the system if the software hangs,
+it also provides 'additional' information about the firmware by this restart.
+The barebox's state framework is now able to run some kind of state machine to handle
+firmware updates in a correct manner: trying the new firmware once and if it fails falling
+back to the previous firmware (if available) for example.
+
+Refer the :ref:`reset_reason` how to detect the reason why the bootloader runs.
+This information can be used by the barebox's state framework.
+
+.. _watchdog_restart_pitfalls:
+
+Watchdog Pitfalls
+~~~~~~~~~~~~~~~~~
+
+If a watchdog triggers a machine restart it suffers from the same issues like
+a regular user triggered system machine restart. Refer :ref:`system_reset_pitfalls`
+for further details.
+So keep this in mind when you select an available watchdog on your machine for
+this task. And if you are a hardware designer keep this in mind even more, and
+provide a reliable restart source for the software developers and to keep their
+headache low.
+
+Watchdogs from the developers point of view
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+Watchdogs gets registered in barebox with a scope. When you register your own
+watchdog driver, check its hardware scope carefully and use one of the
+definitions from the file ``include/fscope.h``.
+
+The list of defined scopes (defined in file ``include/fscope.h``):
+
+* ``FEATURE_SCOPE_UNKNOWN``: completely useless watchdog, maybe a last resort..
+* ``FEATURE_SCOPE_CPU``: this watchdog is able to restart the core CPU only.
+  Regarding to the issues in :ref:`system_reset_pitfalls` this kind of watchdog
+  seems more or less useless.
+* ``FEATURE_SCOPE_SOC``: this watchdog is able to restart the whole SoC. Regarding
+  to the issues in :ref:`system_reset_pitfalls` this scope is more reliable, but
+  depends on the machine and its hardware design if is able to bring the machine
+  back into life under every circumstance.
+* ``FEATURE_SCOPE_MACHINE``: it is able to restart the whole machine and does
+  the same like a real ``POR`` does. Best scope and always reliable.
+
+The selected scope is very important because barebox will always use
+the watchdog with the best available scope.
+
+But that is true only for watchdogs used in barebox and as long barebox is
+running.
+
+If an operating system runs later on, it is the task of this OS to use a watchdog
+with a correct scope. Otherwise it suffers from the :ref:`system_reset_pitfalls`
+as well. This is even more important if the state framework is used. That means
+barebox and the operating system must use the same watchdog in order to check
+and change the states correctly.
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 5781387..d885e68 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -206,7 +206,7 @@ static int imx28_wd_probe(struct device_d *dev)
 	/* disable the debug feature to ensure a working WD */
 	writel(0x00000000, priv->regs + MXS_RTC_DEBUG);
 
-	rc = watchdog_register(&priv->wd);
+	rc = watchdog_register(&priv->wd, FEATURE_SCOPE_SOC);
 	if (rc != 0)
 		goto on_error;
 
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index cdf3d40..f9ec57c 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -191,7 +191,7 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->dev = dev;
 
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
-		ret = watchdog_register(&priv->wd);
+		ret = watchdog_register(&priv->wd, FEATURE_SCOPE_SOC);
 		if (ret)
 			goto on_error;
 	}
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 3d0cfc6..79eede3 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -13,22 +13,50 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <command.h>
 #include <errno.h>
 #include <linux/ctype.h>
 #include <watchdog.h>
+#include <globalvar.h>
 
 /*
  * Note: this simple framework supports one watchdog only.
  */
 static struct watchdog *watchdog;
+static unsigned watchdog_scope;
 
-int watchdog_register(struct watchdog *wd)
+static void watchdog_update_global_info(void)
 {
-	if (watchdog != NULL)
-		return -EBUSY;
+	const char *scope;
+
+	switch (watchdog_scope) {
+	case FEATURE_SCOPE_CPU:
+		scope = NAME_FEATURE_SCOPE_CPU;
+		break;
+	case FEATURE_SCOPE_SOC:
+		scope = NAME_FEATURE_SCOPE_SOC;
+		break;
+	case FEATURE_SCOPE_MACHINE:
+		scope = NAME_FEATURE_SCOPE_MACHINE;
+		break;
+	default:
+		scope = NAME_FEATURE_SCOPE_UNKNOWN;
+		break;
+	}
+	globalvar_set_match("system.wd.scope", scope);
+}
+
+int watchdog_register(struct watchdog *wd, enum f_scope scope)
+{
+	/* ignore a lower or same priority, it isn't a failure */
+	if (scope <= watchdog_scope)
+		return 0;
 
 	watchdog = wd;
+	watchdog_scope = scope;
+	watchdog_update_global_info();
+
 	return 0;
 }
 EXPORT_SYMBOL(watchdog_register);
@@ -39,6 +67,9 @@ int watchdog_deregister(struct watchdog *wd)
 		return -ENODEV;
 
 	watchdog = NULL;
+	watchdog_scope = FEATURE_SCOPE_UNKNOWN;
+	watchdog_update_global_info();
+
 	return 0;
 }
 EXPORT_SYMBOL(watchdog_deregister);
@@ -55,3 +86,11 @@ int watchdog_set_timeout(unsigned timeout)
 	return watchdog->set_timeout(watchdog, timeout);
 }
 EXPORT_SYMBOL(watchdog_set_timeout);
+
+static int watchdog_capability_init(void)
+{
+	globalvar_add_simple("system.wd.scope", NAME_FEATURE_SCOPE_UNKNOWN);
+
+	return 0;
+}
+coredevice_initcall(watchdog_capability_init);
diff --git a/include/watchdog.h b/include/watchdog.h
index 7e37b7c..9822166 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -13,16 +13,18 @@
 #ifndef INCLUDE_WATCHDOG_H
 # define INCLUDE_WATCHDOG_H
 
+#include <fscope.h>
+
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 };
 
 #ifdef CONFIG_WATCHDOG
-int watchdog_register(struct watchdog *);
+int watchdog_register(struct watchdog *, enum f_scope);
 int watchdog_deregister(struct watchdog *);
 int watchdog_set_timeout(unsigned);
 #else
-static inline int watchdog_register(struct watchdog *w)
+static inline int watchdog_register(struct watchdog *w, enum f_scope s)
 {
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
