Delivery-date: Mon, 03 Jan 2022 13:09:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M9A-009oDR-GE
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:09:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8z-0005vs-DN
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:09:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BXjGJeIqc289a0vOC1ZS9lvpeWOAOJNclqF7MtC3DM=; b=ob16oMpjDFw+UF
	u96tVDOQOj/0liXn4T07NVYEYs2YTBELluLAUuLovjn9GxIC66GJ4kvUhNHifztuvn6/4tw8D/12i
	L614igI2ONOKPEIJ4ZNWqoUABWco47Ty5ldPztlEpSc3UhTx+4lG6fdj9tO/4whwP/6zjqunXddpV
	lBs4bWx0dC8X7tPv6GuL+pAlHQdtjkhaarQzOsxgLqFZ3cdO5HyffAH7hSMil5dI252BG+m2/kIZ1
	QmDFDTgKCm02IhGOjeT9/z0QfsgxbFc9+I3phxupzwy90i+WJD+eyC7eBjGdEge1rSNHa3++hdXvq
	KO8YGT1cUNvmNl/LWAlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M6h-008yJo-4v; Mon, 03 Jan 2022 12:06:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M5w-008xtx-81
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5u-00052n-HQ; Mon, 03 Jan 2022 13:05:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GWL-FZ; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:36 +0100
Message-Id: <20220103120539.1730644-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/11] arch: add SPDX-License-Identifier to all headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Record GPL-2.0-only as license for all files lacking an explicit license
statement.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/archosg9/archos_features.h                  | 2 ++
 arch/arm/boards/archosg9/mux.h                              | 2 ++
 arch/arm/boards/at91rm9200ek/config.h                       | 2 ++
 arch/arm/boards/beaglebone/beaglebone.h                     | 2 ++
 arch/arm/boards/ebv-socrates/sequencer_auto.h               | 2 ++
 arch/arm/boards/ebv-socrates/sequencer_defines.h            | 2 ++
 arch/arm/boards/friendlyarm-mini6410/config.h               | 2 ++
 arch/arm/boards/friendlyarm-tiny210/config.h                | 2 ++
 arch/arm/boards/friendlyarm-tiny6410/config.h               | 2 ++
 arch/arm/boards/raspberry-pi/lowlevel.h                     | 2 ++
 arch/arm/boards/skov-imx6/version.h                         | 2 ++
 arch/arm/cpu/entry.h                                        | 2 ++
 arch/arm/cpu/mmu-common.h                                   | 4 +++-
 arch/arm/cpu/mmu.h                                          | 2 ++
 arch/arm/cpu/mmu_64.h                                       | 1 +
 arch/arm/include/asm/armlinux.h                             | 2 ++
 arch/arm/include/asm/asm-offsets.h                          | 4 +++-
 arch/arm/include/asm/assembler64.h                          | 4 +++-
 arch/arm/include/asm/barebox-arm-head.h                     | 2 ++
 arch/arm/include/asm/bitops.h                               | 2 ++
 arch/arm/include/asm/bitsperlong.h                          | 2 ++
 arch/arm/include/asm/byteorder.h                            | 2 ++
 arch/arm/include/asm/cache.h                                | 2 ++
 arch/arm/include/asm/common.h                               | 2 ++
 arch/arm/include/asm/cputype.h                              | 2 ++
 arch/arm/include/asm/elf.h                                  | 2 ++
 arch/arm/include/asm/gic.h                                  | 2 ++
 arch/arm/include/asm/hardware/arm_timer.h                   | 2 ++
 arch/arm/include/asm/io.h                                   | 2 ++
 arch/arm/include/asm/linkage.h                              | 2 ++
 arch/arm/include/asm/memory.h                               | 2 ++
 arch/arm/include/asm/mmu.h                                  | 2 ++
 arch/arm/include/asm/module.h                               | 2 ++
 arch/arm/include/asm/posix_types.h                          | 2 ++
 arch/arm/include/asm/sections.h                             | 2 ++
 arch/arm/include/asm/secure.h                               | 2 ++
 arch/arm/include/asm/semihosting.h                          | 2 ++
 arch/arm/include/asm/stacktrace.h                           | 2 ++
 arch/arm/include/asm/string.h                               | 2 ++
 arch/arm/include/asm/swab.h                                 | 2 ++
 arch/arm/include/asm/syscounter.h                           | 4 +++-
 arch/arm/include/asm/system.h                               | 2 ++
 arch/arm/include/asm/system_info.h                          | 2 ++
 arch/arm/include/asm/types.h                                | 2 ++
 arch/arm/include/asm/unaligned.h                            | 2 ++
 arch/arm/mach-at91/include/mach/at91sam926x.h               | 2 ++
 arch/arm/mach-at91/include/mach/barebox-arm-head.h          | 2 ++
 arch/arm/mach-at91/include/mach/early_udelay.h              | 2 ++
 arch/arm/mach-at91/include/mach/sama5d2_ll.h                | 2 ++
 arch/arm/mach-at91/include/mach/xload.h                     | 2 ++
 arch/arm/mach-clps711x/include/mach/devices.h               | 2 ++
 arch/arm/mach-ep93xx/include/mach/barebox.lds.h             | 1 +
 arch/arm/mach-imx/include/mach/atf.h                        | 2 ++
 arch/arm/mach-imx/include/mach/bbu.h                        | 2 ++
 arch/arm/mach-imx/include/mach/ccm.h                        | 4 +++-
 arch/arm/mach-imx/include/mach/clock.h                      | 2 ++
 arch/arm/mach-imx/include/mach/debug_ll.h                   | 2 ++
 arch/arm/mach-imx/include/mach/devices-imx1.h               | 2 ++
 arch/arm/mach-imx/include/mach/devices-imx21.h              | 1 +
 arch/arm/mach-imx/include/mach/devices-imx25.h              | 1 +
 arch/arm/mach-imx/include/mach/devices-imx27.h              | 1 +
 arch/arm/mach-imx/include/mach/devices-imx31.h              | 1 +
 arch/arm/mach-imx/include/mach/devices-imx35.h              | 1 +
 arch/arm/mach-imx/include/mach/devices-imx50.h              | 1 +
 arch/arm/mach-imx/include/mach/devices-imx51.h              | 1 +
 arch/arm/mach-imx/include/mach/devices-imx53.h              | 1 +
 arch/arm/mach-imx/include/mach/devices-imx6.h               | 2 ++
 arch/arm/mach-imx/include/mach/devices.h                    | 1 +
 arch/arm/mach-imx/include/mach/esdctl-v4.h                  | 2 ++
 arch/arm/mach-imx/include/mach/esdctl.h                     | 2 ++
 arch/arm/mach-imx/include/mach/generic.h                    | 2 ++
 arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h         | 2 ++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h | 2 ++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h          | 1 +
 arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h       | 1 +
 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h          | 2 ++
 arch/arm/mach-imx/include/mach/imx-gpio.h                   | 2 ++
 arch/arm/mach-imx/include/mach/imx-header.h                 | 2 ++
 arch/arm/mach-imx/include/mach/imx-nand.h                   | 2 ++
 arch/arm/mach-imx/include/mach/imx-pll.h                    | 2 ++
 arch/arm/mach-imx/include/mach/imx1-regs.h                  | 2 ++
 arch/arm/mach-imx/include/mach/imx21-regs.h                 | 2 ++
 arch/arm/mach-imx/include/mach/imx25-fusemap.h              | 2 ++
 arch/arm/mach-imx/include/mach/imx27-regs.h                 | 2 ++
 arch/arm/mach-imx/include/mach/imx5.h                       | 2 ++
 arch/arm/mach-imx/include/mach/imx50-regs.h                 | 2 ++
 arch/arm/mach-imx/include/mach/imx51-regs.h                 | 2 ++
 arch/arm/mach-imx/include/mach/imx53-regs.h                 | 2 ++
 arch/arm/mach-imx/include/mach/imx6-fusemap.h               | 2 ++
 arch/arm/mach-imx/include/mach/imx6-mmdc.h                  | 2 ++
 arch/arm/mach-imx/include/mach/imx6-regs.h                  | 2 ++
 arch/arm/mach-imx/include/mach/imx6.h                       | 2 ++
 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h              | 2 ++
 arch/arm/mach-imx/include/mach/imx7-regs.h                  | 2 ++
 arch/arm/mach-imx/include/mach/imx7.h                       | 4 +++-
 arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h             | 2 ++
 arch/arm/mach-imx/include/mach/imx8m-regs.h                 | 2 ++
 arch/arm/mach-imx/include/mach/imx8mm-regs.h                | 2 ++
 arch/arm/mach-imx/include/mach/imx8mp-regs.h                | 2 ++
 arch/arm/mach-imx/include/mach/imx8mq-regs.h                | 2 ++
 arch/arm/mach-imx/include/mach/imx8mq.h                     | 2 ++
 arch/arm/mach-imx/include/mach/imx_cpu_types.h              | 2 ++
 arch/arm/mach-imx/include/mach/imxfb.h                      | 2 ++
 arch/arm/mach-imx/include/mach/iomux-mx1.h                  | 2 ++
 arch/arm/mach-imx/include/mach/iomux-mx8m.h                 | 2 ++
 arch/arm/mach-imx/include/mach/iomux-v1.h                   | 2 ++
 arch/arm/mach-imx/include/mach/ocotp-fusemap.h              | 2 ++
 arch/arm/mach-imx/include/mach/ocotp.h                      | 2 ++
 arch/arm/mach-imx/include/mach/reset-reason.h               | 2 ++
 arch/arm/mach-imx/include/mach/revision.h                   | 2 ++
 arch/arm/mach-imx/include/mach/spi.h                        | 1 +
 arch/arm/mach-imx/include/mach/usb.h                        | 2 ++
 arch/arm/mach-imx/include/mach/vf610-ddrmc.h                | 2 ++
 arch/arm/mach-imx/include/mach/vf610-fusemap.h              | 2 ++
 arch/arm/mach-imx/include/mach/vf610.h                      | 2 ++
 arch/arm/mach-imx/include/mach/weim.h                       | 2 ++
 arch/arm/mach-imx/include/mach/xload.h                      | 2 ++
 arch/arm/mach-layerscape/include/mach/bbu.h                 | 4 +++-
 arch/arm/mach-layerscape/include/mach/debug_ll.h            | 2 ++
 arch/arm/mach-layerscape/include/mach/errata.h              | 2 ++
 arch/arm/mach-layerscape/include/mach/layerscape.h          | 2 ++
 arch/arm/mach-layerscape/include/mach/lowlevel.h            | 2 ++
 arch/arm/mach-layerscape/include/mach/xload.h               | 2 ++
 arch/arm/mach-mvebu/include/mach/barebox-arm-head.h         | 2 ++
 arch/arm/mach-mvebu/include/mach/bbu.h                      | 2 ++
 arch/arm/mach-mxs/include/mach/debug_ll.h                   | 2 ++
 arch/arm/mach-mxs/include/mach/devices.h                    | 2 ++
 arch/arm/mach-mxs/include/mach/imx23.h                      | 4 +++-
 arch/arm/mach-mxs/include/mach/imx28.h                      | 4 +++-
 arch/arm/mach-mxs/include/mach/power.h                      | 2 ++
 arch/arm/mach-mxs/include/mach/revision.h                   | 2 ++
 arch/arm/mach-mxs/include/mach/usb.h                        | 2 ++
 arch/arm/mach-nomadik/include/mach/fsmc.h                   | 2 ++
 arch/arm/mach-nomadik/include/mach/nand.h                   | 2 ++
 arch/arm/mach-omap/include/mach/am33xx-generic.h            | 2 ++
 arch/arm/mach-omap/include/mach/am3xxx-silicon.h            | 4 +++-
 arch/arm/mach-omap/include/mach/bbu.h                       | 2 ++
 arch/arm/mach-omap/include/mach/devices.h                   | 2 ++
 arch/arm/mach-omap/include/mach/generic.h                   | 2 ++
 arch/arm/mach-omap/include/mach/mcspi.h                     | 2 ++
 arch/arm/mach-omap/include/mach/omap-fb.h                   | 2 ++
 arch/arm/mach-omap/include/mach/omap3-devices.h             | 2 ++
 arch/arm/mach-omap/include/mach/omap3-generic.h             | 2 ++
 arch/arm/mach-omap/include/mach/omap4-clock.h               | 2 ++
 arch/arm/mach-omap/include/mach/omap4-devices.h             | 2 ++
 arch/arm/mach-omap/include/mach/omap4-generic.h             | 2 ++
 arch/arm/mach-omap/include/mach/omap4_twl6030_mmc.h         | 2 ++
 arch/arm/mach-pxa/include/mach/mci_pxa2xx.h                 | 2 ++
 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h                 | 2 ++
 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h                 | 2 ++
 arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h                 | 2 ++
 arch/arm/mach-pxa/include/mach/pxa25x-regs.h                | 2 ++
 arch/arm/mach-pxa/include/mach/pxa27x-regs.h                | 2 ++
 arch/arm/mach-pxa/include/mach/pxafb.h                      | 2 ++
 arch/arm/mach-pxa/include/mach/regs-intc.h                  | 2 ++
 arch/arm/mach-pxa/include/mach/regs-lcd.h                   | 2 ++
 arch/arm/mach-pxa/include/mach/regs-ost.h                   | 2 ++
 arch/arm/mach-pxa/include/mach/udc_pxa2xx.h                 | 2 ++
 arch/arm/mach-rockchip/include/mach/atf.h                   | 2 ++
 arch/arm/mach-rockchip/include/mach/bbu.h                   | 2 ++
 arch/arm/mach-rockchip/include/mach/debug_ll.h              | 2 ++
 arch/arm/mach-rockchip/include/mach/rk3568-regs.h           | 2 ++
 arch/arm/mach-rockchip/include/mach/rockchip.h              | 2 ++
 arch/arm/mach-samsung/include/mach/bbu.h                    | 2 ++
 arch/arm/mach-socfpga/include/mach/arria10-xload.h          | 2 ++
 arch/arm/mach-socfpga/include/mach/barebox-arm-head.h       | 2 ++
 arch/arm/mach-socfpga/include/mach/cyclone5-regs.h          | 2 ++
 arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h  | 2 ++
 arch/arm/mach-socfpga/include/mach/debug_ll.h               | 2 ++
 arch/arm/mach-socfpga/include/mach/generic.h                | 2 ++
 arch/arm/mach-socfpga/include/mach/lowlevel.h               | 2 ++
 arch/arm/mach-socfpga/include/mach/pll_config.h             | 2 ++
 arch/arm/mach-stm32mp/include/mach/bbu.h                    | 2 ++
 arch/arm/mach-stm32mp/include/mach/bsec.h                   | 2 ++
 arch/arm/mach-stm32mp/include/mach/debug_ll.h               | 2 ++
 arch/arm/mach-stm32mp/include/mach/entry.h                  | 2 ++
 arch/arm/mach-stm32mp/include/mach/smc.h                    | 2 ++
 arch/arm/mach-uemd/include/mach/hardware.h                  | 2 ++
 arch/arm/mach-versatile/include/mach/init.h                 | 1 +
 arch/arm/mach-zynq/include/mach/debug_ll.h                  | 2 ++
 arch/arm/mach-zynq/include/mach/zynq-flash-header.h         | 2 ++
 arch/mips/include/asm/asm-offsets.h                         | 2 ++
 arch/mips/include/asm/bitsperlong.h                         | 2 ++
 arch/mips/include/asm/cache.h                               | 2 ++
 arch/mips/include/asm/cpu.h                                 | 2 ++
 arch/mips/include/asm/dma-mapping.h                         | 2 ++
 arch/mips/include/asm/io.h                                  | 2 ++
 arch/mips/include/asm/memory.h                              | 2 ++
 arch/mips/include/asm/mmu.h                                 | 2 ++
 arch/mips/mach-ar231x/include/mach/pbl_macros.h             | 2 ++
 arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h  | 2 ++
 arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h     | 2 ++
 arch/mips/mach-ath79/include/mach/pbl_macros.h              | 2 ++
 arch/mips/mach-loongson/include/mach/pbl_macros.h           | 2 ++
 arch/mips/mach-malta/include/mach/mach-gt64120.h            | 2 ++
 arch/mips/mach-xburst/include/mach/devices.h                | 2 ++
 arch/openrisc/boards/generic/config.h                       | 1 +
 arch/openrisc/include/asm/bitsperlong.h                     | 2 ++
 arch/openrisc/include/asm/byteorder.h                       | 2 ++
 arch/openrisc/include/asm/common.h                          | 2 ++
 arch/openrisc/include/asm/linkage.h                         | 2 ++
 arch/openrisc/include/asm/mmu.h                             | 2 ++
 arch/openrisc/include/asm/posix_types.h                     | 2 ++
 arch/openrisc/include/asm/sections.h                        | 2 ++
 arch/openrisc/include/asm/string.h                          | 2 ++
 arch/openrisc/include/asm/swab.h                            | 2 ++
 arch/powerpc/include/asm/atomic.h                           | 2 ++
 arch/powerpc/include/asm/bitops.h                           | 2 ++
 arch/powerpc/include/asm/bitsperlong.h                      | 2 ++
 arch/powerpc/include/asm/cache.h                            | 2 ++
 arch/powerpc/include/asm/common.h                           | 2 ++
 arch/powerpc/include/asm/io.h                               | 2 ++
 arch/powerpc/include/asm/mmu.h                              | 2 ++
 arch/powerpc/include/asm/module.h                           | 2 ++
 arch/powerpc/include/asm/pci_io.h                           | 2 ++
 arch/powerpc/include/asm/posix_types.h                      | 2 ++
 arch/powerpc/include/asm/processor.h                        | 2 ++
 arch/powerpc/include/asm/ptrace.h                           | 2 ++
 arch/powerpc/include/asm/sections.h                         | 2 ++
 arch/powerpc/include/asm/sigcontext.h                       | 2 ++
 arch/powerpc/include/asm/signal.h                           | 2 ++
 arch/powerpc/include/asm/status_led.h                       | 2 ++
 arch/powerpc/include/asm/string.h                           | 2 ++
 arch/powerpc/include/asm/types.h                            | 2 ++
 arch/powerpc/include/asm/unaligned.h                        | 2 ++
 arch/powerpc/mach-mpc5xxx/include/mach/clock.h              | 2 ++
 arch/powerpc/mach-mpc5xxx/include/mach/sdma.h               | 2 ++
 arch/powerpc/mach-mpc85xx/include/mach/clock.h              | 2 ++
 arch/powerpc/mach-mpc85xx/include/mach/mpc85xx.h            | 2 ++
 arch/riscv/include/asm/asm-offsets.h                        | 2 ++
 arch/riscv/include/asm/bitsperlong.h                        | 2 ++
 arch/riscv/include/asm/byteorder.h                          | 2 ++
 arch/riscv/include/asm/io.h                                 | 2 ++
 arch/riscv/include/asm/mmu.h                                | 2 ++
 arch/riscv/include/asm/posix_types.h                        | 2 ++
 arch/riscv/include/asm/swab.h                               | 2 ++
 arch/riscv/include/asm/types.h                              | 2 ++
 arch/riscv/include/asm/unaligned.h                          | 2 ++
 arch/sandbox/include/asm/bitsperlong.h                      | 2 ++
 arch/sandbox/include/asm/byteorder.h                        | 2 ++
 arch/sandbox/include/asm/common.h                           | 2 ++
 arch/sandbox/include/asm/elf.h                              | 2 ++
 arch/sandbox/include/asm/io.h                               | 2 ++
 arch/sandbox/include/asm/mmu.h                              | 2 ++
 arch/sandbox/include/asm/posix_types.h                      | 2 ++
 arch/sandbox/include/asm/sections.h                         | 2 ++
 arch/sandbox/include/asm/string.h                           | 2 ++
 arch/sandbox/include/asm/swab.h                             | 2 ++
 arch/sandbox/include/asm/types.h                            | 2 ++
 arch/sandbox/include/asm/unaligned.h                        | 2 ++
 arch/sandbox/mach-sandbox/include/mach/hostfile.h           | 2 ++
 arch/sandbox/mach-sandbox/include/mach/linux.h              | 2 ++
 arch/x86/include/asm/bitsperlong.h                          | 2 ++
 arch/x86/include/asm/elf.h                                  | 2 ++
 arch/x86/include/asm/io.h                                   | 2 ++
 arch/x86/include/asm/linkage.h                              | 2 ++
 arch/x86/include/asm/mmu.h                                  | 2 ++
 arch/x86/include/asm/posix_types.h                          | 2 ++
 arch/x86/include/asm/sections.h                             | 2 ++
 arch/x86/include/asm/swab.h                                 | 2 ++
 arch/x86/include/asm/types.h                                | 2 ++
 arch/x86/include/asm/unaligned.h                            | 2 ++
 arch/x86/mach-efi/include/mach/debug_ll.h                   | 2 ++
 263 files changed, 520 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/archosg9/archos_features.h b/arch/arm/boards/archosg9/archos_features.h
