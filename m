Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIdt4-0006je-5y
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 10:37:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 12:37:44 +0200
Message-Id: <1334313464-30921-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] make building of bareboxenv-target optional
To: barebox@lists.infradead.org

The bareboxenv script build for the target does not work on
all architectures, so make it optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig   |    7 +++++++
 scripts/Makefile |    2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 2a7cbfc..a997f3d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -506,6 +506,13 @@ config DEFAULT_ENVIRONMENT_PATH
 	  Relative pathes will be relative to the barebox Toplevel dir, but absolute
 	  pathes are fine aswell.
 
+config BAREBOXENV_TARGET
+	bool
+	prompt "build bareboxenv tool for target"
+	help
+	  'bareboxenv' is a tool to access the barebox environment from a running Linux
+	  system. Say yes here to build it for the target.
+
 config POLLER
 	bool "generic polling infrastructure"
 
diff --git a/scripts/Makefile b/scripts/Makefile
index 15a2b81..cb049fd 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -23,7 +23,7 @@ subdir-	+= basic kconfig setupmbr
 quiet_cmd_csingle	= CC      $@
       cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
 
-always                           += bareboxenv-target
+obj-$(CONFIG_BAREBOXENV_TARGET)	+= bareboxenv-target
 
 scripts/bareboxenv-target: scripts/bareboxenv.c FORCE
 	$(call if_changed_dep,csingle)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
