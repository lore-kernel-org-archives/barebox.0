Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVosn-0007iQ-2S
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 19:32:22 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 52170FFBC29
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 20:42:36 +0100 (CET)
Date: Tue, 6 Nov 2012 20:30:10 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121106193010.GE25679@game.jcrosoft.org>
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
Subject: [PATCH 0/8] atmtel: fix spi driver + rm9200
To: barebox@lists.infradead.org

HI,

The following changes since commit d74bef2b04a3ccf7339ba916e56830bb2feae957:

  mount: add compatibility to old mount command (2012-11-02 21:26:29 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/atmel_spi_fix

for you to fetch changes up to 7e7b7aa81cdf7e47a8f828818f1e453a27046c38:

  at91rm9200: fix spi cs support (2012-11-06 04:39:09 +0800)

----------------------------------------------------------------
atmel spi support fix

The current drivers for atmel have a lot of issues but we are lucky
enough if you use it one device + one master instance it will work on
most of the spi device

but this will not work on mmc spi or multi-master instance or multi-device

so now fix all those issues
 - fix the cs support
 - fix setup setup support
 - do not call setup before each transfert
 - add sanity check

now the atmel spi work on rm9200, mmc spi and at24, at45, eeprom

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      atmel_spi: use device id as bus num
      atmel_spi: split transfert to atmel_spi_do_xfer
      atmel_spi: after setup the cs need to be disable
      atmel_spi: add sanity check in setup
      atmel_spi: fix cs support
      atmel_spi: drop setup during transfer
      atmel_spi: add cs change support
      at91rm9200: fix spi cs support

 arch/arm/mach-at91/at91rm9200_devices.c |    7 ++++++-
 drivers/spi/atmel_spi.c                 |  260 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------------------------------
 2 files changed, 196 insertions(+), 71 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
