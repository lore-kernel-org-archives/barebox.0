Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC6Y0-0007LJ-OX
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 20:02:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lC6Xy-0006ps-U7
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 21:02:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lC6Xy-0001ln-Ew
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 21:02:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Feb 2021 21:02:00 +0100
Message-Id: <20210216200208.5275-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/8] Support large files on larger ext4 partitions on larger
 still USB disks
To: barebox@lists.infradead.org

Most of this series is patching in 64-bit types at a lot of places.
I hope this doesn't add any nasty regressions elsewhere.

I tested this on ARM 32-bit (i.MX6) and sandbox x86 and x86_64.

Stuff that newly works:
 - Accessing all of a 2 TiB USB drive
 - Having multi-TB ext4 partitions
 - Having ext4 files larger than 2G

This series depends on 
"treewide: include <linux/math64.h> wrapper instead of <asm-generic/div64.h>"
to not cause a build error.

Cheers,
Ahmad Fatoum (8):
  ext4: ext_common.h: drop declaration of never-defined part_offset
  fs: ext4: ext4fs.h: remove unused struct members of ext_filesystem
  block: use 64-bit types for sector offset and count on all platforms
  usb: storage: support USB disks up to 2TiB of size
  fs: ext4: use sector_t and loff_t where appropriate
  fs: ext4: support files exceeding 4G
  show_progress: change HASHES_PER_LINE from 65 to 64 to avoid division
  copy_file: fix progress bar for files larger than 2G

 arch/sandbox/board/hostfile.c |  4 ++--
 common/block.c                | 35 +++++++++++++++++-----------------
 common/partitions.c           |  2 +-
 drivers/ata/ahci.c            | 12 ++++++------
 drivers/ata/disk_ata_drive.c  | 10 +++++-----
 drivers/ata/disk_bios_drive.c | 16 ++++++++--------
 drivers/ata/ide-sff.c         | 12 ++++++------
 drivers/block/efi-block-io.c  |  8 ++++----
 drivers/mci/mci-core.c        | 36 +++++++++++++++++------------------
 drivers/nvme/host/core.c      | 12 ++++++------
 drivers/usb/storage/usb.c     | 25 ++++++++++++------------
 fs/ext4/ext4_common.c         | 23 ++++++++++++----------
 fs/ext4/ext4_common.h         |  4 ++--
 fs/ext4/ext4fs.c              | 36 +++++++++++++++++++----------------
 fs/ext4/ext4fs.h              | 31 +-----------------------------
 fs/ext4/ext_barebox.c         |  8 ++++----
 fs/ext4/ext_common.h          | 10 +++++++++-
 include/ata_drive.h           |  4 ++--
 include/block.h               | 15 ++++++++-------
 include/linux/types.h         |  5 -----
 include/progress.h            |  6 ++++--
 lib/libfile.c                 |  2 +-
 lib/show_progress.c           | 17 ++++++++---------
 23 files changed, 159 insertions(+), 174 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
