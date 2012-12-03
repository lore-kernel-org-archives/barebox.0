Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og113.obsmtp.com ([64.18.0.26])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaSL-00050a-Ls
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:09:26 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:32 +0000
Message-Id: <1354558114-28799-17-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 16/18] ubifs bad superblock bug
To: barebox@lists.infradead.org
Cc: Lars Poeschel <larsi@wh2.tu-dresden.de>, Stefan Roese <sr@denx.de>

From: Lars Poeschel <larsi@wh2.tu-dresden.de>

This patch fixes an issue when ubifs reads a bad superblock. Later it
tries to free memory, that was not allocated, which freezes u-boot.
This is fixed by looking for a non null pointer before free.

The message I got before u-boot freezes:
UBI: max/mean erase counter: 53/32
UBIFS: mounted UBI device 0, volume 1, name "rootfs"
UBIFS: mounted read-only
UBIFS: file system size:   49140 bytes (50319360 KiB, 0 MiB, 49140 LEBs)
UBIFS: journal size:       49 bytes (6838272 KiB, 0 MiB, 6678 LEBs)
UBIFS: media format:       w4/r0 (latest is w4/r0)
UBIFS: default compressor: LZO
UBIFS: reserved for root:  0 bytes (0 KiB)
UBIFS error (pid 0): ubifs_read_node: bad node type (255 but expected 9)
UBIFS error (pid 0): ubifs_read_node: bad node at LEB 330:13104
UBIFS error (pid 0): ubifs_iget: failed to read inode 1, error -22
Error reading superblock on volume 'ubi:rootfs'!

Signed-off-by: Lars Poeschel <larsi@wh2.tu-dresden.de>
Cc: Kyungmin Park <kmpark@infradead.org>
Signed-off-by: Stefan Roese <sr@denx.de>
---
 fs/ubifs/super.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 97af4b1..118d728 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -848,8 +848,10 @@ void ubifs_umount(struct ubifs_info *c)
 	ubifs_debugging_exit(c);
 
 	/* Finally free U-Boot's global copy of superblock */
-	free(ubifs_sb->s_fs_info);
-	free(ubifs_sb);
+	if (ubifs_sb != NULL) {
+		free(ubifs_sb->s_fs_info);
+		free(ubifs_sb);
+	}
 }
 
 /**
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
