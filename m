Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x229.google.com ([2a00:1450:4010:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpwXb-0002pl-1r
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 12:36:05 +0000
Received: by mail-lf0-x229.google.com with SMTP id y193so54682695lfd.3
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 05:35:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 15:35:25 +0300
Message-Id: <20170320123532.24059-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/7] fix ext4 support for volumes greater than 4 GiB
To: barebox@lists.infradead.org

At the moment barebox can't correctly handle ext4 filesystem volume
greater than 4 GiB.

This patchseries fixes the problem by adaption of U-Boot commits.

How to reproduce the problem:

    $ git clone https://git.pengutronix.de/git/barebox
    $ cd barebox
    barebox$ dd if=/dev/zero bs=128M count=40 of=5G.img
    barebox$ /sbin/mkfs.ext4 -F 5G.img
    barebox$ mkdir mnt
    barebox$ sudo mount 5G.img mnt/
    barebox$ sudo mkdir mnt/testdir
    barebox$ sudo touch mnt/testdir/testfile
    barebox$ ls mnt/testdir/testfile -l
    -rw-r--r-- 1 root root 0 Mar 20 14:53 mnt/testdir/testfile
    barebox$ sudo umount mnt/
    barebox$ make sandbox_defconfig
    ...
    barebox$ make -j3 -s
    ...
    barebox$ ./barebox -i 5G.img
    ...
    barebox@barebox sandbox:/ mount /dev/fd0 /mnt/
    ext4 ext40: EXT2 rev 1, inode_size 256
    barebox@barebox sandbox:/ ls /mnt/testdir/testfile
    ls: /mnt/testdir/testfile: No such file or directory
    barebox@barebox sandbox:/ ls /mnt/ -l
    drwxrwxrwx              0 .
    drwxrwxrwx              0 ..
    drwx------          16384 lost+found
    ?---------              0 testdir

On the other hand there is no problem with volumes
less than 4 GiB:

    barebox$ dd if=/dev/zero bs=128M count=24 of=3G.img
    barebox$ /sbin/mkfs.ext4 -F 3G.img
    barebox$ sudo mount 3G.img mnt/
    barebox$ sudo mkdir mnt/testdir
    barebox$ sudo touch mnt/testdir/testfile
    barebox$ ls mnt/testdir/testfile -l
    -rw-r--r-- 1 root root 0 Mar 20 15:05 mnt/testdir/testfile
    barebox$ sudo umount mnt/
    barebox$ ./barebox -i 3G.img
    ...
    barebox@barebox sandbox:/ mount /dev/fd0 /mnt/
    ext4 ext40: EXT2 rev 1, inode_size 256
    barebox@barebox sandbox:/ ls /mnt/testdir/testfile
    /mnt/testdir/testfile
    barebox@barebox sandbox:/ ls /mnt/ -l
    drwxrwxrwx              0 .
    drwxrwxrwx              0 ..
    drwx------          16384 lost+found
    drwxr-xr-x           4096 testdir

Antony Pavlov (7):
  ext4: change structure fields to __le/__be types
  ext4: use kernel names for byte swaps
  ext4: drop unused and misdefined INODE_SIZE_FILESYSTEM macro
  ext4: fix wrong usage of le32_to_cpu()
  ext4: Update ext2/3/4 superblock, group descriptor and inode
    structures
  ext4: determine group descriptor size for 64bit feature
  ext4: Use correct descriptor size when reading the block group
    descriptor

 fs/ext4/ext4_common.c |  83 +++++++++++++----------
 fs/ext4/ext4fs.c      |   2 +-
 fs/ext4/ext4fs.h      |   3 +
 fs/ext4/ext_barebox.c |  10 +--
 fs/ext4/ext_common.h  | 184 ++++++++++++++++++++++++++++++--------------------
 5 files changed, 168 insertions(+), 114 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
