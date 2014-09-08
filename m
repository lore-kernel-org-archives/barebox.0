Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQyvO-0002VJ-NV
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:24:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XQyv2-0000yJ-6K
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 15:23:44 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XQyv2-0006fK-4p
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 15:23:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Sep 2014 15:23:38 +0200
Message-Id: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: AT91 pinctrl/gpio fixes
To: barebox@lists.infradead.org

Unfortunately the transition to pinctrl for AT91 caused some damage.
The 926x do not compile anymore. Even when this is fixed the boards
won't work since the new pinctrl driver uses of_alias_get_id() even
for the platform case to translate the device into a gpio chip.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: AT91: Add missing include
      ARM: AT91: Make gpio mux functions inline
      pinctrl: AT91: Only use of_alias_get_id when probed from devicetree
      pinctrl: AT91: use alias_idx to calculate the base gpio number

 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |  2 +-
 arch/arm/mach-at91/include/mach/gpio.h         | 42 ++++++++++++--------------
 drivers/pinctrl/pinctrl-at91.c                 |  9 ++++--
 3 files changed, 27 insertions(+), 26 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
