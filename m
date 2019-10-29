Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNWK-0008Nn-Hq
 for barebox@lists.infradead.org; Tue, 29 Oct 2019 09:10:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Oct 2019 10:10:25 +0100
Message-Id: <20191029091029.22215-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/4] ext4 fixes
To: Barebox List <barebox@lists.infradead.org>

This series fixes some issues with the ext4 code regarding to sparse
files.

Sascha

Sascha Hauer (4):
  fs: ext4: Fix out of bounds memset
  fs: ext4: remove unnecessarily clever file read
  fs: ext4: Fix handling of sparse files
  fs: ext4: return NULL instead of 0

 fs/ext4/ext4_common.c | 32 +++++++++++------------
 fs/ext4/ext4fs.c      | 61 +++++--------------------------------------
 2 files changed, 23 insertions(+), 70 deletions(-)

-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
