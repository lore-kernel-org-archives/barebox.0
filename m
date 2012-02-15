Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZxC-0007B2-LK
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:11:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:10:49 +0100
Message-Id: <1329293450-10234-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329293450-10234-1-git-send-email-s.hauer@pengutronix.de>
References: <1329293450-10234-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] fat: revert fat caching mechanism
To: barebox@lists.infradead.org

There seems to be a bug in this mechanism. It's easy to
get the cached fat out of sync with the device. Revert
it for now. This includes a huge write performance drop.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fat/ff.c |   93 ++++++++++++----------------------------------------------
 1 files changed, 20 insertions(+), 73 deletions(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index 0087e21..a720389 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -234,89 +234,38 @@ struct fat_sector {
 	unsigned char data[0];
 };
 
-#ifdef CONFIG_FS_FAT_WRITE
-static int push_fat_sector(FATFS *fs, DWORD sector)
-{
-	struct fat_sector *s;
-
-	list_for_each_entry(s, &fs->dirtylist, list) {
-		if (s->sector == sector) {
-			memcpy(s->data, fs->win, SS(fs));
-			return 0;
-		}
-	}
-
-	s = xmalloc(sizeof(*s) + SS(fs));
-	memcpy(s->data, fs->win, SS(fs));
-	s->sector = sector;
-	list_add_tail(&s->list, &fs->dirtylist);
-
-	return 0;
-}
-#endif
-
-static int get_fat_sector(FATFS *fs, DWORD sector)
-{
-	struct fat_sector *s;
-
-	list_for_each_entry(s, &fs->dirtylist, list) {
-		if (s->sector == sector) {
-			memcpy(fs->win, s->data, SS(fs));
-			return 0;
-		}
-	}
-
-	return disk_read(fs, fs->win, sector, 1);
-}
+/*-----------------------------------------------------------------------*/
+/* Change window offset                                                  */
+/*-----------------------------------------------------------------------*/
 
-#ifdef CONFIG_FS_FAT_WRITE
-static int flush_dirty_fat(FATFS *fs)
-{
-	struct fat_sector *s, *tmp;
-
-	list_for_each_entry_safe(s, tmp, &fs->dirtylist, list) {
-		disk_write(fs, s->data, s->sector, 1);
-		if (s->sector < (fs->fatbase + fs->fsize)) {
-			/* In FAT area */
-			BYTE nf;
-			DWORD wsect = s->sector;
-			/* Reflect the change to all FAT copies */
-			for (nf = fs->n_fats; nf > 1; nf--) {
-				wsect += fs->fsize;
-				disk_write(fs, s->data, wsect, 1);
-			}
-		}
-		list_del(&s->list);
-		free(s);
-	}
-
-	return 0;
-}
-#endif
-
-static int move_window (
-	FATFS *fs,	/* File system object */
+static
+int move_window (
+	FATFS *fs,		/* File system object */
 	DWORD sector	/* Sector number to make appearance in the fs->win[] */
-)			/* Move to zero only writes back dirty window */
+)					/* Move to zero only writes back dirty window */
 {
 	DWORD wsect;
-	int ret;
+
 
 	wsect = fs->winsect;
 	if (wsect != sector) {	/* Changed current window */
 #ifdef CONFIG_FS_FAT_WRITE
-		/* Write back dirty window if needed */
-		if (fs->wflag) {
-			ret = push_fat_sector(fs, wsect);
-			if (ret)
-				return ret;
+		if (fs->wflag) {	/* Write back dirty window if needed */
+			if (disk_write(fs, fs->win, wsect, 1) != RES_OK)
+				return -EIO;
 			fs->wflag = 0;
+			if (wsect < (fs->fatbase + fs->fsize)) {	/* In FAT area */
+				BYTE nf;
+				for (nf = fs->n_fats; nf > 1; nf--) {	/* Reflect the change to all FAT copies */
+					wsect += fs->fsize;
+					disk_write(fs, fs->win, wsect, 1);
+				}
+			}
 		}
 #endif
 		if (sector) {
-			ret = get_fat_sector(fs, sector);
-			if (ret)
-				return ret;
+			if (disk_read(fs, fs->win, sector, 1) != RES_OK)
+				return -EIO;
 			fs->winsect = sector;
 		}
 	}
@@ -2091,8 +2040,6 @@ int f_sync (
 	fp->fs->wflag = 1;
 	res = sync(fp->fs);
 
-	flush_dirty_fat(fp->fs);
-
 	return res;
 }
 
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
