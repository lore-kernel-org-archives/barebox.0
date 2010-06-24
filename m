Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq3-0003M9-4I
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:06 +0200
Message-Id: <1277372108-30332-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] nfs: Use generic progression bar
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/nfs.c |   14 +++++++-------
 1 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/net/nfs.c b/net/nfs.c
index 51df7a3..bdf05bd 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -32,6 +32,7 @@
 #include <libgen.h>
 #include <fcntl.h>
 #include <errno.h>
+#include <progress.h>
 #include <linux/err.h>
 
 #define SUNRPC_PORT     111
@@ -123,7 +124,6 @@ struct rpc_t {
 	} u;
 };
 
-#define HASHES_PER_LINE 65	/* Number of "loading" hashes per line	*/
 #define NFS_TIMEOUT 60
 
 static unsigned long rpc_id = 0;
@@ -540,10 +540,10 @@ static int nfs_read_reply(unsigned char *pkt, unsigned len)
 
 	data = (uint32_t *)(pkt + sizeof(struct rpc_reply));
 
-	if (nfs_offset && !((nfs_offset) % (NFS_READ_SIZE / 2 * 10 * HASHES_PER_LINE)))
-		puts ("\n\t ");
-	if (!(nfs_offset % ((NFS_READ_SIZE / 2) * 10)))
-		putchar ('#');
+	if (!nfs_offset) {
+		uint32_t filesize = ntohl(net_read_uint32(data + 6));
+		init_progression_bar(filesize);
+	}
 
 	rlen = ntohl(net_read_uint32(data + 18));
 
@@ -629,7 +629,7 @@ static void nfs_handler(char *packet, unsigned len)
 			nfs_state = STATE_READLINK_REQ;
 		else
 			goto err_umount;
-
+		show_progress(nfs_offset);
 		break;
 	}
 
@@ -659,7 +659,7 @@ static void nfs_start(char *p)
 	nfs_filename = basename (nfs_path);
 	nfs_path     = dirname (nfs_path);
 
-	printf("\nFilename '%s/%s'.\nLoading: ", nfs_path, nfs_filename);
+	printf("\nFilename '%s/%s'.\n", nfs_path, nfs_filename);
 
 	nfs_timer_start = get_time_ns();
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
