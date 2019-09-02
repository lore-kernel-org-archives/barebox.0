Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kld-0004nx-4w
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 11:45:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Sep 2019 13:44:58 +0200
Message-Id: <20190902114459.12171-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] net: nfs: Fix possible buffer overflow
To: Barebox List <barebox@lists.infradead.org>

nfs_readlink_reply() interprets a 32bit value directly received from the
network as length argument to memcpy() without any boundary checking.
Clamp the copy size at the end of the incoming packet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/nfs.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/nfs.c b/net/nfs.c
index 0a3021994a..63573098d7 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -502,7 +502,7 @@ static int nfs_readlink_reply(unsigned char *pkt, unsigned len)
 {
 	uint32_t *data;
 	char *path;
-	int rlen;
+	unsigned int rlen;
 	int ret;
 
 	ret = rpc_check_reply(pkt, 1);
@@ -515,6 +515,9 @@ static int nfs_readlink_reply(unsigned char *pkt, unsigned len)
 
 	rlen = ntohl(net_read_uint32(data)); /* new path length */
 
+	rlen = max_t(unsigned int, rlen,
+		     len - sizeof(struct rpc_reply) - sizeof(uint32_t));
+
 	data++;
 	path = (char *)data;
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
