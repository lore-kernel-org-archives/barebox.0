Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCf-0007NC-Hb
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:24 +0200
Message-Id: <20200615060229.7533-7-s.hauer@pengutronix.de>
In-Reply-To: <20200615060229.7533-1-s.hauer@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] fs: ramfs: Return -ENOSPC
To: Barebox List <barebox@lists.infradead.org>

When ramfs fails to allocate more memory then returning -ENOSPC is
more appropriate then -ENOMEM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 341b6130de..800b03af29 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -367,7 +367,7 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 		} else {
 			node->data = ramfs_get_chunk();
 			if (!node->data)
-				return -ENOMEM;
+				return -ENOSPC;
 			data = node->data;
 			oldchunks = 1;
 		}
@@ -378,7 +378,7 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 		while (newchunks > oldchunks) {
 			data->next = ramfs_get_chunk();
 			if (!data->next)
-				return -ENOMEM;
+				return -ENOSPC;
 			data = data->next;
 			oldchunks++;
 		}
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
