Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPw-0003OH-Cy
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 22/27] net: environment: remove ethx setup files
Date: Fri,  1 Dec 2017 12:22:51 +0100
Message-Id: <20171201112256.20196-23-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Network configuration is now done with nvvars, so /env/network/eth*
files are no longer needed. Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/afi-gf/defaultenv-gf/network/eth1      | 18 ------------------
 .../defaultenv-pico-hobbit/network/eth1                | 18 ------------------
 .../boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1 | 18 ------------------
 defaultenv/defaultenv-2-base/network/eth0              | 18 ------------------
 4 files changed, 72 deletions(-)
 delete mode 100644 arch/arm/boards/afi-gf/defaultenv-gf/network/eth1
 delete mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
 delete mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1
 delete mode 100644 defaultenv/defaultenv-2-base/network/eth0

diff --git a/arch/arm/boards/afi-gf/defaultenv-gf/network/eth1 b/arch/arm/boards/afi-gf/defaultenv-gf/network/eth1
deleted file mode 100644
index 1ed3017e96..0000000000
--- a/arch/arm/boards/afi-gf/defaultenv-gf/network/eth1
+++ /dev/null
@@ -1,18 +0,0 @@
-#!/bin/sh
-
-# ip setting (static/dhcp)
-ip=dhcp
-global.dhcp.vendor_id=barebox-${global.hostname}
-
-# static setup used if ip=static
-ipaddr=
-netmask=
-gateway=
-serverip=
-
-# MAC address if needed
-#ethaddr=xx:xx:xx:xx:xx:xx
-
-# put code to discover eth1 (i.e. 'usb') to /env/network/eth0-discover
-
-exit 0
diff --git a/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1 b/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
deleted file mode 100644
index dfe63971df..0000000000
--- a/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
+++ /dev/null
@@ -1,18 +0,0 @@
-#!/bin/sh
-
-# ip setting (static/dhcp)
-ip=dhcp
-global.dhcp.vendor_id=barebox-${global.hostname}
-
-# static setup used if ip=static
-ipaddr=
-netmask=
-gateway=
-serverip=
-
-# MAC address if needed
-#ethaddr=xx:xx:xx:xx:xx:xx
-
-# put code to discover eth1 (i.e. 'usb') to /env/network/eth1-discover
-
-exit 0
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1 b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1
deleted file mode 100644
index 33fe7c1b2b..0000000000
--- a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1
+++ /dev/null
@@ -1,18 +0,0 @@
-#!/bin/sh
-
-# ip setting (static/dhcp)
-ip=dhcp
-global.dhcp.vendor_id=barebox-${global.hostname}
-
-# static setup used if ip=static
-ipaddr=
-netmask=
-gateway=
-serverip=
-
-# MAC address if needed
-#ethaddr=xx:xx:xx:xx:xx:xx
-
-# put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
-
-exit 0
diff --git a/defaultenv/defaultenv-2-base/network/eth0 b/defaultenv/defaultenv-2-base/network/eth0
deleted file mode 100644
index 33fe7c1b2b..0000000000
--- a/defaultenv/defaultenv-2-base/network/eth0
+++ /dev/null
@@ -1,18 +0,0 @@
-#!/bin/sh
-
-# ip setting (static/dhcp)
-ip=dhcp
-global.dhcp.vendor_id=barebox-${global.hostname}
-
-# static setup used if ip=static
-ipaddr=
-netmask=
-gateway=
-serverip=
-
-# MAC address if needed
-#ethaddr=xx:xx:xx:xx:xx:xx
-
-# put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
-
-exit 0
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
