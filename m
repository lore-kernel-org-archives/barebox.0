Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8d-0004Xo-F7
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:22:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Rxa8U-0001k9-US
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:22:46 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1Rxa8U-0003QZ-TR
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:22:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:33 +0100
Message-Id: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: cleanup filesystem core
To: barebox@lists.infradead.org

This series cleans up the filesystem core. The great goal of this series is to
allow unmounting a fileystem by just unregistering the device.
unmount already goes down to unregister a device, but unmount also cleans up
the allocated ressources. We move the filesystem drivers/devices to their own
bus which allows us to clean up the resources in the busses remove function so
that a filesystem can be unmounted *and* cleaned up by unregistering the device.

With this series (and the preceding one) it's possible to call the 'usb' command
on a panda board multiple times without crashing barebox. I tested this with
the onboard USB network adapter and a USB flash drive with a FAT mounted.

Sascha

Sascha Hauer (12):
      add list_is_singular
      dos partitions: Do not register as fixed partitions
      fs: Store mtab entries in list
      fs: make locally used function get_mtab_entry_by_path static
      fs: Store mtab path in allocated string
      fs: remove unused function fsdev_get_mountpoint
      fs: simplify get_mtab_entry_by_path
      fs: remove only once used variable
      fs: remove fs devices list
      fs: put fs devices on its own bus
      fs: allow to mount on subdirectories
      devices: unregister children when unregistering a device

 commands/mount.c      |   17 ++--
 common/partitions.c   |    2 +-
 drivers/base/driver.c |   20 +++-
 fs/fs.c               |  233 ++++++++++++++++++++++--------------------------
 include/fs.h          |   19 ++---
 include/linux/list.h  |    9 ++
 6 files changed, 145 insertions(+), 155 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
