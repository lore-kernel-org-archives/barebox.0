Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agUkY-0002LW-8B
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:01:53 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id F366A27A6FF
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:09 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:18 +0100
Message-Id: <1458208829-25570-3-git-send-email-alexander.stein@systec-electronic.com>
In-Reply-To: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 02/13] mtd: ubi: Set max_write_size to actual value read from
 flash
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

Currently max_write_size is set to minimal I/O size. Set to buffer size
read from flash. Required by UBIFS recovery which uses max_write_size
for error detection.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 drivers/mtd/ubi/build.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 7970226..268cc6f 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -327,7 +327,7 @@ static int io_init(struct ubi_device *ubi, int max_beb_per1024)
 	ubi_assert(ubi->hdrs_min_io_size <= ubi->min_io_size);
 	ubi_assert(ubi->min_io_size % ubi->hdrs_min_io_size == 0);
 
-	ubi->max_write_size = ubi->mtd->writesize; /* FIXME: writebufsize */
+	ubi->max_write_size = ubi->mtd->writebufsize;
 	/*
 	 * Maximum write size has to be greater or equivalent to min. I/O
 	 * size, and be multiple of min. I/O size.
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
