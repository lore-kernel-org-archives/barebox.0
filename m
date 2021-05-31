Delivery-date: Mon, 31 May 2021 09:39:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncWh-00039i-FU
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:39:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncWf-00009a-PU
	for lore@pengutronix.de; Mon, 31 May 2021 09:39:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sMbMDnDHpyWgI8jszbfPPaW/VmMG5hcorwMKZXIuJkg=; b=yGQ6T3B+sKdHMn
	jsmXBOAy/QHqR1xVdFBhPflJTBGTajQpmtpWA4SI9JU0bP13wm+q41SdR6q1lShju7/F18C0nzKiT
	e2MZryUlKNKtg60aDp/gI00aXyrU5DqnycKLPECMp1a0FPfxj4vGzpgWwTAjYZVk/mpi3yMSSvqcL
	bXA0jKYL93so9BChZvF4jP7+h3EE7SALCK6msWxNb3LsJLS2gXXNETWx+dlVIxNCLcT7b+o4w12V3
	Uk+wln8JcNZR2I6iUMBFiONfe2aV/utLewVE+OS2vvLbbuKq9STxIrWNOqIxOfZvZFlVDmWBDfeK1
	oy/DGA1ODnBmL2jHbCew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncVQ-00BChb-JE; Mon, 31 May 2021 07:38:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVF-00BCcW-9r
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lncVD-00080B-Tu
 for barebox@lists.infradead.org; Mon, 31 May 2021 09:38:23 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lncVC-00045Z-T5
 for barebox@lists.infradead.org; Mon, 31 May 2021 09:38:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 May 2021 09:38:01 +0200
Message-Id: <20210531073821.15257-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003825_368636_03C2B312 
X-CRM114-Status: GOOD (  13.73  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/20] RISC-V: prepare for BeagleV pre-production board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series doesn't yet add BeagleV support, but it lays the groundwork:
  - Some drivers are adapted for 64-bit operation
  - The incoherent interconnect on the JH7100 is handled
    (Will be coherent for JH7110 in normal BeagleV)
  - Some basic drivers are added

Notably missing are GPIO, pinctrl and board support. I still need to
clean those up, so they will follow later.

