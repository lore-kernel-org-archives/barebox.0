Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPf-0003oB-1G
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:50 +0100
Message-Id: <20171201112256.20196-22-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/27] net: update network docs
To: Barebox List <barebox@lists.infradead.org>

The network configuration has changed in the previous patches. Update
the documentation accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  40 ++++----------
 Documentation/user/networking.rst    | 101 +++++++++++++++++++++++++++++++++--
 2 files changed, 105 insertions(+), 36 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 66f64ece08..b5e4320ef6 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -232,43 +232,20 @@ Network boot
 With the following steps, barebox can start the kernel and root filesystem
 over the network, a standard development case.
 
-Configure network: edit ``/env/network/eth0``. For a standard DHCP setup
-the following is enough:
-
-.. code-block:: sh
-
-  #!/bin/sh
-
-  ip=dhcp
-  serverip=192.168.23.45
-
-The optional setting ``serverip`` specifies the IP address of your TFTP and NFS
-server, and is only necessary if it differs from the server IP offered by the
-DHCP server (i.e., the field ``siaddr`` in the DHCP ACK Reply).
-
-A static IP setup can look like this:
-
-.. code-block:: sh
-
-  #!/bin/sh
-
-  ip=static
-  ipaddr=192.168.2.10
-  netmask=255.255.0.0
-  gateway=192.168.2.1
-  serverip=192.168.2.1
+See :ref:`networking` for informations how to configure your network interfaces.
 
 Note that barebox will pass the same IP settings to the kernel, i.e. it passes
-``ip=$ipaddr:$serverip:$gateway:$netmask::eth0:`` for a static IP setup and
-``ip=dhcp`` for a dynamic DHCP setup.
+``ip=$ipaddr:$serverip:$gateway:$netmask::<linuxdevname>:`` for a static IP setup
+and ``ip=dhcp`` for a dynamic DHCP setup. ``<linuxdevname>`` is a configurable value.
+set ``nv.dev.<ethdev>.linuxdevname`` to the name the device has in Linux.
 
 By default, barebox uses the variables ``global.user`` and ``global.hostname``
 to retrieve its kernel image over TFTP, which makes it possible to use multiple
 boards for multiple users with one single server.
-You can adjust those variables in ``/env/config``::
+You can adjust those variables using nvvars with these commands::
 
-  global.user=sha
-  global.hostname=efikasb
+  nv user=sha
+  nv hostname=efikasb
 
 Copy the kernel (and devicetree if needed) to the root directory of your TFTP
 server, and name them accordingly; for example::
@@ -311,7 +288,8 @@ If the preconfigured paths or names are not suitable, they can be adjusted in
   fi
 
   nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
-  bootargs-ip
+  ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
+  
   global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
 
 ``boot net`` will then retrieve the kernel (and also the device tree and
diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 8afb433837..5822165281 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -1,3 +1,5 @@
+.. _networking:
+
 Networking
 ==========
 
@@ -7,6 +9,49 @@ barebox has IPv4 networking support. Several protocols such as :ref:`DHCP
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
++-------------------+--------------+----------------------------------------------------+
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
@@ -16,10 +61,9 @@ device is usually ``eth0``. The current configuration can be viewed with the
   barebox:/ devinfo eth0
   Parameters:
     ethaddr: 00:1c:49:01:03:4b
-    gateway: 192.168.23.1
     ipaddr: 192.168.23.197
     netmask: 255.255.0.0
-    serverip: 192.168.23.1
+    [...]
 
 The configuration can be changed on the command line with:
 
@@ -30,9 +74,56 @@ The configuration can be changed on the command line with:
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
