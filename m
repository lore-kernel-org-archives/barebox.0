Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXwOf-0000yI-GS
 for barebox@lists.infradead.org; Wed, 19 Jul 2017 21:20:44 +0000
Date: Wed, 19 Jul 2017 23:20:13 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170719212013.GA1675@ravnborg.org>
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
Subject: [PATCH 0/6] assorted fixes, mainly at91 related
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

While working on enabling DT support for at91sam9263ek
I have stumbled over a fev issues that are
all fixed in the following patches.

Some of the issues may only be relevant when we have more at91
boards supporting DT.
None of the fixes are critical and are thus mainly -next material.

	Sam

Sam Ravnborg (6):
      arm: at91 bootstrap: declare local function static
      macb: fix clock probing with DT
      clk: at91: fix clk-main
      pinctrl: at91: move initcalls to postcore_initcall
      mci: atmel_mci: fix devinfo DEV with OF enabled
      atmel_lcdfb: fix so the correct guard_time is used

 arch/arm/mach-at91/bootstrap.c   | 2 +-
 drivers/clk/at91/clk-main.c      | 1 +
 drivers/mci/atmel_mci.c          | 3 +--
 drivers/net/macb.c               | 4 ++--
 drivers/pinctrl/pinctrl-at91.c   | 4 ++--
 drivers/video/atmel_lcdfb.c      | 2 +-
 drivers/video/atmel_lcdfb_core.c | 1 +
 7 files changed, 9 insertions(+), 8 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