Ahmad Fatoum (20):
  RISC-V: socs: add Kconfig entry for StarFive JH7100
  net: designware: add support for IP integrated into StarFive SoC
  mfd: add TI TPS65086 PMIC restart driver
  mtd: spi-nor: cadence: fix 64-bit issues
  nvmem: add StarFive OTP support
  RISC-V: dma: support multiple dma_alloc_coherent backends
  RISC-V: support incoherent I-Cache
  soc: add support for StarFive JH7100 incoherent interconnect
  soc: sifive: l2_cache: enable maximum available cache ways
  net: designware: fix 64-bit incompatibilities
  dma: support marking SRAM for coherent DMA use
  mci: allocate DMA-able memory
  mci: allocate sector_buf on demand
  dma: allocate 32-byte aligned buffers by default
  mci: dw_mmc: enable use on 64-bit CPUs
  mci: dw_mmc: match against generic "snps,dw-mshc" compatible
  clk: add initial StarFive clock support
  reset: add StarFive reset controller driver
  watchdog: add StarFive watchdog driver
  hw_random: add driver for RNG on StarFive SoC

 arch/riscv/Kconfig.socs                       |  23 ++
 arch/riscv/boot/uncompress.c                  |   2 +
 arch/riscv/cpu/Makefile                       |   2 +
 arch/riscv/cpu/cache.c                        |  22 ++
 arch/riscv/cpu/core.c                         |   7 +
 arch/riscv/cpu/dma.c                          |  69 ++++
 arch/riscv/include/asm/barebox-riscv.h        |   2 +
 arch/riscv/include/asm/barrier.h              |  27 ++
 arch/riscv/include/asm/cache.h                |  17 +
 arch/riscv/include/asm/dma.h                  |  42 +-
 arch/riscv/include/asm/io.h                   |  10 +
 arch/riscv/lib/reloc.c                        |   8 +
 arch/riscv/lib/setupc.S                       |   2 +
 common/Kconfig                                |   4 +
 common/Makefile                               |   3 +-
 drivers/Makefile                              |   2 +-
 drivers/clk/Makefile                          |   1 +
 drivers/clk/starfive/Makefile                 |   3 +
 drivers/clk/starfive/clk.h                    |  64 +++
 drivers/clk/starfive/jh7100-clkgen.c          | 363 ++++++++++++++++++
 drivers/dma/Kconfig                           |   6 +
 drivers/dma/Makefile                          |   1 +
 drivers/dma/coherent-pool.c                   | 120 ++++++
 drivers/hw_random/Kconfig                     |   7 +
 drivers/hw_random/Makefile                    |   1 +
 drivers/hw_random/starfive-vic-rng.c          | 200 ++++++++++
 drivers/mci/dw_mmc.c                          |  28 +-
 drivers/mci/mci-core.c                        |  15 +-
 drivers/mfd/Kconfig                           |  10 +
 drivers/mfd/Makefile                          |   2 +
 drivers/mfd/core.c                            |  25 ++
 drivers/mfd/tps65086.c                        |  76 ++++
 drivers/mtd/spi-nor/cadence-quadspi.c         |  10 +-
 drivers/net/Kconfig                           |   8 +
 drivers/net/Makefile                          |   1 +
 drivers/net/designware.c                      |  35 +-
 drivers/net/designware.h                      |   7 +-
 drivers/net/designware_starfive.c             | 109 ++++++
 drivers/nvmem/Kconfig                         |   8 +
 drivers/nvmem/Makefile                        |   2 +
 drivers/nvmem/starfive-otp.c                  | 227 +++++++++++
 drivers/power/reset/Kconfig                   |   6 +
 drivers/power/reset/Makefile                  |   1 +
 drivers/power/reset/tps65086-restart.c        |  55 +++
 drivers/reset/Kconfig                         |   6 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-starfive-vic.c            | 204 ++++++++++
 drivers/soc/Makefile                          |   4 +
 drivers/soc/sifive/Makefile                   |   1 +
 drivers/soc/sifive/sifive_l2_cache.c          | 158 ++++++++
 drivers/watchdog/Kconfig                      |   7 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/starfive_wdt.c               |  97 +++++
 include/dma.h                                 |   7 +-
 include/dt-bindings/clock/starfive-jh7100.h   | 203 ++++++++++
 .../reset-controller/starfive-jh7100.h        | 126 ++++++
 include/linux/mfd/core.h                      |  26 ++
 include/linux/mfd/tps65086.h                  |  98 +++++
 include/soc/starfive/rstgen.h                 |  41 ++
 include/soc/starfive/sysmain.h                |  15 +
 60 files changed, 2551 insertions(+), 77 deletions(-)
 create mode 100644 arch/riscv/cpu/cache.c
 create mode 100644 arch/riscv/cpu/dma.c
 create mode 100644 arch/riscv/include/asm/barrier.h
 create mode 100644 arch/riscv/include/asm/cache.h
 create mode 100644 drivers/clk/starfive/Makefile
 create mode 100644 drivers/clk/starfive/clk.h
 create mode 100644 drivers/clk/starfive/jh7100-clkgen.c
 create mode 100644 drivers/dma/coherent-pool.c
 create mode 100644 drivers/hw_random/starfive-vic-rng.c
 create mode 100644 drivers/mfd/core.c
 create mode 100644 drivers/mfd/tps65086.c
 create mode 100644 drivers/net/designware_starfive.c
 create mode 100644 drivers/nvmem/starfive-otp.c
 create mode 100644 drivers/power/reset/tps65086-restart.c
 create mode 100644 drivers/reset/reset-starfive-vic.c
 create mode 100644 drivers/soc/Makefile
 create mode 100644 drivers/soc/sifive/Makefile
 create mode 100644 drivers/soc/sifive/sifive_l2_cache.c
 create mode 100644 drivers/watchdog/starfive_wdt.c
 create mode 100644 include/dt-bindings/clock/starfive-jh7100.h
 create mode 100644 include/dt-bindings/reset-controller/starfive-jh7100.h
 create mode 100644 include/linux/mfd/core.h
 create mode 100644 include/linux/mfd/tps65086.h
 create mode 100644 include/soc/starfive/rstgen.h
 create mode 100644 include/soc/starfive/sysmain.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

