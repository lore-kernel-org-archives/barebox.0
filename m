Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQx0l-0005Aq-KC
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 09:12:28 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed, 24 Oct 2012 11:12:20 +0200
Message-Id: <1351069940-26322-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] Makefile: disable CDPATH
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

CDPATH has sideeffects when generating barebox_default_env.h (printing
the directory name into the header file), causing a build failure.
Disable it for the build.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 Makefile |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index 881680d..55262ad 100644
--- a/Makefile
+++ b/Makefile
@@ -136,6 +136,9 @@ ifeq ($(skip-makefile),)
 PHONY += all
 _all: all
 
+# CDPATH can have sideeffects; disable, since we do know where we want to cd to
+export CDPATH=
+
 srctree		:= $(if $(KBUILD_SRC),$(KBUILD_SRC),$(CURDIR))
 objtree		:= $(CURDIR)
 src		:= $(srctree)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
