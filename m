Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3bjq-00018V-3c
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:22:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id i19so1196492pfd.0
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:22:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:21:48 -0700
Message-Id: <20190312072150.19092-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] fs: ramfs: Drop unused 'handle' filed from struct
 ramfs_inode
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There are no users of this field in the code. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/ramfs.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 3046afef3..94ecb0597 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -43,8 +43,6 @@ struct ramfs_inode {
 	char *symlink;
 	ulong mode;
 
-	struct handle_d *handle;
-
 	ulong size;
 	struct ramfs_chunk *data;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
