Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFT-0004ug-3G
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:00 +0000
Received: by mail-lb0-x22b.google.com with SMTP id k15so130104958lbg.0
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:38 -0800 (PST)
Received: from localhost.localdomain ([31.173.84.173])
 by smtp.gmail.com with ESMTPSA id vq10sm2751728lbb.14.2016.03.07.05.30.35
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Mar 2016 05:30:36 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:11 +0300
Message-Id: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/15] MIPS: ar9331: use cache and fix gpio
To: barebox@lists.infradead.org

This patchseries introduces initial MIPS cache support.
Though the cache code is usable for many MIPS-based chips
at the moment the code is tested mostly on AR9331 SoC.
So I have decided to submit only AR9331-related cache
patches and add AR9331 GPIO-related patches to the series.


Antony Pavlov (13):
  MIPS: probe_scache(): use MIPS_CONF_M linux kernel macro
  MIPS: pbl: import cache init code from U-Boot v2016.01-212-ga3ab2ae
  MIPS: black-swift: pbl: init cache
  MIPS: tplink-mr3020: pbl: init cache
  MIPS: add initial R4000-style cache support
  MIPS: flush cache on shutdown
  MIPS: tplink-mr3020_defconfig: use cached memory region
  MIPS: black-swift_defconfig: use cached memory region
  MIPS: ath79: pbl: add pbl_ar9331_mdio_gpio_enable macro
  MIPS: black-swift: enable GPIO LED
  MIPS: black-swift: enable GPIO key
  MIPS: black-swift_defconfig: enable gpio-related stuff
  MIPS: tplink-mr3020: fix "WPS" and "3G" LEDs

Peter Mamonov (2):
  MIPS: implement dma_sync_* functions
  MIPS: dtb: register only one memory bank

 arch/mips/Kconfig                                  |   1 +
 .../black-swift/include/board/board_pbl_start.h    |  12 ++
 .../tplink-mr3020/include/board/board_pbl_start.h  |  12 ++
 arch/mips/boot/dtb.c                               |  12 +-
 arch/mips/configs/black-swift_defconfig            |   8 ++
 arch/mips/configs/tplink-mr3020_defconfig          |   2 +
 arch/mips/dts/black-swift.dts                      |  26 ++++
 arch/mips/include/asm/cache.h                      |   6 +
 arch/mips/include/asm/cacheops.h                   |  36 ++++++
 arch/mips/include/asm/dma-mapping.h                |  11 +-
 arch/mips/include/asm/io.h                         |   3 +
 arch/mips/include/asm/mipsregs.h                   |   8 ++
 arch/mips/include/asm/pbl_macros.h                 | 133 +++++++++++++++++++++
 arch/mips/lib/Makefile                             |   2 +
 arch/mips/lib/c-r4k.c                              |  76 +++++++++++-
 arch/mips/lib/dma-default.c                        |  57 +++++++++
 arch/mips/lib/shutdown.c                           |  12 ++
 arch/mips/mach-ath79/Kconfig                       |   1 +
 arch/mips/mach-ath79/include/mach/pbl_macros.h     |   8 ++
 19 files changed, 417 insertions(+), 9 deletions(-)
 create mode 100644 arch/mips/include/asm/cache.h
 create mode 100644 arch/mips/include/asm/cacheops.h
 create mode 100644 arch/mips/lib/dma-default.c
 create mode 100644 arch/mips/lib/shutdown.c

-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
