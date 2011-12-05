Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXUT1-0004qZ-A9
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 09:04:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 10:04:00 +0100
Message-Id: <1323075840-29783-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ramfs: increase chunk size to 8192 bytes
To: barebox@lists.infradead.org

dlmalloc seems to work more efficient with this chunk size.
Copying a bigger file (3MB) takes 271ms vs. 125ms on a i.MX27
board. Even bigger chunk sizes do not further improve performance.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index db417e1..5e352f2 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -30,7 +30,7 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 
-#define CHUNK_SIZE	4096
+#define CHUNK_SIZE	(4096 * 2)
 
 struct ramfs_chunk {
 	char *data;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
