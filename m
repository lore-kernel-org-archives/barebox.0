Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqSz-00067M-TT
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:12:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Mar 2020 11:12:07 +0200
Message-Id: <20200330091210.18716-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] nfs: Fix polling for packets
To: Barebox List <barebox@lists.infradead.org>

It can happen that the first packet we receive is not the desired one.
In this case we have to poll for further packets. set nfs_state back to
STATE_START before polling for more packets, otherwise we check the same
packet again and again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 1bfd36fcb6..b070ca79d5 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -450,14 +450,17 @@ again:
 
 	nfs_timer_start = get_time_ns();
 
-	nfs_state = STATE_START;
+	while (1) {
+		nfs_state = STATE_START;
 
-	while (nfs_state != STATE_DONE) {
 		if (ctrlc())
 			return ERR_PTR(-EINTR);
 
 		net_poll();
 
+		if (nfs_state != STATE_DONE)
+			continue;
+
 		if (is_timeout(nfs_timer_start, NFS_TIMEOUT)) {
 			tries++;
 			if (tries == NFS_MAX_RESEND)
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
