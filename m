Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhDEN-0003Ui-OU
 for barebox@lists.infradead.org; Wed, 30 Sep 2015 08:59:20 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6C911A003FE
 for <barebox@lists.infradead.org>; Wed, 30 Sep 2015 10:59:04 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 30 Sep 2015 10:58:54 +0200
Message-Id: <1443603534-15233-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] fs: syntax fix in ramfs.c
To: barebox@lists.infradead.org

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 fs/ramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 716f40f..a97f0a6 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -495,7 +495,7 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
 			data->next = ramfs_get_chunk();
 			if (!data->next)
 				return -ENOMEM;
-		data = data->next;
+			data = data->next;
 		}
 	}
 	node->size = size;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
