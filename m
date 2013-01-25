Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyfbz-0007LP-7x
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 09:30:16 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 25 Jan 2013 10:30:08 +0100
Message-Id: <1359106208-8041-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] defenv-2: migrate guf-vincell to config-board
To: barebox@lists.infradead.org

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/arm/boards/guf-vincell/env/init/bootargs-base |    8 --------
 arch/arm/boards/guf-vincell/env/init/config-board  |    7 +++++++
 arch/arm/boards/guf-vincell/env/init/hostname      |    8 --------
 3 files changed, 7 insertions(+), 16 deletions(-)
 delete mode 100644 arch/arm/boards/guf-vincell/env/init/bootargs-base
 create mode 100644 arch/arm/boards/guf-vincell/env/init/config-board
 delete mode 100644 arch/arm/boards/guf-vincell/env/init/hostname

diff --git a/arch/arm/boards/guf-vincell/env/init/bootargs-base b/arch/arm/boards/guf-vincell/env/init/bootargs-base
deleted file mode 100644
index d869754..0000000
--- a/arch/arm/boards/guf-vincell/env/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/guf-vincell/env/init/config-board b/arch/arm/boards/guf-vincell/env/init/config-board
new file mode 100644
index 0000000..77e9fc8
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=vincell
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/guf-vincell/env/init/hostname b/arch/arm/boards/guf-vincell/env/init/hostname
deleted file mode 100644
index ca2789d..0000000
--- a/arch/arm/boards/guf-vincell/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=vincell
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
