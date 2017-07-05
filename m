Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSp25-0005Mz-Ew
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 18:28:15 +0000
Date: Wed, 5 Jul 2017 20:27:47 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170705182747.GB13920@ravnborg.org>
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
Subject: [PATCH v2 0/3] diverse at91 related fixes
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

This is a rework of the two patches sent earlier + an extra patch.
With these patches my AT91SAM9263EK board boots barebox.

clk: fix clk_get error handling
- changed based on feedback from Uwe, test for -ENOENT

gpiolib: fix: do not access oftree on non-OFDEVICE boards
- rebased on top of Alexenaders original fix

And a third patch that just adds a missing static (found while browsing code)

diffstat:

 arch/arm/mach-at91/bootstrap.c |    2 +-
 drivers/clk/clkdev.c           |    2 +-
 drivers/gpio/gpiolib.c         |    8 +++++++-
 3 files changed, 9 insertions(+), 3 deletions(-)

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
