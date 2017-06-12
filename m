Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKXOl-0001wC-EJ
 for barebox@lists.infradead.org; Mon, 12 Jun 2017 22:01:25 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Tue, 13 Jun 2017 00:00:47 +0200
Message-Id: <20170612220047.17473-1-r.hieber@pengutronix.de>
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
Subject: [PATCH] Documentation: improve network boot section
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 56 +++++++++++++++++++++++++-----------
 1 file changed, 39 insertions(+), 17 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index f26299efd..f8c45b7de 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -229,10 +229,10 @@ time.
 Network boot
 ------------
 
-With the following steps barebox can start the Kernel and root filesystem
-over network, a standard development case.
+With the following steps, barebox can start the kernel and root filesystem
+over the network, a standard development case.
 
-Configure network: edit ``/env/network/eth0``. For a standard dhcp setup
+Configure network: edit ``/env/network/eth0``. For a standard DHCP setup
 the following is enough:
 
 .. code-block:: sh
@@ -242,8 +242,11 @@ the following is enough:
   ip=dhcp
   serverip=192.168.23.45
 
-serverip is only necessary if it differs from the serverip offered from the dhcp server.
-A static ip setup can look like this:
+The optional setting ``serverip`` specifies the IP address of your TFTP and NFS
+server, and is only necessary if it differs from the server IP offered by the
+DHCP server (i.e., the field ``siaddr`` in the DHCP ACK Reply).
+
+A static IP setup can look like this:
 
 .. code-block:: sh
 
@@ -255,27 +258,43 @@ A static ip setup can look like this:
   gateway=192.168.2.1
   serverip=192.168.2.1
 
-Note that barebox will pass the same ip settings to the kernel, i.e. it passes
-``ip=$ipaddr:$serverip:$gateway:$netmask::eth0:`` for a static ip setup and
-``ip=dhcp`` for a dynamic dhcp setup.
+Note that barebox will pass the same IP settings to the kernel, i.e. it passes
+``ip=$ipaddr:$serverip:$gateway:$netmask::eth0:`` for a static IP setup and
+``ip=dhcp`` for a dynamic DHCP setup.
 
-Adjust ``global.user`` and maybe ``global.hostname`` in ``/env/config``::
+By default, barebox uses the variables ``global.user`` and ``global.hostname``
+to retrieve its kernel image over TFTP, which makes it possible to use multiple
+boards for multiple users with one single server.
+You can adjust those variables in ``/env/config``::
 
   global.user=sha
   global.hostname=efikasb
 
-Copy the kernel (and devicetree if needed) to the base dir of the TFTP server::
+Copy the kernel (and devicetree if needed) to the root directory of your TFTP
+server, and name them accordingly; for example::
 
   cp zImage /tftpboot/sha-linux-efikasb
   cp myboard.dtb /tftpboot/sha-oftree-efikasb
 
-barebox will pass ``nfsroot=/home/${global.user}/nfsroot/${global.hostname}``
-This may be a link to another location on the NFS server. Make sure that the
-link target is exported from the server.
-
-``boot net`` will then start the Kernel.
-
-If the paths or names are not suitable they can be adjusted in
+(In this example, the directory ``/tftpboot`` represents the root directory of
+the TFTP server.
+That directory depends on the configuration of your TFTP server, some servers
+may also use ``/srv/tftp`` instead.)
+
+barebox will pass ``nfsroot=/home/${global.user}/nfsroot/${global.hostname}`` to
+the kernel.
+This causes the kernel to mount its root filesystem from a NFS server, which is
+detected through the DHCP reply.
+To choose a different server, simply prepend its IP address to the mount path,
+e.g. ``nfsroot=192.168.23.5:/home/...``.
+In any case, make sure that the specified mountpoint is exported by your NFS
+server.
+
+For more information about booting with ``nfsroot``, see
+`Documentation/filesystems/nfs/nfsroot.txt <https://github.com/torvalds/linux/blob/master/Documentation/filesystems/nfs/nfsroot.txt>`__
+in the Linux kernel documentation.
+
+If the preconfigured paths or names are not suitable, they can be adjusted in
 ``/env/boot/net``:
 
 .. code-block:: sh
@@ -294,3 +313,6 @@ If the paths or names are not suitable they can be adjusted in
   nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
   bootargs-ip
   global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+
+``boot net`` will then retrieve the kernel (and also the device tree and
+initramfs, if used) over TFTP and boot it.
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
