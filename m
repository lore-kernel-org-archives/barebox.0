Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpwXd-0002q3-UA
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 12:36:08 +0000
Received: by mail-lf0-x243.google.com with SMTP id g70so10118450lfh.3
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 05:35:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 15:35:29 +0300
Message-Id: <20170320123532.24059-5-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/7] ext4: fix wrong usage of le32_to_cpu()
To: barebox@lists.infradead.org

This is an adoption of the U-Boot commit

| commit 011bc3342a485345f7136eed20e0477b8cd5580f
| Author: Michael Walle <michael@walle.cc>
| Date:   Mon Aug 29 10:46:46 2016 +0200
|
|     ext4: fix wrong usage of le32_to_cpu()
|
|     le32_to_cpu() must only convert the revision_level and not the boolean
|     result.
|
|     Signed-off-by: Michael Walle <michael@walle.cc>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/ext4/ext4_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index f11ca6b32..9cbe3dbb1 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -506,7 +506,7 @@ int ext4fs_mount(struct ext_filesystem *fs)
 		goto fail;
 	}
 
-	if (le32_to_cpu(data->sblock.revision_level == 0))
+	if (le32_to_cpu(data->sblock.revision_level) == 0)
 		fs->inodesz = 128;
 	else
 		fs->inodesz = le16_to_cpu(data->sblock.inode_size);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
