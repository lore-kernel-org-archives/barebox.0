Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqSs-00061w-Gq
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:12:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Mar 2020 11:12:10 +0200
Message-Id: <20200330091210.18716-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] nfs: Do not allow to abort
To: Barebox List <barebox@lists.infradead.org>

When ctrl-c is pressed then ctrlc() will return true until
ctrlc_handled() is called. This means that once ctrl-c is pressed every
NFS operation will fail until the upper layer calls ctrlc_handled().
When for example we are doing a 'ls -l' on an NFS directory then after
a ctrl-c press not the 'ls -l' aborts, but instead the retrieving of the
directory entries which is not what we want.

Simply do not call ctrlc() in the fs layer. the NFS timeout is 2 seconds
which we have to wait until we have a chance to abort.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index a5fc6467fb..227a4866d7 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -450,9 +450,6 @@ again:
 	nfs_timer_start = get_time_ns();
 
 	while (1) {
-		if (ctrlc())
-			return ERR_PTR(-EINTR);
-
 		net_poll();
 
 		if (is_timeout(nfs_timer_start, NFS_TIMEOUT)) {
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
