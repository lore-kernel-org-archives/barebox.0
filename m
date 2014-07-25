Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAb59-00032I-J8
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 08:42:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Jul 2014 10:42:03 +0200
Message-Id: <1406277724-4370-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406277724-4370-1-git-send-email-s.hauer@pengutronix.de>
References: <1406277724-4370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] fs: ext4: use EXT2_BLOCK_SIZE instead of fs->blksz
To: barebox@lists.infradead.org

From U-Boot commit:

| commit 470173274d9ceb18a7140ef93e20be6c2236e7d9
| Author: Ionut Nicu <ioan.nicu.ext@nsn.com>
| Date:   Mon Jan 13 11:59:24 2014 +0100
|
|     ext4fs: use EXT2_BLOCK_SIZE instead of fs->blksz
|
|     Using fs->blksz in ext4fs_get_extent_block() is not
|     correct since fs->blksz is not initialized on the
|     read path. Use EXT2_BLOCK_SIZE() instead which will
|     produce the desired output.
|
|     Signed-off-by: Ionut Nicu <ioan.nicu.ext@nsn.com>
|     Signed-off-by: Mathias Rulf <mathias.rulf@nsn.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/ext4_common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 5bff868..1bd9215 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -45,6 +45,7 @@ static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data
 	struct ext4_extent_idx *index;
 	unsigned long long block;
 	struct ext_filesystem *fs = data->fs;
+	int blksz = EXT2_BLOCK_SIZE(data);
 	int i, ret;
 
 	while (1) {
@@ -68,7 +69,7 @@ static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data
 		block = le32_to_cpu(index[i].ei_leaf_hi);
 		block = (block << 32) + le32_to_cpu(index[i].ei_leaf_lo);
 
-		ret = ext4fs_devread(fs, block << log2_blksz, 0, fs->blksz, buf);
+		ret = ext4fs_devread(fs, block << log2_blksz, 0, blksz, buf);
 		if (ret)
 			return NULL;
 		else
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
