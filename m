Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo1.mail-out.ovh.net ([178.33.253.128]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0gw3-000839-FO
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 23:19:20 +0000
Received: from mail415.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id B0C16FF9AB0
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 00:24:23 +0100 (CET)
Date: Thu, 31 Jan 2013 00:08:25 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130130230825.GX26329@game.jcrosoft.org>
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
Subject: [PATCH 0/6] atmel: add Atmel HLCDC support and boards
To: barebox@lists.infradead.org

Hi,

The following changes since commit 1164d59f7aa2164569ba46188cfc874cdc0b9a66:

  at91rm9200: fix default TEXT_BASE to 15MiB (2013-01-31 05:17:26 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/atmel_hlcdc

for you to fetch changes up to 5fa22362f842612da24125fd81d9d3c83e53bb9b:

  sama5d3xek: add lcd support (2013-01-31 05:17:38 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (6):
      atmel_lcdfb: factorise common code between lcdc and new hlcdc IP
      video: add Atmel HLCD support
      at91sam9x5: add lcd support
      at91sam9x5ek: add lcd support
      sama5d3: add lcd support
      sama5d3xek: add lcd support

 arch/arm/boards/at91sam9x5ek/init.c           |   44 ++++++
 arch/arm/boards/sama5d3xek/init.c             |   45 ++++++
 arch/arm/configs/at91sam9x5ek_defconfig       |    4 +-
 arch/arm/configs/sama5d3xek_defconfig         |    4 +
 arch/arm/mach-at91/at91sam9x5.c               |    1 +
 arch/arm/mach-at91/at91sam9x5_devices.c       |   55 +++++++
 arch/arm/mach-at91/include/mach/atmel_hlcdc.h |  760 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h       |    1 +
 arch/arm/mach-at91/sama5d3.c                  |    1 +
 arch/arm/mach-at91/sama5d3_devices.c          |   53 +++++++
 drivers/video/Kconfig                         |    4 +
 drivers/video/Makefile                        |    3 +-
 drivers/video/atmel_hlcdfb.c                  |  297 ++++++++++++++++++++++++++++++++++++
 drivers/video/atmel_lcdfb.c                   |  313 +++++---------------------------------
 drivers/video/atmel_lcdfb.h                   |   37 +++++
 drivers/video/atmel_lcdfb_core.c              |  313 ++++++++++++++++++++++++++++++++++++++
 16 files changed, 1654 insertions(+), 281 deletions(-)
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
