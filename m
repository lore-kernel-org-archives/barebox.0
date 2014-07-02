Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2Pig-0006Cd-2t
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 18:57:27 +0000
Received: from [99.240.204.5] (port=44614 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X2PiK-0006vM-NR
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 14:57:04 -0400
Date: Wed, 2 Jul 2014 14:57:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407021455390.4202@localhost>
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
Subject: [PATCH] Documentation: Numerous typoes/fixes in first few chapters
 of user manual.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Doc fixes such as:

 * font changes
 * spelling
 * punctuation
 * capitalization

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  user manual up to, but not including, chapter on hush shell, since i
better try not to do all of this in a single shot.

diff --git a/Documentation/user/automount.rst b/Documentation/user/automount.rst
index d13eaf1..a5e4313 100644
--- a/Documentation/user/automount.rst
+++ b/Documentation/user/automount.rst
@@ -15,18 +15,18 @@ TFTP server, the following is required::
   mkdir -p /mnt/tftp
   automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'

-This creates an automountpoint on /mnt/tftp. Whenever this directory is accessed,
+This creates an automountpoint on ``/mnt/tftp``. Whenever this directory is accessed,
 the command ``ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp`` is executed.
 It will bring up the network device using :ref:`command_ifup` and mount a TFTP filesystem
 using :ref:`command_mount`.

-Usually the above automount command is executed from an init script in /env/init/automount.
+Usually the above automount command is executed from an init script in ``/env/init/automount``.
 With the above, files on the TFTP server can be accessed without configuration::

   cp /mnt/tftp/linuximage /image

 This automatically detects a USB mass storage device and mounts the first
-partition to /mnt/fat::
+partition to ``/mnt/fat``::

   mkdir -p /mnt/fat
   automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/fat'
diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 6a679c0..caf544d 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -44,7 +44,7 @@ barebox uses Kconfig from the Linux kernel as a configuration tool,
 where all configuration is done via the ``make`` command. Before running
 it you have to specify your architecture with the ``ARCH`` environment
 variable and the cross compiler with the ``CROSS_COMPILE`` environment
-variable. ``ARCH`` has to be one of:
+variable. Currently, ``ARCH`` must be one of:

 * arm
 * blackfin
diff --git a/Documentation/user/driver-model.rst b/Documentation/user/driver-model.rst
index f4b3bb9..ce70835 100644
--- a/Documentation/user/driver-model.rst
+++ b/Documentation/user/driver-model.rst
@@ -2,8 +2,8 @@ Driver model
 ============

 barebox has a driver model. This matches the devices on a board with their
-corresponding drivers. From a users point of view this is mostly visible in the
-:ref:`command_devinfo` and :ref:`command_drvinfo` command. Without arguments
+corresponding drivers. From a user's point of view this is mostly visible in the
+:ref:`command_devinfo` and :ref:`command_drvinfo` commands. Without arguments
 the :ref:`command_devinfo` command will show a hierarchical list of devices
 found on the board. As this may be instantiated from the :ref:`devicetree`
 there may be devices listed for which no driver is available. The
diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index 8eb5860..8a980a7 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -1,23 +1,25 @@
 Introduction
 ============

-This is the barebox user manual. It describes how to configure, compile
-and run barebox on Embedded Systems.
+This is the barebox user manual, which describes how to configure, compile
+and run barebox on embedded systems.

 barebox (just barebox, not *the* barebox) is a bootloader designed for
-Embedded Systems. It runs on a variety of ARM, MIPS, PowerPC based SoCs.
+embedded systems. It runs on a variety of architectures including
+x86, ARM, MIPS, PowerPC and others.
+
 barebox aims to be a versatile and flexible bootloader, not only for
-booting Embedded Linux Systems but also for initial hardware bringup and
-development. barebox is highly configurable to be suitable as a full featured
-development binary to a lean production system. Just like busybox is the swiss
-army knife for Embedded Linux, barebox is the swiss army knife for bare metal,
-hence the name.
+booting embedded Linux systems, but also for initial hardware bringup and
+development. barebox is highly configurable to be suitable as a full-featured
+development binary as well as for lean production systems.
+Just like busybox is the Swiss Army Knife for embedded Linux,
+barebox is the Swiss Army Knife for bare metal, hence the name.

 Feedback
 --------

 For sending patches, asking for help and giving general feedback you are
-always welcome to write a mail to the barebox mailing list. Most of the
+always welcome to write an e-mail to the barebox mailing list. Most of the
 discussion of barebox takes place here:

 http://lists.infradead.org/mailman/listinfo/barebox/
diff --git a/Documentation/user/memory-areas.rst b/Documentation/user/memory-areas.rst
index ab874c7..6c5bab3 100644
--- a/Documentation/user/memory-areas.rst
+++ b/Documentation/user/memory-areas.rst
@@ -1,8 +1,8 @@
 Memory areas
 ============

-Several barebox commands like :ref:`command_md`, erase or crc work on an area
-of memory. Areas have the following form::
+Several barebox commands like :ref:`command_md`, :ref:`command_erase`
+or :ref:`command_crc` work on an area of memory. Areas have the following form::

   <start>-<end>

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 9c6eeb6..6802138 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -31,7 +31,7 @@ The configuration can be changed on the command line with:
 The :ref:`command_dhcp` command will change the settings based on the answer
 from the DHCP server.

-This low level configuration of the network interface is often not necessary. Normally
+This low-level configuration of the network interface is often not necessary. Normally
 the network settings should be edited in ``/env/network/eth0``, then the network interface
 can be brought up using the :ref:`command_ifup` command.

@@ -58,8 +58,8 @@ mounting transparent to the user.
 Network console
 ---------------

-barebox has a udp based network console. If enabled in the config, you will see
-something like this during startup:
+barebox has a UDP-based network console. If enabled in the config, you will see
+something like this during startup::

   registered netconsole as cs1

@@ -71,7 +71,7 @@ risks. It can be enabled using:
   cs1.ip=192.168.23.2
   cs1.active=ioe

-This will send udp packets to 192.168.23.2 on port 6666. On 192.168.23.2 the
+This will send UDP packets to 192.168.23.2 on port 6666. On 192.168.23.2 the
 scripts/netconsole script can be used to control barebox:

 .. code-block:: sh
diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index 1aced28..a13de1b 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -31,7 +31,7 @@ Magic variables
 ---------------

 Some variables have special meanings and influence the behaviour
-of barebox. Most but not all of them are consolidated in the :ref:`global_device`
+of barebox. Most but not all of them are consolidated in the :ref:`global_device`.
 Since it's hard to remember which variables these are and if the current
 barebox has support for them the :ref:`command_magicvar` command can print a list
 of all variables with special meaning along with a short description::

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
