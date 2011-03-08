Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwvGW-0001Ya-UU
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:39:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:39:42 +0100
Message-Id: <1299584385-6016-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
References: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] ramfs: increase chunk size to 4 kbyte
To: barebox@lists.infradead.org

This greatly increases speed on ramfs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 6222550..91001f1 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -30,7 +30,7 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 
-#define CHUNK_SIZE	512
+#define CHUNK_SIZE	4096
 
 struct ramfs_chunk {
 	char *data;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
