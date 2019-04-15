Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr820120.outbound.protection.outlook.com
 ([40.107.82.120] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hG0pg-0004Zf-CT
 for barebox@lists.infradead.org; Mon, 15 Apr 2019 12:35:33 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Mon, 15 Apr 2019 12:35:24 +0000
Message-ID: <1555331684-25431-1-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] Company name change
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: "Barbier, Renaud" <renaud.barbier@abaco.com>

As the previous owner GE has sold on the company and we are now known as
Abaco Systems Inc., we have a contractual requirement to remove references
to GE in the code (but copyright), directories and files names.

Renaud Barbier (2):
  owc: directories and files renaming
  owc: remove references to GE.

 arch/ppc/Makefile                                  |    2 +-
 arch/ppc/boards/geip-da923rc/Makefile              |    7 -
 arch/ppc/boards/geip-da923rc/config.h              |   53 -----
 arch/ppc/boards/geip-da923rc/da923rc.c             |  218 -------------------
 arch/ppc/boards/geip-da923rc/ddr.c                 |  169 ---------------
 .../geip-da923rc/defaultenv-geip-da923rc/bin/boot  |    9 -
 .../geip-da923rc/defaultenv-geip-da923rc/bin/init  |   26 ---
 .../geip-da923rc/defaultenv-geip-da923rc/config    |    4 -
 arch/ppc/boards/geip-da923rc/law.c                 |   24 ---
 arch/ppc/boards/geip-da923rc/nand.c                |   94 ---------
 arch/ppc/boards/geip-da923rc/product_data.c        |   83 --------
 arch/ppc/boards/geip-da923rc/product_data.h        |   62 ------
 arch/ppc/boards/geip-da923rc/tlb.c                 |   69 ------
 arch/ppc/boards/owc-da923rc/Makefile               |    7 +
 arch/ppc/boards/owc-da923rc/config.h               |   53 +++++
 arch/ppc/boards/owc-da923rc/da923rc.c              |  219 ++++++++++++++++++++
 arch/ppc/boards/owc-da923rc/ddr.c                  |  169 +++++++++++++++
 .../owc-da923rc/defaultenv-owc-da923rc/bin/boot    |    9 +
 .../owc-da923rc/defaultenv-owc-da923rc/bin/init    |   26 +++
 .../owc-da923rc/defaultenv-owc-da923rc/config      |    4 +
 arch/ppc/boards/owc-da923rc/law.c                  |   24 +++
 arch/ppc/boards/owc-da923rc/nand.c                 |   94 +++++++++
 arch/ppc/boards/owc-da923rc/product_data.c         |   84 ++++++++
 arch/ppc/boards/owc-da923rc/product_data.h         |   63 ++++++
 arch/ppc/boards/owc-da923rc/tlb.c                  |   69 ++++++
 arch/ppc/configs/da923rc_defconfig                 |   51 -----
 arch/ppc/configs/owc_da923rc_defconfig             |   51 +++++
 27 files changed, 873 insertions(+), 870 deletions(-)
 delete mode 100644 arch/ppc/boards/geip-da923rc/Makefile
 delete mode 100644 arch/ppc/boards/geip-da923rc/config.h
 delete mode 100644 arch/ppc/boards/geip-da923rc/da923rc.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/ddr.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/boot
 delete mode 100644 arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/init
 delete mode 100644 arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/config
 delete mode 100644 arch/ppc/boards/geip-da923rc/law.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/nand.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/product_data.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/product_data.h
 delete mode 100644 arch/ppc/boards/geip-da923rc/tlb.c
 create mode 100644 arch/ppc/boards/owc-da923rc/Makefile
 create mode 100644 arch/ppc/boards/owc-da923rc/config.h
 create mode 100644 arch/ppc/boards/owc-da923rc/da923rc.c
 create mode 100644 arch/ppc/boards/owc-da923rc/ddr.c
 create mode 100644 arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot
 create mode 100644 arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init
 create mode 100644 arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/config
 create mode 100644 arch/ppc/boards/owc-da923rc/law.c
 create mode 100644 arch/ppc/boards/owc-da923rc/nand.c
 create mode 100644 arch/ppc/boards/owc-da923rc/product_data.c
 create mode 100644 arch/ppc/boards/owc-da923rc/product_data.h
 create mode 100644 arch/ppc/boards/owc-da923rc/tlb.c
 delete mode 100644 arch/ppc/configs/da923rc_defconfig
 create mode 100644 arch/ppc/configs/owc_da923rc_defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
