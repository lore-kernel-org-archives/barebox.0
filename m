Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqSz-00067K-Nc
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:12:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Mar 2020 11:12:05 +0200
Message-Id: <20200330091210.18716-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] nfs: remove unnecessary check
To: Barebox List <barebox@lists.infradead.org>

In rpc_check_reply() pkt is never NULL, drop the unnecessary patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index eb316fe295..9956791820 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -366,9 +366,6 @@ static int rpc_check_reply(struct packet *pkt, int rpc_prog,
 
 	*nfserr = 0;
 
-	if (!pkt)
-		return -EAGAIN;
-
 	memcpy(&rpc, pkt->data, sizeof(rpc));
 
 	if (ntoh32(rpc.id) != rpc_id) {
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
