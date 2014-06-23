Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WyyZO-0005gC-E9
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 07:21:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Jun 2014 09:21:16 +0200
Message-Id: <1403508076-1105-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: remove console= from env files
To: barebox@lists.infradead.org

For i.MX devicetree boards the console= parameter is automatically
generated and can be dropped from the env files. If a file becomes
empty then, remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/boundarydevices-nitrogen6x/env/config-board | 6 ------
 arch/arm/boards/datamodul-edm-qmx6/env/config-board         | 6 ------
 arch/arm/boards/efika-mx-smartbook/env/config-board         | 8 --------
 arch/arm/boards/freescale-mx53-vmx53/env/config-board       | 7 -------
 arch/arm/boards/karo-tx25/env/init/config-board             | 7 -------
 arch/arm/boards/karo-tx53/env/config-board                  | 6 ------
 arch/arm/boards/tqma53/env/config-board                     | 6 ------
 arch/arm/boards/udoo/env/config-board                       | 6 ------
 8 files changed, 52 deletions(-)
 delete mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/env/config-board
 delete mode 100644 arch/arm/boards/datamodul-edm-qmx6/env/config-board
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/config-board
 delete mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config-board
 delete mode 100644 arch/arm/boards/karo-tx25/env/init/config-board
 delete mode 100644 arch/arm/boards/karo-tx53/env/config-board
 delete mode 100644 arch/arm/boards/tqma53/env/config-board
 delete mode 100644 arch/arm/boards/udoo/env/config-board

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/env/config-board b/arch/arm/boards/boundarydevices-nitrogen6x/env/config-board
deleted file mode 100644
index 4cabac6..0000000
--- a/arch/arm/boards/boundarydevices-nitrogen6x/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/datamodul-edm-qmx6/env/config-board b/arch/arm/boards/datamodul-edm-qmx6/env/config-board
deleted file mode 100644
index 4cabac6..0000000
--- a/arch/arm/boards/datamodul-edm-qmx6/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/config-board b/arch/arm/boards/efika-mx-smartbook/env/config-board
deleted file mode 100644
index bc8e9aa..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/config-board
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc0,115200"
-
-[ -f /env/config ] && /env/config
diff --git a/arch/arm/boards/freescale-mx53-vmx53/env/config-board b/arch/arm/boards/freescale-mx53-vmx53/env/config-board
deleted file mode 100644
index e4d41e5..0000000
--- a/arch/arm/boards/freescale-mx53-vmx53/env/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=vmx53
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/karo-tx25/env/init/config-board b/arch/arm/boards/karo-tx25/env/init/config-board
deleted file mode 100644
index 943b002..0000000
--- a/arch/arm/boards/karo-tx25/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=tx25
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/karo-tx53/env/config-board b/arch/arm/boards/karo-tx53/env/config-board
deleted file mode 100644
index e8e8378..0000000
--- a/arch/arm/boards/karo-tx53/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/tqma53/env/config-board b/arch/arm/boards/tqma53/env/config-board
deleted file mode 100644
index 4cabac6..0000000
--- a/arch/arm/boards/tqma53/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/udoo/env/config-board b/arch/arm/boards/udoo/env/config-board
deleted file mode 100644
index 4cabac6..0000000
--- a/arch/arm/boards/udoo/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc1,115200"
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
