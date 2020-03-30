Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqSs-00061v-Gp
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:12:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Mar 2020 11:12:06 +0200
Message-Id: <20200330091210.18716-5-s.hauer@pengutronix.de>
In-Reply-To: <20200330091210.18716-1-s.hauer@pengutronix.de>
References: <20200330091210.18716-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/8] nfs: Fix rpc_check_reply() return value for stale packets
To: Barebox List <barebox@lists.infradead.org>

When we receive a packet with the previous rpc_id then we have
the comment "stale packet, wait a bit longer", but that's not what
the code does. rpc_check_reply() returns 0 in this case and the caller
then interprets the packet as valid.
Always return -EAGAIN for invalid rpc_ids. This lets the caller ignore
the packets as intented.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 9956791820..1bfd36fcb6 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -368,13 +368,8 @@ static int rpc_check_reply(struct packet *pkt, int rpc_prog,
 
 	memcpy(&rpc, pkt->data, sizeof(rpc));
 
-	if (ntoh32(rpc.id) != rpc_id) {
-		if (rpc_id - ntoh32(rpc.id) == 1)
-			/* stale packet, wait a bit longer */
-			return 0;
-
-		return -EINVAL;
-	}
+	if (ntoh32(rpc.id) != rpc_id)
+		return -EAGAIN;
 
 	if (rpc.rstatus  ||
 	    rpc.verifier ||
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
