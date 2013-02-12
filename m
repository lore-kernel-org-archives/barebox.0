Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5BcY-0001h3-6c
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 08:53:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Feb 2013 09:53:43 +0100
Message-Id: <1360659223-11075-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] defenv2: move config-board out of /env/init
To: barebox@lists.infradead.org

Having the board config file in /env/init has the problem that
the settings in /env/config are overwritten in the init sequence.

This moves the config-board files to /env/ and sources them explicitly
from /env/bin/init before sourcing /env/config

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/env/config-board                       |    7 +++++++
 arch/arm/boards/beagle/env/init/config-board                  |    7 -------
 arch/arm/boards/crystalfontz-cfa10036/env/config-board        |    7 +++++++
 arch/arm/boards/crystalfontz-cfa10036/env/init/config-board   |    7 -------
 arch/arm/boards/efika-mx-smartbook/env/config-board           |    9 +++++++++
 arch/arm/boards/efika-mx-smartbook/env/init/config-board      |    9 ---------
 arch/arm/boards/freescale-mx51-pdk/env/config-board           |    7 +++++++
 arch/arm/boards/freescale-mx51-pdk/env/init/config-board      |    7 -------
 arch/arm/boards/freescale-mx53-loco/env/config-board          |    7 +++++++
 arch/arm/boards/freescale-mx53-loco/env/init/config-board     |    7 -------
 arch/arm/boards/freescale-mx6-sabrelite/env/config-board      |    7 +++++++
 arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board |    7 -------
 arch/arm/boards/karo-tx53/env/config-board                    |    7 +++++++
 arch/arm/boards/karo-tx53/env/init/config-board               |    7 -------
 arch/arm/boards/panda/env/config-board                        |    7 +++++++
 arch/arm/boards/panda/env/init/config-board                   |    7 -------
 arch/arm/boards/pcm037/env/config-board                       |    7 +++++++
 arch/arm/boards/pcm037/env/init/config-board                  |    7 -------
 arch/arm/boards/pcm038/env/config-board                       |    7 +++++++
 arch/arm/boards/pcm038/env/init/config-board                  |    7 -------
 arch/arm/boards/tqma53/env/config-board                       |    7 +++++++
 arch/arm/boards/tqma53/env/init/config-board                  |    7 -------
 defaultenv-2/base/bin/init                                    |    1 +
 23 files changed, 80 insertions(+), 79 deletions(-)
 create mode 100644 arch/arm/boards/beagle/env/config-board
 delete mode 100644 arch/arm/boards/beagle/env/init/config-board
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/config-board
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/config-board
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/config-board
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/config-board
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/config-board
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/config-board
 create mode 100644 arch/arm/boards/freescale-mx53-loco/env/config-board
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/env/init/config-board
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/config-board
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board
 create mode 100644 arch/arm/boards/karo-tx53/env/config-board
 delete mode 100644 arch/arm/boards/karo-tx53/env/init/config-board
 create mode 100644 arch/arm/boards/panda/env/config-board
 delete mode 100644 arch/arm/boards/panda/env/init/config-board
 create mode 100644 arch/arm/boards/pcm037/env/config-board
 delete mode 100644 arch/arm/boards/pcm037/env/init/config-board
 create mode 100644 arch/arm/boards/pcm038/env/config-board
 delete mode 100644 arch/arm/boards/pcm038/env/init/config-board
 create mode 100644 arch/arm/boards/tqma53/env/config-board
 delete mode 100644 arch/arm/boards/tqma53/env/init/config-board