index 5769c6c668be..f46b9e9eb884 100644
--- a/arch/arm/boards/archosg9/archos_features.h
+++ b/arch/arm/boards/archosg9/archos_features.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ARCHOS_FEATURES_H
 #define __ARCHOS_FEATURES_H
 
diff --git a/arch/arm/boards/archosg9/mux.h b/arch/arm/boards/archosg9/mux.h
index 4ee541587172..d4b0c9da861d 100644
--- a/arch/arm/boards/archosg9/mux.h
+++ b/arch/arm/boards/archosg9/mux.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _MUX_H
 #define _MUX_H
 
diff --git a/arch/arm/boards/at91rm9200ek/config.h b/arch/arm/boards/at91rm9200ek/config.h
index 5f4f6fe1ae2f..a3a0be18ec91 100644
--- a/arch/arm/boards/at91rm9200ek/config.h
+++ b/arch/arm/boards/at91rm9200ek/config.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
diff --git a/arch/arm/boards/beaglebone/beaglebone.h b/arch/arm/boards/beaglebone/beaglebone.h
index a4f48e5b0bb0..9f1f9066993c 100644
--- a/arch/arm/boards/beaglebone/beaglebone.h
+++ b/arch/arm/boards/beaglebone/beaglebone.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __BOARD_BEAGLEBONE_H
 #define __BOARD_BEAGLEBONE_H
 
diff --git a/arch/arm/boards/ebv-socrates/sequencer_auto.h b/arch/arm/boards/ebv-socrates/sequencer_auto.h
index 59aa9cf816ee..d52e19548a8a 100644
--- a/arch/arm/boards/ebv-socrates/sequencer_auto.h
+++ b/arch/arm/boards/ebv-socrates/sequencer_auto.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #define __RW_MGR_ac_mrs1 0x04
 #define __RW_MGR_ac_mrs3 0x06
 #define __RW_MGR_ac_write_bank_0_col_0_nodata_wl_1 0x1C
diff --git a/arch/arm/boards/ebv-socrates/sequencer_defines.h b/arch/arm/boards/ebv-socrates/sequencer_defines.h
index 1ebbc4801148..bef98641aa2a 100644
--- a/arch/arm/boards/ebv-socrates/sequencer_defines.h
+++ b/arch/arm/boards/ebv-socrates/sequencer_defines.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _SEQUENCER_DEFINES_H_
 #define _SEQUENCER_DEFINES_H_
 
diff --git a/arch/arm/boards/friendlyarm-mini6410/config.h b/arch/arm/boards/friendlyarm-mini6410/config.h
index ee38192041ef..87b6ea4a297f 100644
--- a/arch/arm/boards/friendlyarm-mini6410/config.h
+++ b/arch/arm/boards/friendlyarm-mini6410/config.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* FriendlyARM Mini6410 specific global settings */
 
 #ifndef _MINI6410_CONFIG_H_
diff --git a/arch/arm/boards/friendlyarm-tiny210/config.h b/arch/arm/boards/friendlyarm-tiny210/config.h
index 86aedf0a640e..7437e6bdddb4 100644
--- a/arch/arm/boards/friendlyarm-tiny210/config.h
+++ b/arch/arm/boards/friendlyarm-tiny210/config.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #define S5PCXX_CLOCK_REFERENCE 24000000
 
 #define set_pll(mdiv, pdiv, sdiv)	(1<<31 | mdiv<<16 | pdiv<<8 | sdiv)
diff --git a/arch/arm/boards/friendlyarm-tiny6410/config.h b/arch/arm/boards/friendlyarm-tiny6410/config.h
index 04f68579edc4..22692a30253a 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/config.h
+++ b/arch/arm/boards/friendlyarm-tiny6410/config.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* FriendlyARM Tiny6410 specific global settings */
 
 #ifndef _TINY6410_CONFIG_H_
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.h b/arch/arm/boards/raspberry-pi/lowlevel.h
index 9ef9135b2d06..eacf973fb6fa 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.h
+++ b/arch/arm/boards/raspberry-pi/lowlevel.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ARCH_ARM_BOARDS_LOWLEVEL_H__
 #define __ARCH_ARM_BOARDS_LOWLEVEL_H__
 
diff --git a/arch/arm/boards/skov-imx6/version.h b/arch/arm/boards/skov-imx6/version.h
index 008410490be3..a5d205fe2e0d 100644
--- a/arch/arm/boards/skov-imx6/version.h
+++ b/arch/arm/boards/skov-imx6/version.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __SKOV_VERSION_H
 #define __SKOV_VERSION_H
 
