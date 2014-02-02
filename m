Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WA3jH-0007qb-Lm
 for barebox@lists.infradead.org; Sun, 02 Feb 2014 20:33:25 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1WA3it-0008V9-EV
 for barebox@lists.infradead.org; Sun, 02 Feb 2014 21:32:59 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <mgr@pengutronix.de>) id 1WA3it-0001ul-DY
 for barebox@lists.infradead.org; Sun, 02 Feb 2014 21:32:59 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Sun,  2 Feb 2014 21:32:49 +0100
Message-Id: <1391373169-7304-2-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1391373169-7304-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1391373169-7304-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/2] sandbox: update to new environment
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/sandbox/board/env/bin/init     |  7 -------
 arch/sandbox/board/env/config       |  8 --------
 arch/sandbox/board/env/network/eth0 | 11 +++++++++++
 3 files changed, 11 insertions(+), 15 deletions(-)
 delete mode 100644 arch/sandbox/board/env/bin/init
 delete mode 100644 arch/sandbox/board/env/config
 create mode 100644 arch/sandbox/board/env/network/eth0

diff --git a/arch/sandbox/board/env/bin/init b/arch/sandbox/board/env/bin/init
deleted file mode 100644
index a7cb7d563d9a..000000000000
--- a/arch/sandbox/board/env/bin/init
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
diff --git a/arch/sandbox/board/env/config b/arch/sandbox/board/env/config
deleted file mode 100644
index 2b148b6daa6b..000000000000
--- a/arch/sandbox/board/env/config
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-eth0.ipaddr=172.0.0.2
-eth0.netmask=255.255.255.0
-eth0.gateway=172.0.0.1
-eth0.serverip=172.0.0.1
-eth0.ethaddr=80:81:82:83:84:85
-
diff --git a/arch/sandbox/board/env/network/eth0 b/arch/sandbox/board/env/network/eth0
new file mode 100644
index 000000000000..17e0c185f593
--- /dev/null
+++ b/arch/sandbox/board/env/network/eth0
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+# ip setting (static/dhcp)
+ip=static
+
+# static setup used if ip=static
+ipaddr=172.0.0.2
+netmask=255.255.255.0
+gateway=172.0.0.1
+serverip=172.0.0.1
+ethaddr=80:81:82:83:84:85
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
