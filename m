Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TU0oO-0001Qa-So
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:52:22 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id CF439FFAC03
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 21:02:43 +0100 (CET)
Date: Thu, 1 Nov 2012 20:50:08 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121101195008.GM29599@game.jcrosoft.org>
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
Subject: [PATCH 0/4 v2] at91sam9x5ek: add spi and mci support
To: barebox@lists.infradead.org

HI,

	with this +1 patch serie the support of the at91sam9x5ek is mostly
	complete

	This will add spi and mci0 support as spi0 and mci0 conflict

	We are still missing framebuffer, usb host and device and hardware i2c support
	but this wil be added later

	This patch serie depedsn on the at91sam9x5ek i2c and m25p80 patcheries

	the correct version

	this one work but brake the etherent as it mux the 4 cs as gpio and we
	use them on the eth0

The following changes since commit 04ffb7b107af50bd64d803b72e5fc315180381a2:

  m25p80: sync flash support with the kernel (2012-11-01 12:15:26 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91sam9x5ek_mci_spi

for you to fetch changes up to 86d0ef8200bfea132613e7654a6eb4f0d1c77cba:

  at91sam9x5ek: add mci support (2012-11-01 12:39:52 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      at91sam9x5: add spi support
      at91sam9x5ek: add spi support
      at91sam9x5: add mci support
      at91sam9x5ek: add mci support

 arch/arm/boards/at91sam9x5ek/init.c     |   57 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig |   10 +++++++---
 arch/arm/mach-at91/at91sam9x5.c         |    4 ++++
 arch/arm/mach-at91/at91sam9x5_devices.c |  124 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 192 insertions(+), 3 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