diff --git a/arch/arm/cpu/entry.h b/arch/arm/cpu/entry.h
index 18110eadf3a1..ba0d3a25feab 100644
--- a/arch/arm/cpu/entry.h
+++ b/arch/arm/cpu/entry.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ENTRY_H__
 #define __ENTRY_H__
 
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 0a33b138e168..ed7d5bc3168f 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ARM_MMU_COMMON_H
 #define __ARM_MMU_COMMON_H
 
@@ -17,4 +19,4 @@ static inline void arm_mmu_not_initialized_error(void)
 	panic("MMU not initialized\n");
 }
 
-#endif
\ No newline at end of file
+#endif
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index c85e0ea05033..d48522d166f7 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ARM_MMU_H
 #define __ARM_MMU_H
 
diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index 9bbb62fc6ba7..e4d81dace41f 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include "mmu-common.h"
 
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 6af98968fa57..8d8e05105b08 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ARCH_ARMLINUX_H
 #define __ARCH_ARMLINUX_H
 
diff --git a/arch/arm/include/asm/asm-offsets.h b/arch/arm/include/asm/asm-offsets.h
index 2f84e8399624..33db5a47e5c2 100644
--- a/arch/arm/include/asm/asm-offsets.h
+++ b/arch/arm/include/asm/asm-offsets.h
@@ -1 +1,3 @@
-#include <generated/asm-offsets.h>
\ No newline at end of file
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <generated/asm-offsets.h>
diff --git a/arch/arm/include/asm/assembler64.h b/arch/arm/include/asm/assembler64.h
index 26182aa5f687..615b25767180 100644
--- a/arch/arm/include/asm/assembler64.h
+++ b/arch/arm/include/asm/assembler64.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_ASSEMBLY_H
 #define __ASM_ARCH_ASSEMBLY_H
 
@@ -18,4 +20,4 @@
 	b.eq	\el1_label
 .endm
 
-#endif /* __ASM_ARCH_ASSEMBLY_H */
\ No newline at end of file
+#endif /* __ASM_ARCH_ASSEMBLY_H */
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 187d12c9fc8d..fcb7e31d8531 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_HEAD_H
 #define __ASM_ARM_HEAD_H
 
diff --git a/arch/arm/include/asm/bitops.h b/arch/arm/include/asm/bitops.h
index d8a4d9b66743..2d0d300da2eb 100644
--- a/arch/arm/include/asm/bitops.h
+++ b/arch/arm/include/asm/bitops.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Copyright 1995, Russell King.
  * Various bits and pieces copyrights include:
diff --git a/arch/arm/include/asm/bitsperlong.h b/arch/arm/include/asm/bitsperlong.h
index 6dc0bb0c13b2..bf000a04ccde 100644
--- a/arch/arm/include/asm/bitsperlong.h
+++ b/arch/arm/include/asm/bitsperlong.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/bitsperlong.h>
diff --git a/arch/arm/include/asm/byteorder.h b/arch/arm/include/asm/byteorder.h
index c3489f1e1fc6..751dc0e53090 100644
--- a/arch/arm/include/asm/byteorder.h
+++ b/arch/arm/include/asm/byteorder.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  *  linux/include/asm-arm/byteorder.h
  *
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 9ebe80dc89bc..b63776a74ada 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_CACHE_H
 #define __ASM_CACHE_H
 
diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
index 1e2729d521ae..9832a6a4d202 100644
--- a/arch/arm/include/asm/common.h
+++ b/arch/arm/include/asm/common.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_COMMON_H
 #define __ASM_ARM_COMMON_H
 
diff --git a/arch/arm/include/asm/cputype.h b/arch/arm/include/asm/cputype.h
index f39939bd44da..7dc027c1741b 100644
--- a/arch/arm/include/asm/cputype.h
+++ b/arch/arm/include/asm/cputype.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_CPUTYPE_H
 #define __ASM_ARM_CPUTYPE_H
 
diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index 3def5676999b..486275a3361d 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASMARM_ELF_H
 #define __ASMARM_ELF_H
 
diff --git a/arch/arm/include/asm/gic.h b/arch/arm/include/asm/gic.h
index f83f52814107..d7e4c3cbf0b4 100644
--- a/arch/arm/include/asm/gic.h
+++ b/arch/arm/include/asm/gic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __GIC_H__
 #define __GIC_H__
 
diff --git a/arch/arm/include/asm/hardware/arm_timer.h b/arch/arm/include/asm/hardware/arm_timer.h
index 8a58390a1949..7911628ba7f0 100644
--- a/arch/arm/include/asm/hardware/arm_timer.h
+++ b/arch/arm/include/asm/hardware/arm_timer.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_HARDWARE_ARM_TIMER_H
 #define __ASM_ARM_HARDWARE_ARM_TIMER_H
 
diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 0507db1a9cf8..1c0f522d1d44 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_IO_H
 #define __ASM_ARM_IO_H
 
diff --git a/arch/arm/include/asm/linkage.h b/arch/arm/include/asm/linkage.h
index 5a25632b1bc0..728ebe6f6fc0 100644
--- a/arch/arm/include/asm/linkage.h
+++ b/arch/arm/include/asm/linkage.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_LINKAGE_H
 #define __ASM_LINKAGE_H
 
diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index 2279306179af..2b454fa67309 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_MEMORY_H
 #define __ASM_ARM_MEMORY_H
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 417808bfcce1..fd8e93f7a3b1 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
diff --git a/arch/arm/include/asm/module.h b/arch/arm/include/asm/module.h
index 3ce39bf82b61..a4473ff8b61c 100644
--- a/arch/arm/include/asm/module.h
+++ b/arch/arm/include/asm/module.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_ARM_MODULE_H
 #define _ASM_ARM_MODULE_H
 
diff --git a/arch/arm/include/asm/posix_types.h b/arch/arm/include/asm/posix_types.h
index 22cae6230ceb..feaed4247135 100644
--- a/arch/arm/include/asm/posix_types.h
+++ b/arch/arm/include/asm/posix_types.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/posix_types.h>
diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 8ab01f2b71e8..15b1a6482a5b 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_SECTIONS_H
 #define __ASM_SECTIONS_H
 
diff --git a/arch/arm/include/asm/secure.h b/arch/arm/include/asm/secure.h
index e0c262372395..fd10c47c6a20 100644
--- a/arch/arm/include/asm/secure.h
+++ b/arch/arm/include/asm/secure.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_SECURE_H
 #define __ASM_ARM_SECURE_H
 
diff --git a/arch/arm/include/asm/semihosting.h b/arch/arm/include/asm/semihosting.h
index b478dadb3afa..9e1606c4aeaa 100644
--- a/arch/arm/include/asm/semihosting.h
+++ b/arch/arm/include/asm/semihosting.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_SEMIHOSTING_H
 #define __ASM_ARM_SEMIHOSTING_H
 
diff --git a/arch/arm/include/asm/stacktrace.h b/arch/arm/include/asm/stacktrace.h
index 602e79ced451..bbcd2a5f8e45 100644
--- a/arch/arm/include/asm/stacktrace.h
+++ b/arch/arm/include/asm/stacktrace.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_STACKTRACE_H
 #define __ASM_STACKTRACE_H
 
diff --git a/arch/arm/include/asm/string.h b/arch/arm/include/asm/string.h
index cd79f6340245..2322b846b29b 100644
--- a/arch/arm/include/asm/string.h
+++ b/arch/arm/include/asm/string.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_STRING_H
 #define __ASM_ARM_STRING_H
 
diff --git a/arch/arm/include/asm/swab.h b/arch/arm/include/asm/swab.h
index 379543783130..8dbde9b30771 100644
--- a/arch/arm/include/asm/swab.h
+++ b/arch/arm/include/asm/swab.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  *  arch/arm/include/asm/byteorder.h
  *
diff --git a/arch/arm/include/asm/syscounter.h b/arch/arm/include/asm/syscounter.h
index a644cfaad6b4..16d52269e370 100644
--- a/arch/arm/include/asm/syscounter.h
+++ b/arch/arm/include/asm/syscounter.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_SYSCNT_H_
 #define _ASM_SYSCNT_H_
 
@@ -21,4 +23,4 @@ static inline u32 syscnt_get_cntfrq(void __iomem *syscnt)
 	return readl(syscnt + SYSCNT_CNTFID(0));
 }
 
-#endif
\ No newline at end of file
+#endif
diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index a0180f2df8e3..9e880015331d 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_SYSTEM_H
 #define __ASM_ARM_SYSTEM_H
 
diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index 1e3dfc845c8d..c7f998774812 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_SYSTEM_INFO_H
 #define __ASM_ARM_SYSTEM_INFO_H
 
diff --git a/arch/arm/include/asm/types.h b/arch/arm/include/asm/types.h
index 22b96426559e..4adc815bf370 100644
--- a/arch/arm/include/asm/types.h
+++ b/arch/arm/include/asm/types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARM_TYPES_H
 #define __ASM_ARM_TYPES_H
 
diff --git a/arch/arm/include/asm/unaligned.h b/arch/arm/include/asm/unaligned.h
index 44593a894903..b63d39da7f55 100644
--- a/arch/arm/include/asm/unaligned.h
+++ b/arch/arm/include/asm/unaligned.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_ARM_UNALIGNED_H
 #define _ASM_ARM_UNALIGNED_H
 
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x.h b/arch/arm/mach-at91/include/mach/at91sam926x.h
index ab5cf515ef9e..8ef83010d2c3 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_AT91SAM926X_H
 #define __MACH_AT91SAM926X_H
 
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm-head.h b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
index e0e07500a277..4a95f89fc9dd 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm-head.h
+++ b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ARM_HEAD_H
 #define __MACH_ARM_HEAD_H
 
diff --git a/arch/arm/mach-at91/include/mach/early_udelay.h b/arch/arm/mach-at91/include/mach/early_udelay.h
index 1c1b0123fee8..fc9885dd27f5 100644
--- a/arch/arm/mach-at91/include/mach/early_udelay.h
+++ b/arch/arm/mach-at91/include/mach/early_udelay.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __EARLY_UDELAY_H__
 #define __EARLY_UDELAY_H__
 
diff --git a/arch/arm/mach-at91/include/mach/sama5d2_ll.h b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
index 244b1a706594..c78279d7fce9 100644
--- a/arch/arm/mach-at91/include/mach/sama5d2_ll.h
+++ b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_SAMA5D2_LL__
 #define __MACH_SAMA5D2_LL__
 
diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
index bbc70af2108a..e9336d59c918 100644
--- a/arch/arm/mach-at91/include/mach/xload.h
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_XLOAD_H
 #define __MACH_XLOAD_H
 
diff --git a/arch/arm/mach-clps711x/include/mach/devices.h b/arch/arm/mach-clps711x/include/mach/devices.h
index 18a251a1d9f0..77c43be25c2b 100644
--- a/arch/arm/mach-clps711x/include/mach/devices.h
+++ b/arch/arm/mach-clps711x/include/mach/devices.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_DEVICES_H
 #define __MACH_DEVICES_H
 
diff --git a/arch/arm/mach-ep93xx/include/mach/barebox.lds.h b/arch/arm/mach-ep93xx/include/mach/barebox.lds.h
index 74c4662a57e7..4e497f5e2d3d 100644
--- a/arch/arm/mach-ep93xx/include/mach/barebox.lds.h
+++ b/arch/arm/mach-ep93xx/include/mach/barebox.lds.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 /* the EP93xx expects to find the pattern 'CRUS' at 0x1000 */
 
diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
index 5ca75f8f92d2..09396f46463a 100644
--- a/arch/arm/mach-imx/include/mach/atf.h
+++ b/arch/arm/mach-imx/include/mach/atf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __IMX_ATF_H__
 #define __IMX_ATF_H__
 
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index f2e326f475cd..207d46e5d18f 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_BBU_H
 #define __MACH_BBU_H
 
diff --git a/arch/arm/mach-imx/include/mach/ccm.h b/arch/arm/mach-imx/include/mach/ccm.h
index 32254a85b4bf..bbdf7536ee91 100644
--- a/arch/arm/mach-imx/include/mach/ccm.h
+++ b/arch/arm/mach-imx/include/mach/ccm.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __IMX_CCM_H__
 
 /* 0 <= n <= 190 */
@@ -17,4 +19,4 @@
 #define CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	CCM_CCGR_SETTINGn(n, 0b10)
 #define CCM_CCGR_SETTINGn_NEEDED(n)		CCM_CCGR_SETTINGn(n, 0b11)
 
-#endif
\ No newline at end of file
+#endif
diff --git a/arch/arm/mach-imx/include/mach/clock.h b/arch/arm/mach-imx/include/mach/clock.h
index 304a7c885cc7..af1a6e439a2e 100644
--- a/arch/arm/mach-imx/include/mach/clock.h
+++ b/arch/arm/mach-imx/include/mach/clock.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* nothing, but some drivers need this include */
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index a4c57c5d5ae6..98aec5198f4a 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_DEBUG_LL_H__
 #define __MACH_DEBUG_LL_H__
 
