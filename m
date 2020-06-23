Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jncIH-0002Rr-Lr
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 06:20:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 08:20:09 +0200
Message-Id: <20200623062011.19347-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/2] clk: at91: sync with Linux v5.8-rc1
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Hello Sascha,

This series adds support for the new sama5d3 clk bindings present in v5.8-rc1.
Please apply before the v5.8-rc1 device tree sync, so we avoid intermittent
breakage for the microchip-ksz9477-evb.

Thanks,
Ahmad Fatoum (2):
  include: import upstream header <linux/overflow.h>
  clk: at91: sync with Linux v5.8-rc1

 drivers/clk/at91/Makefile      |   5 +-
 drivers/clk/at91/at91rm9200.c  | 209 +++++++++++++++++++++
 drivers/clk/at91/at91sam9260.c |  13 +-
 drivers/clk/at91/at91sam9g45.c | 221 +++++++++++++++++++++++
 drivers/clk/at91/at91sam9n12.c | 249 +++++++++++++++++++++++++
 drivers/clk/at91/at91sam9rl.c  |  10 +-
 drivers/clk/at91/at91sam9x5.c  |  10 +-
 drivers/clk/at91/clk-usb.c     |   9 +-
 drivers/clk/at91/pmc.c         |  47 +++--
 drivers/clk/at91/pmc.h         |  14 +-
 drivers/clk/at91/sam9x60.c     |  28 ++-
 drivers/clk/at91/sama5d2.c     |  13 +-
 drivers/clk/at91/sama5d3.c     | 248 +++++++++++++++++++++++++
 drivers/clk/at91/sama5d4.c     |  10 +-
 include/linux/overflow.h       | 319 +++++++++++++++++++++++++++++++++
 15 files changed, 1343 insertions(+), 62 deletions(-)
 create mode 100644 drivers/clk/at91/at91rm9200.c
 create mode 100644 drivers/clk/at91/at91sam9g45.c
 create mode 100644 drivers/clk/at91/at91sam9n12.c
 create mode 100644 drivers/clk/at91/sama5d3.c
 create mode 100644 include/linux/overflow.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
