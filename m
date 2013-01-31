Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo1.mail-out.ovh.net ([188.165.45.168]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0sgW-0006vw-8j
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 11:52:05 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6D82EFFAFC1
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:06:47 +0100 (CET)
Date: Thu, 31 Jan 2013 12:50:46 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130131115046.GA26329@game.jcrosoft.org>
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
Subject: [For-next PATCH 0/6] atmel: add Atmel HLCDC support and boards
To: barebox@lists.infradead.org

Hi,

	v2:
	 add sam9n12 and sam9n12ek lcd support

The following changes since commit 1164d59f7aa2164569ba46188cfc874cdc0b9a66:

  at91rm9200: fix default TEXT_BASE to 15MiB (2013-01-31 05:17:26 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/atmel_hlcdc

for you to fetch changes up to dc7baaed7564446566c31b6e4105db4f2de384df:

  sama5d3xek: add lcd support (2013-01-31 17:59:24 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      atmel_lcdfb: factorise common code between lcdc and new hlcdc IP
      video: add Atmel HLCD support
      at91sam9x5: add lcd support
      at91sam9x5ek: add lcd support
      at91sam9n12: add lcd support
      at91sam9n12ek: add lcd support
      sama5d3: add lcd support
      sama5d3xek: add lcd support

 arch/arm/boards/at91sam9n12ek/init.c          |   70 +++++++++++
 arch/arm/boards/at91sam9x5ek/init.c           |   44 +++++++
 arch/arm/boards/sama5d3xek/init.c             |   45 +++++++
 arch/arm/configs/at91sam9n12ek_defconfig      |    6 +-
 arch/arm/configs/at91sam9x5ek_defconfig       |    4 +-
 arch/arm/configs/sama5d3xek_defconfig         |    4 +
 arch/arm/mach-at91/at91sam9n12.c              |    1 +
 arch/arm/mach-at91/at91sam9n12_devices.c      |   50 ++++++++
 arch/arm/mach-at91/at91sam9x5.c               |    1 +
 arch/arm/mach-at91/at91sam9x5_devices.c       |   55 ++++++++
 arch/arm/mach-at91/include/mach/atmel_hlcdc.h |  760 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h       |    1 +
 arch/arm/mach-at91/sama5d3.c                  |    1 +
 arch/arm/mach-at91/sama5d3_devices.c          |   53 ++++++++
 drivers/video/Kconfig                         |    4 +
 drivers/video/Makefile                        |    3 +-
 drivers/video/atmel_hlcdfb.c                  |  297 +++++++++++++++++++++++++++++++++++++++++++
 drivers/video/atmel_lcdfb.c                   |  313 +++++----------------------------------------
 drivers/video/atmel_lcdfb.h                   |   37 ++++++
 drivers/video/atmel_lcdfb_core.c              |  313 +++++++++++++++++++++++++++++++++++++++++++++
 20 files changed, 1780 insertions(+), 282 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/atmel_hlcdc.h
 create mode 100644 drivers/video/atmel_hlcdfb.c
 create mode 100644 drivers/video/atmel_lcdfb.h
 create mode 100644 drivers/video/atmel_lcdfb_core.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