diff --git a/arch/arm/mach-imx/include/mach/devices-imx1.h b/arch/arm/mach-imx/include/mach/devices-imx1.h
index e4185bc2818b..2b5cb8bcbd41 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx1.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx1.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <mach/devices.h>
 #include <mach/imx1-regs.h>
 
diff --git a/arch/arm/mach-imx/include/mach/devices-imx21.h b/arch/arm/mach-imx/include/mach/devices-imx21.h
index 5b2dfd750581..429b01165efe 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx21.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx21.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <mach/devices.h>
 #include <mach/imx21-regs.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index 7779a02be1e4..ec358fbbfa09 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <mach/devices.h>
 #include <mach/imx25-regs.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index da2289b191d2..8ea7ea7eb3b1 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <mach/devices.h>
 #include <mach/imx27-regs.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 51125d1bca01..37eacb043672 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <mach/imx31-regs.h>
 #include <mach/devices.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 922bb589c67a..04aa7775dd34 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <mach/devices.h>
 #include <mach/imx35-regs.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx50.h b/arch/arm/mach-imx/include/mach/devices-imx50.h
index 7e5141a107a5..5f534d4aec8f 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx50.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx50.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <mach/devices.h>
 #include <mach/imx50-regs.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 5a968a30006b..1a2363249189 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <linux/sizes.h>
 #include <mach/devices.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 3d1e8a27a8af..7b96fb3e2718 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <mach/devices.h>
 #include <mach/imx53-regs.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index 9471f57909de..981dd1c7cace 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <mach/devices.h>
 #include <mach/imx6-regs.h>
 
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 4754b92a6f9f..45da5bb6cc83 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <platform_data/eth-fec.h>
 #include <input/matrix_keypad.h>
diff --git a/arch/arm/mach-imx/include/mach/esdctl-v4.h b/arch/arm/mach-imx/include/mach/esdctl-v4.h
index 2e6741e0d5d5..b93621a8d7d6 100644
--- a/arch/arm/mach-imx/include/mach/esdctl-v4.h
+++ b/arch/arm/mach-imx/include/mach/esdctl-v4.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ESDCTL_V4_H
 #define __MACH_ESDCTL_V4_H
 
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index caafa4732314..b0b531aed4a2 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ESDCTL_V2_H
 #define __MACH_ESDCTL_V2_H
 
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index fce7a813200b..12a7c208b782 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_GENERIC_H
 #define __MACH_GENERIC_H
 
diff --git a/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h b/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
index 60f730f8eca9..0cf017b8ea5d 100644
--- a/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * This snippet can be included from a i.MX flash header configuration
  * file for generating signed images. The necessary keys/certificates
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
index 668fb0646f94..a60b48529236 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * This snippet can be included from a i.MX flash header configuration
  * file for generating signed images. The necessary keys/certificates
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index ca741b2736a0..2044f23c7a1f 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #define SETUP_HABV4_ENGINE CAAM
 #define SETUP_HABV4_FEATURES  RNG, MID
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
index 6a558b880b93..0efd09888fe1 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #define SETUP_HABV4_ENGINE SW
 
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
index a3917cc74fd7..b50788127eff 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * This snippet can be included from a i.MX flash header configuration
  * file for generating signed images. The necessary keys/certificates
diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
index 64ac278d6197..a84dee36b816 100644
--- a/arch/arm/mach-imx/include/mach/imx-gpio.h
+++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX_GPIO_H
 #define __MACH_IMX_GPIO_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
index f1e076dab905..8e968e6efba3 100644
--- a/arch/arm/mach-imx/include/mach/imx-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-header.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __IMX_HEADER_H__
 #define __IMX_HEADER_H__
 
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index f34799a0119c..97e2bd059fe8 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_NAND_H
 #define __ASM_ARCH_NAND_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx-pll.h b/arch/arm/mach-imx/include/mach/imx-pll.h
index 0ccf41bcaa68..791f86093ba8 100644
--- a/arch/arm/mach-imx/include/mach/imx-pll.h
+++ b/arch/arm/mach-imx/include/mach/imx-pll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __INCLUDE_ASM_ARCH_IMX_PLL_H
 #define __INCLUDE_ASM_ARCH_IMX_PLL_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index 69e57e3cfd67..c8125fd74614 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _IMX1_REGS_H
 #define _IMX1_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 1fa463a256e6..19b2ddfdc370 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _IMX21_REGS_H
 #define _IMX21_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx25-fusemap.h b/arch/arm/mach-imx/include/mach/imx25-fusemap.h
index 749b0d17b28d..f21e3d950555 100644
--- a/arch/arm/mach-imx/include/mach/imx25-fusemap.h
+++ b/arch/arm/mach-imx/include/mach/imx25-fusemap.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX25_FUSEMAP_H
 #define __MACH_IMX25_FUSEMAP_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index c45befb57ca0..8bb067763bb7 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _IMX27_REGS_H
 #define _IMX27_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index dd5cfe99cf0b..24ac07e3660b 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_MX5_H
 #define __MACH_MX5_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx50-regs.h b/arch/arm/mach-imx/include/mach/imx50-regs.h
index 97ac8e2dad16..b99dba95086c 100644
--- a/arch/arm/mach-imx/include/mach/imx50-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx50-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX50_REGS_H
 #define __MACH_IMX50_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
index b6685ce065e5..64d56939d54e 100644
--- a/arch/arm/mach-imx/include/mach/imx51-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX51_REGS_H
 #define __MACH_IMX51_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-imx/include/mach/imx53-regs.h
index d45c94370dfd..5fc0b4b90e7a 100644
--- a/arch/arm/mach-imx/include/mach/imx53-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX53_REGS_H
 #define __MACH_IMX53_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx6-fusemap.h b/arch/arm/mach-imx/include/mach/imx6-fusemap.h
index e14044e98a99..de5eb51e5d47 100644
--- a/arch/arm/mach-imx/include/mach/imx6-fusemap.h
+++ b/arch/arm/mach-imx/include/mach/imx6-fusemap.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX_IMX6_OCOTP_H
 #define __MACH_IMX_IMX6_OCOTP_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
index 9385b342c230..bda20aba1741 100644
--- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
+++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_MMDC_H
 #define __MACH_MMDC_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 7350ffd16fae..b2753b0fa7dd 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX6_REGS_H
 #define __MACH_IMX6_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index b65cdaaf40a6..0f3397006a1f 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX6_H
 #define __MACH_IMX6_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
index 5c60794ca74f..aecf9a26d017 100644
--- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX7_CCM_REGS_H__
 #define __MACH_IMX7_CCM_REGS_H__
 
diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
index 21e2830b9763..f11691671728 100644
--- a/arch/arm/mach-imx/include/mach/imx7-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX7_REGS_H
 #define __MACH_IMX7_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx7.h b/arch/arm/mach-imx/include/mach/imx7.h
index 8518935468c9..bc131805af4c 100644
--- a/arch/arm/mach-imx/include/mach/imx7.h
+++ b/arch/arm/mach-imx/include/mach/imx7.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX7_H
 #define __MACH_IMX7_H
 
@@ -56,4 +58,4 @@ static inline int imx7_cpu_revision(void)
 DEFINE_MX7_CPU_TYPE(mx7s, IMX7_CPUTYPE_IMX7S);
 DEFINE_MX7_CPU_TYPE(mx7d, IMX7_CPUTYPE_IMX7D);
 
-#endif /* __MACH_IMX7_H */
\ No newline at end of file
+#endif /* __MACH_IMX7_H */
diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
index 985391f31ac1..eeb15f4dd074 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX8_CCM_REGS_H__
 #define __MACH_IMX8_CCM_REGS_H__
 
diff --git a/arch/arm/mach-imx/include/mach/imx8m-regs.h b/arch/arm/mach-imx/include/mach/imx8m-regs.h
index e5f466c29141..e1c83ee01ddc 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX8M_REGS_H
 #define __MACH_IMX8M_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx8mm-regs.h b/arch/arm/mach-imx/include/mach/imx8mm-regs.h
index e10ca42d2dd0..4c6cabe5af5c 100644
--- a/arch/arm/mach-imx/include/mach/imx8mm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8mm-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX8MM_REGS_H
 #define __MACH_IMX8MM_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx8mp-regs.h b/arch/arm/mach-imx/include/mach/imx8mp-regs.h
index ad53abbc9d11..08f662bcde15 100644
--- a/arch/arm/mach-imx/include/mach/imx8mp-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8mp-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX8MP_REGS_H
 #define __MACH_IMX8MP_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx8mq-regs.h b/arch/arm/mach-imx/include/mach/imx8mq-regs.h
index 50d02ba6a288..e2fde2ba0ca9 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX8MQ_REGS_H
 #define __MACH_IMX8MQ_REGS_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
index f8f39cdd63fb..d02c5f23cfd2 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX8MQ_H
 #define __MACH_IMX8MQ_H
 
diff --git a/arch/arm/mach-imx/include/mach/imx_cpu_types.h b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
index e9a9d8b38a08..1d5809720988 100644
--- a/arch/arm/mach-imx/include/mach/imx_cpu_types.h
+++ b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX_CPU_TYPES_H
 #define __MACH_IMX_CPU_TYPES_H
 
diff --git a/arch/arm/mach-imx/include/mach/imxfb.h b/arch/arm/mach-imx/include/mach/imxfb.h
index 6df7a14ddeda..508155457598 100644
--- a/arch/arm/mach-imx/include/mach/imxfb.h
+++ b/arch/arm/mach-imx/include/mach/imxfb.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMXFB_H
 #define __MACH_IMXFB_H
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx1.h b/arch/arm/mach-imx/include/mach/iomux-mx1.h
index 51317d35d52d..000b2055eeb9 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx1.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx1.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IOMUX_MX1_H
 #define __MACH_IOMUX_MX1_H
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8m.h b/arch/arm/mach-imx/include/mach/iomux-mx8m.h
index de6675064abe..68f276560987 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8m.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx8m.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IOMUX_IMX8M_H__
 #define __MACH_IOMUX_IMX8M_H__
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-v1.h b/arch/arm/mach-imx/include/mach/iomux-v1.h
index 8f75933e3982..132b12976750 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v1.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v1.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IOMUX_V1_H__
 #define __MACH_IOMUX_V1_H__
 
diff --git a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h b/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
index aec50dbf8a54..603bec49fd7e 100644
--- a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
+++ b/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX_OCOTP_FUSEMAP_H
 #define __MACH_IMX_OCOTP_FUSEMAP_H
 
diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
index 20205c5da759..7c72edfb22a7 100644
--- a/arch/arm/mach-imx/include/mach/ocotp.h
+++ b/arch/arm/mach-imx/include/mach/ocotp.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX_OCOTP_H
 #define __MACH_IMX_OCOTP_H
 
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index 91a81718960c..f27b2ee64e48 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_RESET_REASON_H__
 #define __MACH_RESET_REASON_H__
 
diff --git a/arch/arm/mach-imx/include/mach/revision.h b/arch/arm/mach-imx/include/mach/revision.h
index d9495d967f05..ab42bf17d5f3 100644
--- a/arch/arm/mach-imx/include/mach/revision.h
+++ b/arch/arm/mach-imx/include/mach/revision.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_REVISION_H__
 #define __MACH_REVISION_H__
 
diff --git a/arch/arm/mach-imx/include/mach/spi.h b/arch/arm/mach-imx/include/mach/spi.h
index 08be445e8eb8..294c724ef4ff 100644
--- a/arch/arm/mach-imx/include/mach/spi.h
+++ b/arch/arm/mach-imx/include/mach/spi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #ifndef __MACH_SPI_H_
 #define __MACH_SPI_H_
diff --git a/arch/arm/mach-imx/include/mach/usb.h b/arch/arm/mach-imx/include/mach/usb.h
index 3209bf9095a4..18040aa0be00 100644
--- a/arch/arm/mach-imx/include/mach/usb.h
+++ b/arch/arm/mach-imx/include/mach/usb.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_USB_H_
 #define __MACH_USB_H_
 
diff --git a/arch/arm/mach-imx/include/mach/vf610-ddrmc.h b/arch/arm/mach-imx/include/mach/vf610-ddrmc.h
index 07feb036e5b5..79b88e19fd86 100644
--- a/arch/arm/mach-imx/include/mach/vf610-ddrmc.h
+++ b/arch/arm/mach-imx/include/mach/vf610-ddrmc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_DDRMC_H
 #define __MACH_DDRMC_H
 
diff --git a/arch/arm/mach-imx/include/mach/vf610-fusemap.h b/arch/arm/mach-imx/include/mach/vf610-fusemap.h
index a56faf10cc10..c222a8f27fbf 100644
--- a/arch/arm/mach-imx/include/mach/vf610-fusemap.h
+++ b/arch/arm/mach-imx/include/mach/vf610-fusemap.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_VF610_OCOTP_H
 #define __MACH_VF610_OCOTP_H
 
