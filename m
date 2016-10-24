Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1byYkt-0007LQ-9G
 for barebox@lists.infradead.org; Mon, 24 Oct 2016 06:29:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Oct 2016 08:28:43 +0200
Message-Id: <20161024062843.2796-7-s.hauer@pengutronix.de>
In-Reply-To: <20161024062843.2796-1-s.hauer@pengutronix.de>
References: <20161024062843.2796-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] fs: squashfs: Enable squashfs XZ support when XZ is
 enabled
To: Barebox List <barebox@lists.infradead.org>

XZ support itself is much more expensive than the squashfs XZ wrapper,
so it makes sense to just compile XZ support into barebox when XZ
support is available. No need to ask the user for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/Kconfig | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index 085bfb6..2362ba1 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -48,15 +48,12 @@ if !SQUASHFS_LZO
 endif
 
 config SQUASHFS_XZ
-	bool "Include support for XZ compressed file systems"
-	default y
+	bool
 	depends on FS_SQUASHFS
-	select XZ_DECOMPRESS
-	help
-	  Saying Y here includes support for reading Squashfs file systems
-	  compressed with XZ compression.  XZ gives better compression than
-	  the default zlib compression, at the expense of greater CPU and
-	  memory overhead.
+	depends on XZ_DECOMPRESS
+	default y
+
+if !SQUASHFS_XZ
+	comment "XZ support disabled"
+endif
 
-	  XZ is not the standard compression used in Squashfs and so most
-	  file systems will be readable without selecting this option.
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
