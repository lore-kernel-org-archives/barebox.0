Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNW7-0000y3-HT
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:08:37 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QmNW5-00033G-Ec
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 12:08:33 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QmNW5-0006D6-DG
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 12:08:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:08:27 +0200
Message-Id: <1311847712-23515-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX fec cleanup
To: barebox@lists.infradead.org

The following series contains some i.MX fec ethernet driver
cleanups.

Sascha Hauer (5):
      ARM dma_alloc_coherent: Fix alignment for !MMU case
      net i.MX fec: make multi instance safe
      net i.MX fec: remove unnecessary alignment
      net i.MX fec: embed ethernet device into priv
      net i.MX fec: rename driver struct to be generic

 arch/arm/include/asm/mmu.h |    2 +-
 drivers/net/fec_imx.c      |   64 ++++++++++++++++++++++---------------------
 drivers/net/fec_imx.h      |    1 +
 3 files changed, 35 insertions(+), 32 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
