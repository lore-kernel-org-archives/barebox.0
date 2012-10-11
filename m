Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMPMl-0000SE-By
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 20:28:24 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so1222198wgb.18
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2012 13:28:21 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Thu, 11 Oct 2012 22:28:10 +0200
Message-Id: <1349987291-11714-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/2] common/paritions.c: force little endian reads
To: barebox@lists.infradead.org

When reading values from a DOS disk, we need to force a little endian
reading.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 common/partitions.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index cee0a65..0e42937 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -52,8 +52,8 @@ static int disk_guess_size(struct device_d *dev, struct partition_entry *table)
 
 	for (i = 0; i < 4; i++) {
 		if (table[i].partition_start != 0) {
-			size += get_unaligned(&table[i].partition_start) - size;
-			size += get_unaligned(&table[i].partition_size);
+			size += get_unaligned_le32(&table[i].partition_start) - size;
+			size += get_unaligned_le32(&table[i].partition_size);
 		}
 	}
 
@@ -97,8 +97,8 @@ static void __maybe_unused try_dos_partition(struct block_device *blk,
 		blk->num_blocks = disk_guess_size(blk->dev, table);
 
 	for (i = 0; i < 4; i++) {
-		pentry.first_sec = get_unaligned(&table[i].partition_start);
-		pentry.size = get_unaligned(&table[i].partition_size);
+		pentry.first_sec = get_unaligned_le32(&table[i].partition_start);
+		pentry.size = get_unaligned_le32(&table[i].partition_size);
 
 		if (pentry.first_sec != 0) {
 			pd->parts[pd->used_entries].first_sec = pentry.first_sec;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
