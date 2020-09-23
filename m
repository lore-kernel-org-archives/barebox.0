Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL26S-0007I0-AT
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 10:34:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kL26P-0005vh-5x
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:34:21 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kL26O-0000LO-SC
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:34:20 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 23 Sep 2020 12:34:15 +0200
Message-Id: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/4] Makefile: add buildsystem version variable
To: Barebox List <barebox@lists.infradead.org>

Introduce a new variable to store a buildsystem version information.
The exact information that is stored here (git commit, git tag,...) is
defined by the buildsystem.
It is intended to have the possibility to get information about the
exact barebox binary, environment and configuration.

The variable is utilized the same as KERNELVERSION for linux:

   make BUILDSYSTEM_VERSION=$COMMITISH

Via scripts/mkcompile_h this information is injected into the barebox
codebase.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Makefile            | 3 ++-
 scripts/mkcompile_h | 3 +++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index d27b78201bda..d829e33c4621 100644
--- a/Makefile
+++ b/Makefile
@@ -311,7 +311,8 @@ include scripts/Kbuild.include
 # Read KERNELRELEASE from include/config/kernel.release (if it exists)
 KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
 KERNELVERSION = $(VERSION)$(if $(PATCHLEVEL),.$(PATCHLEVEL)$(if $(SUBLEVEL),.$(SUBLEVEL)))$(EXTRAVERSION)
-export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION
+BUILDSYSTEM_VERSION =
+export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION BUILDSYSTEM_VERSION
 
 # Cross compiling and selecting different set of gcc/bin-utils
 # ---------------------------------------------------------------------------
diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
index 60b20cafc65e..49aadc153d44 100755
--- a/scripts/mkcompile_h
+++ b/scripts/mkcompile_h
@@ -54,6 +54,7 @@ fi
 UTS_VERSION="#$VERSION"
 CONFIG_FLAGS=""
 UTS_VERSION="$UTS_VERSION $CONFIG_FLAGS $TIMESTAMP"
+BUILDSYSTEM_VERSION="$BUILDSYSTEM_VERSION"
 
 # Truncate to maximum length
 
@@ -69,6 +70,8 @@ UTS_TRUNCATE="cut -b -$UTS_LEN"
 
   echo \#define UTS_VERSION \"`echo $UTS_VERSION | $UTS_TRUNCATE`\"
 
+  echo \#define BUILDSYSTEM_VERSION \"`echo $BUILDSYSTEM_VERSION`\"
+
   echo \#define BAREBOX_COMPILE_BY \"`echo $BAREBOX_COMPILE_BY | $UTS_TRUNCATE`\"
   echo \#define BAREBOX_COMPILE_HOST \"`echo $BAREBOX_COMPILE_HOST | $UTS_TRUNCATE`\"
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
