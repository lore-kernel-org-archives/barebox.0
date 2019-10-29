Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNWK-0008Np-Hr
 for barebox@lists.infradead.org; Tue, 29 Oct 2019 09:10:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Oct 2019 10:10:26 +0100
Message-Id: <20191029091029.22215-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] fs: ext4: Fix out of bounds memset
To: Barebox List <barebox@lists.infradead.org>

When a block we read is a sparse block, we memset the corresponding
output buffer to zero. If that block is the last block we read, we
may not memset the whole block, but only up to the length of the output
buffer, which may be shorter than a full block.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/ext4fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
index bfc5f27cc3..acecccd6b9 100644
--- a/fs/ext4/ext4fs.c
+++ b/fs/ext4/ext4fs.c
@@ -135,7 +135,7 @@ int ext4fs_read_file(struct ext2fs_node *node, int pos,
 					return ret;
 				previous_block_number = -1;
 			}
-			memset(buf, 0, blocksize - skipfirst);
+			memset(buf, 0, blockend);
 		}
 		buf += blocksize - skipfirst;
 	}
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
