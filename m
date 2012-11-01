Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TU0Uu-00011a-4s
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:32:13 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 2725DFFA822
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 20:42:38 +0100 (CET)
Date: Thu, 1 Nov 2012 20:30:02 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121101193002.GL29599@game.jcrosoft.org>
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
Subject: [PATCH 0/4] at91sam9x5ek: add spi and mci support
To: barebox@lists.infradead.org

HI,

	with this +1 patch serie the support of the at91sam9x5ek is mostly
	complete

	This will add spi and mci0 support as spi0 and mci0 conflict

	We are still missing framebuffer, usb host and device and hardware i2c support
	but this wil be added later

	This patch serie depedsn on the at91sam9x5ek i2c and m25p80 patcheries

The following changes since commit 04ffb7b107af50bd64d803b72e5fc315180381a2:

  m25p80: sync flash support with the kernel (2012-11-01 12:15:26 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91sam9x5ek_mci_spi

for you to fetch changes up to 2c12218e89c0318dc9bed4f7f397b68903b4203e:

  at91sam9x5ek: add mci support (2012-11-01 12:15:41 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      at91sam9x5: add spi support
      at91sam9x5ek: add spi support
      at91sam9x5: add mci support
      at91sam9x5ek: add mci support

 arch/arm/boards/at91sam9x5ek/init.c     |   51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig |   10 +++++++---
 arch/arm/mach-at91/at91sam9x5.c         |    4 ++++
 arch/arm/mach-at91/at91sam9x5_devices.c |  124 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 186 insertions(+), 3 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
