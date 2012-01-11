Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkyO8-0004cP-A3
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 13:38:49 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4810010002C2
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 14:40:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 14:31:51 +0100
Message-Id: <1326288716-1342-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120111132914.GB958@game.jcrosoft.org>
References: <20120111132914.GB958@game.jcrosoft.org>
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
Subject: [PATCH 1/6] banner: add config to disable it
To: barebox@lists.infradead.org

this will allow to save 144 bytes

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    1 +
 common/Kconfig   |    4 ++++
 common/Makefile  |    2 +-
 include/common.h |    4 ++++
 4 files changed, 10 insertions(+), 1 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 6f9ccb8..1d080e3 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -420,6 +420,7 @@ config CMD_REGINFO
 config CMD_VERSION
 	tristate
 	default y
+	depends on BANNER
 	prompt "version"
 
 config CMD_HELP
diff --git a/common/Kconfig b/common/Kconfig
index ca4f099..d184d9e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -74,6 +74,10 @@ config LOCALVERSION_AUTO
 config BOARDINFO
 	string
 
+config BANNER
+	bool "display banner"
+	default y
+
 config ENVIRONMENT_VARIABLES
 	bool "environment variables support"
 
diff --git a/common/Makefile b/common/Makefile
index d1132c3..eaf74a6 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -17,7 +17,7 @@ obj-$(CONFIG_MALLOC_TLSF) += tlsf_malloc.o
 obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
 obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
 obj-y += clock.o
-obj-y += version.o
+obj-$(CONFIG_BANNER) += version.o
 obj-$(CONFIG_COMMAND_SUPPORT) += command.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
diff --git a/include/common.h b/include/common.h
index 2f37dd8..a89b3bd 100644
--- a/include/common.h
+++ b/include/common.h
@@ -198,7 +198,11 @@ int run_shell(void);
 int memory_display(char *addr, ulong offs, ulong nbytes, int size);
 
 extern const char version_string[];
+#ifdef CONFIG_BANNER
 void barebox_banner(void);
+#else
+static inline void barebox_banner(void) {}
+#endif
 
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
