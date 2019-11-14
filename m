Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEjh-0006oT-4k
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 13:00:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Nov 2019 14:00:15 +0100
Message-Id: <20191114130021.1029-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/6] fsl-fman patches
To: Barebox List <barebox@lists.infradead.org>

This series contains some patches for the fsl-fman ethernet controller.
Most important is the first one which makes the controller work when
barebox is started second stage from another barebox. The other patches
are some cleanups I stumbled upon while searching for the issue.

Sascha

Sascha Hauer (6):
  net: fsl-fman: reset device before leaving
  net: fsl-fman: Store index for txbd
  net: fsl-fman: move status read into loop
  net: fsl-fman: Store index for rxbd
  net: fsl-fman: simplify setting next offset
  net: fsl-fman: do not leave not transmitted DMA buffers mapped

 drivers/net/fsl-fman.c     | 90 +++++++++++++++++++++-----------------
 include/soc/fsl/fsl_fman.h |  3 ++
 2 files changed, 53 insertions(+), 40 deletions(-)

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
