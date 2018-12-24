Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gcQsZ-0006wE-GU
 for barebox@lists.infradead.org; Thu, 27 Dec 2018 08:19:00 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 24 Dec 2018 10:16:42 +0000
Message-Id: <20181224101642.21722-1-user@vserver64>
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
Subject: [PATCH] fs/fat: fix FAT32 detection
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

From: Alexander Kurz <akurz@blala.de>

Limits for the number of clusters were used to determine the FAT fs type.
This fails e.g. for FAT32 fs with low cluster number that can be found
in certain Android images.
Sync the FAT fs type detection to the method used in linux by checking
the sectors/FAT entries at offset 0x16 (must be zero for FAT32) and offset
0x24 (must be non-zero for FAT32).

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 fs/fat/ff.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index 33f8b6195..ba4adfc13 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -1591,9 +1591,14 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
 		return -EINVAL;
 
 	/* Number of sectors per FAT */
+	fmt = FS_FAT12;
 	fasize = LD_WORD(fs->win+BPB_FATSz16);
-	if (!fasize)
+	if (!fasize) {
 		fasize = LD_DWORD(fs->win+BPB_FATSz32);
+		if (fasize)
+			/* Must be FAT32 */
+			fmt = FS_FAT32;
+	}
 	fs->fsize = fasize;
 
 	/* Number of FAT copies */
@@ -1633,11 +1638,8 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
 	nclst = (tsect - sysect) / fs->csize;
 	if (!nclst)
 		return -EINVAL;	/* (Invalid volume size) */
-	fmt = FS_FAT12;
-	if (nclst >= MIN_FAT16)
+	if (fmt == FS_FAT12 && nclst >= MIN_FAT16)
 		fmt = FS_FAT16;
-	if (nclst >= MIN_FAT32)
-		fmt = FS_FAT32;
 
 	/* Boundaries and Limits */
 	/* Number of FAT entries */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
