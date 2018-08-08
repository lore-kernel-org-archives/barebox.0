Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnTwK-0000aD-1U
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 19:16:13 +0000
Date: Wed, 8 Aug 2018 21:15:55 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180808191505.GA27531@ravnborg.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/3] Add Davicom phy + reset-gpios
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>

Changes in v2:
- Added patch to enable Davicom PHY on at91sam9263ek - evaluation kit
- Fix so we do reset before comunicating with the PHY
- Rename to mdio_reset()
- Reference correct binding file in commit log (mdio.txt)
- Tested on at91sam9263ek
  The at91sam9263ek kit do not require the reset like my
  proprietary board, so no DT changes required

Intro (from v1):
The following two patches was necessary to get networking
operational on my proprietary target.
The target is at91sam9263 based with a Davicom PHY.

The Davicom PHY is a straight copy form the Linux
kernel with the interrupt routine removed and
minor adjustments to the rest.

The davicom PHY would not work until it had seen a reset
cycle - which I think may be an artifact of the board design.

To fix the reset issue I have implemented support for the
reset-gpios binding (see net/mdio.txt bindings).
A minimal implmentation was done, just enough to get
my target running.

I could have implemented something in macb -
but I preferred the more generic solution.

	Sam

Sam Ravnborg (3):
      phylib: add Davicom PHY support
      phylib: add support for reset-gpios
      at91sam9263ek: add PHY, miitool etc. to config

 arch/arm/configs/at91sam9263ek_defconfig |   12 ++
 drivers/net/phy/Kconfig                  |    5 +
 drivers/net/phy/Makefile                 |    1 
 drivers/net/phy/davicom.c                |  140 +++++++++++++++++++++++++++++++
 drivers/net/phy/mdio_bus.c               |   64 +++++++++++++-
 include/linux/phy.h                      |    5 +
 6 files changed, 224 insertions(+), 3 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
