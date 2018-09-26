Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g54uS-0005Ao-FJ
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 08:11:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2018 10:10:29 +0200
Message-Id: <20180926081029.28103-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: ramfs: make chunk counting in truncate() better readable
To: Barebox List <barebox@lists.infradead.org>
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

In ramfs_truncate() "newchunks" denotes the number of chunks we
want to have after the call. We decrease that number while iterating
over the existing chunks and decrease it further with every newly
allocated chunk until "newchunks" is zero.
This is a bit hard to read. Instead we drop the decreasing while
iterating over existing chunks and increase "oldchunks" while allocating
until it reaches "newchunks".

This is mainly done to make the next patch easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 09dafe02ae..8ba8d77de9 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -384,19 +384,18 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
 			if (!node->data)
 				return -ENOMEM;
 			data = node->data;
+			newchunks = 1;
 		}
 
-		newchunks--;
-		while (data->next) {
-			newchunks--;
+		while (data->next)
 			data = data->next;
-		}
 
-		while (newchunks--) {
+		while (newchunks > oldchunks) {
 			data->next = ramfs_get_chunk();
 			if (!data->next)
 				return -ENOMEM;
 			data = data->next;
+			oldchunks++;
 		}
 	}
 	node->size = size;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
