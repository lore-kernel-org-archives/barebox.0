Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxTgk-0007ez-Ae
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 06:52:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Oct 2016 08:51:24 +0200
Message-Id: <20161021065124.7328-6-s.hauer@pengutronix.de>
In-Reply-To: <20161021065124.7328-1-s.hauer@pengutronix.de>
References: <20161021065124.7328-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] fs: squashfs: Do not default on xz
To: Barebox List <barebox@lists.infradead.org>

The default compression algorithm for squashfs is zlib, so only
do a 'default y' there. For xz change to 'default y if the algorithm
is enabled anyway' likke the other compression algorithms do.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index 2e28e90..b84ef75 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -60,7 +60,7 @@ config SQUASHFS_LZO
 
 config SQUASHFS_XZ
 	bool "Include support for XZ compressed file systems"
-	default y
+	default y if XZ_DECOMPRESS
 	depends on FS_SQUASHFS
 	select XZ_DECOMPRESS
 	help
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
