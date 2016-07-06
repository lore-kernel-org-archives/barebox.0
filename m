Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKsyZ-0007KL-0S
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 19:59:15 +0000
Received: by mail-lf0-x242.google.com with SMTP id l188so23242600lfe.0
 for <barebox@lists.infradead.org>; Wed, 06 Jul 2016 12:58:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Jul 2016 22:58:44 +0300
Message-Id: <1467835124-31201-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fs: ext4: fix symlink read function
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ronald Zachariah <rozachar@cisco.com>

From: Ronald Zachariah <rozachar@cisco.com>

From U-Boot commit:

| commit 37f23885e4905ff500a8524328aa3084ac11cdb4
| Author: Ronald Zachariah <rozachar@cisco.com>
| Date:   Thu Apr 28 07:08:34 2016 +0200
|
|     fs: ext4: fix symlink read function
|
|     The function ext4fs_read_symlink was unable to handle a symlink
|     which had target name of exactly 60 characters.
|
|     Signed-off-by: Ronald Zachariah <rozachar@cisco.com>
|     Signed-off-by: Stefan Roese <sr@denx.de>
|     Reviewed-by: Stephen Warren <swarren@nvidia.com>
|     Cc: Tom Rini <trini@konsulko.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/ext4/ext4_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 1ecbb8d..6c4083e 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -377,7 +377,7 @@ char *ext4fs_read_symlink(struct ext2fs_node *node)
 	if (!symlink)
 		return 0;
 
-	if (__le32_to_cpu(diro->inode.size) <= 60) {
+	if (__le32_to_cpu(diro->inode.size) < sizeof(diro->inode.b.symlink)) {
 		strncpy(symlink, diro->inode.b.symlink,
 			 __le32_to_cpu(diro->inode.size));
 	} else {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
