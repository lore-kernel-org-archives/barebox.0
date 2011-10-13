Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REMjy-0004kj-2u
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 14:58:34 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1REMju-0005wP-LI
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 16:58:30 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1REMju-00065L-KA
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 16:58:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 16:58:27 +0200
Message-Id: <1318517909-21205-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: patches
To: barebox@lists.infradead.org

Two small patches.

Sascha Hauer (2):
      ARM: use arm_system_rev from environment
      nand: export some useful information about flashes to device variables

 arch/arm/lib/armlinux.c |   11 +++++++++++
 drivers/mtd/nand/nand.c |    6 ++++++
 2 files changed, 17 insertions(+), 0 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
