Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAb59-00032H-JG
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 08:42:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Jul 2014 10:42:02 +0200
Message-Id: <1406277724-4370-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] fs: ext4: fix "invalid extent block" error
To: barebox@lists.infradead.org

From U-Boot commit:

| commit b5bbac1a9b07016602559ff483df265fef6c1f83
| Author: Ionut Nicu <ioan.nicu.ext@nsn.com>
| Date:   Mon Jan 13 12:00:08 2014 +0100
|
|     ext4fs: fix "invalid extent block" error
|
|     For files where we actually have extent indexes following
|     an extent header (ext_block->eh_depth != 0), the do/while
|     loop from ext4fs_get_extent_block() does not select the
|     proper extent index structure.
|
|     For example, if we have:
|
|     ext_block->eh_depth = 1
|     ext_block->eh_entries = 1
|     fileblock = 0
|     index[0].ei_block = 0
|
|     the do/while loop will exit with i set to 0 and the
|     ext4fs_get_extent_block() function will return 0, even if
|     there was a valid extent index structure following the
|     header.
|
|     Signed-off-by: Ionut Nicu <ioan.nicu.ext@nsn.com>
|     Signed-off-by: Mathias Rulf <mathias.rulf@nsn.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/ext4_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index ceb965f..5bff868 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -60,7 +60,7 @@ static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data
 			i++;
 			if (i >= le32_to_cpu(ext_block->eh_entries))
 				break;
-		} while (fileblock > le32_to_cpu(index[i].ei_block));
+		} while (fileblock >= le32_to_cpu(index[i].ei_block));
 
 		if (--i < 0)
 			return 0;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
