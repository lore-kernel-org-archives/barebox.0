Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fn9Jq-0000ap-91
 for barebox@lists.infradead.org; Tue, 07 Aug 2018 21:15:07 +0000
Date: Tue, 7 Aug 2018 23:14:49 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180807211449.GA15748@ravnborg.org>
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
Subject: [PATCH v1 0/2] Add Davicom phy + reset-gpios
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>

The following two patches was necessary to get networking
operational on my proprietary target.
The target is at91sam9263 based with a Davicom PHY.

The Davicom PHY is a straight copy form the Linux
kernel with the interrupt routine removed and
minor adjustments to the rest.

The davicom PHY would not work until it had seen a reset
cycle - which I think may be an artifact of the board design.

To fix the reset issue I have implemented support for the
reset-gpios binding (see phy-bindings.txt).
A minimal implmentation was done, just enough to get
my target running.

I could have implmented something in macb -
but I considered the above the more generic solution.

	Sam

Sam Ravnborg (4):
      phylib: add Davicom support
      phylib: add support for reset-gpios


 drivers/net/phy/Kconfig    |    5 +
 drivers/net/phy/Makefile   |    1 
 drivers/net/phy/davicom.c  |  140 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/phy/mdio_bus.c |   58 +++++++++++++++++-
 include/linux/phy.h        |    5 +
 5 files changed, 206 insertions(+), 3 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
