Delivery-date: Fri, 28 Nov 2025 12:00:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDV-005lB4-2a
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 12:00:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDU-00023A-Th
	for lore@pengutronix.de; Fri, 28 Nov 2025 12:00:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=N7T1coKqZb7Ay21fyKiMAkPzojsdyWU3zmpCxUFOfho=; b=xhMyrCgPj64c3F5nGeRZR/tudJ
	LrWTHQIAdbtkPEiQ6HqxdPnIyGhmbAPSZOf9hR3skIEwn8Lje8NFKCZbe6AR9uF23/Rhn02UqjKl9
	BNwEtabh+CzOXTAMQP+hoSqK6o2xEC+vo9J6u9WikXgiyC4ZseXDvV8j08e1Qxx/0vhe/Lhbb1bXm
	BWWtcSkkxS1u0sGUDL9sbKOrSJApWpgmXCXBkyla87E3MfTcsMg0qkU0TtoCNcdRxy8VMHXr00yEJ
	icpsLjvAr5aICA7Sey11zB1bk+HTaZWctvoc5cdu2O6yR1bTVT4AWQGSMsk/EELDga+Lr6P9OQo5m
	XWHJIM/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwCz-00000000KTs-0ZQR;
	Fri, 28 Nov 2025 11:00:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwCw-00000000KSM-47H4
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:00:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0001iR-F1
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 12:00:09 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-002wNm-0t
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0000000EOeF-0hdo
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:58:40 +0100
Message-ID: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_030011_024379_FE67AAD0 
X-CRM114-Status: GOOD (  10.95  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] Kbuild: replace legacy <config.h> mechanism
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Generation per-board config.h headers is a left-over from times long
past. For most boards it's no longer possible anyway due to multi-image
suppot, but for legacy boards that still use it, let's switch away
existing users from this magic and remove it.

