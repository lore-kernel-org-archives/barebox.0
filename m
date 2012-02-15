Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8f-0002ff-1E
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:22:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:35 +0100
Message-Id: <1329294165-12089-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/12] dos partitions: Do not register as fixed partitions
To: barebox@lists.infradead.org

A fixed partition means that we can't remove it. This is only suitable
for our vital /dev/self0 and /dev/env0 partitions, so remove the fixed
flag.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index e4f3ad6..74b4f12 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -163,7 +163,7 @@ static int register_one_partition(struct block_device *blk,
 	return devfs_add_partition(blk->cdev.name,
 				part->first_sec * SECTOR_SIZE,
 				part->size * SECTOR_SIZE,
-				DEVFS_PARTITION_FIXED, partition_name);
+				0, partition_name);
 }
 
 /**
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
