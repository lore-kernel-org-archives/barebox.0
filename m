Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsU-0002M4-0O
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:28 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VQDs5-0003W6-Up
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 12:05:01 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VQDs5-00052B-Te
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 12:05:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:04:51 +0200
Message-Id: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: fs mounting patches
To: barebox@lists.infradead.org

This makes the mount command more versatile and informative.

----------------------------------------------------------------
Sascha Hauer (9):
      copy_file: Add missing O_TRUNC
      fs: cleanup backingstore handling
      mount: print backingstore instead of dev_name
      fs: use bus_for_each_driver
      fs: remove unused field 'name' from struct fs_driver_d
      mount: implement -v option to print available filesystems
      fs: add cdev mount helpers
      mount: Allow to mount all available partitions
      mount: use standard mountpath if path is ommitted

 commands/mount.c      |  66 +++++++++++++++++++++++++-----
 fs/cramfs/cramfs.c    |  18 +++++----
 fs/ext4/ext_barebox.c |  14 ++-----
 fs/fat/fat.c          |  17 ++------
 fs/fs.c               | 110 ++++++++++++++++++++++++++++++++++++++++++++------
 fs/ubifs/ubifs.c      |  16 +++-----
 include/fs.h          |   7 +++-
 lib/copy_file.c       |   2 +-
 8 files changed, 186 insertions(+), 64 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