Ahmad Fatoum (4):
  openrisc: drop <config.h> usage
  ARM: drop <config.h> usage
  ppc: drop <config.h> usage
  treewide: drop last remnants of <config.h>

 .../migration-guides/migration-master.rst     |  7 +++++
 Makefile                                      | 19 ++----------
 .../boards/at91rm9200ek/{config.h => board.h} |  4 +--
 arch/arm/boards/at91rm9200ek/lowlevel.c       |  2 +-
 .../boards/phytec-phycard-imx27/lowlevel.c    |  1 -
 arch/arm/cpu/cache-armv8.S                    |  1 -
 arch/arm/cpu/exceptions_32.S                  |  1 -
 arch/arm/cpu/exceptions_64.S                  |  1 -
 arch/arm/lib32/setjmp.S                       |  1 -
 arch/arm/lib64/setjmp.S                       |  1 -
 arch/arm/mach-mxs/lradc-init.c                |  1 -
 arch/arm/mach-mxs/mem-init.c                  |  1 -
 arch/arm/mach-mxs/power-init.c                |  1 -
 arch/arm/mach-omap/am33xx_mux.c               |  1 -
 arch/arm/mach-omap/syslib.c                   |  1 -
 arch/openrisc/Kconfig                         |  2 +-
 arch/openrisc/Makefile                        |  4 +++
 arch/openrisc/boards/generic/config.h         | 25 ----------------
 arch/openrisc/cpu/barebox.lds.S               |  2 +-
 arch/openrisc/cpu/start.S                     |  2 +-
 arch/openrisc/include/asm/config.h            | 15 ++++++++++
 arch/openrisc/lib/board.c                     |  5 ++--
 arch/openrisc/lib/clock.c                     |  1 +
 arch/openrisc/lib/cpuinfo.c                   |  3 +-
 arch/powerpc/boards/freescale-p1010rdb/ddr.c  |  1 +
 arch/powerpc/boards/freescale-p1010rdb/law.c  |  1 +
 .../boards/freescale-p1010rdb/p1010rdb.c      |  1 +
 arch/powerpc/boards/freescale-p1010rdb/tlb.c  |  1 +
 arch/powerpc/boards/freescale-p1022ds/ddr.c   |  1 +
 .../boards/freescale-p1022ds/ics307_clk.c     |  1 +
 arch/powerpc/boards/freescale-p1022ds/law.c   |  1 +
 .../boards/freescale-p1022ds/p1022ds.c        |  1 +
 arch/powerpc/boards/freescale-p1022ds/tlb.c   |  1 +
 arch/powerpc/boards/freescale-p2020rdb/law.c  |  1 +
 .../boards/freescale-p2020rdb/p2020rdb.c      |  1 +
 arch/powerpc/boards/freescale-p2020rdb/tlb.c  |  1 +
 arch/powerpc/boards/owc-da923rc/da923rc.c     |  1 +
 arch/powerpc/boards/owc-da923rc/ddr.c         |  1 +
 arch/powerpc/boards/owc-da923rc/tlb.c         |  1 +
 arch/powerpc/boards/pcm030/config.h           | 30 -------------------
 arch/powerpc/boards/pcm030/pcm030.c           |  1 +
 arch/powerpc/cpu-85xx/start.S                 |  1 -
 arch/powerpc/ddr-8xxx/ddr_setctrl.c           |  2 +-
 arch/powerpc/ddr-8xxx/lc_common_dimm_params.c |  2 +-
 arch/powerpc/ddr-8xxx/main.c                  |  2 +-
 .../config.h => include/asm/board-da923rc.h}  | 25 +++++-----------
 .../config.h => include/asm/board-p1010rdb.h} | 23 +++++---------
 .../config.h => include/asm/board-p1022ds.h}  | 23 +++++---------
 .../config.h => include/asm/board-p2020rdb.h} | 28 +++++------------
 arch/powerpc/include/asm/board-pcm030.h       | 17 +++++++++++
 arch/powerpc/include/asm/config.h             | 12 ++++++++
 arch/powerpc/include/asm/fsl_ifc.h            |  2 +-
 arch/powerpc/include/asm/fsl_lbc.h            |  2 +-
 arch/powerpc/include/asm/status_led.h         |  2 ++
 arch/powerpc/lib/ticks.S                      |  2 +-
 arch/powerpc/mach-mpc5xxx/reginfo.c           |  2 +-
 arch/powerpc/mach-mpc5xxx/speed.c             |  1 +
 arch/powerpc/mach-mpc5xxx/start.S             |  2 +-
 arch/powerpc/mach-mpc85xx/cpu.c               |  2 +-
 arch/powerpc/mach-mpc85xx/cpu_init.c          |  1 +
 arch/powerpc/mach-mpc85xx/cpuid.c             |  2 +-
 arch/powerpc/mach-mpc85xx/speed.c             |  1 +
 common/console.c                              |  1 -
 common/console_simple.c                       |  1 -
 common/memsize.c                              |  1 -
 drivers/mci/imx-esdhc.c                       |  1 -
 drivers/mci/imx.c                             |  1 -
 drivers/mci/omap_hsmmc.c                      |  1 -
 drivers/mci/omap_hsmmc_common.c               |  1 -
 drivers/mtd/nand/raw/nand_fsl_ifc.c           |  1 -
 drivers/mtd/nor/cfi_flash.c                   | 18 ++++++-----
 drivers/net/gianfar.c                         |  2 +-
 drivers/net/gianfar.h                         |  2 +-
 drivers/serial/serial_mpc5xxx.c               |  1 +
 drivers/usb/gadget/function/dfu.c             |  1 -
 include/.gitignore                            |  3 --
 include/common.h                              |  1 -
 include/mach/imx/debug_ll.h                   |  1 -
 lib/image-sparse.c                            |  1 -
 79 files changed, 142 insertions(+), 198 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master.rst
 rename arch/arm/boards/at91rm9200ek/{config.h => board.h} (98%)
 delete mode 100644 arch/openrisc/boards/generic/config.h
 create mode 100644 arch/openrisc/include/asm/config.h
 delete mode 100644 arch/powerpc/boards/pcm030/config.h
 rename arch/powerpc/{boards/owc-da923rc/config.h => include/asm/board-da923rc.h} (56%)
 rename arch/powerpc/{boards/freescale-p1010rdb/config.h => include/asm/board-p1010rdb.h} (64%)
 rename arch/powerpc/{boards/freescale-p1022ds/config.h => include/asm/board-p1022ds.h} (62%)
 rename arch/powerpc/{boards/freescale-p2020rdb/config.h => include/asm/board-p2020rdb.h} (69%)
 create mode 100644 arch/powerpc/include/asm/board-pcm030.h
 delete mode 100644 include/.gitignore

-- 
2.47.3