diff --git a/arch/arm/mach-imx/include/mach/vf610.h b/arch/arm/mach-imx/include/mach/vf610.h
index 7ac10a7b1e0c..6de300a2a090 100644
--- a/arch/arm/mach-imx/include/mach/vf610.h
+++ b/arch/arm/mach-imx/include/mach/vf610.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_VF610_H
 #define __MACH_VF610_H
 
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
index 22d9c76d6173..d8a7d1194775 100644
--- a/arch/arm/mach-imx/include/mach/weim.h
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_WEIM_H
 #define __MACH_WEIM_H
 
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index f0deaf068aed..03ec23ebbdb0 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_XLOAD_H
 #define __MACH_XLOAD_H
 
diff --git a/arch/arm/mach-layerscape/include/mach/bbu.h b/arch/arm/mach-layerscape/include/mach/bbu.h
index 1ea0cbb11f32..d018ec9a9dbf 100644
--- a/arch/arm/mach-layerscape/include/mach/bbu.h
+++ b/arch/arm/mach-layerscape/include/mach/bbu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_LAYERSCAPE_BBU_H
 #define __MACH_LAYERSCAPE_BBU_H
 
@@ -19,4 +21,4 @@ static inline int ls1046a_bbu_qspi_register_handler(const char *name,
 					    filetype_layerscape_qspi_image);
 }
 
-#endif /* __MACH_LAYERSCAPE_BBU_H */
\ No newline at end of file
+#endif /* __MACH_LAYERSCAPE_BBU_H */
diff --git a/arch/arm/mach-layerscape/include/mach/debug_ll.h b/arch/arm/mach-layerscape/include/mach/debug_ll.h
index 2658a4a7c916..b6630af1431a 100644
--- a/arch/arm/mach-layerscape/include/mach/debug_ll.h
+++ b/arch/arm/mach-layerscape/include/mach/debug_ll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __INCLUDE_ARCH_DEBUG_LL_H__
 #define __INCLUDE_ARCH_DEBUG_LL_H__
 
diff --git a/arch/arm/mach-layerscape/include/mach/errata.h b/arch/arm/mach-layerscape/include/mach/errata.h
index bdefa22172f7..1ec75b5d8d33 100644
--- a/arch/arm/mach-layerscape/include/mach/errata.h
+++ b/arch/arm/mach-layerscape/include/mach/errata.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ERRATA_H
 #define __MACH_ERRATA_H
 
diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/arch/arm/mach-layerscape/include/mach/layerscape.h
index 1f1da0f66e75..447417a266ff 100644
--- a/arch/arm/mach-layerscape/include/mach/layerscape.h
+++ b/arch/arm/mach-layerscape/include/mach/layerscape.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_LAYERSCAPE_H
 #define __MACH_LAYERSCAPE_H
 
diff --git a/arch/arm/mach-layerscape/include/mach/lowlevel.h b/arch/arm/mach-layerscape/include/mach/lowlevel.h
index 0f5f0f3aad4d..0c077d064b52 100644
--- a/arch/arm/mach-layerscape/include/mach/lowlevel.h
+++ b/arch/arm/mach-layerscape/include/mach/lowlevel.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_LOWLEVEL_H
 #define __MACH_LOWLEVEL_H
 
diff --git a/arch/arm/mach-layerscape/include/mach/xload.h b/arch/arm/mach-layerscape/include/mach/xload.h
index eb2d9988650b..0731681b4318 100644
--- a/arch/arm/mach-layerscape/include/mach/xload.h
+++ b/arch/arm/mach-layerscape/include/mach/xload.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_XLOAD_H
 #define __MACH_XLOAD_H
 
diff --git a/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h b/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h
index 723e2ab4c8b5..12f8cfc5a029 100644
--- a/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h
+++ b/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/stringify.h>
 #include <mach/common.h>
 
diff --git a/arch/arm/mach-mvebu/include/mach/bbu.h b/arch/arm/mach-mvebu/include/mach/bbu.h
index f23c3269c041..f8f70b6bf693 100644
--- a/arch/arm/mach-mvebu/include/mach/bbu.h
+++ b/arch/arm/mach-mvebu/include/mach/bbu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifdef CONFIG_BAREBOX_UPDATE
 int mvebu_bbu_flash_register_handler(const char *name,
 				     char *devicefile, int version,
diff --git a/arch/arm/mach-mxs/include/mach/debug_ll.h b/arch/arm/mach-mxs/include/mach/debug_ll.h
index 9e3ce1c1cd30..ac7a0e759da1 100644
--- a/arch/arm/mach-mxs/include/mach/debug_ll.h
+++ b/arch/arm/mach-mxs/include/mach/debug_ll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_DEBUG_LL_H__
 #define __MACH_DEBUG_LL_H__
 
diff --git a/arch/arm/mach-mxs/include/mach/devices.h b/arch/arm/mach-mxs/include/mach/devices.h
index b212aa783e23..4743a4a8c009 100644
--- a/arch/arm/mach-mxs/include/mach/devices.h
+++ b/arch/arm/mach-mxs/include/mach/devices.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_MXS_DEVICES_H
 #define __MACH_MXS_DEVICES_H
 
diff --git a/arch/arm/mach-mxs/include/mach/imx23.h b/arch/arm/mach-mxs/include/mach/imx23.h
index 56e76d5f5030..bdd3ae4407ae 100644
--- a/arch/arm/mach-mxs/include/mach/imx23.h
+++ b/arch/arm/mach-mxs/include/mach/imx23.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX23_H
 #define __MACH_IMX23_H
 
@@ -26,4 +28,4 @@ static inline u32 imx23_get_memsize(void)
 	return (1 << columns) * (1 << rows) * banks * (cs0 + cs1);
 }
 
-#endif /* __MACH_IMX23_H */
\ No newline at end of file
+#endif /* __MACH_IMX23_H */
diff --git a/arch/arm/mach-mxs/include/mach/imx28.h b/arch/arm/mach-mxs/include/mach/imx28.h
index 5816625c89ac..cf2d5fb6efc8 100644
--- a/arch/arm/mach-mxs/include/mach/imx28.h
+++ b/arch/arm/mach-mxs/include/mach/imx28.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX28_H
 #define __MACH_IMX28_H
 
@@ -27,4 +29,4 @@ static inline u32 imx28_get_memsize(void)
 	return (1 << columns) * (1 << rows) * banks * (cs0 + cs1);
 }
 
-#endif /* __MACH_IMX28_H */
\ No newline at end of file
+#endif /* __MACH_IMX28_H */
diff --git a/arch/arm/mach-mxs/include/mach/power.h b/arch/arm/mach-mxs/include/mach/power.h
index f429b3c31c47..9d0ea89bca82 100644
--- a/arch/arm/mach-mxs/include/mach/power.h
+++ b/arch/arm/mach-mxs/include/mach/power.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_POWER_H
 #define __MACH_POWER_H
 
diff --git a/arch/arm/mach-mxs/include/mach/revision.h b/arch/arm/mach-mxs/include/mach/revision.h
index 91f174d8b0e5..65daf3db9871 100644
--- a/arch/arm/mach-mxs/include/mach/revision.h
+++ b/arch/arm/mach-mxs/include/mach/revision.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_REVISION_H__
 #define __MACH_REVISION_H__
 
diff --git a/arch/arm/mach-mxs/include/mach/usb.h b/arch/arm/mach-mxs/include/mach/usb.h
index 2d31b0d0f20d..132fc16eec4a 100644
--- a/arch/arm/mach-mxs/include/mach/usb.h
+++ b/arch/arm/mach-mxs/include/mach/usb.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_USB_H
 #define __MACH_USB_H
 
diff --git a/arch/arm/mach-nomadik/include/mach/fsmc.h b/arch/arm/mach-nomadik/include/mach/fsmc.h
index e010c7215ca7..3d46eb2a478b 100644
--- a/arch/arm/mach-nomadik/include/mach/fsmc.h
+++ b/arch/arm/mach-nomadik/include/mach/fsmc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* Definitions for the Nomadik FSMC "Flexible Static Memory controller" */
 
 #ifndef __ASM_ARCH_FSMC_H
diff --git a/arch/arm/mach-nomadik/include/mach/nand.h b/arch/arm/mach-nomadik/include/mach/nand.h
index 544f0e02c7ae..419db3e33c6d 100644
--- a/arch/arm/mach-nomadik/include/mach/nand.h
+++ b/arch/arm/mach-nomadik/include/mach/nand.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_NAND_H
 #define __ASM_ARCH_NAND_H
 
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index 7e64e74d5c2e..e146bf0909f2 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_AM33XX_GENERIC_H
 #define __MACH_AM33XX_GENERIC_H
 
diff --git a/arch/arm/mach-omap/include/mach/am3xxx-silicon.h b/arch/arm/mach-omap/include/mach/am3xxx-silicon.h
index c5f73ad457d6..dba3d634d5c2 100644
--- a/arch/arm/mach-omap/include/mach/am3xxx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am3xxx-silicon.h
@@ -1,6 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_AM33XX_H
 #define __ASM_ARCH_AM33XX_H
 
 void am3xxx_uart_soft_reset(void __iomem *uart_base);
 
-#endif /* __ASM_ARCH_AM33XX_H */
\ No newline at end of file
+#endif /* __ASM_ARCH_AM33XX_H */
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/arch/arm/mach-omap/include/mach/bbu.h
index 94d3f96bb452..5ca7ec43cceb 100644
--- a/arch/arm/mach-omap/include/mach/bbu.h
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_BBU_H
 #define __MACH_BBU_H
 
diff --git a/arch/arm/mach-omap/include/mach/devices.h b/arch/arm/mach-omap/include/mach/devices.h
index 537213fb9043..0f9fdf1ca57b 100644
--- a/arch/arm/mach-omap/include/mach/devices.h
+++ b/arch/arm/mach-omap/include/mach/devices.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_OMAP_DEVICES_H
 #define __MACH_OMAP_DEVICES_H
 
diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
index fe194b39210b..fa391c8d4813 100644
--- a/arch/arm/mach-omap/include/mach/generic.h
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _MACH_GENERIC_H
 #define _MACH_GENERIC_H
 
diff --git a/arch/arm/mach-omap/include/mach/mcspi.h b/arch/arm/mach-omap/include/mach/mcspi.h
index dbde67a5daba..febb08db2ac3 100644
--- a/arch/arm/mach-omap/include/mach/mcspi.h
+++ b/arch/arm/mach-omap/include/mach/mcspi.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __OMAP_MCSPI_H
 #define  __OMAP_MCSPI_H
 
diff --git a/arch/arm/mach-omap/include/mach/omap-fb.h b/arch/arm/mach-omap/include/mach/omap-fb.h
index f68dc1a1423c..f727164434b5 100644
--- a/arch/arm/mach-omap/include/mach/omap-fb.h
+++ b/arch/arm/mach-omap/include/mach/omap-fb.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
 #define H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
 
diff --git a/arch/arm/mach-omap/include/mach/omap3-devices.h b/arch/arm/mach-omap/include/mach/omap3-devices.h
index 8c62c9900564..5d7bc8bf1eeb 100644
--- a/arch/arm/mach-omap/include/mach/omap3-devices.h
+++ b/arch/arm/mach-omap/include/mach/omap3-devices.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_OMAP3_DEVICES_H
 #define __MACH_OMAP3_DEVICES_H
 
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/arch/arm/mach-omap/include/mach/omap3-generic.h
index 177862e4b117..6304ac7bb831 100644
--- a/arch/arm/mach-omap/include/mach/omap3-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap3-generic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_OMAP3_GENERIC_H
 #define __MACH_OMAP3_GENERIC_H
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/arch/arm/mach-omap/include/mach/omap4-clock.h
index 8f49aa376150..6bbb10e83d3e 100644
--- a/arch/arm/mach-omap/include/mach/omap4-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap4-clock.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_OMAP4_CLOCK_H
 #define __MACH_OMAP4_CLOCK_H
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-devices.h b/arch/arm/mach-omap/include/mach/omap4-devices.h
index 7ac940b2d722..22a1eb79fce2 100644
--- a/arch/arm/mach-omap/include/mach/omap4-devices.h
+++ b/arch/arm/mach-omap/include/mach/omap4-devices.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_OMAP4_DEVICES_H
 #define __MACH_OMAP4_DEVICES_H
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/arch/arm/mach-omap/include/mach/omap4-generic.h
index c1d0a3c90050..b6a72cfc5520 100644
--- a/arch/arm/mach-omap/include/mach/omap4-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap4-generic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_OMAP4_GENERIC_H
 #define __MACH_OMAP4_GENERIC_H
 
diff --git a/arch/arm/mach-omap/include/mach/omap4_twl6030_mmc.h b/arch/arm/mach-omap/include/mach/omap4_twl6030_mmc.h
index e5e2d9c22949..0cde30619b84 100644
--- a/arch/arm/mach-omap/include/mach/omap4_twl6030_mmc.h
+++ b/arch/arm/mach-omap/include/mach/omap4_twl6030_mmc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Copyright (C) 2011 Alexander Aring <a.aring@phytec.de>
  */
