Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta4IX-00016l-H9
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 12:48:31 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C21E4DC3C38
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 13:56:07 +0100 (CET)
Date: Sun, 18 Nov 2012 13:46:27 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121118124627.GE8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/7] phylib: fix + drivers
To: barebox@lists.infradead.org

HI,

	Today we have a bug on the match the logic is inverted.
	We are lucky as the generic Phy driver is not suppoed to match with
	any device it work so fix it. Ensure the generic phy driver is
	probe last if needed.

	for mx53-loco we are lucky too the first phy found is the right one

The following changes since commit 272a5d738ab152347d67be062e8a4e771825493a:

  at91rm9200ek: add spi support (2012-11-16 15:33:50 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/phylib_fix

for you to fetch changes up to 5ea00036e330ea58293774a36d3ee5f9c1fbe895:

  phylib: add micrel support (2012-11-16 23:11:16 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      driver: introduce device_probe to manully probe a device
      phylib: fix generic phy driver probe
      mdio_bus: fix match
      phylib: export phy_id via param
      phylib: introduction of forced 100Mbps
      phylib: add fixup support
      phylib: add micrel support

 drivers/base/driver.c      |   23 +++++++++----
 drivers/net/phy/Kconfig    |   11 +++---
 drivers/net/phy/Makefile   |    2 +-
 drivers/net/phy/generic.c  |   36 --------------------
 drivers/net/phy/mdio_bus.c |   28 ++++++++++-----
 drivers/net/phy/micrel.c   |  174 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/phy/phy.c      |  130 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 include/driver.h           |    5 +++
 include/linux/micrel_phy.h |   30 ++++++++++++++++
 include/linux/phy.h        |   21 +++++++++++-
 10 files changed, 400 insertions(+), 60 deletions(-)
 delete mode 100644 drivers/net/phy/generic.c
 create mode 100644 drivers/net/phy/micrel.c
 create mode 100644 include/linux/micrel_phy.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
