Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxwWn-0003n8-5t
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 09:21:54 +0000
Received: from mail176.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id AB413FF9937
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 10:35:38 +0100 (CET)
Date: Wed, 23 Jan 2013 10:20:28 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130123092028.GP26329@game.jcrosoft.org>
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
Subject: [PATCH 0/2] console none support
To: barebox@lists.infradead.org

HI,

	This patch serie introduce the console none support

	this will allow to reduce the barebox significantly special for
	bootstrap

	As example on at91sam9263 console none vs console simple

	barebox.bin		=> 6.5 KiB
	zbarebox.bin lzo	=> 3.8 KiB

The following changes since commit b290fa88fb2c97a1d5b08ded3554c0a464a4562f:

  at91: usb_a9263: add bootstrap version (2013-01-18 17:17:11 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/console_none

for you to fetch changes up to e75f727c6e048c9978cb47cb8af92488a8251569:

  introduce console none support (2013-01-19 11:51:53 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      console: switch select to choice
      introduce console none support

 arch/arm/configs/archosg9_xload_defconfig             |    2 +-
 arch/arm/configs/omap3530_beagle_xload_defconfig      |    2 +-
 arch/arm/configs/panda_xload_defconfig                |    2 +-
 arch/arm/configs/pcm049_xload_defconfig               |    2 +-
 arch/arm/configs/phycard_a_l1_xload_defconfig         |    2 +-
 arch/arm/configs/phycard_a_xl2_xload_defconfig        |    2 +-
 arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig |    2 +-
 arch/arm/configs/usb_a9263_bootstrap_defconfig        |    2 +-
 commands/Kconfig                                      |    3 +++
 common/Kconfig                                        |   22 +++++++++++++++-------
 common/Makefile                                       |    1 +
 common/console_none.c                                 |   42 ++++++++++++++++++++++++++++++++++++++++++
 drivers/serial/Kconfig                                |    1 +
 drivers/usb/gadget/Kconfig                            |    2 +-
 include/stdio.h                                       |   64 ++++++++++++++++++++++++++++++++++++++++++++++++++++++----------
 net/Kconfig                                           |    1 +
 16 files changed, 126 insertions(+), 26 deletions(-)
 create mode 100644 common/console_none.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
