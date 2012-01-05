Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RispY-0005JF-H5
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 19:18:30 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu,  5 Jan 2012 20:18:15 +0100
Message-Id: <1325791095-32363-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] fs: fat: gen_numname() is only need with FS_FAT_WRITE
To: barebox@lists.infradead.org

So, check for that config option, too. This will get rid of the warning:

	fs/fat/ff.c:878:13: warning: 'gen_numname' defined but not used

I could have also moved the function further down, but I decided for the
least intrusive change.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 fs/fat/ff.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index 3ada867..0087e21 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -874,7 +874,7 @@ void fit_lfn (
 /*
  * Create numbered name
  */
-#ifdef CONFIG_FS_FAT_LFN
+#if defined(CONFIG_FS_FAT_LFN) && defined(CONFIG_FS_FAT_WRITE)
 static void gen_numname (
 	BYTE *dst,		/* Pointer to generated SFN */
 	const BYTE *src,	/* Pointer to source SFN to be modified */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
