Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Tnd-0004U2-Ma
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:34 +0000
Received: by mail-wi0-f180.google.com with SMTP id hi2so2581888wib.1
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:11 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:18 +0200
Message-Id: <1403866821-4029-10-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
References: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 09/12] doc: remove board type from barebox prompt examples
To: barebox@lists.infradead.org

I kept however the one example that directly demos the bootup on an
Efika board.
---
 Documentation/user/driver-model.rst |   10 +++++-----
 Documentation/user/networking.rst   |    2 +-
 Documentation/user/updating.rst     |    2 +-
 Documentation/user/variables.rst    |    2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/user/driver-model.rst b/Documentation/user/driver-model.rst
index fae275e..ab7d292 100644
--- a/Documentation/user/driver-model.rst
+++ b/Documentation/user/driver-model.rst
@@ -34,7 +34,7 @@ handled with device detection. The user visible interface to device detection
 is the :ref:`command_detect` command. ``detect -l`` shows a list of detectable
 devices::
 
-  barebox@Genesi Efika MX Smartbook:/ detect -l
+  barebox:/ detect -l
   70004000.esdhc
   70008000.esdhc
   73f80000.usb
@@ -48,7 +48,7 @@ devices::
 
 A particular device can be detected with ``detect <devname>``::
 
-  barebox@Genesi Efika MX Smartbook:/ detect 73f80200.usb
+  barebox:/ detect 73f80200.usb
   Found SMSC USB331x ULPI transceiver (0x0424:0x0006).
   Bus 002 Device 004: ID 13d3:3273 802.11 n WLAN
   mdio_bus: miibus0: probed
@@ -67,7 +67,7 @@ additional information for a device. The parameters can be listed with the
 :ref:`command_devinfo` command. A ``devinfo <devicename>`` will print the parameters
 of a device::
 
-  barebox@Genesi Efika MX Smartbook:/ devinfo eth0
+  barebox:/ devinfo eth0
   Parameters:
     ipaddr: 192.168.23.197
     serverip: 192.168.23.1
@@ -82,9 +82,9 @@ The parameters can be used as shell variables::
 
 device variables may have a type, so assigning wrong values may fail::
 
-  barebox@Genesi Efika MX Smartbook:/ eth0.ipaddr="This is not an IP"
+  barebox:/ eth0.ipaddr="This is not an IP"
   set parameter: Invalid argument
-  barebox@Genesi Efika MX Smartbook:/ echo $?
+  barebox:/ echo $?
   1
 
 **HINT:** barebox has tab completion for variables. Typing ``eth0.<TAB><TAB>``
diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index c22685f..9c6eeb6 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -14,7 +14,7 @@ device is usually ``eth0``. The current configuration can be viewed with the
 
 .. code-block:: sh
 
-  barebox@Genesi Efika MX Smartbook:/ devinfo eth0
+  barebox:/ devinfo eth0
   Parameters:
     ipaddr: 192.168.23.197
     serverip: 192.168.23.1
diff --git a/Documentation/user/updating.rst b/Documentation/user/updating.rst
index 0503e7d..2a963b6 100644
--- a/Documentation/user/updating.rst
+++ b/Documentation/user/updating.rst
@@ -18,7 +18,7 @@ Updating barebox can be as easy as::
 Multiple handlers can be registered to the update mechanism. Usually the device
 barebox has been started from is registered as default (marked with a ``*``)::
 
-  barebox@Genesi Efika MX Smartbook:/ barebox_update -l
+  barebox:/ barebox_update -l
   registered update handlers:
   * mmc         -> /dev/mmc1
     spinor	-> /dev/m25p0
diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index e349874..13477a0 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -33,7 +33,7 @@ Since it's hard to remember which variables these are and if the current
 barebox has support for them the :ref:`command_magicvar` command can print a list
 of all variables with special meaning along with a short description::
 
-  barebox@Genesi Efika MX Smartbook:/ magicvar
+  barebox:/ magicvar
   OPTARG                           optarg for hush builtin getopt
   PATH                             colon separated list of pathes to search for executables
   PS1                              hush prompt
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
