Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVmx5-00051u-Pn
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 21:14:32 +0000
Received: by mail-lb0-x229.google.com with SMTP id bc4so105008950lbc.2
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 13:14:10 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 17 Feb 2016 00:13:59 +0300
Message-Id: <1455657239-17629-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fs: ext4: make locally used ext4fs_get_indir_block() static
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

The patch fixes this compiler's warning:

      CC      fs/ext4/ext4_common.o
    fs/ext4/ext4_common.c:130:5: warning: no previous prototype for
    'ext4fs_get_indir_block' [-Wmissing-prototypes]
     int ext4fs_get_indir_block(struct ext2fs_node *node, struct
    ext4fs_indir_block *indir, int blkno)
         ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/ext4/ext4_common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 590f54d..1ecbb8d 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -127,7 +127,8 @@ int ext4fs_read_inode(struct ext2_data *data, int ino, struct ext2_inode *inode)
 	return 0;
 }
 
-int ext4fs_get_indir_block(struct ext2fs_node *node, struct ext4fs_indir_block *indir, int blkno)
+static int ext4fs_get_indir_block(struct ext2fs_node *node,
+				struct ext4fs_indir_block *indir, int blkno)
 {
 	struct ext_filesystem *fs = node->data->fs;
 	int blksz;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
