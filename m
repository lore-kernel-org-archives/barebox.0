Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn3u-00015i-Fh
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:22:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1afn3Z-0000x5-IG
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 12:22:33 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86_2)
 (envelope-from <sha@pengutronix.de>) id 1afn3Z-00023m-7K
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 12:22:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:22:24 +0100
Message-Id: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Let ubiformat umount / detach users
To: Barebox List <barebox@lists.infradead.org>

This is a rebase of the series Markus sent earlier on the recent
ubiformat changes.

Sascha

----------------------------------------------------------------
Markus Pargmann (3):
      fs: umount based on device path and mount path
      fs: Add for_each_fs_device_safe()
      ubiformat: Cleanly umount and detach the ubi before formating

Sascha Hauer (5):
      mtd: ubi: rename cdev.c to barebox.c
      mtd: ubi: make ubi_detach_mtd_dev ubi internal
      mtd: ubi: umount mounted volumes before detaching a ubi device
      mtd: ubi: Add function to get ubi number from mtd device
      commands: ubidetach: Allow mtd devices as argument

 commands/ubi.c                        | 30 +++++++++++++++---
 commands/ubiformat.c                  | 24 +++++++++++++--
 commands/umount.c                     |  2 +-
 drivers/mtd/ubi/Makefile              |  2 +-
 drivers/mtd/ubi/{cdev.c => barebox.c} | 57 +++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/ubi.h                 |  1 +
 fs/fs.c                               | 48 +++++++++++++++++++++++++++--
 include/fs.h                          |  2 ++
 include/mtd/ubi-user.h                |  3 +-
 9 files changed, 157 insertions(+), 12 deletions(-)
 rename drivers/mtd/ubi/{cdev.c => barebox.c} (83%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
