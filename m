Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyimz-0004GH-Et
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 19:53:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id bj4so6724797plb.7
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 11:53:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 11:52:58 -0800
Message-Id: <20190226195303.24733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] fs: Drop needless OOM check
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop needless OOM check since xzalloc() will never return NULL.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/fs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 1f6b3d346..65de82518 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -809,9 +809,6 @@ static int fillonedir(struct dir_context *ctx, const char *name, int namlen,
 	struct readdir_entry *entry;
 
 	entry = xzalloc(sizeof(*entry));
-	if (!entry)
-		return -ENOMEM;
-
 	memcpy(entry->d.d_name, name, namlen);
 	list_add_tail(&entry->list, &rd->dir->entries);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
