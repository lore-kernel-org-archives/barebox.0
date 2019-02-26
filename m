Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyin1-0004GT-7r
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 19:53:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id n74so6735502pfi.9
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 11:53:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 11:52:59 -0800
Message-Id: <20190226195303.24733-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190226195303.24733-1-andrew.smirnov@gmail.com>
References: <20190226195303.24733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] fs: ramfs: Drop needless OOM check
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop needless OOM check since xzalloc() will never return NULL.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/ramfs.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 4fba40d31..3046afef3 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -403,8 +403,6 @@ static struct inode *ramfs_alloc_inode(struct super_block *sb)
 	struct ramfs_inode *node;
 
 	node = xzalloc(sizeof(*node));
-	if (!node)
-		return NULL;
 
 	return &node->inode;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
