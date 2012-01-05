Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RijYS-0008BT-8S
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 09:24:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jan 2012 10:23:59 +0100
Message-Id: <1325755439-19534-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1325755439-19534-1-git-send-email-s.hauer@pengutronix.de>
References: <1325755439-19534-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] fat fs: Fix compile warning
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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
