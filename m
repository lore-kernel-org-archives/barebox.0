Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFJ-0002Qg-Vu
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:29 +0200
Message-Id: <1340645910-15668-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] fs FAT: fix warning: Using plain integer as NULL pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fat/ff.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index 2d476ee..66db1d6 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -1043,7 +1043,7 @@ int dir_register (	/* 0:Successful, FR_DENIED:No free entry or too many SFN coll
 
 	if (sn[NS] & NS_LOSS) {
 		/* When LFN is out of 8.3 format, generate a numbered name */
-		fn[NS] = 0; dj->lfn = 0; /* Find only SFN */
+		fn[NS] = 0; dj->lfn = NULL; /* Find only SFN */
 		for (n = 1; n < 100; n++) {
 			gen_numname(fn, sn, lfn, n); /* Generate a numbered name */
 			res = dir_find(dj); /* Check if the name collides with existing SFN */
@@ -1496,7 +1496,7 @@ int follow_path (	/* 0(0): successful, !=0: error code */
 	if ((UINT)*path < ' ') {
 		/* Nul path means the start directory itself */
 		res = dir_sdi(dj, 0);
-		dj->dir = 0;
+		dj->dir = NULL;
 		return res;
 	}
 
@@ -1718,7 +1718,7 @@ int f_open (
 	DEF_NAMEBUF;
 
 
-	fp->fs = 0;		/* Clear file object */
+	fp->fs = NULL;		/* Clear file object */
 
 #ifdef CONFIG_FS_FAT_WRITE
 	mode &= FA_READ | FA_WRITE | FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW;
@@ -2059,7 +2059,7 @@ int f_close (
 	/* Flush cached data */
 	res = f_sync(fp);
 	if (res == 0)
-		fp->fs = 0;	/* Discard file object */
+		fp->fs = NULL;	/* Discard file object */
 	return res;
 #endif
 }
@@ -2308,7 +2308,7 @@ int f_getfree (
 	} else {
 		clst = fatfs->n_fatent;
 		sect = fatfs->fatbase;
-		i = 0; p = 0;
+		i = 0; p = NULL;
 		do {
 			if (!i) {
 				res = move_window(fatfs, sect++);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
