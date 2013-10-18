Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXCxx-0001C0-7I
 for barebox@lists.infradead.org; Fri, 18 Oct 2013 16:31:57 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 72C42FFA8E6
 for <barebox@lists.infradead.org>; Fri, 18 Oct 2013 18:32:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 18 Oct 2013 18:33:11 +0200
Message-Id: <1382113992-9082-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1382113992-9082-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131018163147.GZ32444@ns203013.ovh.net>
 <1382113992-9082-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] partition: use symlink for named partition
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/partitions.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 694c6f6..b6c9819 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -76,8 +76,7 @@ static int register_one_partition(struct block_device *blk,
 
 	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
 				partition_name, blk->cdev.name);
-	cdev = devfs_add_partition(blk->cdev.name,
-				start, size, 0, partition_name);
+	cdev = devfs_add_symlink(partition_name, cdev);
 
 	if (IS_ERR(cdev))
 		dev_warn(blk->dev, "Registering partition %s on drive %s failed\n",
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