diff --git a/arch/arm/boards/beagle/env/config-board b/arch/arm/boards/beagle/env/config-board
new file mode 100644
index 0000000..cc0820a
--- /dev/null
+++ b/arch/arm/boards/beagle/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=beagle
+global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/beagle/env/init/config-board b/arch/arm/boards/beagle/env/init/config-board
deleted file mode 100644
index cc0820a..0000000
--- a/arch/arm/boards/beagle/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=beagle
-global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/config-board b/arch/arm/boards/crystalfontz-cfa10036/env/config-board
new file mode 100644
index 0000000..b99866e
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=cfa10036
+global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/config-board b/arch/arm/boards/crystalfontz-cfa10036/env/init/config-board
deleted file mode 100644
index b99866e..0000000
--- a/arch/arm/boards/crystalfontz-cfa10036/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=cfa10036
-global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/config-board b/arch/arm/boards/efika-mx-smartbook/env/config-board
new file mode 100644
index 0000000..22993f9
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/config-board
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=efikasb
+global.linux.bootargs.base="console=ttymxc0,115200"
+
+[ -f /env/config ] && /env/config
diff --git a/arch/arm/boards/efika-mx-smartbook/env/init/config-board b/arch/arm/boards/efika-mx-smartbook/env/init/config-board
deleted file mode 100644
index 22993f9..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/init/config-board
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=efikasb
-global.linux.bootargs.base="console=ttymxc0,115200"
-
-[ -f /env/config ] && /env/config
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/config-board b/arch/arm/boards/freescale-mx51-pdk/env/config-board
new file mode 100644
index 0000000..cfc483e
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=babbage
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/init/config-board b/arch/arm/boards/freescale-mx51-pdk/env/init/config-board
deleted file mode 100644
index cfc483e..0000000
--- a/arch/arm/boards/freescale-mx51-pdk/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=babbage
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx53-loco/env/config-board b/arch/arm/boards/freescale-mx53-loco/env/config-board
new file mode 100644
index 0000000..a6cf69d
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=loco
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx53-loco/env/init/config-board b/arch/arm/boards/freescale-mx53-loco/env/init/config-board
deleted file mode 100644
index a6cf69d..0000000
--- a/arch/arm/boards/freescale-mx53-loco/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=loco
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/config-board b/arch/arm/boards/freescale-mx6-sabrelite/env/config-board
new file mode 100644
index 0000000..e39e4b6
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=SabreLite
+global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board b/arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board
deleted file mode 100644
index e39e4b6..0000000
--- a/arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=SabreLite
-global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/karo-tx53/env/config-board b/arch/arm/boards/karo-tx53/env/config-board
new file mode 100644
index 0000000..3ebfac6
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=tx53
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/karo-tx53/env/init/config-board b/arch/arm/boards/karo-tx53/env/init/config-board
deleted file mode 100644
index 3ebfac6..0000000
--- a/arch/arm/boards/karo-tx53/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=tx53
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/panda/env/config-board b/arch/arm/boards/panda/env/config-board
new file mode 100644
index 0000000..27e7339
--- /dev/null
+++ b/arch/arm/boards/panda/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=panda
+global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/panda/env/init/config-board b/arch/arm/boards/panda/env/init/config-board
deleted file mode 100644
index 27e7339..0000000
--- a/arch/arm/boards/panda/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=panda
-global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/pcm037/env/config-board b/arch/arm/boards/pcm037/env/config-board
new file mode 100644
index 0000000..03f9e97
--- /dev/null
+++ b/arch/arm/boards/pcm037/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=pcm037
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm037/env/init/config-board b/arch/arm/boards/pcm037/env/init/config-board
deleted file mode 100644
index 03f9e97..0000000
--- a/arch/arm/boards/pcm037/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=pcm037
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm038/env/config-board b/arch/arm/boards/pcm038/env/config-board
new file mode 100644
index 0000000..93fd41b
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=pcm038
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm038/env/init/config-board b/arch/arm/boards/pcm038/env/init/config-board
deleted file mode 100644
index 93fd41b..0000000
--- a/arch/arm/boards/pcm038/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=pcm038
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/tqma53/env/config-board b/arch/arm/boards/tqma53/env/config-board
new file mode 100644
index 0000000..4776438
--- /dev/null
+++ b/arch/arm/boards/tqma53/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=tqma53
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/tqma53/env/init/config-board b/arch/arm/boards/tqma53/env/init/config-board
deleted file mode 100644
index 4776438..0000000
--- a/arch/arm/boards/tqma53/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=tqma53
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index bb4abcd..86bb510 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -13,6 +13,7 @@ global linux.bootargs.dyn.ip
 global linux.bootargs.dyn.root
 global editcmd=sedit
 
+/env/config-board
 /env/config
 
 if [ ${global.allow_color} = "true" ]; then
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
