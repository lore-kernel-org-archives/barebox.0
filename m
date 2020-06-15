Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCf-0007N5-H2
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:18 +0200
Message-Id: <20200615060229.7533-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/11] ramfs: Use dynamically sized chunks
To: Barebox List <barebox@lists.infradead.org>

So far ramfs uses equally sized chunks. This series changes it to use
dynamically sized chunks instead. When making a file bigger ramfs now
always tries to put the additional data in a single chunk. With this
we get fewer chunks and with it better performance as we have less list
iterations to do.
Also this allows us to provide a memmap implementation for ramfs which
works for a good bunch of cases. When a file is created, truncated to
its final size and then filled with data, the data will end up in one
contiguous memory region. In this case we can provide a pointer to this
data which is important for usecases where we would otherwise duplicate
big image files in memory.

Sascha

Sascha Hauer (11):
  update list.h from Linux-5.7
  fs: Add destroy_inode callbacks to filesystems
  fs: Make iput() accept NULL pointers
  fs: free inodes we no longer need
  digest: Drop usage of memmap
  fs: ramfs: Return -ENOSPC
  fs: ramfs: Drop dead code
  fs: ramfs: Use dynamically sized chunks
  fs: ramfs: Implement memmap
  libfile: copy_file: Fix calling discard_range
  libfile: copy_file: explicitly truncate to final size

 crypto/digest.c          |  27 +-
 fs/cramfs/cramfs.c       |  10 +
 fs/devfs.c               |   8 +
 fs/fs.c                  |   7 +-
 fs/nfs.c                 |   8 +
 fs/ramfs.c               | 349 ++++++++++---------
 fs/squashfs/squashfs.c   |  10 +-
 include/linux/compiler.h |   1 -
 include/linux/list.h     | 700 ++++++++++++++++++++++++++++++---------
 include/linux/poison.h   |  26 ++
 include/linux/types.h    |  12 +
 lib/libfile.c            |  25 +-
 12 files changed, 826 insertions(+), 357 deletions(-)
 create mode 100644 include/linux/poison.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
