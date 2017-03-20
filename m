Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpwXc-0002q0-Ck
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 12:36:06 +0000
Received: by mail-lf0-x244.google.com with SMTP id g70so10118336lfh.3
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 05:35:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 15:35:28 +0300
Message-Id: <20170320123532.24059-4-antonynpavlov@gmail.com>
In-Reply-To: <20170320123532.24059-1-antonynpavlov@gmail.com>
References: <20170320123532.24059-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/7] ext4: drop unused and misdefined INODE_SIZE_FILESYSTEM
 macro
To: barebox@lists.infradead.org

Nota bene sblock.inode_size actually has __le16 type.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/ext4/ext_common.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/ext4/ext_common.h b/fs/ext4/ext_common.h
index a02f0b333..63cd4d26c 100644
--- a/fs/ext4/ext_common.h
+++ b/fs/ext4/ext_common.h
@@ -65,8 +65,6 @@
 /* Log2 size of ext2 block in bytes.  */
 #define LOG2_BLOCK_SIZE(data)	   (le32_to_cpu \
 		(data->sblock.log2_block_size) + 10)
-#define INODE_SIZE_FILESYSTEM(data)	(le32_to_cpu \
-			(data->sblock.inode_size))
 
 #define EXT2_FT_DIR	2
 #define SUCCESS	1
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
