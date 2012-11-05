Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVRQJ-0006C2-AQ
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 18:29:23 +0000
Received: from mail239.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id DC2C8FFB635
 for <barebox@lists.infradead.org>; Mon,  5 Nov 2012 19:34:33 +0100 (CET)
Date: Mon, 5 Nov 2012 19:21:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121105182148.GA25679@game.jcrosoft.org>
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
Subject: [PATCH 0/2 v4] add spi command
To: barebox@lists.infradead.org

HI,

	v4:
	do not touch the atmel_spi

	v3:
	call setup before accesing the device
	This was working properly on at91 as the driver is wrong.
	It call setup for every transfer. I will fix the atmel_spi.

	v2:
	add default return usage
	use memory_display

	while debugging a spi issue I found we have a i2c commands but no spi
	command

	So introduce one

The following changes since commit 56371f4e8446d04d2a5608dd5890fd87a50f888e:

  iomux-imx35: add missing comma in pad definition (2012-11-01 16:32:12 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/command_spi

for you to fetch changes up to 268e3d4f67da35571159fd096c62fa2e660783b0:

  introduce spi command (2012-11-05 11:13:25 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      spi: introduce spi_get_master
      introduce spi command

 commands/Kconfig  |    6 ++++++
 commands/Makefile |    1 +
 commands/spi.c    |  132 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/spi/spi.c |   12 ++++++++++++
 include/spi/spi.h |    2 ++
 5 files changed, 153 insertions(+)
 create mode 100644 commands/spi.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
