Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgJqN-0002p5-T1
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 01:04:29 +0000
Received: by mail-pg1-x52b.google.com with SMTP id y4-v6so5272337pgp.9
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 18:04:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 19 Jul 2018 18:03:45 -0700
Message-Id: <20180720010357.22822-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 00/12] ARM: i.MX8MQ and EVK support, part II
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

    https://github.com/ndreys/barebox/tree/imx8m-support-part-II-v2

Feedback is welcome!

Changes since [v1]:

    - Opcode patching is replaced with placing barebox image at the
      right spot

    - ATF loading code is converted into a function (was a macro
      originally)

    - It is now up to the user to check current EL when calling
      imx8mq_atf_load_bl31()

    - Other various small change as per Sascha's feedback

[v1] http://lists.infradead.org/pipermail/barebox/2018-June/033922.html

Thanks,
Andrey Smirnov

Andrey Smirnov (12):
  ARM: nxp-imx8mq-evk: Update DDR initialization code
  ARM: Add code to support SMCCC on AArch64
  ARM: i.MX8MQ: Configure cntfrq only in EL3
  ARM: i.MX8MQ: Add code to load BL31 ATF blob
  ARM: i.MX: fimware: Add pre-built BL31 ATF blob
  ARM: i.MX: Move i.MX header definitions to mach-imx
  ARM: i.MX: xload-esdhc: Make use of <mach/imx-header.h>
  ARM: i.MX: xload-esdhc: Allow placing image to align its etnry point
  ARM: nxp-imx8mq-evk: Add code to load ATF BL31 blob
  ARM: i.MX8MQ: Query and display ATF fimware hash if availible
  ARM: nxp-imx8mq-evk: Add bootflow comments
  firmware: Fix copy-paste comment mistake

 arch/arm/Kconfig                              |   4 +
 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c     | 120 +++++-----
 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c | 219 +++++-------------
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     |  50 +++-
 arch/arm/cpu/Makefile                         |   4 +-
 arch/arm/cpu/smccc-call_64.S                  |  52 +++++
 arch/arm/include/asm/asm-offsets.h            |   1 +
 arch/arm/lib/asm-offsets.c                    |   7 +-
 arch/arm/mach-imx/Kconfig                     |   2 +
 arch/arm/mach-imx/Makefile                    |   2 +-
 arch/arm/mach-imx/atf.c                       |  41 ++++
 arch/arm/mach-imx/imx8mq.c                    |  29 ++-
 arch/arm/mach-imx/include/mach/atf.h          |  13 ++
 arch/arm/mach-imx/include/mach/imx-header.h   | 128 ++++++++++
 arch/arm/mach-imx/xload-esdhc.c               |  51 +++-
 firmware/Kconfig                              |   3 +
 firmware/Makefile                             |   6 +-
 firmware/imx/imx8m-bl31.bin                   | Bin 0 -> 46744 bytes
 include/linux/arm-smccc.h                     | 135 +++++++++++
 scripts/imx/imx.h                             | 114 +--------
 20 files changed, 631 insertions(+), 350 deletions(-)
 create mode 100644 arch/arm/cpu/smccc-call_64.S
 create mode 100644 arch/arm/include/asm/asm-offsets.h
 create mode 100644 arch/arm/mach-imx/atf.c
 create mode 100644 arch/arm/mach-imx/include/mach/atf.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx-header.h
 create mode 100755 firmware/imx/imx8m-bl31.bin
 create mode 100644 include/linux/arm-smccc.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
