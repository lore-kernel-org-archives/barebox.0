Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTt6-0004t1-BE
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 04:56:36 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 48312FF8B2A
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 06:57:04 +0200 (CEST)
Date: Fri, 30 Mar 2012 06:41:38 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120330044138.GY444@game.jcrosoft.org>
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
Subject: [PATCH 0/6 for this release]
To: barebox@lists.infradead.org

HI,

	please find fixes for at91 support

	 - use dhcp-barebox on all at91
	 - re-write at91rm9200 ether driver
	 - fix cfi auto detect flash size

please pull
The following changes since commit 485cee59cf64b5019c5a294074007b93509b83e0:

  Merge branch 'work/imx51-babbage-clk' into next (2012-03-23 21:22:14 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git at91-fixes

for you to fetch changes up to 79ea2bb5284cc4b5b28a3fa3fee6ede7304e4179:

  at91rm9200ek: adjust kernel partition to be able to flash mainline kernel (2012-03-30 12:51:54 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (6):
      cfi_flash: fix missing resource update when probing the cfi size
      net: at91_ether re-implement against new at91rm9200 api
      at91rm9200ek: enable at91_ether and net support
      at91: set ip mode to dhcp-barebox
      at91rm9200ek: update config for network
      at91rm9200ek: adjust kernel partition to be able to flash mainline kernel

 arch/arm/boards/at91rm9200ek/env/config     |    7 +-
 arch/arm/boards/at91sam9260ek/env/config    |    2 +-
 arch/arm/boards/at91sam9261ek/env/config    |    2 +-
 arch/arm/boards/at91sam9263ek/env/config    |    2 +-
 arch/arm/boards/at91sam9m10g45ek/env/config |    2 +-
 arch/arm/boards/tny-a926x/env/config        |    2 +-
 arch/arm/boards/usb-a926x/env/config        |    2 +-
 arch/arm/configs/at91rm9200ek_defconfig     |    9 +
 drivers/net/Kconfig                         |    1 +
 drivers/net/at91_ether.c                    |  495 ++++++++++++++-------------
 drivers/net/at91_ether.h                    |   50 +++
 drivers/nor/cfi_flash.c                     |    5 +
 12 files changed, 338 insertions(+), 241 deletions(-)
 create mode 100644 drivers/net/at91_ether.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
