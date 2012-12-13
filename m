Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBrB-0007qo-6h
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:42:02 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 92CCCDC1CBA
 for <barebox@lists.infradead.org>; Thu, 13 Dec 2012 17:50:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 13 Dec 2012 17:40:04 +0100
Message-Id: <1355416810-26555-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/9] intoduce dmesg to print the barebox output ring buffer
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    6 ++++++
 common/console.c |   20 ++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index ac9b797..55a9840 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -115,6 +115,12 @@ config CMD_TIME
 	  checking for ctrl-c, so the time command can be used with commands
 	  which are interruptible with ctrl-c.
 
+config CMD_DMESG
+	bool "dmesg"
+	depends on CONSOLE_FULL
+	  help
+	  print the barebox output ring buffer
+
 config CMD_LINUX_EXEC
 	bool "linux exec"
 	depends on LINUX
diff --git a/common/console.c b/common/console.c
index 96e1396..2d2d20a 100644
--- a/common/console.c
+++ b/common/console.c
@@ -434,3 +434,23 @@ int ctrlc (void)
 }
 EXPORT_SYMBOL(ctrlc);
 #endif /* ARCH_HAS_CTRC */
+
+#include <command.h>
+#include <complete.h>
+
+static int do_dmesg(int argc, char *argv[])
+{
+	kfifo_dump_str(console_output_fifo, console_output_dump);
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_dmesg_help[] =
+"print the barebox output ring buffer\n";
+
+BAREBOX_CMD_START(dmesg)
+	.cmd		= do_dmesg,
+	.usage		= "dmesg",
+	BAREBOX_CMD_HELP(cmd_dmesg_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
