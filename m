Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3bjr-00018n-28
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:22:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id y124so178112pfy.7
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:22:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:21:49 -0700
Message-Id: <20190312072150.19092-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190312072150.19092-1-andrew.smirnov@gmail.com>
References: <20190312072150.19092-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] fs: ramfs: Drop unused 'chunks' conter
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This variable doesn't appear to be used anywhere in the code. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/ramfs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 94ecb0597..eec7cfb5b 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -99,8 +99,6 @@ static struct inode *ramfs_get_inode(struct super_block *sb, const struct inode
 	return inode;
 }
 
-static int chunks = 0;
-
 static struct ramfs_chunk *ramfs_get_chunk(void)
 {
 	struct ramfs_chunk *data = malloc(sizeof(struct ramfs_chunk));
@@ -113,7 +111,6 @@ static struct ramfs_chunk *ramfs_get_chunk(void)
 		return NULL;
 	}
 	data->next = NULL;
-	chunks++;
 
 	return data;
 }
@@ -122,7 +119,6 @@ static void ramfs_put_chunk(struct ramfs_chunk *data)
 {
 	free(data->data);
 	free(data);
-	chunks--;
 }
 
 /* ---------------------------------------------------------------*/
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
