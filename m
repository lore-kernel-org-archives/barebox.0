Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNWK-0008Nq-I1
 for barebox@lists.infradead.org; Tue, 29 Oct 2019 09:10:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Oct 2019 10:10:29 +0100
Message-Id: <20191029091029.22215-5-s.hauer@pengutronix.de>
In-Reply-To: <20191029091029.22215-1-s.hauer@pengutronix.de>
References: <20191029091029.22215-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] fs: ext4: return NULL instead of 0
To: Barebox List <barebox@lists.infradead.org>

ext4fs_get_extent_block() returns a pointer, so return NULL instead of
integer 0.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/ext4_common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 2703b55e99..c9f27f1278 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -52,7 +52,7 @@ static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data
 		index = (struct ext4_extent_idx *)(ext_block + 1);
 
 		if (le16_to_cpu(ext_block->eh_magic) != EXT4_EXT_MAGIC)
-			return 0;
+			return NULL;
 
 		if (ext_block->eh_depth == 0)
 			return ext_block;
@@ -64,7 +64,7 @@ static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data
 		} while (fileblock >= le32_to_cpu(index[i].ei_block));
 
 		if (--i < 0)
-			return 0;
+			return NULL;
 
 		block = le16_to_cpu(index[i].ei_leaf_hi);
 		block = (block << 32) + le32_to_cpu(index[i].ei_leaf_lo);
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
