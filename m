Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ2qb-0008Ko-RM
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 14:53:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VJ2qB-0007u4-Ja
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 16:53:23 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VJ2qB-0002Qj-IK
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 16:53:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Sep 2013 16:53:15 +0200
Message-Id: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: designware patches
To: barebox@lists.infradead.org

Some fixes/improvements for the designware network controller.

----------------------------------------------------------------
Sascha Hauer (6):
      net: designware: Fix broken cache invalidate
      net: designware: drop HAS_DESIGNWARE_ETH
      net: designware: use dma_alloc for descriptors
      net: designware: make alt/enhanced descriptor runtime configurable
      net: designware: Add decvicetree support
      net: designware: remove backspaces from code

 drivers/net/Kconfig      |   6 ---
 drivers/net/designware.c | 135 ++++++++++++++++++++++++++++++-----------------
 drivers/net/designware.h |  62 ++++++++--------------
 include/net/designware.h |   1 +
 4 files changed, 111 insertions(+), 93 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
