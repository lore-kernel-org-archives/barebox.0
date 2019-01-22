Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glpCw-0003Hi-5f
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 06:06:47 +0000
Received: by mail-pf1-x443.google.com with SMTP id w73so11220223pfk.10
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2019 22:06:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 Jan 2019 22:06:25 -0800
Message-Id: <20190122060625.12337-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190122060625.12337-1-andrew.smirnov@gmail.com>
References: <20190122060625.12337-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] block: Move shared code in get_chunk() out of if statement
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/block.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/common/block.c b/common/block.c
index 3a031a4fc..291721876 100644
--- a/common/block.c
+++ b/common/block.c
@@ -133,13 +133,12 @@ static struct chunk *get_chunk(struct block_device *blk)
 
 			chunk->dirty = 0;
 		}
-
-		list_del(&chunk->list);
 	} else {
 		chunk = list_first_entry(&blk->idle_blocks, struct chunk, list);
-		list_del(&chunk->list);
 	}
 
+	list_del(&chunk->list);
+
 	return chunk;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