diff --git a/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h b/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
index b24bc58afe91..e5bc211ea8d0 100644
--- a/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
+++ b/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 
 struct mci_host;
 struct device_d;
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h b/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
index f6a27a20db19..5db786a85aa1 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_MFP_PXA27X_H
 #define __ASM_ARCH_MFP_PXA27X_H
 
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h b/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
index 658b28ed129b..b01f6188d4e2 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_MFP_PXA2XX_H
 #define __ASM_ARCH_MFP_PXA2XX_H
 
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h b/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
index 7bdd44db13b4..00eb7247099f 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_MFP_PXA3XX_H
 #define __ASM_ARCH_MFP_PXA3XX_H
 
diff --git a/arch/arm/mach-pxa/include/mach/pxa25x-regs.h b/arch/arm/mach-pxa/include/mach/pxa25x-regs.h
index a7f16bd418bf..f9cbe50007fd 100644
--- a/arch/arm/mach-pxa/include/mach/pxa25x-regs.h
+++ b/arch/arm/mach-pxa/include/mach/pxa25x-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_PXA25X_REGS
 #define __MACH_PXA25X_REGS
 
diff --git a/arch/arm/mach-pxa/include/mach/pxa27x-regs.h b/arch/arm/mach-pxa/include/mach/pxa27x-regs.h
index f4d88d47aba3..a97538d0125a 100644
--- a/arch/arm/mach-pxa/include/mach/pxa27x-regs.h
+++ b/arch/arm/mach-pxa/include/mach/pxa27x-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_PXA27X_REGS
 #define __MACH_PXA27X_REGS
 
diff --git a/arch/arm/mach-pxa/include/mach/pxafb.h b/arch/arm/mach-pxa/include/mach/pxafb.h
index 23cbea99c898..44ac3237a30f 100644
--- a/arch/arm/mach-pxa/include/mach/pxafb.h
+++ b/arch/arm/mach-pxa/include/mach/pxafb.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * This structure describes the machine which we are running on.
  */
diff --git a/arch/arm/mach-pxa/include/mach/regs-intc.h b/arch/arm/mach-pxa/include/mach/regs-intc.h
index 68464ce1c1ea..91760b267881 100644
--- a/arch/arm/mach-pxa/include/mach/regs-intc.h
+++ b/arch/arm/mach-pxa/include/mach/regs-intc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MACH_REGS_INTC_H
 #define __ASM_MACH_REGS_INTC_H
 
diff --git a/arch/arm/mach-pxa/include/mach/regs-lcd.h b/arch/arm/mach-pxa/include/mach/regs-lcd.h
index a6d0817ae692..4d473f23ae36 100644
--- a/arch/arm/mach-pxa/include/mach/regs-lcd.h
+++ b/arch/arm/mach-pxa/include/mach/regs-lcd.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_REGS_LCD_H
 #define __ASM_ARCH_REGS_LCD_H
 
diff --git a/arch/arm/mach-pxa/include/mach/regs-ost.h b/arch/arm/mach-pxa/include/mach/regs-ost.h
index a3e5f86ef67e..aefdee44f86a 100644
--- a/arch/arm/mach-pxa/include/mach/regs-ost.h
+++ b/arch/arm/mach-pxa/include/mach/regs-ost.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MACH_REGS_OST_H
 #define __ASM_MACH_REGS_OST_H
 
diff --git a/arch/arm/mach-pxa/include/mach/udc_pxa2xx.h b/arch/arm/mach-pxa/include/mach/udc_pxa2xx.h
index dcdd36a3b46c..1ddfa7b79714 100644
--- a/arch/arm/mach-pxa/include/mach/udc_pxa2xx.h
+++ b/arch/arm/mach-pxa/include/mach/udc_pxa2xx.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * arch/arm/mach-pxa/include/mach/udc_pxa2xx.h
  *
diff --git a/arch/arm/mach-rockchip/include/mach/atf.h b/arch/arm/mach-rockchip/include/mach/atf.h
index 337a8261c89f..ab328cc8d20a 100644
--- a/arch/arm/mach-rockchip/include/mach/atf.h
+++ b/arch/arm/mach-rockchip/include/mach/atf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ATF_H
 #define __MACH_ATF_H
 
diff --git a/arch/arm/mach-rockchip/include/mach/bbu.h b/arch/arm/mach-rockchip/include/mach/bbu.h
index 7fb08a0a9e54..2cc9b74081e4 100644
--- a/arch/arm/mach-rockchip/include/mach/bbu.h
+++ b/arch/arm/mach-rockchip/include/mach/bbu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ROCKCHIP_BBU_H
 #define __MACH_ROCKCHIP_BBU_H
 
diff --git a/arch/arm/mach-rockchip/include/mach/debug_ll.h b/arch/arm/mach-rockchip/include/mach/debug_ll.h
index af6257a674a2..73fc5b5db2ff 100644
--- a/arch/arm/mach-rockchip/include/mach/debug_ll.h
+++ b/arch/arm/mach-rockchip/include/mach/debug_ll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_DEBUG_LL_H__
 #define __MACH_DEBUG_LL_H__
 
diff --git a/arch/arm/mach-rockchip/include/mach/rk3568-regs.h b/arch/arm/mach-rockchip/include/mach/rk3568-regs.h
index bb2ca7bd9026..edd5ee268d5d 100644
--- a/arch/arm/mach-rockchip/include/mach/rk3568-regs.h
+++ b/arch/arm/mach-rockchip/include/mach/rk3568-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_RK3568_REGS_H
 #define __MACH_RK3568_REGS_H
 
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
index 269d113bc39f..f24db36f0161 100644
--- a/arch/arm/mach-rockchip/include/mach/rockchip.h
+++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ROCKCHIP_H
 #define __MACH_ROCKCHIP_H
 
diff --git a/arch/arm/mach-samsung/include/mach/bbu.h b/arch/arm/mach-samsung/include/mach/bbu.h
index 7ce7052bcf62..ddc72a622d16 100644
--- a/arch/arm/mach-samsung/include/mach/bbu.h
+++ b/arch/arm/mach-samsung/include/mach/bbu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_BBU_H
 #define __MACH_BBU_H
 
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-xload.h b/arch/arm/mach-socfpga/include/mach/arria10-xload.h
index 7575231bbf34..c58ab7f8cfd2 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-xload.h
+++ b/arch/arm/mach-socfpga/include/mach/arria10-xload.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ARRIA10_XLOAD_H
 #define __MACH_ARRIA10_XLOAD_H
 
