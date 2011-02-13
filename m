Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PohDv-0003Fb-89
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 19:03:08 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PohDs-00036O-Kr
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 20:03:04 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 13 Feb 2011 20:01:04 +0100
References: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
	<1297606252-802-16-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297606252-802-16-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201102132001.04701.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: mini2440: Forgotten patches to make it work (1 of 2)
To: barebox@lists.infradead.org

From: Juergen Beisert <juergen@kreuzholzen.de>
Subject: mini2440: Make barebox able to save a runtime environment

Without this modification saving a modified environment ends up with:

mini2440:/ saveenv
saving environment
could not open /dev/env0: Read-only file system

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>

---
 arch/arm/boards/mini2440/mini2440.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

Index: barebox-2011.01.0/arch/arm/boards/mini2440/mini2440.c
===================================================================
--- barebox-2011.01.0.orig/arch/arm/boards/mini2440/mini2440.c
+++ barebox-2011.01.0/arch/arm/boards/mini2440/mini2440.c
@@ -262,11 +262,11 @@ static int mini2440_devices_init(void)
 	/* ----------- add some vital partitions -------- */
 	devfs_del_partition("self_raw");
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", NULL);
+	dev_add_bb_dev("self_raw", "self0");
 
 	devfs_del_partition("env_raw");
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", NULL);
+	dev_add_bb_dev("env_raw", "env0");
 #endif
 	register_device(&mci_dev);
 	armlinux_add_dram(&sdram_dev);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
