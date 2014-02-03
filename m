Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from blu0-omc2-s37.blu0.hotmail.com ([65.55.111.112])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAS04-0004fh-Mo
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 22:28:21 +0000
Message-ID: <BLU0-SMTP17431D5E93FD5424E6A8C41F7AB0@phx.gbl>
From: Cristiano De Alti <cristiano_dealti@hotmail.com>
Date: Mon, 3 Feb 2014 23:27:52 +0100
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
Subject: [PATCH] cfi_flash.c: correct calculation of region erasesize and
 offset for multiple (size_ratio > 1) chips in parallel
To: barebox@lists.infradead.org
Cc: Cristiano De Alti <cristiano_dealti@hotmail.com>

Signed-off-by: Cristiano De Alti <cristiano_dealti@hotmail.com>
---
 drivers/mtd/nor/cfi_flash.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 71dd3c8..514eab5 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -404,9 +404,9 @@ static ulong flash_get_size (struct flash_info *info)
 				erase_region_count, erase_region_size);
 
 			region->offset = cur_offset;
-			region->erasesize = erase_region_size;
+			region->erasesize = erase_region_size * size_ratio;
 			region->numblocks = erase_region_count;
-			cur_offset += erase_region_size * erase_region_count;
+			cur_offset += erase_region_size * size_ratio * erase_region_count;
 
 			/* increase the space malloced for the sector start addresses */
 			info->start = xrealloc(info->start, sizeof(ulong) * (erase_region_count + sect_cnt));
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
