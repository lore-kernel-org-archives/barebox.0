Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVJ1b-0007Pz-Ui
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 09:31:22 +0000
Received: from mail422.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7AC19FFB11B
 for <barebox@lists.infradead.org>; Mon,  5 Nov 2012 10:41:35 +0100 (CET)
Date: Mon, 5 Nov 2012 10:29:00 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121105092900.GD29599@game.jcrosoft.org>
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
Subject: [PATCH 0/2 v3] add spi command
To: barebox@lists.infradead.org

HI,

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

for you to fetch changes up to da7ef46034f3f0344a8fbbd3ce2bde70c9ec4685:

  introduce spi command (2012-11-05 02:18:14 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      spi: introduce spi_get_master
      introduce spi command

 commands/Kconfig        |    6 ++++++
 commands/Makefile       |    1 +
 commands/spi.c          |  132 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/spi/atmel_spi.c |    1 +
 drivers/spi/spi.c       |   12 ++++++++++++
 include/spi/spi.h       |    2 ++
 6 files changed, 154 insertions(+)
 create mode 100644 commands/spi.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
