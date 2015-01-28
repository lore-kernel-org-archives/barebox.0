Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGOTl-0005ez-BM
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 09:00:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 09:59:41 +0100
Message-Id: <1422435581-31262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] boards: remove hardcoded MAC addresses
To: Barebox List <barebox@lists.infradead.org>

There should be no hardcoded MAC addresses in the default environments.
Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/env/config              | 2 +-
 arch/arm/boards/a9m2440/env/config              | 2 +-
 arch/arm/boards/edb93xx/env/config              | 2 +-
 arch/arm/boards/freescale-mx25-3ds/env/config   | 2 +-
 arch/arm/boards/friendlyarm-mini6410/env/config | 2 +-
 arch/arm/boards/friendlyarm-tiny6410/env/config | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/a9m2410/env/config b/arch/arm/boards/a9m2410/env/config
index 79150ce..2b09318 100644
--- a/arch/arm/boards/a9m2410/env/config
+++ b/arch/arm/boards/a9m2410/env/config
@@ -23,4 +23,4 @@ eth0.ipaddr=192.168.42.31
 eth0.netmask=255.255.0.0
 eth0.gateway=192.168.23.1
 eth0.serverip=192.168.23.2
-eth0.ethaddr=00:04:f3:00:06:35
+#eth0.ethaddr=
diff --git a/arch/arm/boards/a9m2440/env/config b/arch/arm/boards/a9m2440/env/config
index 936c35f..d1fb01b 100644
--- a/arch/arm/boards/a9m2440/env/config
+++ b/arch/arm/boards/a9m2440/env/config
@@ -23,4 +23,4 @@ eth0.ipaddr=192.168.42.32
 eth0.netmask=255.255.0.0
 eth0.gateway=192.168.23.1
 eth0.serverip=192.168.23.2
-eth0.ethaddr=00:04:f3:00:06:35
+#eth0.ethaddr=
diff --git a/arch/arm/boards/edb93xx/env/config b/arch/arm/boards/edb93xx/env/config
index 47ab209..3266272 100644
--- a/arch/arm/boards/edb93xx/env/config
+++ b/arch/arm/boards/edb93xx/env/config
@@ -3,7 +3,7 @@
 eth0.ipaddr=192.168.0.50
 eth0.netmask=255.255.0.0
 eth0.serverip=192.168.0.8
-eth0.ethaddr=80:81:82:83:84:85
+#eth0.ethaddr=
 
 board=edb9301
 autoboot_timeout=3
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/config b/arch/arm/boards/freescale-mx25-3ds/env/config
index a5e492e..8469935 100644
--- a/arch/arm/boards/freescale-mx25-3ds/env/config
+++ b/arch/arm/boards/freescale-mx25-3ds/env/config
@@ -26,4 +26,4 @@ eth0.ipaddr=192.168.3.11
 eth0.netmask=255.255.255.0
 #eth0.gateway=a.b.c.d
 eth0.serverip=192.168.3.10
-eth0.ethaddr=00:50:c2:8c:e6:0e
+#eth0.ethaddr=
diff --git a/arch/arm/boards/friendlyarm-mini6410/env/config b/arch/arm/boards/friendlyarm-mini6410/env/config
index a1c86e1..74beeff 100644
--- a/arch/arm/boards/friendlyarm-mini6410/env/config
+++ b/arch/arm/boards/friendlyarm-mini6410/env/config
@@ -12,7 +12,7 @@ ip=dhcp
 #eth0.ipaddr=a.b.c.d.e
 #eth0.netmask=a.b.c.d.e
 #eth0.gateway=a.b.c.d.e
-eth0.ethaddr=08:90:90:90:90:90
+#eth0.ethaddr=
 
 # can be either 'nfs', 'tftp' or 'nand'
 kernel_loc=tftp
diff --git a/arch/arm/boards/friendlyarm-tiny6410/env/config b/arch/arm/boards/friendlyarm-tiny6410/env/config
index 35d0fac..6422e9f 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/env/config
+++ b/arch/arm/boards/friendlyarm-tiny6410/env/config
@@ -12,7 +12,7 @@ ip=dhcp
 #eth0.ipaddr=a.b.c.d.e
 #eth0.netmask=a.b.c.d.e
 #eth0.gateway=a.b.c.d.e
-eth0.ethaddr=08:90:90:90:90:90
+#eth0.ethaddr=
 
 # can be either 'nfs', 'tftp' or 'nand'
 kernel_loc=tftp
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
