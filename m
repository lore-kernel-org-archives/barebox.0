Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gChR3-0003VJ-FV
 for barebox@lists.infradead.org; Wed, 17 Oct 2018 08:44:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2018 10:43:51 +0200
Message-Id: <20181017084353.5217-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/2] fs: add revalidating of dentries
To: Barebox List <barebox@lists.infradead.org>
Cc: Ladislav Michl <ladis@linux-mips.org>

Currently we do not revalidate dentries. I knew this is not correct for
network filesystems, but as it turned out it is also not correct for
devfs. In devfs files can be created/removed without the fs layer
noticing, so have to check if a dentry is still valid before using it.

Sascha Hauer (2):
  fs: implement d_revalidate
  fs: devfs: implement d_revalidate hook

 fs/devfs.c             | 27 +++++++++++++++++++++++++++
 fs/fs.c                | 37 ++++++++++++++++++++++++++++++++++++-
 include/linux/dcache.h |  3 +++
 3 files changed, 66 insertions(+), 1 deletion(-)

-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
