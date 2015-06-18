Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5UUZ-0000Cc-MI
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 07:44:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Z5UUD-0001DW-7S
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 09:43:45 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <sha@pengutronix.de>) id 1Z5UUC-0003nj-Vm
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 09:43:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2015 09:43:38 +0200
Message-Id: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Bootspec: Allow to automatically append root= option
To: Barebox List <barebox@lists.infradead.org>

In bootspec entries we have to add a root= to specify the kernel where
it can find its root filesystem. This series allows to automatically
append this option based on the filesystem where the entry is found on.
With this we can make the root filesystem images independent of the
device they are installed on.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      Add globalvar_add_simple_string function
      cdev: Add partuuid string to struct cdev
      fs: Add device parameter for Linux root= option
      fs: ubifs: Implement Linux rootarg
      fs: nfs: Implement Linux rootarg
      blspec: Automatically append rootarg

 Documentation/filesystems/nfs.rst    | 13 +++++++++++++
 Documentation/user/booting-linux.rst |  7 +++++++
 common/blspec.c                      | 29 +++++++++++++++++++++++++++-
 common/partitions.c                  |  1 +
 common/partitions/dos.c              |  4 ++++
 common/partitions/parser.h           |  1 +
 drivers/mtd/ubi/kapi.c               |  1 +
 fs/fs.c                              | 37 ++++++++++++++++++++++++++++++++++++
 fs/nfs.c                             | 24 +++++++++++++++++++++++
 fs/ubifs/ubifs.c                     | 23 ++++++++++++++++++++++
 include/driver.h                     |  3 +++
 include/fs.h                         |  4 ++++
 include/globalvar.h                  | 19 ++++++++++++++++++
 include/linux/mtd/ubi.h              |  1 +
 14 files changed, 166 insertions(+), 1 deletion(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
