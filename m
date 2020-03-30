Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqSz-00067I-Nm
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:12:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Mar 2020 11:12:02 +0200
Message-Id: <20200330091210.18716-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/8] NFS fixes
To: Barebox List <barebox@lists.infradead.org>

This series fixes some issues with the NFS code. It was easy to confuse
the code by pressing ctrl-c during a file transfer. The next file
transfers then ended in corrupted files.

Sascha

Sascha Hauer (8):
  nfs: Add function to free packets
  nfs: Add missing free
  nfs: remove unnecessary check
  nfs: Fix rpc_check_reply() return value for stale packets
  nfs: Fix polling for packets
  nfs: queue received packets
  fs: nfs: don't maintain nfs dentries in dcache
  nfs: Do not allow to abort

 fs/nfs.c | 93 +++++++++++++++++++++++++++++---------------------------
 1 file changed, 49 insertions(+), 44 deletions(-)

-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
