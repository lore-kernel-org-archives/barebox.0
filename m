Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x22e.google.com ([2607:f8b0:400e:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2jD-0005EM-Ko
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:24:37 +0000
Received: by mail-pg0-x22e.google.com with SMTP id w20so21135231pgc.0
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 06:24:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Mar 2017 06:23:44 -0700
Message-Id: <20170323132358.8539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/14] AT91, at91sam9x5ek updates (part III/III)
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everone,

As discussed in original thread [1], here is a last batch of AT91
related patches. The patches gathered in this set are all related to
converting of at91sam9x5ek board to multi-image build process and DT.

With exception of a small fix to original "at91sam9x5ek: Convert to
mult-image build" and a number of comment/commit message rewordings
the code should mostly be the same as it was in original submission
[1]

Any feedback is appreciated.

Thank you,
Andrey Smirnov

[1] http://lists.infradead.org/pipermail/barebox/2017-March/029337.html

Andrey Smirnov (14):
  at91sam9x5ek: Convert to mult-image build
  at91sam9x5ek: Add CONFIG_KALLSYMS to defconfig
  at91sam9x5ek: Add preliminary device tree support
  at91sam9x5ek: Convert to use DT clock tree
  at91sam9x5ek: Remove at91sam9x5ek_mem_init()
  at91: Enable PINCTRL for SOC_AT91SAM9
  at91sam9x5ek: Configure LEDs in DT
  at91sam9x5ek: Configure I2C via DT
  at91sam9x5ek: Configure MMC in DT
  at91sam9x5ek: Configure SPI in DT
  at91sam9x5ek: Configure 1-wire in DT
  at91sam9x5ek: Configure USB in DT
  at91sam9x5ek: Configure Ethernet in DT
  at91sam9x5ek: Configure NAND in DT

 arch/arm/Kconfig                          |   1 -
 arch/arm/boards/at91sam9x5ek/Makefile     |   1 +
 arch/arm/boards/at91sam9x5ek/hw_version.c |   6 +-
 arch/arm/boards/at91sam9x5ek/hw_version.h |   1 -
 arch/arm/boards/at91sam9x5ek/init.c       | 226 +++-------------------
 arch/arm/boards/at91sam9x5ek/lowlevel.c   |  21 ++
 arch/arm/configs/at91sam9x5ek_defconfig   |   8 +-
 arch/arm/dts/Makefile                     |   2 +
 arch/arm/dts/at91sam9x5ek.dts             |  70 +++++++
 arch/arm/mach-at91/Kconfig                |  46 +++--
 arch/arm/mach-at91/Makefile               |   2 +-
 arch/arm/mach-at91/at91sam9x5.c           | 311 ------------------------------
 arch/arm/mach-at91/setup.c                |   4 +-
 images/Makefile                           |   1 +
 images/Makefile.at91                      |   7 +
 15 files changed, 176 insertions(+), 531 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9x5ek/lowlevel.c
 create mode 100644 arch/arm/dts/at91sam9x5ek.dts
 delete mode 100644 arch/arm/mach-at91/at91sam9x5.c
 create mode 100644 images/Makefile.at91

-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
