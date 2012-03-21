Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAJZF-0005Pq-2r
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 11:19:02 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed, 21 Mar 2012 12:18:42 +0100
Message-Id: <1332328725-29753-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 0/3] miidev: improve phy initialization
To: barebox@lists.infradead.org

I had problems with link detection, because the PHY was put into an energy
saving mode by the kernel which made it react pretty slow. barebox failed on
that, so make the initialization more robust by adding more checks and proper
timeout mechanisms.

Wolfram Sang (3):
  net: miidev: check for errors when accessing bus
  net: miidev: Refactor timeout for aneg
  net: miidev: properly check for MII reset

 drivers/net/miidev.c |   63 ++++++++++++++++++++++++++++++++-----------------
 1 files changed, 41 insertions(+), 22 deletions(-)

-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
