Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTEhi-0007ky-PN
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 16:30:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 17:30:04 +0100
Message-Id: <1351614606-16461-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i.MX fec fixes
To: barebox@lists.infradead.org
Cc: wsa@pengutronix.de

The i.MX fec driver is broken on some boards since the introduction
of phylib. This is not really a phylib problem, but the phylib triggered
it. Problem is that the fec mdio read depends on fec_init called during
eth_register time. The mdiobus though is accessed earlier, so a phy
cannot be detected.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      net eth: make edev->init optional
      net fec: call fec_init at probe time

 drivers/net/fec_imx.c |    3 ++-
 net/eth.c             |    3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
