Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW0V1-0001D1-CK
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 09:01:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VW0Uc-0002hw-Tq
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 11:00:42 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VW0Uc-0006je-SW
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 11:00:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2013 11:00:38 +0200
Message-Id: <1381827640-4042-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Raspberry Pi updates
To: barebox@lists.infradead.org

This updates the defconfig for the RPi to provide a useful feature
set.

----------------------------------------------------------------
Sascha Hauer (2):
      mci: bcm2835: Add detect callback support for hardware device
      ARM: rpi: Update defconfig

 arch/arm/configs/rpi_defconfig | 45 ++++++++++++++++++++++++++++++++----------
 drivers/mci/mci-bcm2835.c      | 10 ++++++++++
 2 files changed, 45 insertions(+), 10 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
