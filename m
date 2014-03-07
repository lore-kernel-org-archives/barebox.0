Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLstu-0005n0-Lk
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 11:25:18 +0000
Received: from s246.sam-solutions.net ([217.21.35.55])
 by s250.sam-solutions.net with esmtps (TLSv1:RC4-MD5:128) (Exim 4.77)
 (envelope-from <D.Lavnikevich@sam-solutions.com>) id 1WLstc-0004VC-RM
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 14:24:56 +0300
Message-ID: <5319AA2F.5070604@sam-solutions.net>
Date: Fri, 7 Mar 2014 14:14:55 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.net>
MIME-Version: 1.0
References: <1394190783-12978-1-git-send-email-d.lavnikevich@sam-solutions.com>
In-Reply-To: <1394190783-12978-1-git-send-email-d.lavnikevich@sam-solutions.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] mtd: Support for 4GB partitions
To: barebox@lists.infradead.org
Cc: Grigory Milev <G.Milev@sam-solutions.com>, Dmitry Lavnikevich <D.Lavnikevich@sam-solutions.com>

This patch implements correct way of creating partitions on mtd
devices with size >= 4GB.

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Signed-off-by: Grigory Milev <g.milev@sam-solutions.com>
---
  commands/partition.c    | 4 ++--
  drivers/mtd/partition.c | 4 ++--
  include/linux/mtd/mtd.h | 4 ++--
  3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index f825722..44b91d1 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -59,11 +59,11 @@ static int mtd_part_do_parse_one(char *devname, 
const char *partstr,
  		size = SIZE_REMAINING;
  		end = (char *)partstr + 1;
  	} else {
-		size = strtoul_suffix(partstr, &end, 0);
+		size = strtoull_suffix(partstr, &end, 0);
  	}
   	if (*end == '@')
-		*offset = strtoul_suffix(end+1, &end, 0);
+		*offset = strtoull_suffix(end+1, &end, 0);
   	if (size == SIZE_REMAINING)
  		size = devsize - *offset;
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 85f486d..1b8d36e 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -90,8 +90,8 @@ static int mtd_part_block_markbad(struct mtd_info 
*mtd, loff_t ofs)
  	return res;
  }
  -struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t 
offset, size_t size,
-		unsigned long flags, const char *name)
+struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
+		uint64_t size, unsigned long flags, const char *name)
  {
  	struct mtd_part *slave;
  	struct mtd_info *slave_mtd;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index d337455..165bc88 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -277,8 +277,8 @@ struct mtd_notifier {
  	struct list_head list;
  };
  -struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t 
offset, size_t size,
-		unsigned long flags, const char *name);
+struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
+		uint64_t size, unsigned long flags, const char *name);
  void mtd_del_partition(struct mtd_info *mtd);
   extern void register_mtd_user (struct mtd_notifier *new);
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
