Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aah1l-0007lM-BJ
 for barebox@lists.infradead.org; Tue, 01 Mar 2016 09:55:38 +0000
Received: by mail-wm0-x241.google.com with SMTP id p65so3171716wmp.1
 for <barebox@lists.infradead.org>; Tue, 01 Mar 2016 01:55:16 -0800 (PST)
From: yegorslists@googlemail.com
Date: Tue,  1 Mar 2016 10:54:23 +0100
Message-Id: <1456826064-27092-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH v2 1/2] Documentation/filesystems: add barebox prompt to the
 shell commands
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 Documentation/filesystems/fat.rst   | 9 ++++-----
 Documentation/filesystems/nfs.rst   | 4 ++--
 Documentation/filesystems/ramfs.rst | 2 +-
 Documentation/filesystems/smhfs.rst | 2 +-
 Documentation/filesystems/tftp.rst  | 2 +-
 5 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/Documentation/filesystems/fat.rst b/Documentation/filesystems/fat.rst
index 2138328..e39e34a 100644
--- a/Documentation/filesystems/fat.rst
+++ b/Documentation/filesystems/fat.rst
@@ -7,9 +7,8 @@ barebox supports FAT filesystems in both read and write modes with optional
 support for long filenames. A FAT filesystem can be mounted using the
 :ref:`command_mount` command::
 
-  mkdir /mnt
-  mount /dev/disk0.0 fat /mnt
-  ls /mnt
+  barebox:/ mkdir /mnt
+  barebox:/ mount /dev/disk0.0 fat /mnt
+  barebox:/ ls /mnt
   zImage barebox.bin
-  umount /mnt
-
+  barebox:/ umount /mnt
diff --git a/Documentation/filesystems/nfs.rst b/Documentation/filesystems/nfs.rst
index 4469ac1..ab51241 100644
--- a/Documentation/filesystems/nfs.rst
+++ b/Documentation/filesystems/nfs.rst
@@ -9,7 +9,7 @@ barebox has readonly support for NFSv3 in UDP mode.
 
 Example::
 
-   mount -t nfs 192.168.23.4:/home/user/nfsroot /mnt/nfs
+   barebox:/ mount -t nfs 192.168.23.4:/home/user/nfsroot /mnt/nfs
 
 The barebox NFS driver adds a ``linux.bootargs`` device parameter to the NFS device.
 This parameter holds a Linux kernel commandline snippet containing a suitable root=
@@ -17,7 +17,7 @@ option for booting from exactly that NFS share.
 
 Example::
 
-  devinfo nfs0
+  barebox:/ devinfo nfs0
   ...
   linux.bootargs: root=/dev/nfs nfsroot=192.168.23.4:/home/sha/nfsroot/generic-v7,v3,tcp
 
diff --git a/Documentation/filesystems/ramfs.rst b/Documentation/filesystems/ramfs.rst
index b7ece1a..d27f885 100644
--- a/Documentation/filesystems/ramfs.rst
+++ b/Documentation/filesystems/ramfs.rst
@@ -9,4 +9,4 @@ is ``ramfs``.
 
 Example::
 
-  mount none ramfs /somedir
+  barebox:/ mount none ramfs /somedir
diff --git a/Documentation/filesystems/smhfs.rst b/Documentation/filesystems/smhfs.rst
index 28de146..9e9993c 100644
--- a/Documentation/filesystems/smhfs.rst
+++ b/Documentation/filesystems/smhfs.rst
@@ -20,7 +20,7 @@ directory. Nevertheless, the files are there.
 
 Example::
 
-  mount -t smhfs /dev/null /mnt/smhfs
+  barebox:/ mount -t smhfs /dev/null /mnt/smhfs
 
 
 Host Side Setup
diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesystems/tftp.rst
index b5bb1b3..eeb3fcb 100644
--- a/Documentation/filesystems/tftp.rst
+++ b/Documentation/filesystems/tftp.rst
@@ -14,7 +14,7 @@ show an empty directory. Nevertheless, the files are there.
 
 Example::
 
-  mount -t tftp 192.168.23.4 /mnt/tftp
+  barebox:/ mount -t tftp 192.168.23.4 /mnt/tftp
 
 In addition to the TFTP filesystem implementation, barebox does also have a
 :ref:`tftp command <command_tftp>`.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
