Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007oH-Uj
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:13 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:50 +0100
Message-Id: <1288600434-6112-18-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 17/21] doc: unify documentation for 'devinfo'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Doxyfile     |    4 +++-
 lib/driver.c |   45 +++++++++++++++++++++++----------------------
 2 files changed, 26 insertions(+), 23 deletions(-)

diff --git a/Doxyfile b/Doxyfile
index 23f3e43..f030584 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -1067,7 +1067,9 @@ INCLUDE_FILE_PATTERNS  =
 # undefined via #undef or recursively expanded use the := operator
 # instead of the = operator.
 
-PREDEFINED             = DOXYGEN_SHOULD_SKIP_THIS
+PREDEFINED             = \
+			DOXYGEN_SHOULD_SKIP_THIS \
+			CONFIG_CMD_DEVINFO
 
 # If the MACRO_EXPANSION and EXPAND_ONLY_PREDEF tags are set to YES then
 # this tag can be used to specify a list of macro names that should be expanded.
diff --git a/lib/driver.c b/lib/driver.c
index edde1dc..aba04e7 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -244,6 +244,7 @@ int dummy_probe(struct device_d *dev)
 }
 EXPORT_SYMBOL(dummy_probe);
 
+#ifdef CONFIG_CMD_DEVINFO
 static int do_devinfo_subtree(struct device_d *dev, int depth, char edge)
 {
 	struct device_d *child;
@@ -275,6 +276,7 @@ static int do_devinfo_subtree(struct device_d *dev, int depth, char edge)
 
 	return 0;
 }
+#endif
 
 const char *dev_id(const struct device_d *dev)
 {
@@ -340,30 +342,22 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_devinfo_help[] =
-"Usage: devinfo [DEVICE]\n"
-"If called without arguments devinfo shows a summary about known devices and\n"
-"drivers. If called with a device path as argument devinfo shows more detailed\n"
-"information about this device and its parameters.\n";
+BAREBOX_CMD_HELP_START(devinfo)
+BAREBOX_CMD_HELP_USAGE("devinfo [DEVICE]\n")
+BAREBOX_CMD_HELP_SHORT("Output device information.")
+BAREBOX_CMD_HELP_END
 
-BAREBOX_CMD_START(devinfo)
-	.cmd		= do_devinfo,
-	.usage		= "display info about devices and drivers",
-	BAREBOX_CMD_HELP(cmd_devinfo_help)
-BAREBOX_CMD_END
+/**
+ * @page devinfo_command
 
-#endif
+If called without arguments, devinfo shows a summary of the known
+devices and drivers.
+
+If called with a device path being the argument, devinfo shows more
+default information about this device and its parameters.
+
+Example from an MPC5200 based system:
 
-/**
- * @page devinfo_command devinfo
- *
- * Usage is: devinfo /dev/\<device>
- *
- * If called without arguments devinfo shows a summary about known devices and
- * drivers. If called with a device path as argument devinfo shows more
- * detailed information about this device and its parameters.
- *
- * Example from an MPC5200 based system:
 @verbatim
   barebox:/ devinfo /dev/eth0
   base  : 0x1002b000
@@ -378,5 +372,12 @@ BAREBOX_CMD_END
      netmask = 255.255.255.0
     serverip = 192.168.23.2
 @endverbatim
- *
  */
+
+BAREBOX_CMD_START(devinfo)
+	.cmd		= do_devinfo,
+	.usage		= "Show information about devices and drivers.\n",
+	BAREBOX_CMD_HELP(cmd_devinfo_help)
+BAREBOX_CMD_END
+#endif
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
