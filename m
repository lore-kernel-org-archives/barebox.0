Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKlx-0004P4-0I
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:04:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VdKlb-0000cQ-1j
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 15:04:31 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VdKlb-0007kk-0f
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 15:04:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:19 +0100
Message-Id: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: bootspec work
To: barebox@lists.infradead.org

The bootloader spec defines a single /boot per device. This is very
good for the general purpose distribution usecase. This extension
is mostly useful for embedded systems (for which barebox was written).
On embdedded systems we often have images which contain both a kernel
and a rootfilesystem. These images are sometimes written to a device
multiple times for redundancy reasons. With this series no longer a
single /boot is required, but instead bootspec entries can be on
every partition of a device. So now we can not only 'boot emmc0', but
also 'boot emmc0.1' for booting a partition on am emmc device.
Also now a path containing bootspec entries can be given which will
be useful for NFS boot for example.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      kernel-install: Add missing error messages
      blspec: Push device_detect into blspec_scan_device
      blspec: rename _hwdevice functions to _devicename
      blspec: Allow to boot partitions
      blspec: Let scan functions return the number of entries found
      fs: Add function to get cdev by mountpath
      blspec: make cdev optional
      boot: Print boot entries in the order they are
      boot command: make more flexible
      blspec: Make error message more clear
      boot command: Add timeout support for menu

 commands/boot.c          | 351 ++++++++++++++++++++++++++++-------------------
 common/blspec.c          | 104 +++++++++-----
 fs/fs.c                  |  13 ++
 include/blspec.h         |   7 +-
 include/fs.h             |   2 +
 scripts/kernel-install.c |  12 +-
 6 files changed, 307 insertions(+), 182 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
