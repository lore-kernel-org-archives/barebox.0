Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k55j2-0003Ju-Cq
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 11:12:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Aug 2020 13:12:09 +0200
Message-Id: <20200810111212.31286-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/3] squashfs: Fix current master
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

squashfs is broken since 43902e5763 ("fs: free inodes we no longer need").
This series fixes it.

Sascha Hauer (3):
  fs: squashfs: set s_op in time
  fs: squashfs: Do not free root inode
  fs: Use iget_locked() rather than squashfs specific function

 fs/squashfs/inode.c    | 18 +-----------------
 fs/squashfs/squashfs.c |  3 +--
 fs/squashfs/squashfs.h |  1 -
 fs/squashfs/super.c    |  1 -
 4 files changed, 2 insertions(+), 21 deletions(-)

-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