diff --git a/arch/arm/mach-socfpga/include/mach/barebox-arm-head.h b/arch/arm/mach-socfpga/include/mach/barebox-arm-head.h
index 28fb1c92fc77..634d3f109b45 100644
--- a/arch/arm/mach-socfpga/include/mach/barebox-arm-head.h
+++ b/arch/arm/mach-socfpga/include/mach/barebox-arm-head.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 static inline void __barebox_arm_head(void)
 {
 	__asm__ __volatile__ (
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
index 1a7d787a27bf..4200e8836018 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_SOCFPGA_REGS_H
 #define __MACH_SOCFPGA_REGS_H
 
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h b/arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
index a19a837994e2..7b11d8d08899 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_SDRAM_CONFIG_H
 #define __MACH_SDRAM_CONFIG_H
 
diff --git a/arch/arm/mach-socfpga/include/mach/debug_ll.h b/arch/arm/mach-socfpga/include/mach/debug_ll.h
index 3264934e6d1a..44f56640e89b 100644
--- a/arch/arm/mach-socfpga/include/mach/debug_ll.h
+++ b/arch/arm/mach-socfpga/include/mach/debug_ll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_DEBUG_LL_H__
 #define   __MACH_DEBUG_LL_H__
 
diff --git a/arch/arm/mach-socfpga/include/mach/generic.h b/arch/arm/mach-socfpga/include/mach/generic.h
index c8ee73fe2e1f..6c359e2abbd7 100644
--- a/arch/arm/mach-socfpga/include/mach/generic.h
+++ b/arch/arm/mach-socfpga/include/mach/generic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_SOCFPGA_GENERIC_H
 #define __MACH_SOCFPGA_GENERIC_H
 
diff --git a/arch/arm/mach-socfpga/include/mach/lowlevel.h b/arch/arm/mach-socfpga/include/mach/lowlevel.h
index 8134a023573b..8f3b682fa433 100644
--- a/arch/arm/mach-socfpga/include/mach/lowlevel.h
+++ b/arch/arm/mach-socfpga/include/mach/lowlevel.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_SOCFPGA_LOWLEVEL_H
 #define __MACH_SOCFPGA_LOWLEVEL_H
 
diff --git a/arch/arm/mach-socfpga/include/mach/pll_config.h b/arch/arm/mach-socfpga/include/mach/pll_config.h
index d6fb60dd2442..ded3c0d09ef6 100644
--- a/arch/arm/mach-socfpga/include/mach/pll_config.h
+++ b/arch/arm/mach-socfpga/include/mach/pll_config.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _MACH_SOCFPGA_PRELOADER_PLL_CONFIG_H_
 #define _MACH_SOCFPGA_PRELOADER_PLL_CONFIG_H_
 
diff --git a/arch/arm/mach-stm32mp/include/mach/bbu.h b/arch/arm/mach-stm32mp/include/mach/bbu.h
index 8b9504400e9e..d49fb045ea06 100644
--- a/arch/arm/mach-stm32mp/include/mach/bbu.h
+++ b/arch/arm/mach-stm32mp/include/mach/bbu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef MACH_STM32MP_BBU_H_
 #define MACH_STM32MP_BBU_H_
 
diff --git a/arch/arm/mach-stm32mp/include/mach/bsec.h b/arch/arm/mach-stm32mp/include/mach/bsec.h
index d3cb91b1fdb1..7206a020998f 100644
--- a/arch/arm/mach-stm32mp/include/mach/bsec.h
+++ b/arch/arm/mach-stm32mp/include/mach/bsec.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_STM32_BSEC_H__
 #define __MACH_STM32_BSEC_H__
 
diff --git a/arch/arm/mach-stm32mp/include/mach/debug_ll.h b/arch/arm/mach-stm32mp/include/mach/debug_ll.h
index 99fedb91fe67..22c5c126335f 100644
--- a/arch/arm/mach-stm32mp/include/mach/debug_ll.h
+++ b/arch/arm/mach-stm32mp/include/mach/debug_ll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_STM32MP1_DEBUG_LL_H
 #define __MACH_STM32MP1_DEBUG_LL_H
 
diff --git a/arch/arm/mach-stm32mp/include/mach/entry.h b/arch/arm/mach-stm32mp/include/mach/entry.h
index 92e15b5cf4e3..f8d981cca7cd 100644
--- a/arch/arm/mach-stm32mp/include/mach/entry.h
+++ b/arch/arm/mach-stm32mp/include/mach/entry.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _STM32MP_MACH_ENTRY_H_
 #define _STM32MP_MACH_ENTRY_H_
 
diff --git a/arch/arm/mach-stm32mp/include/mach/smc.h b/arch/arm/mach-stm32mp/include/mach/smc.h
index 6b8e62bd5302..c0b86b2203f5 100644
--- a/arch/arm/mach-stm32mp/include/mach/smc.h
+++ b/arch/arm/mach-stm32mp/include/mach/smc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_STM32_SMC_H__
 #define __MACH_STM32_SMC_H__
 
diff --git a/arch/arm/mach-uemd/include/mach/hardware.h b/arch/arm/mach-uemd/include/mach/hardware.h
index 2311ebf1cdc2..5c75b35dde56 100644
--- a/arch/arm/mach-uemd/include/mach/hardware.h
+++ b/arch/arm/mach-uemd/include/mach/hardware.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_HARDWARE_H
 #define __ASM_ARCH_HARDWARE_H
 
diff --git a/arch/arm/mach-versatile/include/mach/init.h b/arch/arm/mach-versatile/include/mach/init.h
index acb0f660a2bd..e47aa857a17d 100644
--- a/arch/arm/mach-versatile/include/mach/init.h
+++ b/arch/arm/mach-versatile/include/mach/init.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #ifndef __VERSATILE_INIT_H__
 #define __VERSATILE_INIT_H__
diff --git a/arch/arm/mach-zynq/include/mach/debug_ll.h b/arch/arm/mach-zynq/include/mach/debug_ll.h
index 6c20dd534de1..1f626cd4132c 100644
--- a/arch/arm/mach-zynq/include/mach/debug_ll.h
+++ b/arch/arm/mach-zynq/include/mach/debug_ll.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * based on mach-imx/include/mach/debug_ll.h
  */
diff --git a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
index ba4b67f479e9..320037e9b5b9 100644
--- a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
+++ b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_FLASH_HEADER_H
 #define __MACH_FLASH_HEADER_H
 
diff --git a/arch/mips/include/asm/asm-offsets.h b/arch/mips/include/asm/asm-offsets.h
index d370ee36a182..33db5a47e5c2 100644
--- a/arch/mips/include/asm/asm-offsets.h
+++ b/arch/mips/include/asm/asm-offsets.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <generated/asm-offsets.h>
diff --git a/arch/mips/include/asm/bitsperlong.h b/arch/mips/include/asm/bitsperlong.h
index 6dc0bb0c13b2..bf000a04ccde 100644
--- a/arch/mips/include/asm/bitsperlong.h
+++ b/arch/mips/include/asm/bitsperlong.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/bitsperlong.h>
diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
index 4bb39b1cd407..f2f50986c7bf 100644
--- a/arch/mips/include/asm/cache.h
+++ b/arch/mips/include/asm/cache.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_MIPS_CACHE_H
 #define _ASM_MIPS_CACHE_H
 
diff --git a/arch/mips/include/asm/cpu.h b/arch/mips/include/asm/cpu.h
index 9d94eb346b85..155e254a812a 100644
--- a/arch/mips/include/asm/cpu.h
+++ b/arch/mips/include/asm/cpu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * cpu.h: Values of the PRId register used to match up
  *        various MIPS cpu types.
diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
index c71a087038d0..19d5b3f7bc4d 100644
--- a/arch/mips/include/asm/dma-mapping.h
+++ b/arch/mips/include/asm/dma-mapping.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_DMA_MAPPING_H
 #define _ASM_DMA_MAPPING_H
 
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4df9853680a9..0d228aa0f515 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Stolen from the linux-2.6/include/asm-generic/io.h
  */
diff --git a/arch/mips/include/asm/memory.h b/arch/mips/include/asm/memory.h
index 2aa28b76861b..0821b432f84e 100644
--- a/arch/mips/include/asm/memory.h
+++ b/arch/mips/include/asm/memory.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MIPS_MEMORY_H
 #define __ASM_MIPS_MEMORY_H
 
diff --git a/arch/mips/include/asm/mmu.h b/arch/mips/include/asm/mmu.h
index 95af87142027..1c2646ebb339 100644
--- a/arch/mips/include/asm/mmu.h
+++ b/arch/mips/include/asm/mmu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
diff --git a/arch/mips/mach-ar231x/include/mach/pbl_macros.h b/arch/mips/mach-ar231x/include/mach/pbl_macros.h
index cb72dbe46696..b93760a81b06 100644
--- a/arch/mips/mach-ar231x/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ar231x/include/mach/pbl_macros.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MACH_AR2312_PBL_MACROS_H
 #define __ASM_MACH_AR2312_PBL_MACROS_H
 
diff --git a/arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h b/arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h
index 594ec115537a..08a3256a7916 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MACH_ATH79_PBL_LL_INIT_AR9344_1_1_H
 #define __ASM_MACH_ATH79_PBL_LL_INIT_AR9344_1_1_H
 
diff --git a/arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h b/arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h
index 002778b3ec93..18bf26b8ac53 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MACH_ATH79_PBL_LL_INIT_QCA4531_H
 #define __ASM_MACH_ATH79_PBL_LL_INIT_QCA4531_H
 
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index c5f3d4150ea4..f101b41708eb 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MACH_ATH79_PBL_MACROS_H
 #define __ASM_MACH_ATH79_PBL_MACROS_H
 
diff --git a/arch/mips/mach-loongson/include/mach/pbl_macros.h b/arch/mips/mach-loongson/include/mach/pbl_macros.h
index 93402d1c541a..8e9b231c45e9 100644
--- a/arch/mips/mach-loongson/include/mach/pbl_macros.h
+++ b/arch/mips/mach-loongson/include/mach/pbl_macros.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MACH_LOONGSON1_PBL_MACROS_H
 #define __ASM_MACH_LOONGSON1_PBL_MACROS_H
 
diff --git a/arch/mips/mach-malta/include/mach/mach-gt64120.h b/arch/mips/mach-malta/include/mach/mach-gt64120.h
index 8f20fcf26f9f..e7d230655c26 100644
--- a/arch/mips/mach-malta/include/mach/mach-gt64120.h
+++ b/arch/mips/mach-malta/include/mach/mach-gt64120.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  *  This is a direct copy of the ev96100.h file, with a global
  * search and replace.	The numbers are the same.
diff --git a/arch/mips/mach-xburst/include/mach/devices.h b/arch/mips/mach-xburst/include/mach/devices.h
index 931749d42441..1e5e9476aae1 100644
--- a/arch/mips/mach-xburst/include/mach/devices.h
+++ b/arch/mips/mach-xburst/include/mach/devices.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_XBURST_DEVICES_H
 #define __MACH_XBURST_DEVICES_H
 
diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
index f6a054beed82..2d836d0063ed 100644
--- a/arch/openrisc/boards/generic/config.h
+++ b/arch/openrisc/boards/generic/config.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _GENERIC_NAMES_H_
 #define _GENERIC_NAMES_H_
 
diff --git a/arch/openrisc/include/asm/bitsperlong.h b/arch/openrisc/include/asm/bitsperlong.h
index 6dc0bb0c13b2..bf000a04ccde 100644
--- a/arch/openrisc/include/asm/bitsperlong.h
+++ b/arch/openrisc/include/asm/bitsperlong.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/bitsperlong.h>
diff --git a/arch/openrisc/include/asm/byteorder.h b/arch/openrisc/include/asm/byteorder.h
index 60d14f7e14e2..bd60c438a930 100644
--- a/arch/openrisc/include/asm/byteorder.h
+++ b/arch/openrisc/include/asm/byteorder.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/byteorder/big_endian.h>
diff --git a/arch/openrisc/include/asm/common.h b/arch/openrisc/include/asm/common.h
index 027dca2d5682..06bb4824a268 100644
--- a/arch/openrisc/include/asm/common.h
+++ b/arch/openrisc/include/asm/common.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_COMMON_H
 #define __ASM_COMMON_H
 
diff --git a/arch/openrisc/include/asm/linkage.h b/arch/openrisc/include/asm/linkage.h
index dbe4b4e31a5b..aebd618b27b5 100644
--- a/arch/openrisc/include/asm/linkage.h
+++ b/arch/openrisc/include/asm/linkage.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_LINKAGE_H
 #define __ASM_LINKAGE_H
 
diff --git a/arch/openrisc/include/asm/mmu.h b/arch/openrisc/include/asm/mmu.h
index 95af87142027..1c2646ebb339 100644
--- a/arch/openrisc/include/asm/mmu.h
+++ b/arch/openrisc/include/asm/mmu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
diff --git a/arch/openrisc/include/asm/posix_types.h b/arch/openrisc/include/asm/posix_types.h
index 22cae6230ceb..feaed4247135 100644
--- a/arch/openrisc/include/asm/posix_types.h
+++ b/arch/openrisc/include/asm/posix_types.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/posix_types.h>
diff --git a/arch/openrisc/include/asm/sections.h b/arch/openrisc/include/asm/sections.h
index 2b8c5160388f..c6dd0eead244 100644
--- a/arch/openrisc/include/asm/sections.h
+++ b/arch/openrisc/include/asm/sections.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/sections.h>
diff --git a/arch/openrisc/include/asm/string.h b/arch/openrisc/include/asm/string.h
index 73e265564ae6..cfc2ea1f376e 100644
--- a/arch/openrisc/include/asm/string.h
+++ b/arch/openrisc/include/asm/string.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_OPENRISC_STRING_H
 #define __ASM_OPENRISC_STRING_H
 
diff --git a/arch/openrisc/include/asm/swab.h b/arch/openrisc/include/asm/swab.h
index b07e1d51f121..0b49949db8ea 100644
--- a/arch/openrisc/include/asm/swab.h
+++ b/arch/openrisc/include/asm/swab.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_SWAB_H
 #define _ASM_SWAB_H
 
diff --git a/arch/powerpc/include/asm/atomic.h b/arch/powerpc/include/asm/atomic.h
index af3c61a823eb..814bf50d6343 100644
--- a/arch/powerpc/include/asm/atomic.h
+++ b/arch/powerpc/include/asm/atomic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * PowerPC atomic operations
  */
diff --git a/arch/powerpc/include/asm/bitops.h b/arch/powerpc/include/asm/bitops.h
index 2fdd57eff085..543612e6ede3 100644
--- a/arch/powerpc/include/asm/bitops.h
+++ b/arch/powerpc/include/asm/bitops.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * bitops.h: Bit string operations on the ppc
  */
diff --git a/arch/powerpc/include/asm/bitsperlong.h b/arch/powerpc/include/asm/bitsperlong.h
index 6dc0bb0c13b2..bf000a04ccde 100644
--- a/arch/powerpc/include/asm/bitsperlong.h
+++ b/arch/powerpc/include/asm/bitsperlong.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/bitsperlong.h>
diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index 147ceb6714ba..c9066099ab6d 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * include/asm-ppc/cache.h
  */
diff --git a/arch/powerpc/include/asm/common.h b/arch/powerpc/include/asm/common.h
index b91f51e46219..1e1ea4601dcc 100644
--- a/arch/powerpc/include/asm/common.h
+++ b/arch/powerpc/include/asm/common.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_COMMON_H
 #define __ASM_COMMON_H
 
diff --git a/arch/powerpc/include/asm/io.h b/arch/powerpc/include/asm/io.h
index 30d098702380..88f14b54f4b9 100644
--- a/arch/powerpc/include/asm/io.h
+++ b/arch/powerpc/include/asm/io.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* originally from linux source.
  * removed the dependencies on CONFIG_ values
  * removed virt_to_phys stuff (and in fact everything surrounded by #if __KERNEL__)
diff --git a/arch/powerpc/include/asm/mmu.h b/arch/powerpc/include/asm/mmu.h
index c691de1c77b0..81a5d7d55f93 100644
--- a/arch/powerpc/include/asm/mmu.h
+++ b/arch/powerpc/include/asm/mmu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * PowerPC memory management structures
  */
diff --git a/arch/powerpc/include/asm/module.h b/arch/powerpc/include/asm/module.h
index 09c04402c541..e5c10e35da49 100644
--- a/arch/powerpc/include/asm/module.h
+++ b/arch/powerpc/include/asm/module.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 
 /**/
 struct mod_arch_specific {
diff --git a/arch/powerpc/include/asm/pci_io.h b/arch/powerpc/include/asm/pci_io.h
index 9b738c383f7d..d601a9671e7d 100644
--- a/arch/powerpc/include/asm/pci_io.h
+++ b/arch/powerpc/include/asm/pci_io.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* originally from linux source (asm-ppc/io.h).
  * Sanity added by Rob Taylor, Flying Pig Systems, 2000
  */
diff --git a/arch/powerpc/include/asm/posix_types.h b/arch/powerpc/include/asm/posix_types.h
index 22cae6230ceb..feaed4247135 100644
--- a/arch/powerpc/include/asm/posix_types.h
+++ b/arch/powerpc/include/asm/posix_types.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/posix_types.h>
diff --git a/arch/powerpc/include/asm/processor.h b/arch/powerpc/include/asm/processor.h
index f4677d11e124..b9b73580c41b 100644
--- a/arch/powerpc/include/asm/processor.h
+++ b/arch/powerpc/include/asm/processor.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_PPC_PROCESSOR_H
 #define __ASM_PPC_PROCESSOR_H
 
diff --git a/arch/powerpc/include/asm/ptrace.h b/arch/powerpc/include/asm/ptrace.h
index b4d599f43bbd..c7800576d53a 100644
--- a/arch/powerpc/include/asm/ptrace.h
+++ b/arch/powerpc/include/asm/ptrace.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _PPC_PTRACE_H
 #define _PPC_PTRACE_H
 
diff --git a/arch/powerpc/include/asm/sections.h b/arch/powerpc/include/asm/sections.h
index 2b8c5160388f..c6dd0eead244 100644
--- a/arch/powerpc/include/asm/sections.h
+++ b/arch/powerpc/include/asm/sections.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/sections.h>
diff --git a/arch/powerpc/include/asm/sigcontext.h b/arch/powerpc/include/asm/sigcontext.h
index 4bd66a707da9..78648b089c11 100644
--- a/arch/powerpc/include/asm/sigcontext.h
+++ b/arch/powerpc/include/asm/sigcontext.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_PPC_SIGCONTEXT_H
 #define _ASM_PPC_SIGCONTEXT_H
 
diff --git a/arch/powerpc/include/asm/signal.h b/arch/powerpc/include/asm/signal.h
index b11a28efd149..851fc7d41c8f 100644
--- a/arch/powerpc/include/asm/signal.h
+++ b/arch/powerpc/include/asm/signal.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASMPPC_SIGNAL_H
 #define _ASMPPC_SIGNAL_H
 
diff --git a/arch/powerpc/include/asm/status_led.h b/arch/powerpc/include/asm/status_led.h
index eb81f371c964..129aa6614ab6 100644
--- a/arch/powerpc/include/asm/status_led.h
+++ b/arch/powerpc/include/asm/status_led.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * asm/status_led.h
  *
diff --git a/arch/powerpc/include/asm/string.h b/arch/powerpc/include/asm/string.h
index 33d143f04eac..b06bb4cbff4a 100644
--- a/arch/powerpc/include/asm/string.h
+++ b/arch/powerpc/include/asm/string.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _PPC_STRING_H_
 #define _PPC_STRING_H_
 
diff --git a/arch/powerpc/include/asm/types.h b/arch/powerpc/include/asm/types.h
index f3d41905cafe..c2c501828b46 100644
--- a/arch/powerpc/include/asm/types.h
+++ b/arch/powerpc/include/asm/types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _PPC_TYPES_H
 #define _PPC_TYPES_H
 
diff --git a/arch/powerpc/include/asm/unaligned.h b/arch/powerpc/include/asm/unaligned.h
index a41fa8cb4a6b..a28cc24b12ea 100644
--- a/arch/powerpc/include/asm/unaligned.h
+++ b/arch/powerpc/include/asm/unaligned.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_PPC_UNALIGNED_H
 #define _ASM_PPC_UNALIGNED_H
 
diff --git a/arch/powerpc/mach-mpc5xxx/include/mach/clock.h b/arch/powerpc/mach-mpc5xxx/include/mach/clock.h
index b19686f18c6c..1813740eb151 100644
--- a/arch/powerpc/mach-mpc5xxx/include/mach/clock.h
+++ b/arch/powerpc/mach-mpc5xxx/include/mach/clock.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_CLOCKS_H
 #define __ASM_ARCH_CLOCKS_H
 
diff --git a/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h b/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h
index 6a25d79fb61a..02f561675a03 100644
--- a/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h
+++ b/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * (C) Copyright 2003
  * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
diff --git a/arch/powerpc/mach-mpc85xx/include/mach/clock.h b/arch/powerpc/mach-mpc85xx/include/mach/clock.h
index 0e68cf6667e5..bfd9cf4d8ecd 100644
--- a/arch/powerpc/mach-mpc85xx/include/mach/clock.h
+++ b/arch/powerpc/mach-mpc85xx/include/mach/clock.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_CLOCKS_H
 #define __ASM_ARCH_CLOCKS_H
 
diff --git a/arch/powerpc/mach-mpc85xx/include/mach/mpc85xx.h b/arch/powerpc/mach-mpc85xx/include/mach/mpc85xx.h
index 1d9993ace9a4..5491f0b08d64 100644
--- a/arch/powerpc/mach-mpc85xx/include/mach/mpc85xx.h
+++ b/arch/powerpc/mach-mpc85xx/include/mach/mpc85xx.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Copyright 2004, 2007 Freescale Semiconductor.
  * Copyright(c) 2003 Motorola Inc.
diff --git a/arch/riscv/include/asm/asm-offsets.h b/arch/riscv/include/asm/asm-offsets.h
index d370ee36a182..33db5a47e5c2 100644
--- a/arch/riscv/include/asm/asm-offsets.h
+++ b/arch/riscv/include/asm/asm-offsets.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <generated/asm-offsets.h>
diff --git a/arch/riscv/include/asm/bitsperlong.h b/arch/riscv/include/asm/bitsperlong.h
index 6dc0bb0c13b2..bf000a04ccde 100644
--- a/arch/riscv/include/asm/bitsperlong.h
+++ b/arch/riscv/include/asm/bitsperlong.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/bitsperlong.h>
diff --git a/arch/riscv/include/asm/byteorder.h b/arch/riscv/include/asm/byteorder.h
index 0be826927bd3..36dfd3752401 100644
--- a/arch/riscv/include/asm/byteorder.h
+++ b/arch/riscv/include/asm/byteorder.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_RISCV_BYTEORDER_H
 #define _ASM_RISCV_BYTEORDER_H
 
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index 795e670e3b9b..978f64434078 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_RISCV_IO_H
 #define __ASM_RISCV_IO_H
 
diff --git a/arch/riscv/include/asm/mmu.h b/arch/riscv/include/asm/mmu.h
index 95af87142027..1c2646ebb339 100644
--- a/arch/riscv/include/asm/mmu.h
+++ b/arch/riscv/include/asm/mmu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
diff --git a/arch/riscv/include/asm/posix_types.h b/arch/riscv/include/asm/posix_types.h
index 22cae6230ceb..feaed4247135 100644
--- a/arch/riscv/include/asm/posix_types.h
+++ b/arch/riscv/include/asm/posix_types.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/posix_types.h>
diff --git a/arch/riscv/include/asm/swab.h b/arch/riscv/include/asm/swab.h
index 60a90120b6e6..0ca746f0f144 100644
--- a/arch/riscv/include/asm/swab.h
+++ b/arch/riscv/include/asm/swab.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_SWAB_H
 #define _ASM_SWAB_H
 
diff --git a/arch/riscv/include/asm/types.h b/arch/riscv/include/asm/types.h
index 1ad5904f9178..add1c94fc7ae 100644
--- a/arch/riscv/include/asm/types.h
+++ b/arch/riscv/include/asm/types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_RISCV_TYPES_H
 #define __ASM_RISCV_TYPES_H
 
diff --git a/arch/riscv/include/asm/unaligned.h b/arch/riscv/include/asm/unaligned.h
index c37b71c21ee5..3bc29309894e 100644
--- a/arch/riscv/include/asm/unaligned.h
+++ b/arch/riscv/include/asm/unaligned.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_RISCV_UNALIGNED_H
 #define _ASM_RISCV_UNALIGNED_H
 
diff --git a/arch/sandbox/include/asm/bitsperlong.h b/arch/sandbox/include/asm/bitsperlong.h
index 6dc0bb0c13b2..bf000a04ccde 100644
--- a/arch/sandbox/include/asm/bitsperlong.h
+++ b/arch/sandbox/include/asm/bitsperlong.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/bitsperlong.h>
diff --git a/arch/sandbox/include/asm/byteorder.h b/arch/sandbox/include/asm/byteorder.h
index 3d82bcba6e1b..fdb421c7a53c 100644
--- a/arch/sandbox/include/asm/byteorder.h
+++ b/arch/sandbox/include/asm/byteorder.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _SANDBOX_BYTEORDER_H
 #define _SANDBOX_BYTEORDER_H
 
diff --git a/arch/sandbox/include/asm/common.h b/arch/sandbox/include/asm/common.h
index 9b8bd2d94c63..66ed2f5e9c52 100644
--- a/arch/sandbox/include/asm/common.h
+++ b/arch/sandbox/include/asm/common.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef ASM_COMMON_H
 #define ASM_COMMON_H
 
diff --git a/arch/sandbox/include/asm/elf.h b/arch/sandbox/include/asm/elf.h
index e71a60aeb93f..f08d5930c66d 100644
--- a/arch/sandbox/include/asm/elf.h
+++ b/arch/sandbox/include/asm/elf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_SANDBOX_ELF_H__
 #define __ASM_SANDBOX_ELF_H__
 
diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index 3e5c0580bc5a..71cf50cd9a03 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_SANDBOX_IO_H
 #define __ASM_SANDBOX_IO_H
 
diff --git a/arch/sandbox/include/asm/mmu.h b/arch/sandbox/include/asm/mmu.h
index 95af87142027..1c2646ebb339 100644
--- a/arch/sandbox/include/asm/mmu.h
+++ b/arch/sandbox/include/asm/mmu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
diff --git a/arch/sandbox/include/asm/posix_types.h b/arch/sandbox/include/asm/posix_types.h
index 22cae6230ceb..feaed4247135 100644
--- a/arch/sandbox/include/asm/posix_types.h
+++ b/arch/sandbox/include/asm/posix_types.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/posix_types.h>
diff --git a/arch/sandbox/include/asm/sections.h b/arch/sandbox/include/asm/sections.h
index 2b8c5160388f..c6dd0eead244 100644
--- a/arch/sandbox/include/asm/sections.h
+++ b/arch/sandbox/include/asm/sections.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/sections.h>
diff --git a/arch/sandbox/include/asm/string.h b/arch/sandbox/include/asm/string.h
index 2997587d820c..b3c27a412d69 100644
--- a/arch/sandbox/include/asm/string.h
+++ b/arch/sandbox/include/asm/string.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* dummy */
diff --git a/arch/sandbox/include/asm/swab.h b/arch/sandbox/include/asm/swab.h
index 60a90120b6e6..0ca746f0f144 100644
--- a/arch/sandbox/include/asm/swab.h
+++ b/arch/sandbox/include/asm/swab.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_SWAB_H
 #define _ASM_SWAB_H
 
diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
index 7b356a99eb66..e29dde377c1d 100644
--- a/arch/sandbox/include/asm/types.h
+++ b/arch/sandbox/include/asm/types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_SANDBOX_TYPES_H
 #define __ASM_SANDBOX_TYPES_H
 
diff --git a/arch/sandbox/include/asm/unaligned.h b/arch/sandbox/include/asm/unaligned.h
index d02da6e60d2e..7bca3ff8a4aa 100644
--- a/arch/sandbox/include/asm/unaligned.h
+++ b/arch/sandbox/include/asm/unaligned.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_SANDBOX_UNALIGNED_H
 #define _ASM_SANDBOX_UNALIGNED_H
 
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index 3ef34bcc1c22..b461d5ebc359 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_HOSTFILE_H
 #define __ASM_ARCH_HOSTFILE_H
 
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 453813952e55..1584d8065c7f 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_LINUX_H
 #define __ASM_ARCH_LINUX_H
 
diff --git a/arch/x86/include/asm/bitsperlong.h b/arch/x86/include/asm/bitsperlong.h
index 6dc0bb0c13b2..bf000a04ccde 100644
--- a/arch/x86/include/asm/bitsperlong.h
+++ b/arch/x86/include/asm/bitsperlong.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/bitsperlong.h>
diff --git a/arch/x86/include/asm/elf.h b/arch/x86/include/asm/elf.h
index ddde03518817..365e6cd02ba2 100644
--- a/arch/x86/include/asm/elf.h
+++ b/arch/x86/include/asm/elf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_SANDBOX_ELF_H__
 #define __ASM_SANDBOX_ELF_H__
 
diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index 0971727bc63d..c28f49a9de7f 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Mostly stolen from the linux kernel
  */
diff --git a/arch/x86/include/asm/linkage.h b/arch/x86/include/asm/linkage.h
index a8d1bdb7de1f..1d78d9169b6a 100644
--- a/arch/x86/include/asm/linkage.h
+++ b/arch/x86/include/asm/linkage.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_LINKAGE_H
 #define __ASM_LINKAGE_H
 
diff --git a/arch/x86/include/asm/mmu.h b/arch/x86/include/asm/mmu.h
index 95af87142027..1c2646ebb339 100644
--- a/arch/x86/include/asm/mmu.h
+++ b/arch/x86/include/asm/mmu.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
diff --git a/arch/x86/include/asm/posix_types.h b/arch/x86/include/asm/posix_types.h
index 22cae6230ceb..feaed4247135 100644
--- a/arch/x86/include/asm/posix_types.h
+++ b/arch/x86/include/asm/posix_types.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/posix_types.h>
diff --git a/arch/x86/include/asm/sections.h b/arch/x86/include/asm/sections.h
index 2b8c5160388f..c6dd0eead244 100644
--- a/arch/x86/include/asm/sections.h
+++ b/arch/x86/include/asm/sections.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <asm-generic/sections.h>
diff --git a/arch/x86/include/asm/swab.h b/arch/x86/include/asm/swab.h
index 557cd9f00661..e2319d9776f9 100644
--- a/arch/x86/include/asm/swab.h
+++ b/arch/x86/include/asm/swab.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_X86_SWAB_H
 #define _ASM_X86_SWAB_H
 
diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
index 17947b2ff3fd..52a6e51fd4b1 100644
--- a/arch/x86/include/asm/types.h
+++ b/arch/x86/include/asm/types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_I386_TYPES_H
 #define __ASM_I386_TYPES_H
 
diff --git a/arch/x86/include/asm/unaligned.h b/arch/x86/include/asm/unaligned.h
index 7e38706c5db9..a62dc88922af 100644
--- a/arch/x86/include/asm/unaligned.h
+++ b/arch/x86/include/asm/unaligned.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_X86_UNALIGNED_H
 #define _ASM_X86_UNALIGNED_H
 
diff --git a/arch/x86/mach-efi/include/mach/debug_ll.h b/arch/x86/mach-efi/include/mach/debug_ll.h
index e144d86e0008..f7ac98635acd 100644
--- a/arch/x86/mach-efi/include/mach/debug_ll.h
+++ b/arch/x86/mach-efi/include/mach/debug_ll.h
@@ -1 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <efi/debug_ll.h>
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

