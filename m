Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqSs-00061t-Gu
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:12:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Mar 2020 11:12:04 +0200
Message-Id: <20200330091210.18716-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] nfs: Add missing free
To: Barebox List <barebox@lists.infradead.org>

Add forgotten packet free in error path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/nfs.c b/fs/nfs.c
index 0d098f2a66..eb316fe295 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -773,6 +773,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 
 	ninode->fh.size = ntoh32(net_read_uint32(p++));
 	if (ninode->fh.size > NFS3_FHSIZE) {
+		nfs_free_packet(nfs_packet);
 		debug("%s: file handle too big: %u\n", __func__,
 		      ninode->fh.size);
 		return -EIO;
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
