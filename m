Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKUmt-0004xY-2B
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 11:42:27 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 12:42:15 +0100
Message-Id: <1290426135-12984-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1290426135-12984-1-git-send-email-jbe@pengutronix.de>
References: <1290426135-12984-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] Add some documentation about MCI card handling
To: barebox@lists.infradead.org

Give the users a small intro how to work with MCI cards in barebox

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 Documentation/developers_manual.dox |    1 +
 Documentation/users_manual.dox      |    1 +
 drivers/mci/mci-core.c              |  118 +++++++++++++++++++++++++++++++++++
 3 files changed, 120 insertions(+), 0 deletions(-)

diff --git a/Documentation/developers_manual.dox b/Documentation/developers_manual.dox
index 2f7d360..7213526 100644
--- a/Documentation/developers_manual.dox
+++ b/Documentation/developers_manual.dox
@@ -18,6 +18,7 @@ This part of the documentation is intended for developers of @a barebox.
 @li @subpage how_mount_works
 @li @subpage boot_preparation
 @li @subpage barebox_simul
+@li @subpage mci_for_developers
 @li @subpage io_access_functions
 @li @subpage mcfv4e_MCDlib
 
diff --git a/Documentation/users_manual.dox b/Documentation/users_manual.dox
index ea47b18..94061df 100644
--- a/Documentation/users_manual.dox
+++ b/Documentation/users_manual.dox
@@ -8,6 +8,7 @@ you find a lot of nice tricks on these pages to make your life easier.
 @li @subpage first_steps
 @li @subpage command_reference
 @li @subpage gpio_for_users
+@li @subpage mci_for_users
 
 \todo Rework the following sections
 @li @subpage shell_notes
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a8aa486..743e1ff 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1358,3 +1358,121 @@ int mci_register(struct mci_host *host)
 
 	return register_device(mci_dev);
 }
+
+/**
+ * @page mci_for_developers MCI information for developers
+ *
+ * Pay attention
+ * - Provide an MCI clock to let the card do its reset
+ * - Provide power supply to the socket, as there is no callback in the generic
+ *   driver to do so
+ *
+ * If your MCI host hardware is slow, you should avoid the card probing at
+ * system startup. Do it on demand only in this case. This can be achieved by
+ * disabling the MCI_STARTUP menu entry.
+ */
+
+/**
+@page mci_for_users MCI card handling
+
+MCI cards are handled like regular disks in @b barebox. When a card is
+detected, access gets added to the system as @b /dev/disk0. If @b barebox
+detects a partition table in the first sector, it also adds these partitions as
+@b /dev/disk0.0 , @b dev/disk0.1 and so on.
+
+All these disk devices can be used with the command @b md, @b mw, @b cp,
+@b bootm in a regular manner.
+
+@verbatim
+barebox:/ devinfo
+devices:
+|----s3c24x0_serial0
+|----cs0
+|----ramfs0
+|----devfs0
+|----mem0 (defaultenv)
+|----mem1 (mem)
+|----s3c_mci0
+|----disk0 (disk0, disk0.0)
+|----s3cfb0
+|----framebuffer0 (fb0)
+|----s3c24x0_nand0
+|----nand0 (nand0, nand_oob0, self_raw, env_raw, nand0.uboot, nand0.ubootenv, nand0.kernel, nand0.root)
+|----mem2 (ram0)
+|----cs89000
+|----eth0
+
+drivers:
+s3c24x0_serial
+     ramfs
+     devfs
+    cs8900
+s3c24x0_nand
+      disk
+framebuffer
+     s3cfb
+   s3c_mci
+       mem
+@endverbatim
+
+The device in question is the @b mci0. Run the @b devinfo command again on
+this device.
+
+@verbatim
+barebox:/ devinfo mci0
+base  : 0x00000000
+size  : 0x3d600000
+driver: mci
+
+ Card:
+  Attached is an SD Card (Version: 2.0)
+  Capacity: 982 MiB
+   CID: 1C535653-44432020-10000000-1800849F
+   CSD: 005E0032-5F5983D5-EDB7FF9F-964000C1
+  Max. transfer speed: 25000000 Hz
+  Manufacturer ID: 1C
+  OEM/Application ID: 5356
+  Product name: 'SDC  '
+  Product revision: 1.0
+  Serial no: 24
+  Manufacturing date: 4.2008
+no parameters available
+@endverbatim
+
+In this case probing the MCI card has happend successfully at system startup.
+Probing at this early point of time can be necessary for systems that depends
+on data from this kind of storage (for example if the persistant environment is
+stored on the MCI card).
+
+As probing an MCI card may take some seconds, it could be useful to do this
+on demand only (if not otherwise required). In this case the @b devinfo
+shows different information about the MCI card prior probing:
+
+@verbatim
+barebox:/ devinfo mci0
+base  : 0x00000000
+size  : 0x00000000
+driver: mci
+
+ Card:
+   Not probed yet.
+
+parameters
+     probe = 0
+@endverbatim
+
+@note The MCI card should already be inserted when powering the system, as
+@b barebox does not support runtime power supply switching.
+
+To do the MCI card probing right now, just enter:
+@verbatim
+barebox:/ mci0.probe=1
+@endverbatim
+
+@note @b barebox currently cannot really cope with hot plug (its a bootloader
+only, not an operating system...). So, unplugging an already probed card and
+replacing it by another one and also probing this new card may crash your
+system (and might also destroy the MCI card, as unplugging and plugging happens
+while the socket is "hot").
+
+*/
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
