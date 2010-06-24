Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq3-0003MA-48
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:07 +0200
Message-Id: <1277372108-30332-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] nfs: resend requests after timeout
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/nfs.c |   12 +++++++-----
 1 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/net/nfs.c b/net/nfs.c
index bdf05bd..4ca1d6e 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -124,7 +124,7 @@ struct rpc_t {
 	} u;
 };
 
-#define NFS_TIMEOUT 60
+#define NFS_TIMEOUT 1
 
 static unsigned long rpc_id = 0;
 static int nfs_offset = -1;
@@ -399,6 +399,8 @@ static void nfs_send(void)
 		nfs_readlink_req();
 		break;
 	}
+
+	nfs_timer_start = get_time_ns();
 }
 
 static int rpc_check_reply(unsigned char *pkt, int isnfs)
@@ -661,8 +663,6 @@ static void nfs_start(char *p)
 
 	printf("\nFilename '%s/%s'.\n", nfs_path, nfs_filename);
 
-	nfs_timer_start = get_time_ns();
-
 	nfs_state = STATE_PRCLOOKUP_PROG_MOUNT_REQ;
 
 	nfs_send();
@@ -706,8 +706,10 @@ static int do_nfs(struct command *cmdtp, int argc, char *argv[])
 			break;
 		}
 		net_poll();
-		if (is_timeout(nfs_timer_start, NFS_TIMEOUT * SECOND))
-			break;
+		if (is_timeout(nfs_timer_start, NFS_TIMEOUT * SECOND)) {
+			show_progress(-1);
+			nfs_send();
+		}
 	}
 
 	net_unregister(nfs_con);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
