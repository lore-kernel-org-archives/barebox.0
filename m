Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoB98-00014O-IE
	for barebox@lists.infradead.org; Tue, 02 Aug 2011 09:20:19 +0000
Received: by fxd20 with SMTP id 20so7446452fxd.36
	for <barebox@lists.infradead.org>; Tue, 02 Aug 2011 02:20:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  2 Aug 2011 13:20:11 +0400
Message-Id: <1312276811-25960-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fs/fat/ff.c: fix 'no previous prototype' warnings
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/fat/ff.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index bcd0a93..3ada867 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -363,7 +363,7 @@ int sync (	/* 0: successful, -EIO: failed */
 /*
  * Get sector# from cluster#
  */
-DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
+static DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
 	FATFS *fs,	/* File system object */
 	DWORD clst	/* Cluster# to be converted */
 )
@@ -377,7 +377,7 @@ DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
 /*
  * FAT access - Read value of a FAT entry
  */
-DWORD get_fat (	/* 0xFFFFFFFF:Disk error, 1:Internal error, Else:Cluster status */
+static DWORD get_fat (	/* 0xFFFFFFFF:Disk error, 1:Internal error, Else:Cluster status */
 	FATFS *fs,	/* File system object */
 	DWORD clst	/* Cluster# to get the link information */
 )
@@ -424,7 +424,7 @@ DWORD get_fat (	/* 0xFFFFFFFF:Disk error, 1:Internal error, Else:Cluster status
  */
 #ifdef CONFIG_FS_FAT_WRITE
 
-int put_fat (
+static int put_fat (
 	FATFS *fs,	/* File system object */
 	DWORD clst,	/* Cluster# to be changed in range of 2 to fs->n_fatent - 1 */
 	DWORD val	/* New value to mark the cluster */
@@ -875,7 +875,7 @@ void fit_lfn (
  * Create numbered name
  */
 #ifdef CONFIG_FS_FAT_LFN
-void gen_numname (
+static void gen_numname (
 	BYTE *dst,		/* Pointer to generated SFN */
 	const BYTE *src,	/* Pointer to source SFN to be modified */
 	const WCHAR *lfn,	/* Pointer to LFN */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
