Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqfWN-0001KO-R4
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 14:46:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Feb 2019 15:46:36 +0100
Message-Id: <20190204144641.19600-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/5] 32-bit lseek and /dev/mem fixes/improvements
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This series ontop of Andreys series (minus the patches that I have
reverted) makes /dev/mem work for the whole 64bit address space without
hopefully special casing too much. "fs: set errno in ftruncate()" and
"fs: devfs: forbid truncation when cdev has no truncate operation" are
not directly related, I stumbled upon these while working on the
patches.

See the full series in -next. Comments welcome, if somethings wrong with
it we can still change.

Sascha

Sascha Hauer (5):
  fs: let truncate take a loff_t argument
  fs: set errno in ftruncate()
  fs: do not call truncate for FILE_SIZE_STREAM sized files
  fs: devfs: forbid truncation when cdev has no truncate operation
  misc: fix /dev/mem size

 drivers/misc/mem.c   | 35 ++++++++++++++++++++++++++++++++---
 fs/devfs.c           |  8 ++------
 fs/efi.c             |  2 +-
 fs/efivarfs.c        |  2 +-
 fs/fat/fat.c         |  2 +-
 fs/fs.c              |  7 ++++++-
 fs/nfs.c             |  2 +-
 fs/omap4_usbbootfs.c |  2 +-
 fs/ramfs.c           |  2 +-
 fs/ratpfs.c          |  2 +-
 fs/smhfs.c           |  2 +-
 fs/tftp.c            |  2 +-
 include/fs.h         |  2 +-
 13 files changed, 50 insertions(+), 20 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
