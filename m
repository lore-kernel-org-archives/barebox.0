Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6sv-0003gF-Ss
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:19 +0000
Received: by mail-pf0-x235.google.com with SMTP id g3-v6so5051893pfi.1
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:48:49 -0700
Message-Id: <20180630034900.3324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/11] ARM: i.MX8MQ and EVK support, part II
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is part II of i.MX8MQ EVK board support patches. This time this
is bits and pieces that were necessary in order to allow booting
vendor Linux kernel availible here (tag: rel_imx_4.9.51_8mq_ga):

    https://source.codeaurora.org/external/imx/linux-imx

Sources for ATF were taken from here (tag: rel_imx_4.9.51_8mq_ga):

    https://source.codeaurora.org/external/imx/imx-atf

This patchest is also availible at:

    https://github.com/ndreys/barebox/tree/imx8m-support-part-II-v1

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (11):
  ARM: nxp-imx8mq-evk: Update DDR initialization code
  ARM: Add code to support SMCCC on AArch64
  ARM: i.MX8MQ: Configure cntfrq only in EL3
  ARM: i.MX8MQ: Add a macro to load BL31 ATF blob
  ARM: i.MX: xload-esdhc: Move image base to MX8MQ_ATF_BL33_BASE_ADDR
  ARM: i.MX: xload-esdhc: Allow patching first word of the image
  ARM: i.MX: fimware: Add pre-built BL31 ATF blob
  ARM: nxp-imx8mq-evk: Add code to load ATF BL31 blob
  ARM: i.MX8MQ: Query and display ATF fimware hash if availible
  ARM: nxp-imx8mq-evk: Add bootflow comments
  firmware: Fix copy-paste comment mistake

 arch/arm/Kconfig                              |   4 +
 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c     | 120 +++++-----
 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c | 219 +++++-------------
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     |  45 +++-
 arch/arm/cpu/Makefile                         |   4 +-
 arch/arm/cpu/smccc-call_64.S                  |  52 +++++
 arch/arm/include/asm/asm-offsets.h            |   1 +
 arch/arm/lib/asm-offsets.c                    |   7 +-
 arch/arm/mach-imx/Kconfig                     |   2 +
 arch/arm/mach-imx/imx8mq.c                    |  29 ++-
 arch/arm/mach-imx/include/mach/atf.h          |  63 +++++
 arch/arm/mach-imx/xload-esdhc.c               |  19 +-
 firmware/Kconfig                              |   3 +
 firmware/Makefile                             |   6 +-
 firmware/imx/imx8m-bl31.bin                   | Bin 0 -> 46744 bytes
 include/linux/arm-smccc.h                     | 135 +++++++++++
 16 files changed, 479 insertions(+), 230 deletions(-)
 create mode 100644 arch/arm/cpu/smccc-call_64.S
 create mode 100644 arch/arm/include/asm/asm-offsets.h
 create mode 100644 arch/arm/mach-imx/include/mach/atf.h
 create mode 100755 firmware/imx/imx8m-bl31.bin
 create mode 100644 include/linux/arm-smccc.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
