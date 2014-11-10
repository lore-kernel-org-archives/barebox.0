Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x232.google.com ([2607:f8b0:400e:c02::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xnt10-0002Mm-TN
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 17:44:41 +0000
Received: by mail-pd0-f178.google.com with SMTP id fp1so8234714pdb.37
 for <barebox@lists.infradead.org>; Mon, 10 Nov 2014 09:44:12 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 10 Nov 2014 09:44:00 -0800
Message-Id: <1415641440-19318-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] partitions/efi: Fix off-by-one error in 'last_lba'
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

LBAs are numbered starting from zero so the last LBA # would be equal
to total number of blocks minus one.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/partitions/efi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index dcb9541..80dc3f3 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -51,11 +51,11 @@ efi_crc32(const void *buf, unsigned long len)
  *  the part[0] entry for this disk, and is the number of
  *  physical sectors available on the disk.
  */
-static u64 last_lba(struct block_device *bdev)
+static u64  last_lba(struct block_device *bdev)
 {
 	if (!bdev)
 		return 0;
-	return bdev->num_blocks;
+	return bdev->num_blocks - 1;
 }
 
 /**
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
