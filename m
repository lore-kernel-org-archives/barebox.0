Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hC3k6-0007e6-1B
 for barebox@lists.infradead.org; Thu, 04 Apr 2019 14:53:29 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  4 Apr 2019 16:53:14 +0200
Message-Id: <20190404145320.11465-2-m.tretter@pengutronix.de>
In-Reply-To: <20190404145320.11465-1-m.tretter@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
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
Subject: [RFC PATCH 1/7] commands: unify newlines for options
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The BAREBOX_CMD_HELP_OPT macro adds a newline to the string, but users
of the macro inconsistently add another newline resulting in empty
newlines for some commands, but not for others. Remove any newline in
the description and rely on BAREBOX_CMD_HELP_OPT for the formatting.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 commands/crc.c                | 4 ++--
 commands/firmwareload.c       | 4 ++--
 commands/of_display_timings.c | 8 ++++----
 commands/of_dump.c            | 6 +++---
 commands/of_fixup_status.c    | 2 +-
 commands/oftree.c             | 4 ++--
 6 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/commands/crc.c b/commands/crc.c
index edb1fb125c..580521d677 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -138,8 +138,8 @@ BAREBOX_CMD_HELP_OPT ("-F FILE", "Use file to compare.")
 #endif
 BAREBOX_CMD_HELP_OPT ("-v CRC",  "Verify")
 BAREBOX_CMD_HELP_OPT ("-V FILE", "Verify with CRC read from FILE")
-BAREBOX_CMD_HELP_OPT  ("-r <var>",  "Set <var> to the checksum result\n")
-BAREBOX_CMD_HELP_OPT  ("-s <var>",  "Set <var> to the data size\n")
+BAREBOX_CMD_HELP_OPT  ("-r <var>",  "Set <var> to the checksum result")
+BAREBOX_CMD_HELP_OPT  ("-s <var>",  "Set <var> to the data size")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(crc32)
diff --git a/commands/firmwareload.c b/commands/firmwareload.c
index 071f25be99..dbd43e046d 100644
--- a/commands/firmwareload.c
+++ b/commands/firmwareload.c
@@ -55,8 +55,8 @@ static int do_firmwareload(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(firmwareload)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-t <target>", "define the firmware handler by name\n")
-BAREBOX_CMD_HELP_OPT("-l\t", "list devices capable of firmware loading\n")
+BAREBOX_CMD_HELP_OPT("-t <target>", "define the firmware handler by name")
+BAREBOX_CMD_HELP_OPT("-l\t", "list devices capable of firmware loading")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(firmwareload)
diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
index ccf2db0da5..365ff80c36 100644
--- a/commands/of_display_timings.c
+++ b/commands/of_display_timings.c
@@ -148,10 +148,10 @@ static int do_of_display_timings(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(of_display_timings)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-l",  "list path of all available display-timings\n")
-BAREBOX_CMD_HELP_OPT("-s",  "list path of all selected display-timings\n")
-BAREBOX_CMD_HELP_OPT("-S path",  "select display-timings and register oftree fixup\n")
-BAREBOX_CMD_HELP_OPT("-f dtb",  "work on dtb. Has no effect on -s option\n")
+BAREBOX_CMD_HELP_OPT("-l",  "list path of all available display-timings")
+BAREBOX_CMD_HELP_OPT("-s",  "list path of all selected display-timings")
+BAREBOX_CMD_HELP_OPT("-S path",  "select display-timings and register oftree fixup")
+BAREBOX_CMD_HELP_OPT("-f dtb",  "work on dtb. Has no effect on -s option")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_display_timings)
diff --git a/commands/of_dump.c b/commands/of_dump.c
index 7bec0b925e..06b8e9fcda 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -139,9 +139,9 @@ out:
 
 BAREBOX_CMD_HELP_START(of_dump)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree\n")
-BAREBOX_CMD_HELP_OPT  ("-F",  "return fixed devicetree\n")
-BAREBOX_CMD_HELP_OPT  ("-n",  "Print node names only, no properties\n")
+BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree")
+BAREBOX_CMD_HELP_OPT  ("-F",  "return fixed devicetree")
+BAREBOX_CMD_HELP_OPT  ("-n",  "Print node names only, no properties")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_dump)
diff --git a/commands/of_fixup_status.c b/commands/of_fixup_status.c
index 9a4a619195..e0da429ac3 100644
--- a/commands/of_fixup_status.c
+++ b/commands/of_fixup_status.c
@@ -59,7 +59,7 @@ static int do_of_fixup_status(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(of_fixup_status)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-d",  "disable node")
-BAREBOX_CMD_HELP_OPT("path",  "Node path\n")
+BAREBOX_CMD_HELP_OPT("path",  "Node path")
 BAREBOX_CMD_HELP_TEXT("Register a fixup to enable or disable a device tree node.")
 BAREBOX_CMD_HELP_TEXT("Nodes are enabled on default. Disabled with -d.")
 BAREBOX_CMD_HELP_END
diff --git a/commands/oftree.c b/commands/oftree.c
index 26a47bb581..299c2edfcd 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -123,8 +123,8 @@ out:
 
 BAREBOX_CMD_HELP_START(oftree)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-l <DTB>",  "Load <DTB> to internal devicetree\n")
-BAREBOX_CMD_HELP_OPT ("-s <DTB>",  "save internal devicetree to <DTB>\n")
+BAREBOX_CMD_HELP_OPT ("-l <DTB>",  "Load <DTB> to internal devicetree")
+BAREBOX_CMD_HELP_OPT ("-s <DTB>",  "save internal devicetree to <DTB>")
 BAREBOX_CMD_HELP_OPT ("-p",  "probe devices from stored device tree")
 BAREBOX_CMD_HELP_END
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
