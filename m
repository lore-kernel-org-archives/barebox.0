Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96c-0008Jo-1W
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:34 +0100
Message-Id: <20171124081237.6830-19-s.hauer@pengutronix.de>
In-Reply-To: <20171124081237.6830-1-s.hauer@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/21] net: update network docs
To: Barebox List <barebox@lists.infradead.org>

The network configuration has changed in the previous patches. Update
the documentation accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/networking.rst | 99 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 94 insertions(+), 5 deletions(-)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 8afb433837..53fa5b3c40 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -7,6 +7,49 @@ barebox has IPv4 networking support. Several protocols such as :ref:`DHCP
 Network configuration
 ---------------------
 
+Lowlevel network device configuration
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Network devices are configured with a set of device specific variables:
+
++-------------------+--------------+----------------------------------------------------+
+| name              | type         |                                                    |
++===================+==============+====================================================+
+| <devname>.mode    | enum         | "dhcp": DHCP is used to get IP address and netmask |
+|                   |              | "static": Static IP setup described by variables   |
+|                   |              | below                                              |
+|                   |              | "disabled": Interface unused                       |
++===================+==============+====================================================+
+| <devname>.ipaddr  | ipv4 address | The IP address when using static configuration     |
++-------------------+--------------+----------------------------------------------------+
+| <devname>.netmask | ipv4 address | The netmask when using static configuration        |
++-------------------+--------------+----------------------------------------------------+
+| <devname>.gateway | ipv4 address | Alias for global.net.gateway. For                  |
+|                   |              | compatibility, do not use.                         |
++-------------------+--------------+----------------------------------------------------+
+| <devname>.serverip| ipv4 address | Alias for global.net.server. For                   |
+|                   |              | compatibility, do not use.                         |
++-------------------+--------------+----------------------------------------------------+
+| <devname>.ethaddr | MAC address  | The MAC address of this device                     |
++-------------------+--------------+----------------------------------------------------+
+
+Additionally there are some more variables that are not specific to a
+device:
+
++------------------------------+--------------+------------------------------------------------+
+| name                         | type         |                                                |
++==============================+==============+================================================+
+| global.net.gateway           | ipv4 host    | The network gateway used when a host is not in |
+|                              |              | any directly visible subnet. May be set        |
+|                              |              | automatically by DHCP.                         |
++------------------------------+--------------+------------------------------------------------+
+| global.net.server            | ipv4 host    | The default server address. If unspecified, may|
+|                              |              | be set by DHCP                                 |
++------------------------------+--------------+------------------------------------------------+
+| global.net.nameserver        | ipv4 address | The DNS server used for resolving host names.  |
+|                              |              | May be set by DHCP                             |
++------------------------------+--------------+------------------------------------------------+
+
 The first step for networking is configuring the network device. The network
 device is usually ``eth0``. The current configuration can be viewed with the
 :ref:`devinfo <command_devinfo>` command:
@@ -16,10 +59,9 @@ device is usually ``eth0``. The current configuration can be viewed with the
   barebox:/ devinfo eth0
   Parameters:
     ethaddr: 00:1c:49:01:03:4b
-    gateway: 192.168.23.1
     ipaddr: 192.168.23.197
     netmask: 255.255.0.0
-    serverip: 192.168.23.1
+    [...]
 
 The configuration can be changed on the command line with:
 
@@ -30,9 +72,56 @@ The configuration can be changed on the command line with:
 The :ref:`dhcp command <command_dhcp>` will change the settings based on the answer
 from the DHCP server.
 
-This low-level configuration of the network interface is often not necessary. Normally
-the network settings should be edited in ``/env/network/eth0``, then the network interface
-can be brought up using the :ref:`ifup command <command_ifup>`.
+To make the network device settings persistent across reboots there is a nonvolatile
+variable (nvvar) for each of the varariables above. The network device specific variables
+are:
+
+.. code-block:: sh
+
+  nv.dev.<devname>.mode
+  nv.dev.<devname>.ipaddr
+  nv.dev.<devname>.netmask
+  nv.dev.<devname>.ethaddr
+
+The others are:
+
+.. code-block:: sh
+
+  nv.net.gateway
+  nv.net.server
+  nv.net.nameserver
+
+A typical simple network setting is to use DHCP. Provided the network interface is eth0
+then this would configure the network device for DHCP:
+
+.. code-block:: sh
+
+  nv dev.eth0.mode=dhcp
+
+(In fact DHCP is the default, so the above is not necessary)
+
+A static setup would look like:
+
+.. code-block:: sh
+
+  nv dev.eth0.mode=static
+  nv dev.eth0.ipaddr=192.168.0.17
+  nv dev.eth0.netmask=255.255.0.0
+  nv net.server=192.168.0.1
+
+The settings can be activated with the :ref:`ifup command <command_ifup>`:
+
+.. code-block:: sh
+
+  ifup eth0
+
+or:
+
+.. code-block:: sh
+
+  ifup -a
+
+'ifup -a' will activate all ethernet interfaces, also the ones on USB.
 
 Network filesystems
 -------------------
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
