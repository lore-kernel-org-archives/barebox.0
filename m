Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hK0R9-0001uQ-CM
 for barebox@lists.infradead.org; Fri, 26 Apr 2019 12:58:44 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri, 26 Apr 2019 14:58:33 +0200
Message-Id: <20190426125833.17367-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] fs: nfs: ensure rpc_req message is send
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Currently we send a rpc message without checking if the send was
succesfull and poll for a answer from the server. If the server didn't
answer within the NFS_TIMEOUT window we send the package again. In case
the package send wasn't successful we always run in that timeout. This
gets even worse if the package send fails more than one time.

Check if the package send was successful and resend the package if it
wasn't to fix this behaviour.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 fs/nfs.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/fs/nfs.c b/fs/nfs.c
index 574fb85fb6..d606ccd1e9 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -436,9 +436,20 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
 
 	npriv->con->udp->uh_dport = hton16(dport);
 
+	nfs_timer_start = get_time_ns();
+
 again:
 	ret = net_udp_send(npriv->con,
 			sizeof(pkt) + datalen * sizeof(uint32_t));
+	if (ret) {
+		if (is_timeout(nfs_timer_start, NFS_TIMEOUT)) {
+			tries++;
+			if (tries == NFS_MAX_RESEND)
+				return ERR_PTR(-ETIMEDOUT);
+		}
+
+		goto again;
+	}
 
 	nfs_timer_start = get_time_ns();
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
