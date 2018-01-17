Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebpya-0008TR-Fy
 for barebox@lists.infradead.org; Wed, 17 Jan 2018 15:50:10 +0000
Received: by mail-pl0-x244.google.com with SMTP id bd8so9169232plb.9
 for <barebox@lists.infradead.org>; Wed, 17 Jan 2018 07:49:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 17 Jan 2018 07:49:41 -0800
Message-Id: <20180117154941.32175-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] partitions: dos: Treat all extended partition types equally
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Creating logical DOS partitions with fdisk (Fedora 27, fdisk from
util-linux 2.30.2) results in extended partition of type 0x05 being
created on the device. Partitioned like this, device is succesfully
recognized by Linux, but, due to algorithm in dos_partition(), not
Barebox.

Looking closer at the actual contents of MBR shows that while marked
as "Extended partition with CHS addressing" that partition still have
all of the LBA adressed fields filled correctly.

Given the above and the fact that similar code in Linux
kernel (block/partitions/msdos.c) does not make a distinction between
types 0x0f and 0x05, port Linux's is_extended_partition() and convert
the code to treat types 0x05, 0x0f and 0x85 the same way.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/partitions/dos.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 91b539907..488c2936f 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -21,6 +21,22 @@
 
 #include "parser.h"
 
+
+enum {
+/* These three have identical behaviour; use the second one if DOS FDISK gets
+   confused about extended/logical partitions starting past cylinder 1023. */
+	DOS_EXTENDED_PARTITION = 5,
+	LINUX_EXTENDED_PARTITION = 0x85,
+	WIN98_EXTENDED_PARTITION = 0x0f,
+};
+
+static inline int is_extended_partition(struct partition *p)
+{
+	return (p->dos_partition_type == DOS_EXTENDED_PARTITION ||
+	        p->dos_partition_type == WIN98_EXTENDED_PARTITION ||
+		p->dos_partition_type == LINUX_EXTENDED_PARTITION);
+}
+
 /**
  * Guess the size of the disk, based on the partition table entries
  * @param dev device to create partitions for
@@ -212,13 +228,8 @@ static void dos_partition(void *buf, struct block_device *blk,
 				sprintf(pd->parts[n].partuuid, "%08x-%02d",
 						signature, i + 1);
 			pd->used_entries++;
-			/*
-			 * Partitions of type 0x05 and 0x0f (and some more)
-			 * contain extended partitions. Only check for type 0x0f
-			 * here as this is the easiest to parse and common
-			 * enough.
-			 */
-			if (pentry.dos_partition_type == 0x0f) {
+
+			if (is_extended_partition(&pentry)) {
 				if (!extended_partition)
 					extended_partition = &pd->parts[n];
 				else
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
