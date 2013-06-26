Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrkEV-0005PT-H0
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 07:33:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UrkE9-0003F0-LH
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 09:33:17 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UrkE9-00038m-KC
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 09:33:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 09:33:12 +0200
Message-Id: <1372231996-1042-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] detect environment device on some boards
To: barebox@lists.infradead.org

Using 'detect' on the environment device allows us to disable
CONFIG_MCI_STARTUP. This speeds up the startup since unnecessary
SD/MMC cards are no longer probed.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      driver: implement device_detect_by_name function
      ARM: i.MX51 efikasb: detect environment device
      ARM: i.MX51 babbage: detect environment device
      ARM: i.MX: use device_detect_by_name where applicable

 arch/arm/boards/dmo-mx6-realq7/board.c      |  6 +-----
 arch/arm/boards/efika-mx-smartbook/board.c  |  2 ++
 arch/arm/boards/freescale-mx51-pdk/board.c  |  2 ++
 arch/arm/boards/freescale-mx53-loco/board.c |  4 +---
 drivers/base/driver.c                       | 10 ++++++++++
 include/driver.h                            |  1 +
 6 files changed, 17 insertions(+), 8 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
