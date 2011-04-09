Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Ypf-0006HM-9a
	for barebox@lists.infradead.org; Sat, 09 Apr 2011 14:08:12 +0000
Received: by wyb28 with SMTP id 28so4650412wyb.36
	for <barebox@lists.infradead.org>; Sat, 09 Apr 2011 07:08:09 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sat,  9 Apr 2011 16:08:06 +0200
Message-Id: <1302358087-9756-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] [v2] Nios2: Add Altera TSE MAC driver
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

This version includes Sascha's remarks:

* tse_eth_halt stops and reset the DMA controllers
* the driver uses mii generic functions
* the phy address can be passed via platform_data
* tse_get_ethaddr has been cleared (there is no eeprom thing to set the MAC
address at startup).

I added a phy_id to phy name function. May be that we could put this (and
associated structure) in miidev.c / mii.h.

Franck JULLIEN (1):
  [v2] Nios2: Add Altera TSE MAC driver

 drivers/net/Kconfig      |   16 ++
 drivers/net/Makefile     |    5 +-
 drivers/net/altera_tse.c |  620 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/altera_tse.h |  313 +++++++++++++++++++++++
 4 files changed, 952 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/altera_tse.c
 create mode 100644 drivers/net/altera_tse.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
