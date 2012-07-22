Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SswkN-0001lt-FU
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 14:03:04 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 0378BFF905C
 for <barebox@lists.infradead.org>; Sun, 22 Jul 2012 16:07:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 22 Jul 2012 16:02:42 +0200
Message-Id: <1342965768-3796-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120722130301.GI22657@game.jcrosoft.org>
References: <20120722130301.GI22657@game.jcrosoft.org>
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
Subject: [PATCH 1/7] stddev: make it selectable via Kconfig
To: barebox@lists.infradead.org

enable is by default for simple and hush
we do not need to NO_SHELL

this allow to save 1KiB

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Makefile |    2 +-
 common/Kconfig    |    5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/commands/Makefile b/commands/Makefile
index 54191b4..e9157bf 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,4 +1,4 @@
-obj-y				+= stddev.o
+obj-$(CONFIG_STDDEV)		+= stddev.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
diff --git a/common/Kconfig b/common/Kconfig
index 1c996aa..c6f1afa 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -50,6 +50,9 @@ config BINFMT
 config GLOBALVAR
 	bool
 
+config STDDEV
+	bool
+
 menu "General Settings              "
 
 config LOCALVERSION
@@ -295,6 +298,7 @@ choice
 		select COMMAND_SUPPORT
 		select PARAMETER
 		select BINFMT
+		select STDDEV
 		help
 		  Enable hush support. This is the most advanced shell available
 		  for barebox.
@@ -304,6 +308,7 @@ choice
 		select ENVIRONMENT_VARIABLES
 		select COMMAND_SUPPORT
 		select PARAMETER
+		select STDDEV
 		help
 		  simple shell. No if/then, no return values from commands, no loops
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
