Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kls-0005iH-E8
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 11:45:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Sep 2019 13:44:59 +0200
Message-Id: <20190902114459.12171-3-s.hauer@pengutronix.de>
In-Reply-To: <20190902114459.12171-1-s.hauer@pengutronix.de>
References: <20190902114459.12171-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] fs: nfs: Fix possible buffer overflow
To: Barebox List <barebox@lists.infradead.org>

nfs_readlink_req() interprets a 32bit value directly received from the
network as length argument to memcpy() without any boundary checking.
Clamp the copy size at the end of the incoming packet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/nfs.c b/fs/nfs.c
index d606ccd1e9..0ad07aa3f2 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1023,6 +1023,10 @@ static int nfs_readlink_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 	p = nfs_read_post_op_attr(p, NULL);
 
 	len = ntoh32(net_read_uint32(p)); /* new path length */
+
+	len = max_t(unsigned int, len,
+		    nfs_packet->len - sizeof(struct rpc_reply) - sizeof(uint32_t));
+
 	p++;
 
 	*target = xzalloc(len + 1);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
