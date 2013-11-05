Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdigL-0005he-Oe
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 15:36:42 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  5 Nov 2013 15:36:07 +0000
Message-Id: <1383665772-1167-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH v3 0/5] GEIP DA923RC board support
To: barebox@lists.infradead.org

This patch set addresses comments by using the GPIO API
to set gpio out pins, using the I2C API where necessary
but still allowing for early I2C access for future early
configuration.

This patch set adds support to the GEIP DA923RC extending
the CPU support to the MPC8544 and allowing the use of the
DDR driver.

Renaud Barbier (5):
  ppc: mpc85xx: mpc8544 support
  ppc: mpc85xx: define Ethernet port count
  ppc: mpc85xx: enable DDR driver
  ppc: DA923RC: add board support
  ppc: mpc85xx: build directives

 arch/ppc/Makefile                                  |    1 +
 arch/ppc/boards/geip-da923rc/Makefile              |    7 +
 arch/ppc/boards/geip-da923rc/barebox.lds.S         |  155 ++++++++++++++
 arch/ppc/boards/geip-da923rc/config.h              |   54 +++++
 arch/ppc/boards/geip-da923rc/da923rc.c             |  212 ++++++++++++++++++++
 arch/ppc/boards/geip-da923rc/ddr.c                 |  169 ++++++++++++++++
 arch/ppc/boards/geip-da923rc/env/bin/init          |    4 +
 arch/ppc/boards/geip-da923rc/env/config            |    4 +
 arch/ppc/boards/geip-da923rc/law.c                 |   24 +++
 arch/ppc/boards/geip-da923rc/nand.c                |   94 +++++++++
 arch/ppc/boards/geip-da923rc/product_data.c        |   66 ++++++
 arch/ppc/boards/geip-da923rc/product_data.h        |   62 ++++++
 arch/ppc/boards/geip-da923rc/tlb.c                 |   69 +++++++
 arch/ppc/configs/da923rc_defconfig                 |   57 ++++++
 arch/ppc/ddr-8xxx/Makefile                         |    2 +
 arch/ppc/include/asm/fsl_lbc.h                     |   12 +
 arch/ppc/include/asm/processor.h                   |    2 +
 arch/ppc/mach-mpc85xx/Kconfig                      |   32 +++-
 arch/ppc/mach-mpc85xx/Makefile                     |    3 +
 arch/ppc/mach-mpc85xx/cpu.c                        |    6 +-
 arch/ppc/mach-mpc85xx/cpuid.c                      |    2 +
 arch/ppc/mach-mpc85xx/eth-devices.c                |    2 +-
 arch/ppc/mach-mpc85xx/fsl_gpio.c                   |   47 +++++
 arch/ppc/mach-mpc85xx/include/mach/clock.h         |    1 +
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |    7 +
 arch/ppc/mach-mpc85xx/include/mach/gpio.h          |   17 ++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |   23 ++
 arch/ppc/mach-mpc85xx/speed.c                      |   18 ++
 28 files changed, 1142 insertions(+), 10 deletions(-)
 create mode 100644 arch/ppc/boards/geip-da923rc/Makefile
 create mode 100644 arch/ppc/boards/geip-da923rc/barebox.lds.S
 create mode 100644 arch/ppc/boards/geip-da923rc/config.h
 create mode 100644 arch/ppc/boards/geip-da923rc/da923rc.c
 create mode 100644 arch/ppc/boards/geip-da923rc/ddr.c
 create mode 100644 arch/ppc/boards/geip-da923rc/env/bin/init
 create mode 100644 arch/ppc/boards/geip-da923rc/env/config
 create mode 100644 arch/ppc/boards/geip-da923rc/law.c
 create mode 100644 arch/ppc/boards/geip-da923rc/nand.c
 create mode 100644 arch/ppc/boards/geip-da923rc/product_data.c
 create mode 100644 arch/ppc/boards/geip-da923rc/product_data.h
 create mode 100644 arch/ppc/boards/geip-da923rc/tlb.c
 create mode 100644 arch/ppc/configs/da923rc_defconfig
 create mode 100644 arch/ppc/ddr-8xxx/Makefile
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_gpio.c
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/gpio.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
