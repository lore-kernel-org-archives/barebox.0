Delivery-date: Mon, 03 Jan 2022 13:08:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8k-009oBr-39
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:08:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8U-0005of-JK
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:08:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfNtAUMM1qs+TPJ8FcBDlfcDcy6NM9b32RWlib2ZsF4=; b=yUe4770/ZUApJC
	g1gEusWuwKI8FnbPUxY/wsXmz0f+zBLp4SJngdpByMumbSwB5q7C2+mdmjV6t5gLWXk8kYFjv/coZ
	BZnJCC9xR7xtWGdkjaiXuqduD7iQr79EMEAErBrVRX6aeYxbKj6ttvejQlmpk8YO1DuE5fgl5vKfG
	V6EblyCvor2cVZyoIJl40I1MkC4CTmyt7ADpw2DVS5iGE7K4ZE08xuEk3l+v6WNl7e15adFDYTkG4
	YQ0NhNmIvm3DMn9MoVHNDfaDeDIgNQmZJHjz129g2yvF6Lek7ZV4LBx/CEUZ1+m1Pfn14RZKZy1om
	dwpdMCSvqXYuusy8mMSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M6I-008y29-Hj; Mon, 03 Jan 2022 12:06:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M5v-008xtr-R7
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-00052O-QB; Mon, 03 Jan 2022 13:05:41 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GW3-30; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:30 +0100
Message-Id: <20220103120539.1730644-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/11] treewide: add SPDX-License-Identifier for Kbuild/Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To verify only Kconfig/Makefile is touched:

  git show --numstat --format=oneline HEAD | grep -v 'Kconfig\|Makefile'

will print only arch/powerpc/Kbuild.
To verify nothing unexpected is added:

  git show -U0 | grep '^-[^-]\|^+[^+]' | sort -u

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Kconfig                                            | 2 ++
 arch/arm/Kconfig                                   | 2 ++
 arch/arm/Makefile                                  | 2 ++
 arch/arm/boards/Makefile                           | 2 ++
 arch/arm/boards/a9m2410/Makefile                   | 1 +
 arch/arm/boards/a9m2440/Makefile                   | 1 +
 arch/arm/boards/ac-sxb/Makefile                    | 2 ++
 arch/arm/boards/advantech-mx6/Makefile             | 2 ++
 arch/arm/boards/afi-gf/Makefile                    | 2 ++
 arch/arm/boards/altera-socdk/Makefile              | 2 ++
 arch/arm/boards/animeo_ip/Makefile                 | 2 ++
 arch/arm/boards/archosg9/Makefile                  | 2 ++
 arch/arm/boards/at91rm9200ek/Makefile              | 2 ++
 arch/arm/boards/at91sam9260ek/Makefile             | 2 ++
 arch/arm/boards/at91sam9261ek/Makefile             | 2 ++
 arch/arm/boards/at91sam9263ek/Makefile             | 2 ++
 arch/arm/boards/at91sam9m10g45ek/Makefile          | 2 ++
 arch/arm/boards/at91sam9m10ihd/Makefile            | 2 ++
 arch/arm/boards/at91sam9n12ek/Makefile             | 2 ++
 arch/arm/boards/at91sam9x5ek/Makefile              | 2 ++
 arch/arm/boards/avnet-zedboard/Makefile            | 2 ++
 arch/arm/boards/beagle/Makefile                    | 2 ++
 arch/arm/boards/beaglebone/Makefile                | 2 ++
 arch/arm/boards/boundarydevices-nitrogen6/Makefile | 2 ++
 arch/arm/boards/canon-a1100/Makefile               | 2 ++
 arch/arm/boards/ccxmx51/Makefile                   | 2 ++
 arch/arm/boards/ccxmx53/Makefile                   | 2 ++
 arch/arm/boards/chumby_falconwing/Makefile         | 2 ++
 arch/arm/boards/clep7212/Makefile                  | 2 ++
 arch/arm/boards/cm-fx6/Makefile                    | 2 ++
 arch/arm/boards/crystalfontz-cfa10036/Makefile     | 2 ++
 arch/arm/boards/datamodul-edm-qmx6/Makefile        | 2 ++
 arch/arm/boards/dfi-fs700-m60/Makefile             | 2 ++
 arch/arm/boards/digi-ccimx6ulsom/Makefile          | 2 ++
 arch/arm/boards/dss11/Makefile                     | 2 ++
 arch/arm/boards/duckbill/Makefile                  | 2 ++
 arch/arm/boards/ebv-socrates/Makefile              | 2 ++
 arch/arm/boards/edb93xx/Makefile                   | 1 +
 arch/arm/boards/efika-mx-smartbook/Makefile        | 2 ++
 arch/arm/boards/element14-warp7/Makefile           | 2 ++
 arch/arm/boards/eltec-hipercam/Makefile            | 2 ++
 arch/arm/boards/embedsky-e9/Makefile               | 2 ++
 arch/arm/boards/embest-marsboard/Makefile          | 2 ++
 arch/arm/boards/embest-riotboard/Makefile          | 2 ++
 arch/arm/boards/eukrea_cpuimx27/Makefile           | 1 +
 arch/arm/boards/eukrea_cpuimx51/Makefile           | 2 ++
 arch/arm/boards/freescale-mx21-ads/Makefile        | 2 ++
 arch/arm/boards/freescale-mx23-evk/Makefile        | 3 ++-
 arch/arm/boards/freescale-mx27-ads/Makefile        | 1 +
 arch/arm/boards/freescale-mx28-evk/Makefile        | 2 ++
 arch/arm/boards/freescale-mx35-3ds/Makefile        | 2 ++
 arch/arm/boards/freescale-mx51-babbage/Makefile    | 2 ++
 arch/arm/boards/freescale-mx53-qsb/Makefile        | 2 ++
 arch/arm/boards/freescale-mx53-smd/Makefile        | 2 ++
 arch/arm/boards/freescale-mx53-vmx53/Makefile      | 2 ++
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   | 2 ++
 arch/arm/boards/freescale-mx6-sabresd/Makefile     | 2 ++
 arch/arm/boards/freescale-mx6sx-sabresdb/Makefile  | 2 ++
 arch/arm/boards/freescale-mx7-sabresd/Makefile     | 2 ++
 arch/arm/boards/freescale-vf610-twr/Makefile       | 2 ++
 arch/arm/boards/friendlyarm-mini2440/Kconfig       | 1 +
 arch/arm/boards/friendlyarm-mini2440/Makefile      | 2 ++
 arch/arm/boards/friendlyarm-mini6410/Makefile      | 2 ++
 arch/arm/boards/friendlyarm-tiny210/Makefile       | 2 ++
 arch/arm/boards/friendlyarm-tiny6410/Kconfig       | 2 ++
 arch/arm/boards/friendlyarm-tiny6410/Makefile      | 2 ++
 arch/arm/boards/gateworks-ventana/Makefile         | 2 ++
 arch/arm/boards/gk802/Makefile                     | 2 ++
 arch/arm/boards/globalscale-guruplug/Makefile      | 2 ++
 arch/arm/boards/globalscale-mirabox/Makefile       | 2 ++
 arch/arm/boards/grinn-liteboard/Makefile           | 2 ++
 arch/arm/boards/guf-neso/Makefile                  | 2 ++
 arch/arm/boards/guf-santaro/Makefile               | 2 ++
 arch/arm/boards/guf-vincell/Makefile               | 2 ++
 arch/arm/boards/haba-knx/Makefile                  | 2 ++
 arch/arm/boards/imx233-olinuxino/Makefile          | 2 ++
 arch/arm/boards/kamstrup-mx7-concentrator/Makefile | 4 +++-
 arch/arm/boards/karo-tx28/Makefile                 | 2 ++
 arch/arm/boards/karo-tx53/Makefile                 | 2 ++
 arch/arm/boards/karo-tx6x/Makefile                 | 2 ++
 arch/arm/boards/kindle-mx50/Makefile               | 2 ++
 arch/arm/boards/kindle3/Makefile                   | 2 ++
 arch/arm/boards/kontron-samx6i/Makefile            | 2 ++
 arch/arm/boards/lenovo-ix4-300d/Makefile           | 2 ++
 arch/arm/boards/ls1046ardb/Makefile                | 2 ++
 arch/arm/boards/lubbock/Makefile                   | 2 ++
 arch/arm/boards/lxa-mc1/Makefile                   | 2 ++
 arch/arm/boards/mainstone/Makefile                 | 2 ++
 arch/arm/boards/marvell-armada-xp-db/Makefile      | 2 ++
 arch/arm/boards/marvell-armada-xp-gp/Makefile      | 2 ++
 arch/arm/boards/microchip-ksz9477-evb/Makefile     | 2 ++
 arch/arm/boards/mioa701/Makefile                   | 2 ++
 arch/arm/boards/mnt-reform/Makefile                | 4 +++-
 arch/arm/boards/module-mb7707/Makefile             | 2 ++
 arch/arm/boards/netgear-rn104/Makefile             | 2 ++
 arch/arm/boards/netgear-rn2120/Makefile            | 2 ++
 arch/arm/boards/nhk8815/Makefile                   | 2 ++
 arch/arm/boards/nvidia-beaver/Makefile             | 2 ++
 arch/arm/boards/nvidia-jetson-tk1/Makefile         | 2 ++
 arch/arm/boards/nxp-imx6ull-evk/Makefile           | 2 ++
 arch/arm/boards/nxp-imx8mm-evk/Makefile            | 2 ++
 arch/arm/boards/nxp-imx8mn-evk/Makefile            | 2 ++
 arch/arm/boards/nxp-imx8mp-evk/Makefile            | 2 ++
 arch/arm/boards/nxp-imx8mq-evk/Makefile            | 2 ++
 arch/arm/boards/omap343xdsp/Makefile               | 2 ++
 arch/arm/boards/omap3evm/Makefile                  | 2 ++
 arch/arm/boards/panda/Makefile                     | 2 ++
 arch/arm/boards/phytec-phycard-imx27/Makefile      | 1 +
 arch/arm/boards/phytec-phycore-imx27/Makefile      | 2 ++
 arch/arm/boards/phytec-phycore-imx7/Makefile       | 2 ++
 arch/arm/boards/phytec-phycore-omap4460/Makefile   | 2 ++
 arch/arm/boards/phytec-phycore-pxa270/Makefile     | 2 ++
 arch/arm/boards/phytec-som-am335x/Kconfig          | 1 +
 arch/arm/boards/phytec-som-am335x/Makefile         | 2 ++
 arch/arm/boards/phytec-som-imx6/Makefile           | 2 ++
 arch/arm/boards/phytec-som-imx8mq/Makefile         | 2 ++
 arch/arm/boards/phytec-som-rk3288/Makefile         | 2 ++
 arch/arm/boards/plathome-openblocks-a6/Makefile    | 2 ++
 arch/arm/boards/plathome-openblocks-ax3/Makefile   | 2 ++
 arch/arm/boards/pm9261/Makefile                    | 2 ++
 arch/arm/boards/pm9263/Makefile                    | 2 ++
 arch/arm/boards/pm9g45/Makefile                    | 2 ++
 arch/arm/boards/protonic-imx6/Makefile             | 2 ++
 arch/arm/boards/protonic-imx8m/Makefile            | 2 ++
 arch/arm/boards/protonic-stm32mp1/Makefile         | 2 ++
 arch/arm/boards/qemu-virt/Makefile                 | 2 ++
 arch/arm/boards/qil-a926x/Makefile                 | 2 ++
 arch/arm/boards/radxa-rock/Makefile                | 2 ++
 arch/arm/boards/raspberry-pi/Makefile              | 2 ++
 arch/arm/boards/reflex-achilles/Makefile           | 2 ++
 arch/arm/boards/rockchip-rk3568-evb/Makefile       | 2 ++
 arch/arm/boards/sama5d27-giantboard/Makefile       | 2 ++
 arch/arm/boards/sama5d27-som1/Makefile             | 2 ++
 arch/arm/boards/sama5d3_xplained/Makefile          | 2 ++
 arch/arm/boards/sama5d3xek/Makefile                | 2 ++
 arch/arm/boards/sama5d4_xplained/Makefile          | 2 ++
 arch/arm/boards/sama5d4ek/Makefile                 | 2 ++
 arch/arm/boards/scb9328/Makefile                   | 1 +
 arch/arm/boards/seeed-odyssey/Makefile             | 2 ++
 arch/arm/boards/skov-arm9cpu/Makefile              | 2 ++
 arch/arm/boards/skov-imx6/Makefile                 | 2 ++
 arch/arm/boards/solidrun-cubox/Makefile            | 2 ++
 arch/arm/boards/solidrun-microsom/Makefile         | 2 ++
 arch/arm/boards/stm32mp15x-ev1/Makefile            | 2 ++
 arch/arm/boards/stm32mp15xx-dkx/Makefile           | 2 ++
 arch/arm/boards/technexion-pico-hobbit/Makefile    | 2 ++
 arch/arm/boards/technexion-wandboard/Makefile      | 2 ++
 arch/arm/boards/telit-evk-pro3/Makefile            | 2 ++
 arch/arm/boards/terasic-de0-nano-soc/Makefile      | 2 ++
 arch/arm/boards/terasic-de10-nano/Makefile         | 2 ++
 arch/arm/boards/terasic-sockit/Makefile            | 2 ++
 arch/arm/boards/tny-a926x/Makefile                 | 2 ++
 arch/arm/boards/toradex-colibri-t20/Makefile       | 2 ++
 arch/arm/boards/toshiba-ac100/Makefile             | 2 ++
 arch/arm/boards/tqma53/Makefile                    | 2 ++
 arch/arm/boards/tqma6x/Makefile                    | 2 ++
 arch/arm/boards/tqmls1046a/Makefile                | 2 ++
 arch/arm/boards/turris-omnia/Makefile              | 2 ++
 arch/arm/boards/udoo-neo/Makefile                  | 2 ++
 arch/arm/boards/udoo/Makefile                      | 2 ++
 arch/arm/boards/usb-a926x/Makefile                 | 2 ++
 arch/arm/boards/usi-topkick/Makefile               | 2 ++
 arch/arm/boards/variscite-mx6/Makefile             | 2 ++
 arch/arm/boards/versatile/Kconfig                  | 1 +
 arch/arm/boards/versatile/Makefile                 | 2 ++
 arch/arm/boards/vexpress/Makefile                  | 2 ++
 arch/arm/boards/virt2real/Makefile                 | 2 ++
 arch/arm/boards/vscom-baltos/Makefile              | 2 ++
 arch/arm/boards/wago-pfc-am35xx/Makefile           | 2 ++
 arch/arm/boards/webasto-ccbv2/Makefile             | 2 ++
 arch/arm/boards/zii-common/Makefile                | 2 ++
 arch/arm/boards/zii-imx51-rdu1/Makefile            | 2 ++
 arch/arm/boards/zii-imx6q-rdu2/Makefile            | 2 ++
 arch/arm/boards/zii-imx7d-dev/Makefile             | 2 ++
 arch/arm/boards/zii-imx8mq-dev/Makefile            | 2 ++
 arch/arm/boards/zii-vf610-dev/Makefile             | 2 ++
 arch/arm/boards/zylonite/Makefile                  | 2 ++
 arch/arm/cpu/Kconfig                               | 2 ++
 arch/arm/cpu/Makefile                              | 2 ++
 arch/arm/crypto/Makefile                           | 1 +
 arch/arm/dts/Makefile                              | 2 ++
 arch/arm/lib/Makefile                              | 2 ++
 arch/arm/lib32/Makefile                            | 2 ++
 arch/arm/lib64/Makefile                            | 2 ++
 arch/arm/mach-at91/Kconfig                         | 2 ++
 arch/arm/mach-at91/Makefile                        | 2 ++
 arch/arm/mach-bcm283x/Kconfig                      | 2 ++
 arch/arm/mach-bcm283x/Makefile                     | 2 ++
 arch/arm/mach-clps711x/Kconfig                     | 2 ++
 arch/arm/mach-clps711x/Makefile                    | 2 ++
 arch/arm/mach-davinci/Kconfig                      | 2 ++
 arch/arm/mach-davinci/Makefile                     | 2 ++
 arch/arm/mach-digic/Kconfig                        | 2 ++
 arch/arm/mach-digic/Makefile                       | 2 ++
 arch/arm/mach-ep93xx/Kconfig                       | 2 ++
 arch/arm/mach-ep93xx/Makefile                      | 2 ++
 arch/arm/mach-imx/Kconfig                          | 2 ++
 arch/arm/mach-imx/Makefile                         | 2 ++
 arch/arm/mach-layerscape/Kconfig                   | 2 ++
 arch/arm/mach-layerscape/Makefile                  | 2 ++
 arch/arm/mach-mvebu/Kconfig                        | 2 ++
 arch/arm/mach-mvebu/Makefile                       | 2 ++
 arch/arm/mach-mxs/Kconfig                          | 2 ++
 arch/arm/mach-mxs/Makefile                         | 2 ++
 arch/arm/mach-nomadik/Kconfig                      | 2 ++
 arch/arm/mach-nomadik/Makefile                     | 1 +
 arch/arm/mach-pxa/Kconfig                          | 2 ++
 arch/arm/mach-pxa/Makefile                         | 2 ++
 arch/arm/mach-rockchip/Kconfig                     | 2 ++
 arch/arm/mach-rockchip/Makefile                    | 2 ++
 arch/arm/mach-samsung/Kconfig                      | 2 ++
 arch/arm/mach-samsung/Makefile                     | 2 ++
 arch/arm/mach-socfpga/Kconfig                      | 2 ++
 arch/arm/mach-socfpga/Makefile                     | 2 ++
 arch/arm/mach-stm32mp/Kconfig                      | 2 ++
 arch/arm/mach-stm32mp/Makefile                     | 2 ++
 arch/arm/mach-tegra/Kconfig                        | 2 ++
 arch/arm/mach-tegra/Makefile                       | 2 ++
 arch/arm/mach-uemd/Kconfig                         | 2 ++
 arch/arm/mach-uemd/Makefile                        | 2 ++
 arch/arm/mach-versatile/Kconfig                    | 1 +
 arch/arm/mach-versatile/Makefile                   | 1 +
 arch/arm/mach-vexpress/Kconfig                     | 2 ++
 arch/arm/mach-vexpress/Makefile                    | 2 ++
 arch/arm/mach-zynq/Kconfig                         | 2 ++
 arch/arm/mach-zynq/Makefile                        | 2 ++
 arch/arm/tools/Makefile                            | 2 ++
 arch/kvx/Kconfig                                   | 2 ++
 arch/kvx/Makefile                                  | 2 ++
 arch/kvx/dts/Makefile                              | 2 ++
 arch/mips/Kconfig                                  | 5 ++---
 arch/mips/Makefile                                 | 2 ++
 arch/mips/boards/8devices-lima/Makefile            | 2 ++
 arch/mips/boards/Makefile                          | 2 ++
 arch/mips/boards/black-swift/Makefile              | 2 ++
 arch/mips/boards/dlink-dir-320/Makefile            | 2 ++
 arch/mips/boards/dptechnics-dpt-module/Makefile    | 2 ++
 arch/mips/boards/img-ci20/Makefile                 | 2 ++
 arch/mips/boards/loongson-ls1b/Makefile            | 2 ++
 arch/mips/boards/netgear-wg102/Makefile            | 2 ++
 arch/mips/boards/okud-max9331/Makefile             | 2 ++
 arch/mips/boards/openembed-som9331/Makefile        | 2 ++
 arch/mips/boards/qemu-malta/Makefile               | 2 ++
 arch/mips/boards/ritmix-rzx50/Makefile             | 2 ++
 arch/mips/boards/tplink-mr3020/Makefile            | 2 ++
 arch/mips/boards/tplink-wdr4300/Makefile           | 2 ++
 arch/mips/boot/Makefile                            | 2 ++
 arch/mips/dts/Makefile                             | 2 ++
 arch/mips/lib/Makefile                             | 2 ++
 arch/mips/mach-ar231x/Kconfig                      | 2 ++
 arch/mips/mach-ar231x/Makefile                     | 2 ++
 arch/mips/mach-ath79/Kconfig                       | 2 ++
 arch/mips/mach-ath79/Makefile                      | 2 ++
 arch/mips/mach-bcm47xx/Kconfig                     | 2 ++
 arch/mips/mach-bcm47xx/Makefile                    | 2 ++
 arch/mips/mach-loongson/Kconfig                    | 2 ++
 arch/mips/mach-loongson/Makefile                   | 2 ++
 arch/mips/mach-malta/Kconfig                       | 2 ++
 arch/mips/mach-malta/Makefile                      | 2 ++
 arch/mips/mach-xburst/Kconfig                      | 2 ++
 arch/mips/mach-xburst/Makefile                     | 2 ++
 arch/mips/pbl/Makefile                             | 1 +
 arch/openrisc/Kconfig                              | 2 ++
 arch/openrisc/Makefile                             | 2 ++
 arch/openrisc/boards/generic/Makefile              | 2 ++
 arch/openrisc/cpu/Makefile                         | 2 ++
 arch/openrisc/dts/Makefile                         | 1 +
 arch/openrisc/lib/Makefile                         | 2 ++
 arch/powerpc/Kbuild                                | 2 ++
 arch/powerpc/Kconfig                               | 2 ++
 arch/powerpc/Makefile                              | 2 ++
 arch/powerpc/boards/freescale-p1010rdb/Makefile    | 2 ++
 arch/powerpc/boards/freescale-p1022ds/Makefile     | 2 ++
 arch/powerpc/boards/freescale-p2020rdb/Makefile    | 2 ++
 arch/powerpc/boards/owc-da923rc/Makefile           | 2 ++
 arch/powerpc/boards/pcm030/Makefile                | 2 ++
 arch/powerpc/cpu-85xx/Makefile                     | 2 ++
 arch/powerpc/ddr-8xxx/Makefile                     | 2 ++
 arch/powerpc/lib/Makefile                          | 2 ++
 arch/powerpc/mach-mpc5xxx/Kconfig                  | 2 ++
 arch/powerpc/mach-mpc5xxx/Makefile                 | 2 ++
 arch/powerpc/mach-mpc85xx/Kconfig                  | 2 ++
 arch/powerpc/mach-mpc85xx/Makefile                 | 2 ++
 arch/riscv/Kconfig                                 | 2 ++
 arch/riscv/Kconfig.socs                            | 2 ++
 arch/riscv/Makefile                                | 2 ++
 arch/riscv/boards/riscvemu/Makefile                | 2 ++
 arch/sandbox/Kconfig                               | 2 ++
 arch/sandbox/Makefile                              | 2 ++
 arch/sandbox/board/Makefile                        | 2 ++
 arch/sandbox/dts/Makefile                          | 2 ++
 arch/sandbox/lib/Makefile                          | 2 ++
 arch/sandbox/os/Makefile                           | 2 ++
 arch/x86/Kconfig                                   | 5 ++---
 arch/x86/Makefile                                  | 2 ++
 arch/x86/lib/Makefile                              | 2 ++
 arch/x86/mach-efi/Makefile                         | 2 ++
 common/Kconfig                                     | 2 ++
 common/Makefile                                    | 2 ++
 common/partitions/Kconfig                          | 2 ++
 common/partitions/Makefile                         | 2 ++
 common/ratp/Kconfig                                | 3 ++-
 common/ratp/Makefile                               | 2 ++
 common/state/Makefile                              | 2 ++
 crypto/Kconfig                                     | 2 ++
 crypto/Makefile                                    | 2 ++
 defaultenv/Makefile                                | 2 ++
 firmware/Kconfig                                   | 2 ++
 fs/Kconfig                                         | 1 +
 fs/Makefile                                        | 2 ++
 fs/cramfs/Makefile                                 | 2 ++
 fs/ext4/Kconfig                                    | 2 ++
 fs/ext4/Makefile                                   | 2 ++
 fs/fat/Kconfig                                     | 2 ++
 fs/fat/Makefile                                    | 2 ++
 fs/jffs2/Kconfig                                   | 2 ++
 fs/jffs2/Makefile                                  | 2 ++
 fs/pstore/Kconfig                                  | 2 ++
 fs/pstore/Makefile                                 | 2 ++
 fs/squashfs/Kconfig                                | 2 ++
 fs/squashfs/Makefile                               | 2 ++
 fs/ubifs/Kconfig                                   | 2 ++
 fs/ubifs/Makefile                                  | 2 ++
 images/Makefile                                    | 1 +
 lib/Kconfig                                        | 2 ++
 lib/Makefile                                       | 2 ++
 lib/bootstrap/Kconfig                              | 2 ++
 lib/bootstrap/Makefile                             | 2 ++
 lib/fonts/Kconfig                                  | 2 ++
 lib/fonts/Makefile                                 | 2 ++
 lib/gui/Kconfig                                    | 2 ++
 lib/gui/Makefile                                   | 2 ++
 lib/kasan/Kconfig                                  | 2 ++
 lib/kasan/Makefile                                 | 1 +
 lib/logo/Kconfig                                   | 2 ++
 lib/logo/Makefile                                  | 1 +
 lib/lz4/Makefile                                   | 2 ++
 lib/lzo/Kconfig                                    | 2 ++
 lib/lzo/Makefile                                   | 2 ++
 lib/math/Makefile                                  | 2 ++
 lib/reed_solomon/Makefile                          | 2 ++
 lib/xz/Makefile                                    | 2 ++
 lib/zlib_inflate/Makefile                          | 2 ++
 lib/zstd/Makefile                                  | 2 ++
 net/Kconfig                                        | 2 ++
 net/Makefile                                       | 2 ++
 pbl/Kconfig                                        | 2 ++
 pbl/Makefile                                       | 2 ++
 scripts/Kconfig                                    | 2 ++
 scripts/Makefile                                   | 2 ++
 scripts/imx/Kconfig                                | 2 ++
 scripts/imx/Makefile                               | 2 ++
 scripts/mod/Makefile                               | 2 ++
 scripts/tegra/Makefile                             | 2 ++
 test/Kconfig                                       | 2 ++
 test/Makefile                                      | 2 ++
 356 files changed, 694 insertions(+), 10 deletions(-)

diff --git a/Kconfig b/Kconfig
index 7c4cf36881b4..7e9b892129da 100644
--- a/Kconfig
+++ b/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #
 # For a description of the syntax of this configuration file,
 # see Documentation/kbuild/kconfig-language.txt.
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b532d3fe2fc2..fecbe392333b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config ARM
 	bool
 	select HAS_KALLSYMS
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f4b0e8d6b68f..610ded8a125e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 KBUILD_DEFCONFIG := qemu_virt64_defconfig
 
 KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 50b07462bb78..6fe1b5991455 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 # keep sorted by CONFIG_* macro name.
 obj-$(CONFIG_MACH_ADVANTECH_ROM_742X)		+= advantech-mx6/
 obj-$(CONFIG_MACH_AFI_GF)			+= afi-gf/
diff --git a/arch/arm/boards/a9m2410/Makefile b/arch/arm/boards/a9m2410/Makefile
index 4bf737c1fc9b..6c53eafae249 100644
--- a/arch/arm/boards/a9m2410/Makefile
+++ b/arch/arm/boards/a9m2410/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 lwl-y += lowlevel_init.o
 obj-y += a9m2410.o
diff --git a/arch/arm/boards/a9m2440/Makefile b/arch/arm/boards/a9m2440/Makefile
index f21d389c140d..e32c0aca640e 100644
--- a/arch/arm/boards/a9m2440/Makefile
+++ b/arch/arm/boards/a9m2440/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 lwl-y += lowlevel_init.o
 obj-y += a9m2440.o
diff --git a/arch/arm/boards/ac-sxb/Makefile b/arch/arm/boards/ac-sxb/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/ac-sxb/Makefile
+++ b/arch/arm/boards/ac-sxb/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/advantech-mx6/Makefile b/arch/arm/boards/advantech-mx6/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/advantech-mx6/Makefile
+++ b/arch/arm/boards/advantech-mx6/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/afi-gf/Makefile b/arch/arm/boards/afi-gf/Makefile
index 399a4b8cc00d..8d1041650e9b 100644
--- a/arch/arm/boards/afi-gf/Makefile
+++ b/arch/arm/boards/afi-gf/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
 bbenv-y += defaultenv-gf
diff --git a/arch/arm/boards/altera-socdk/Makefile b/arch/arm/boards/altera-socdk/Makefile
index 8c927fe291a6..ea898309d720 100644
--- a/arch/arm/boards/altera-socdk/Makefile
+++ b/arch/arm/boards/altera-socdk/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += lowlevel.o board.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/boards/animeo_ip/Makefile b/arch/arm/boards/animeo_ip/Makefile
index 61c714b45d2e..149c41024a12 100644
--- a/arch/arm/boards/animeo_ip/Makefile
+++ b/arch/arm/boards/animeo_ip/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/archosg9/Makefile b/arch/arm/boards/archosg9/Makefile
index a78956f4e4d0..790ff623f591 100644
--- a/arch/arm/boards/archosg9/Makefile
+++ b/arch/arm/boards/archosg9/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 obj-$(CONFIG_ARM_BOARD_APPEND_ATAG) += archos_features.o
 lwl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/at91rm9200ek/Makefile b/arch/arm/boards/at91rm9200ek/Makefile
index a07c06a6d909..da5c1038b25c 100644
--- a/arch/arm/boards/at91rm9200ek/Makefile
+++ b/arch/arm/boards/at91rm9200ek/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9260ek/Makefile b/arch/arm/boards/at91sam9260ek/Makefile
index 9cc933a28793..7aa83a77366a 100644
--- a/arch/arm/boards/at91sam9260ek/Makefile
+++ b/arch/arm/boards/at91sam9260ek/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
index e7a9cde419fa..91e0037d6d4b 100644
--- a/arch/arm/boards/at91sam9261ek/Makefile
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index d4d5e76395be..7f4c1bfac3e3 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 ifeq ($(CONFIG_OFDEVICE),)
 obj-y += init.o
 endif
diff --git a/arch/arm/boards/at91sam9m10g45ek/Makefile b/arch/arm/boards/at91sam9m10g45ek/Makefile
index da011f825b6d..291716cbf062 100644
--- a/arch/arm/boards/at91sam9m10g45ek/Makefile
+++ b/arch/arm/boards/at91sam9m10g45ek/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9m10ihd/Makefile b/arch/arm/boards/at91sam9m10ihd/Makefile
index 06193007ad38..8bf9a102fe36 100644
--- a/arch/arm/boards/at91sam9m10ihd/Makefile
+++ b/arch/arm/boards/at91sam9m10ihd/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 obj-y += hw_version.o
 
diff --git a/arch/arm/boards/at91sam9n12ek/Makefile b/arch/arm/boards/at91sam9n12ek/Makefile
index 458b05591814..6ba8b4e38f99 100644
--- a/arch/arm/boards/at91sam9n12ek/Makefile
+++ b/arch/arm/boards/at91sam9n12ek/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9x5ek/Makefile b/arch/arm/boards/at91sam9x5ek/Makefile
index 4939b7e17e16..c6c1ad967058 100644
--- a/arch/arm/boards/at91sam9x5ek/Makefile
+++ b/arch/arm/boards/at91sam9x5ek/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 obj-y += hw_version.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9x5ek
diff --git a/arch/arm/boards/avnet-zedboard/Makefile b/arch/arm/boards/avnet-zedboard/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/avnet-zedboard/Makefile
+++ b/arch/arm/boards/avnet-zedboard/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/beagle/Makefile b/arch/arm/boards/beagle/Makefile
index 3bee9a22ab4a..e273f4a3dace 100644
--- a/arch/arm/boards/beagle/Makefile
+++ b/arch/arm/boards/beagle/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-beagle
diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beaglebone/Makefile
index 21a1a29d0b48..108e481be3b0 100644
--- a/arch/arm/boards/beaglebone/Makefile
+++ b/arch/arm/boards/beaglebone/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
 bbenv-y += defaultenv-beaglebone
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/Makefile b/arch/arm/boards/boundarydevices-nitrogen6/Makefile
index 0ec04ce8986e..b365c8eab067 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/Makefile
+++ b/arch/arm/boards/boundarydevices-nitrogen6/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/canon-a1100/Makefile b/arch/arm/boards/canon-a1100/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/canon-a1100/Makefile
+++ b/arch/arm/boards/canon-a1100/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ccxmx51/Makefile b/arch/arm/boards/ccxmx51/Makefile
index 50cf929c5d49..9fbde144a5f7 100644
--- a/arch/arm/boards/ccxmx51/Makefile
+++ b/arch/arm/boards/ccxmx51/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y					+= ccxmx51.o
 lwl-y					+= lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT)	+= defaultenv-ccxmx51
diff --git a/arch/arm/boards/ccxmx53/Makefile b/arch/arm/boards/ccxmx53/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/ccxmx53/Makefile
+++ b/arch/arm/boards/ccxmx53/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/chumby_falconwing/Makefile b/arch/arm/boards/chumby_falconwing/Makefile
index cf92c6a9eafe..6aaff6cdf72d 100644
--- a/arch/arm/boards/chumby_falconwing/Makefile
+++ b/arch/arm/boards/chumby_falconwing/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y = falconwing.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
index a5001df9b5d5..096120e56772 100644
--- a/arch/arm/boards/clep7212/Makefile
+++ b/arch/arm/boards/clep7212/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += clep7212.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-clep7212
diff --git a/arch/arm/boards/cm-fx6/Makefile b/arch/arm/boards/cm-fx6/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/cm-fx6/Makefile
+++ b/arch/arm/boards/cm-fx6/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/crystalfontz-cfa10036/Makefile b/arch/arm/boards/crystalfontz-cfa10036/Makefile
index 5b764a698106..3cd1cecaa722 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/Makefile
+++ b/arch/arm/boards/crystalfontz-cfa10036/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += cfa10036.o hwdetect.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/datamodul-edm-qmx6/Makefile b/arch/arm/boards/datamodul-edm-qmx6/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/Makefile
+++ b/arch/arm/boards/datamodul-edm-qmx6/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/dfi-fs700-m60/Makefile b/arch/arm/boards/dfi-fs700-m60/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/dfi-fs700-m60/Makefile
+++ b/arch/arm/boards/dfi-fs700-m60/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/digi-ccimx6ulsom/Makefile b/arch/arm/boards/digi-ccimx6ulsom/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/Makefile
+++ b/arch/arm/boards/digi-ccimx6ulsom/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/dss11/Makefile b/arch/arm/boards/dss11/Makefile
index e11fd5b6924e..d59545033d21 100644
--- a/arch/arm/boards/dss11/Makefile
+++ b/arch/arm/boards/dss11/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/duckbill/Makefile b/arch/arm/boards/duckbill/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/duckbill/Makefile
+++ b/arch/arm/boards/duckbill/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ebv-socrates/Makefile b/arch/arm/boards/ebv-socrates/Makefile
index 8c927fe291a6..ea898309d720 100644
--- a/arch/arm/boards/ebv-socrates/Makefile
+++ b/arch/arm/boards/ebv-socrates/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += lowlevel.o board.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/boards/edb93xx/Makefile b/arch/arm/boards/edb93xx/Makefile
index eec5ed265801..be969bde201b 100644
--- a/arch/arm/boards/edb93xx/Makefile
+++ b/arch/arm/boards/edb93xx/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += edb93xx.o
 lwl-y += flash_cfg.o pll_cfg.o sdram_cfg.o
diff --git a/arch/arm/boards/efika-mx-smartbook/Makefile b/arch/arm/boards/efika-mx-smartbook/Makefile
index 73d7b9696cf4..497da461efba 100644
--- a/arch/arm/boards/efika-mx-smartbook/Makefile
+++ b/arch/arm/boards/efika-mx-smartbook/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-efikasb
diff --git a/arch/arm/boards/element14-warp7/Makefile b/arch/arm/boards/element14-warp7/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/element14-warp7/Makefile
+++ b/arch/arm/boards/element14-warp7/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/eltec-hipercam/Makefile b/arch/arm/boards/eltec-hipercam/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/eltec-hipercam/Makefile
+++ b/arch/arm/boards/eltec-hipercam/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/embedsky-e9/Makefile b/arch/arm/boards/embedsky-e9/Makefile
index 86afde47fbf4..116bbfb4c2bf 100644
--- a/arch/arm/boards/embedsky-e9/Makefile
+++ b/arch/arm/boards/embedsky-e9/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-e9
diff --git a/arch/arm/boards/embest-marsboard/Makefile b/arch/arm/boards/embest-marsboard/Makefile
index ef5219444c0e..eaa6ace2f43f 100644
--- a/arch/arm/boards/embest-marsboard/Makefile
+++ b/arch/arm/boards/embest-marsboard/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-mars
diff --git a/arch/arm/boards/embest-riotboard/Makefile b/arch/arm/boards/embest-riotboard/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/embest-riotboard/Makefile
+++ b/arch/arm/boards/embest-riotboard/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/eukrea_cpuimx27/Makefile b/arch/arm/boards/eukrea_cpuimx27/Makefile
index 2c3148abd085..6b6de4e87dc1 100644
--- a/arch/arm/boards/eukrea_cpuimx27/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx27/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 lwl-y += lowlevel_init.o
 obj-y += eukrea_cpuimx27.o
diff --git a/arch/arm/boards/eukrea_cpuimx51/Makefile b/arch/arm/boards/eukrea_cpuimx51/Makefile
index e8c84fe17da0..77bd4cc87ac9 100644
--- a/arch/arm/boards/eukrea_cpuimx51/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx51/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += eukrea_cpuimx51.o
 lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-eukrea_cpuimx51
diff --git a/arch/arm/boards/freescale-mx21-ads/Makefile b/arch/arm/boards/freescale-mx21-ads/Makefile
index a43425b9ea8b..3e809a8c5927 100644
--- a/arch/arm/boards/freescale-mx21-ads/Makefile
+++ b/arch/arm/boards/freescale-mx21-ads/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel_init.o
 obj-y += imx21ads.o
diff --git a/arch/arm/boards/freescale-mx23-evk/Makefile b/arch/arm/boards/freescale-mx23-evk/Makefile
index 3e0026252cbd..7723ad93b091 100644
--- a/arch/arm/boards/freescale-mx23-evk/Makefile
+++ b/arch/arm/boards/freescale-mx23-evk/Makefile
@@ -1,3 +1,4 @@
-#
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y := mx23-evk.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx27-ads/Makefile b/arch/arm/boards/freescale-mx27-ads/Makefile
index 398db9b6b971..9fd43dd984cc 100644
--- a/arch/arm/boards/freescale-mx27-ads/Makefile
+++ b/arch/arm/boards/freescale-mx27-ads/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 lwl-y += lowlevel_init.o
 obj-y += imx27ads.o
diff --git a/arch/arm/boards/freescale-mx28-evk/Makefile b/arch/arm/boards/freescale-mx28-evk/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/freescale-mx28-evk/Makefile
+++ b/arch/arm/boards/freescale-mx28-evk/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx35-3ds/Makefile b/arch/arm/boards/freescale-mx35-3ds/Makefile
index c192854f0bec..e33babb4b3c7 100644
--- a/arch/arm/boards/freescale-mx35-3ds/Makefile
+++ b/arch/arm/boards/freescale-mx35-3ds/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y					+= 3stack.o
 lwl-y					+= lowlevel_init.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-mx35-3ds
diff --git a/arch/arm/boards/freescale-mx51-babbage/Makefile b/arch/arm/boards/freescale-mx51-babbage/Makefile
index b6e085818fdf..aed38f2eaa8f 100644
--- a/arch/arm/boards/freescale-mx51-babbage/Makefile
+++ b/arch/arm/boards/freescale-mx51-babbage/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_MACH_FREESCALE_MX51_PDK_POWER) += power.o
 obj-$(CONFIG_MACH_FREESCALE_MX51_PDK) += board.o
 lwl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-qsb/Makefile b/arch/arm/boards/freescale-mx53-qsb/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/freescale-mx53-qsb/Makefile
+++ b/arch/arm/boards/freescale-mx53-qsb/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-smd/Makefile b/arch/arm/boards/freescale-mx53-smd/Makefile
index 98ed2753962e..9e7882a5db6c 100644
--- a/arch/arm/boards/freescale-mx53-smd/Makefile
+++ b/arch/arm/boards/freescale-mx53-smd/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-mx53-smd
diff --git a/arch/arm/boards/freescale-mx53-vmx53/Makefile b/arch/arm/boards/freescale-mx53-vmx53/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/Makefile
+++ b/arch/arm/boards/freescale-mx53-vmx53/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/Makefile b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile b/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx7-sabresd/Makefile b/arch/arm/boards/freescale-mx7-sabresd/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/Makefile
+++ b/arch/arm/boards/freescale-mx7-sabresd/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-vf610-twr/Makefile b/arch/arm/boards/freescale-vf610-twr/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/freescale-vf610-twr/Makefile
+++ b/arch/arm/boards/freescale-vf610-twr/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/friendlyarm-mini2440/Kconfig b/arch/arm/boards/friendlyarm-mini2440/Kconfig
index feb905e96e33..1037f7c77ddd 100644
--- a/arch/arm/boards/friendlyarm-mini2440/Kconfig
+++ b/arch/arm/boards/friendlyarm-mini2440/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 if MACH_MINI2440
 
diff --git a/arch/arm/boards/friendlyarm-mini2440/Makefile b/arch/arm/boards/friendlyarm-mini2440/Makefile
index da3520cc816c..618828126cf7 100644
--- a/arch/arm/boards/friendlyarm-mini2440/Makefile
+++ b/arch/arm/boards/friendlyarm-mini2440/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 
 obj-y += mini2440.o
 lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/friendlyarm-mini6410/Makefile b/arch/arm/boards/friendlyarm-mini6410/Makefile
index c04150e97ff3..2e6ea7aa7e5c 100644
--- a/arch/arm/boards/friendlyarm-mini6410/Makefile
+++ b/arch/arm/boards/friendlyarm-mini6410/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += mini6410.o
 lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-friendlyarm-mini6410
diff --git a/arch/arm/boards/friendlyarm-tiny210/Makefile b/arch/arm/boards/friendlyarm-tiny210/Makefile
index 7deb178739c5..d026a7ed4775 100644
--- a/arch/arm/boards/friendlyarm-tiny210/Makefile
+++ b/arch/arm/boards/friendlyarm-tiny210/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += tiny210.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/friendlyarm-tiny6410/Kconfig b/arch/arm/boards/friendlyarm-tiny6410/Kconfig
index 374820f8b351..1283b8e7d922 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/Kconfig
+++ b/arch/arm/boards/friendlyarm-tiny6410/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if MACH_TINY6410
 
 choice
diff --git a/arch/arm/boards/friendlyarm-tiny6410/Makefile b/arch/arm/boards/friendlyarm-tiny6410/Makefile
index ba3f3360f8f6..f0b868d67fed 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/Makefile
+++ b/arch/arm/boards/friendlyarm-tiny6410/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += tiny6410.o
 lwl-y += lowlevel.o
 lwl-$(CONFIG_MACH_TINY6410_FA) += development-board.o
diff --git a/arch/arm/boards/gateworks-ventana/Makefile b/arch/arm/boards/gateworks-ventana/Makefile
index 7d195eebd642..4e1cefbc4c94 100644
--- a/arch/arm/boards/gateworks-ventana/Makefile
+++ b/arch/arm/boards/gateworks-ventana/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o gsc.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/gk802/Makefile b/arch/arm/boards/gk802/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/gk802/Makefile
+++ b/arch/arm/boards/gk802/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/globalscale-guruplug/Makefile b/arch/arm/boards/globalscale-guruplug/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/globalscale-guruplug/Makefile
+++ b/arch/arm/boards/globalscale-guruplug/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/globalscale-mirabox/Makefile b/arch/arm/boards/globalscale-mirabox/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/globalscale-mirabox/Makefile
+++ b/arch/arm/boards/globalscale-mirabox/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/grinn-liteboard/Makefile b/arch/arm/boards/grinn-liteboard/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/grinn-liteboard/Makefile
+++ b/arch/arm/boards/grinn-liteboard/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/guf-neso/Makefile b/arch/arm/boards/guf-neso/Makefile
index af90c36c7e62..8d304e4afb41 100644
--- a/arch/arm/boards/guf-neso/Makefile
+++ b/arch/arm/boards/guf-neso/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
 obj-y += pll_init.o
diff --git a/arch/arm/boards/guf-santaro/Makefile b/arch/arm/boards/guf-santaro/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/guf-santaro/Makefile
+++ b/arch/arm/boards/guf-santaro/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/guf-vincell/Makefile b/arch/arm/boards/guf-vincell/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/guf-vincell/Makefile
+++ b/arch/arm/boards/guf-vincell/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/haba-knx/Makefile b/arch/arm/boards/haba-knx/Makefile
index b1c469dcf9a6..f2cf1123ed7a 100644
--- a/arch/arm/boards/haba-knx/Makefile
+++ b/arch/arm/boards/haba-knx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/imx233-olinuxino/Makefile b/arch/arm/boards/imx233-olinuxino/Makefile
index 987b34394aa4..1288c8c1ded3 100644
--- a/arch/arm/boards/imx233-olinuxino/Makefile
+++ b/arch/arm/boards/imx233-olinuxino/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y = imx23-olinuxino.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-imx233-olinuxino
diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/Makefile b/arch/arm/boards/kamstrup-mx7-concentrator/Makefile
index 7ab9f5274768..458f5209008d 100644
--- a/arch/arm/boards/kamstrup-mx7-concentrator/Makefile
+++ b/arch/arm/boards/kamstrup-mx7-concentrator/Makefile
@@ -1 +1,3 @@
-lwl-y += lowlevel.o
\ No newline at end of file
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx28/Makefile b/arch/arm/boards/karo-tx28/Makefile
index c7d7398cf3d4..b13ffc8f3c6e 100644
--- a/arch/arm/boards/karo-tx28/Makefile
+++ b/arch/arm/boards/karo-tx28/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += tx28.o
 obj-$(CONFIG_MACH_TX28STK5) += tx28-stk5.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx53/Makefile b/arch/arm/boards/karo-tx53/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/karo-tx53/Makefile
+++ b/arch/arm/boards/karo-tx53/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx6x/Makefile b/arch/arm/boards/karo-tx6x/Makefile
index 51b7c2d449d8..bfd7eed20a0a 100644
--- a/arch/arm/boards/karo-tx6x/Makefile
+++ b/arch/arm/boards/karo-tx6x/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 obj-y += pmic-ltc3676.o pmic-rn5t567.o pmic-rn5t618.o
diff --git a/arch/arm/boards/kindle-mx50/Makefile b/arch/arm/boards/kindle-mx50/Makefile
index 2cc614a8785b..14cf83793d89 100644
--- a/arch/arm/boards/kindle-mx50/Makefile
+++ b/arch/arm/boards/kindle-mx50/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-kindle-mx50
diff --git a/arch/arm/boards/kindle3/Makefile b/arch/arm/boards/kindle3/Makefile
index 86c746240e28..75a0ff560f26 100644
--- a/arch/arm/boards/kindle3/Makefile
+++ b/arch/arm/boards/kindle3/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += kindle3.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/kontron-samx6i/Makefile b/arch/arm/boards/kontron-samx6i/Makefile
index 816962241a5f..d753ff5f1813 100644
--- a/arch/arm/boards/kontron-samx6i/Makefile
+++ b/arch/arm/boards/kontron-samx6i/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o mem.o
 lwl-y += lowlevel.o mem.o
diff --git a/arch/arm/boards/lenovo-ix4-300d/Makefile b/arch/arm/boards/lenovo-ix4-300d/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/lenovo-ix4-300d/Makefile
+++ b/arch/arm/boards/lenovo-ix4-300d/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ls1046ardb/Makefile b/arch/arm/boards/ls1046ardb/Makefile
index 03ac4ecca3dd..829be5327aed 100644
--- a/arch/arm/boards/ls1046ardb/Makefile
+++ b/arch/arm/boards/ls1046ardb/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
 lwl-y += start.o
diff --git a/arch/arm/boards/lubbock/Makefile b/arch/arm/boards/lubbock/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/lubbock/Makefile
+++ b/arch/arm/boards/lubbock/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/lxa-mc1/Makefile b/arch/arm/boards/lxa-mc1/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/lxa-mc1/Makefile
+++ b/arch/arm/boards/lxa-mc1/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/mainstone/Makefile b/arch/arm/boards/mainstone/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/mainstone/Makefile
+++ b/arch/arm/boards/mainstone/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/marvell-armada-xp-db/Makefile b/arch/arm/boards/marvell-armada-xp-db/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/marvell-armada-xp-db/Makefile
+++ b/arch/arm/boards/marvell-armada-xp-db/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/marvell-armada-xp-gp/Makefile b/arch/arm/boards/marvell-armada-xp-gp/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/marvell-armada-xp-gp/Makefile
+++ b/arch/arm/boards/marvell-armada-xp-gp/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/microchip-ksz9477-evb/Makefile b/arch/arm/boards/microchip-ksz9477-evb/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/Makefile
+++ b/arch/arm/boards/microchip-ksz9477-evb/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701/Makefile
index 3072706237d6..bf17869fb2ac 100644
--- a/arch/arm/boards/mioa701/Makefile
+++ b/arch/arm/boards/mioa701/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o gpio0_poweroff.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/mnt-reform/Makefile b/arch/arm/boards/mnt-reform/Makefile
index a3da88fbe68f..35d8640087b1 100644
--- a/arch/arm/boards/mnt-reform/Makefile
+++ b/arch/arm/boards/mnt-reform/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
-lwl-y += lowlevel.o lpddr4-timing.o
\ No newline at end of file
+lwl-y += lowlevel.o lpddr4-timing.o
diff --git a/arch/arm/boards/module-mb7707/Makefile b/arch/arm/boards/module-mb7707/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/module-mb7707/Makefile
+++ b/arch/arm/boards/module-mb7707/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/netgear-rn104/Makefile b/arch/arm/boards/netgear-rn104/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/netgear-rn104/Makefile
+++ b/arch/arm/boards/netgear-rn104/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/netgear-rn2120/Makefile b/arch/arm/boards/netgear-rn2120/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/netgear-rn2120/Makefile
+++ b/arch/arm/boards/netgear-rn2120/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/nhk8815/Makefile b/arch/arm/boards/nhk8815/Makefile
index 56f2013e2254..0367fa7dd5da 100644
--- a/arch/arm/boards/nhk8815/Makefile
+++ b/arch/arm/boards/nhk8815/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += setup.o
 lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-nhk8815
diff --git a/arch/arm/boards/nvidia-beaver/Makefile b/arch/arm/boards/nvidia-beaver/Makefile
index 1b90eb13fdd0..6485e5d2da77 100644
--- a/arch/arm/boards/nvidia-beaver/Makefile
+++ b/arch/arm/boards/nvidia-beaver/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 CFLAGS_entry.pbl.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra30
 lwl-y += entry.o
diff --git a/arch/arm/boards/nvidia-jetson-tk1/Makefile b/arch/arm/boards/nvidia-jetson-tk1/Makefile
index d38001c15890..7d9402f9b345 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/Makefile
+++ b/arch/arm/boards/nvidia-jetson-tk1/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 CFLAGS_entry.pbl.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra124
 lwl-y += entry.o
diff --git a/arch/arm/boards/nxp-imx6ull-evk/Makefile b/arch/arm/boards/nxp-imx6ull-evk/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/nxp-imx6ull-evk/Makefile
+++ b/arch/arm/boards/nxp-imx6ull-evk/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/nxp-imx8mm-evk/Makefile b/arch/arm/boards/nxp-imx8mm-evk/Makefile
index 4d0d9890153b..35d8640087b1 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/Makefile
+++ b/arch/arm/boards/nxp-imx8mm-evk/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o lpddr4-timing.o
diff --git a/arch/arm/boards/nxp-imx8mn-evk/Makefile b/arch/arm/boards/nxp-imx8mn-evk/Makefile
index 4b13ff3b94e4..d74c5845ef7d 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/Makefile
+++ b/arch/arm/boards/nxp-imx8mn-evk/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o ddr4-timing.o lpddr4-timing.o
diff --git a/arch/arm/boards/nxp-imx8mp-evk/Makefile b/arch/arm/boards/nxp-imx8mp-evk/Makefile
index 4d0d9890153b..35d8640087b1 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/Makefile
+++ b/arch/arm/boards/nxp-imx8mp-evk/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o lpddr4-timing.o
diff --git a/arch/arm/boards/nxp-imx8mq-evk/Makefile b/arch/arm/boards/nxp-imx8mq-evk/Makefile
index 2995f06f0fd9..17d769f3309b 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/Makefile
+++ b/arch/arm/boards/nxp-imx8mq-evk/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
diff --git a/arch/arm/boards/omap343xdsp/Makefile b/arch/arm/boards/omap343xdsp/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/omap343xdsp/Makefile
+++ b/arch/arm/boards/omap343xdsp/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/omap3evm/Makefile b/arch/arm/boards/omap3evm/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/omap3evm/Makefile
+++ b/arch/arm/boards/omap3evm/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/panda/Makefile b/arch/arm/boards/panda/Makefile
index 5d4eb10b9b1b..3bd91350ce8b 100644
--- a/arch/arm/boards/panda/Makefile
+++ b/arch/arm/boards/panda/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/phytec-phycard-imx27/Makefile b/arch/arm/boards/phytec-phycard-imx27/Makefile
index 34492bb127b4..0e6411d58809 100644
--- a/arch/arm/boards/phytec-phycard-imx27/Makefile
+++ b/arch/arm/boards/phytec-phycard-imx27/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 lwl-y += lowlevel.o
 obj-y += pca100.o
diff --git a/arch/arm/boards/phytec-phycore-imx27/Makefile b/arch/arm/boards/phytec-phycore-imx27/Makefile
index 4723c77818f2..ce7b990407ce 100644
--- a/arch/arm/boards/phytec-phycore-imx27/Makefile
+++ b/arch/arm/boards/phytec-phycore-imx27/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y	+= pcm038.o pcm970.o
 lwl-y	+= lowlevel.o
 bbenv-y += defaultenv-pcm038
diff --git a/arch/arm/boards/phytec-phycore-imx7/Makefile b/arch/arm/boards/phytec-phycore-imx7/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/phytec-phycore-imx7/Makefile
+++ b/arch/arm/boards/phytec-phycore-imx7/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/phytec-phycore-omap4460/Makefile b/arch/arm/boards/phytec-phycore-omap4460/Makefile
index 5e78e11ec133..c5d3950bc3c7 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/Makefile
+++ b/arch/arm/boards/phytec-phycore-omap4460/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o mux.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-phytec-phycore-omap4460
diff --git a/arch/arm/boards/phytec-phycore-pxa270/Makefile b/arch/arm/boards/phytec-phycore-pxa270/Makefile
index 040cf93944ee..e00d1cfd7f70 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/Makefile
+++ b/arch/arm/boards/phytec-phycore-pxa270/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/phytec-som-am335x/Kconfig b/arch/arm/boards/phytec-som-am335x/Kconfig
index 52fa723a21a1..054a1d219f83 100644
--- a/arch/arm/boards/phytec-som-am335x/Kconfig
+++ b/arch/arm/boards/phytec-som-am335x/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 if MACH_PHYTEC_SOM_AM335X
 
diff --git a/arch/arm/boards/phytec-som-am335x/Makefile b/arch/arm/boards/phytec-som-am335x/Makefile
index 78397bd59fdf..82dd631c9f08 100644
--- a/arch/arm/boards/phytec-som-am335x/Makefile
+++ b/arch/arm/boards/phytec-som-am335x/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
 bbenv-y += defaultenv-physom-am335x
diff --git a/arch/arm/boards/phytec-som-imx6/Makefile b/arch/arm/boards/phytec-som-imx6/Makefile
index 73456aed8bf7..0780da79b9b3 100644
--- a/arch/arm/boards/phytec-som-imx6/Makefile
+++ b/arch/arm/boards/phytec-som-imx6/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-physom-imx6
diff --git a/arch/arm/boards/phytec-som-imx8mq/Makefile b/arch/arm/boards/phytec-som-imx8mq/Makefile
index 2995f06f0fd9..17d769f3309b 100644
--- a/arch/arm/boards/phytec-som-imx8mq/Makefile
+++ b/arch/arm/boards/phytec-som-imx8mq/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
diff --git a/arch/arm/boards/phytec-som-rk3288/Makefile b/arch/arm/boards/phytec-som-rk3288/Makefile
index 6f34c9a2f21e..e4ba704dea09 100644
--- a/arch/arm/boards/phytec-som-rk3288/Makefile
+++ b/arch/arm/boards/phytec-som-rk3288/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-physom-rk3288
diff --git a/arch/arm/boards/plathome-openblocks-a6/Makefile b/arch/arm/boards/plathome-openblocks-a6/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/plathome-openblocks-a6/Makefile
+++ b/arch/arm/boards/plathome-openblocks-a6/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/plathome-openblocks-ax3/Makefile b/arch/arm/boards/plathome-openblocks-ax3/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/Makefile
+++ b/arch/arm/boards/plathome-openblocks-ax3/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
index e9bf1212fe04..5b501a548fd5 100644
--- a/arch/arm/boards/pm9261/Makefile
+++ b/arch/arm/boards/pm9261/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/pm9263/Makefile b/arch/arm/boards/pm9263/Makefile
index 68bfbfa92695..7220ee11f357 100644
--- a/arch/arm/boards/pm9263/Makefile
+++ b/arch/arm/boards/pm9263/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/pm9g45/Makefile b/arch/arm/boards/pm9g45/Makefile
index abf50243e540..148ae4a2521c 100644
--- a/arch/arm/boards/pm9g45/Makefile
+++ b/arch/arm/boards/pm9g45/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/protonic-imx6/Makefile b/arch/arm/boards/protonic-imx6/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/protonic-imx6/Makefile
+++ b/arch/arm/boards/protonic-imx6/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/protonic-imx8m/Makefile b/arch/arm/boards/protonic-imx8m/Makefile
index 51a27f0c2dfd..18da0f5a4415 100644
--- a/arch/arm/boards/protonic-imx8m/Makefile
+++ b/arch/arm/boards/protonic-imx8m/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel-prt8mm.o lpddr4-timing-prt8mm.o
 bbenv-y += defaultenv-prt8m
diff --git a/arch/arm/boards/protonic-stm32mp1/Makefile b/arch/arm/boards/protonic-stm32mp1/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/protonic-stm32mp1/Makefile
+++ b/arch/arm/boards/protonic-stm32mp1/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/qemu-virt/Makefile b/arch/arm/boards/qemu-virt/Makefile
index dcfc2937d325..ad283446eaf1 100644
--- a/arch/arm/boards/qemu-virt/Makefile
+++ b/arch/arm/boards/qemu-virt/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
diff --git a/arch/arm/boards/qil-a926x/Makefile b/arch/arm/boards/qil-a926x/Makefile
index 82e46b369f41..bf5ed8b4f4c5 100644
--- a/arch/arm/boards/qil-a926x/Makefile
+++ b/arch/arm/boards/qil-a926x/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/radxa-rock/Makefile b/arch/arm/boards/radxa-rock/Makefile
index ec930bc264e7..79d3969dcde1 100644
--- a/arch/arm/boards/radxa-rock/Makefile
+++ b/arch/arm/boards/radxa-rock/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_MACH_RADXA_ROCK) += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-radxa-rock
diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
index ddcf015f0848..6f995b564017 100644
--- a/arch/arm/boards/raspberry-pi/Makefile
+++ b/arch/arm/boards/raspberry-pi/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_MACH_RPI_COMMON) += rpi-common.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-rpi
diff --git a/arch/arm/boards/reflex-achilles/Makefile b/arch/arm/boards/reflex-achilles/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/reflex-achilles/Makefile
+++ b/arch/arm/boards/reflex-achilles/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/rockchip-rk3568-evb/Makefile b/arch/arm/boards/rockchip-rk3568-evb/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/Makefile
+++ b/arch/arm/boards/rockchip-rk3568-evb/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d27-giantboard/Makefile b/arch/arm/boards/sama5d27-giantboard/Makefile
index f5869c483978..e2c6a3adf671 100644
--- a/arch/arm/boards/sama5d27-giantboard/Makefile
+++ b/arch/arm/boards/sama5d27-giantboard/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
 bbenv-y += defaultenv-giantboard
diff --git a/arch/arm/boards/sama5d27-som1/Makefile b/arch/arm/boards/sama5d27-som1/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/sama5d27-som1/Makefile
+++ b/arch/arm/boards/sama5d27-som1/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/sama5d3_xplained/Makefile b/arch/arm/boards/sama5d3_xplained/Makefile
index e5c86e58957e..b7d6b2e7fa89 100644
--- a/arch/arm/boards/sama5d3_xplained/Makefile
+++ b/arch/arm/boards/sama5d3_xplained/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3_xplained
diff --git a/arch/arm/boards/sama5d3xek/Makefile b/arch/arm/boards/sama5d3xek/Makefile
index 6ed914fc0a47..9691f0791702 100644
--- a/arch/arm/boards/sama5d3xek/Makefile
+++ b/arch/arm/boards/sama5d3xek/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 obj-$(CONFIG_W1) += hw_version.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d4_xplained/Makefile b/arch/arm/boards/sama5d4_xplained/Makefile
index 8873dfc22c44..eece4cc38118 100644
--- a/arch/arm/boards/sama5d4_xplained/Makefile
+++ b/arch/arm/boards/sama5d4_xplained/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += sama5d4_xplained.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d4ek/Makefile b/arch/arm/boards/sama5d4ek/Makefile
index 152750bbe0a7..82ffe9771caf 100644
--- a/arch/arm/boards/sama5d4ek/Makefile
+++ b/arch/arm/boards/sama5d4ek/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += sama5d4ek.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/scb9328/Makefile b/arch/arm/boards/scb9328/Makefile
index 8e1c7ef7a505..5c13dddc0657 100644
--- a/arch/arm/boards/scb9328/Makefile
+++ b/arch/arm/boards/scb9328/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 lwl-y += lowlevel_init.o lowlevel.o
 obj-y += scb9328.o
diff --git a/arch/arm/boards/seeed-odyssey/Makefile b/arch/arm/boards/seeed-odyssey/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/seeed-odyssey/Makefile
+++ b/arch/arm/boards/seeed-odyssey/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/skov-arm9cpu/Makefile b/arch/arm/boards/skov-arm9cpu/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/skov-arm9cpu/Makefile
+++ b/arch/arm/boards/skov-arm9cpu/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/skov-imx6/Makefile b/arch/arm/boards/skov-imx6/Makefile
index 07b87ff11df0..b6b8b44b847b 100644
--- a/arch/arm/boards/skov-imx6/Makefile
+++ b/arch/arm/boards/skov-imx6/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 obj-pbl-y += version.o
diff --git a/arch/arm/boards/solidrun-cubox/Makefile b/arch/arm/boards/solidrun-cubox/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/solidrun-cubox/Makefile
+++ b/arch/arm/boards/solidrun-cubox/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/solidrun-microsom/Makefile b/arch/arm/boards/solidrun-microsom/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/solidrun-microsom/Makefile
+++ b/arch/arm/boards/solidrun-microsom/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/stm32mp15x-ev1/Makefile b/arch/arm/boards/stm32mp15x-ev1/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/stm32mp15x-ev1/Makefile
+++ b/arch/arm/boards/stm32mp15x-ev1/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/stm32mp15xx-dkx/Makefile b/arch/arm/boards/stm32mp15xx-dkx/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/Makefile
+++ b/arch/arm/boards/stm32mp15xx-dkx/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/technexion-pico-hobbit/Makefile b/arch/arm/boards/technexion-pico-hobbit/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/technexion-pico-hobbit/Makefile
+++ b/arch/arm/boards/technexion-pico-hobbit/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/technexion-wandboard/Makefile b/arch/arm/boards/technexion-wandboard/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/technexion-wandboard/Makefile
+++ b/arch/arm/boards/technexion-wandboard/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/telit-evk-pro3/Makefile b/arch/arm/boards/telit-evk-pro3/Makefile
index e11fd5b6924e..d59545033d21 100644
--- a/arch/arm/boards/telit-evk-pro3/Makefile
+++ b/arch/arm/boards/telit-evk-pro3/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/terasic-de0-nano-soc/Makefile b/arch/arm/boards/terasic-de0-nano-soc/Makefile
index 8c927fe291a6..ea898309d720 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/Makefile
+++ b/arch/arm/boards/terasic-de0-nano-soc/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += lowlevel.o board.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/boards/terasic-de10-nano/Makefile b/arch/arm/boards/terasic-de10-nano/Makefile
index 8c927fe291a6..ea898309d720 100644
--- a/arch/arm/boards/terasic-de10-nano/Makefile
+++ b/arch/arm/boards/terasic-de10-nano/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += lowlevel.o board.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/boards/terasic-sockit/Makefile b/arch/arm/boards/terasic-sockit/Makefile
index 8c927fe291a6..ea898309d720 100644
--- a/arch/arm/boards/terasic-sockit/Makefile
+++ b/arch/arm/boards/terasic-sockit/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += lowlevel.o board.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index d400788757b6..1ebe527d608e 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += tny_a9263_bootstrap.o
diff --git a/arch/arm/boards/toradex-colibri-t20/Makefile b/arch/arm/boards/toradex-colibri-t20/Makefile
index cdce48d1f847..aeb4765cf674 100644
--- a/arch/arm/boards/toradex-colibri-t20/Makefile
+++ b/arch/arm/boards/toradex-colibri-t20/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 CFLAGS_entry.pbl.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra20
 lwl-y += entry.o
diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
index e8158cb253cf..702c86a9247a 100644
--- a/arch/arm/boards/toshiba-ac100/Makefile
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 CFLAGS_entry.pbl.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/boards/tqma53/Makefile b/arch/arm/boards/tqma53/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/tqma53/Makefile
+++ b/arch/arm/boards/tqma53/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/tqma6x/Makefile b/arch/arm/boards/tqma6x/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/tqma6x/Makefile
+++ b/arch/arm/boards/tqma6x/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/tqmls1046a/Makefile b/arch/arm/boards/tqmls1046a/Makefile
index 851a5dcb3d7c..4af7fc3602a6 100644
--- a/arch/arm/boards/tqmls1046a/Makefile
+++ b/arch/arm/boards/tqmls1046a/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o start.o
 obj-y += board.o
 bbenv-y += defaultenv-tqmls1046a
diff --git a/arch/arm/boards/turris-omnia/Makefile b/arch/arm/boards/turris-omnia/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/turris-omnia/Makefile
+++ b/arch/arm/boards/turris-omnia/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/udoo-neo/Makefile b/arch/arm/boards/udoo-neo/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/udoo-neo/Makefile
+++ b/arch/arm/boards/udoo-neo/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/udoo/Makefile b/arch/arm/boards/udoo/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/udoo/Makefile
+++ b/arch/arm/boards/udoo/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
index 65cc4082fc0f..022b1a4ab6fb 100644
--- a/arch/arm/boards/usb-a926x/Makefile
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += usb_a9263_bootstrap.o
diff --git a/arch/arm/boards/usi-topkick/Makefile b/arch/arm/boards/usi-topkick/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/arm/boards/usi-topkick/Makefile
+++ b/arch/arm/boards/usi-topkick/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/variscite-mx6/Makefile b/arch/arm/boards/variscite-mx6/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/variscite-mx6/Makefile
+++ b/arch/arm/boards/variscite-mx6/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/versatile/Kconfig b/arch/arm/boards/versatile/Kconfig
index 94cba3ba8173..66492404e0b2 100644
--- a/arch/arm/boards/versatile/Kconfig
+++ b/arch/arm/boards/versatile/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 if MACH_VERSATILEPB
 
diff --git a/arch/arm/boards/versatile/Makefile b/arch/arm/boards/versatile/Makefile
index 89232a7884c8..5a55d0017d14 100644
--- a/arch/arm/boards/versatile/Makefile
+++ b/arch/arm/boards/versatile/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_MACH_VERSATILEPB) += versatilepb.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/vexpress/Makefile b/arch/arm/boards/vexpress/Makefile
index 2da0494d49b3..720210d8905f 100644
--- a/arch/arm/boards/vexpress/Makefile
+++ b/arch/arm/boards/vexpress/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += init.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/virt2real/Makefile b/arch/arm/boards/virt2real/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/virt2real/Makefile
+++ b/arch/arm/boards/virt2real/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/vscom-baltos/Makefile b/arch/arm/boards/vscom-baltos/Makefile
index 092c31d6b28d..5678718188b9 100644
--- a/arch/arm/boards/vscom-baltos/Makefile
+++ b/arch/arm/boards/vscom-baltos/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/wago-pfc-am35xx/Makefile b/arch/arm/boards/wago-pfc-am35xx/Makefile
index 7bd3009f31e3..35ac0462cba1 100644
--- a/arch/arm/boards/wago-pfc-am35xx/Makefile
+++ b/arch/arm/boards/wago-pfc-am35xx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 ifdef CONFIG_OMAP_BUILD_IFT
 obj-y += board-mlo.o
diff --git a/arch/arm/boards/webasto-ccbv2/Makefile b/arch/arm/boards/webasto-ccbv2/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/webasto-ccbv2/Makefile
+++ b/arch/arm/boards/webasto-ccbv2/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zii-common/Makefile b/arch/arm/boards/zii-common/Makefile
index 90bdf21e77bd..7488148cff9c 100644
--- a/arch/arm/boards/zii-common/Makefile
+++ b/arch/arm/boards/zii-common/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o switch-cmd.o pn-fixup.o
 bbenv-y += defaultenv-zii-common
diff --git a/arch/arm/boards/zii-imx51-rdu1/Makefile b/arch/arm/boards/zii-imx51-rdu1/Makefile
index 7f2569bda37d..96663f9ae867 100644
--- a/arch/arm/boards/zii-imx51-rdu1/Makefile
+++ b/arch/arm/boards/zii-imx51-rdu1/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-rdu1
diff --git a/arch/arm/boards/zii-imx6q-rdu2/Makefile b/arch/arm/boards/zii-imx6q-rdu2/Makefile
index c6285362f2ee..31b592bd36a5 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/Makefile
+++ b/arch/arm/boards/zii-imx6q-rdu2/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-rdu2
diff --git a/arch/arm/boards/zii-imx7d-dev/Makefile b/arch/arm/boards/zii-imx7d-dev/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/zii-imx7d-dev/Makefile
+++ b/arch/arm/boards/zii-imx7d-dev/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zii-imx8mq-dev/Makefile b/arch/arm/boards/zii-imx8mq-dev/Makefile
index d0148b506752..8894e40b5a3f 100644
--- a/arch/arm/boards/zii-imx8mq-dev/Makefile
+++ b/arch/arm/boards/zii-imx8mq-dev/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
 bbenv-y += defaultenv-imx8mq-zii-dev
diff --git a/arch/arm/boards/zii-vf610-dev/Makefile b/arch/arm/boards/zii-vf610-dev/Makefile
index 1297d815e319..a1a8318e1588 100644
--- a/arch/arm/boards/zii-vf610-dev/Makefile
+++ b/arch/arm/boards/zii-vf610-dev/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-zii-vf610-dev
diff --git a/arch/arm/boards/zylonite/Makefile b/arch/arm/boards/zylonite/Makefile
index 01c7a259e9a5..da63d2625f7a 100644
--- a/arch/arm/boards/zylonite/Makefile
+++ b/arch/arm/boards/zylonite/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index ca3bd98962e2..0a493754a418 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 comment "Processor Type"
 
 config PHYS_ADDR_T_64BIT
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 6344ab506645..c0993c1abe5d 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += cpu.o
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index fda4eeafeca0..990c0bd609cd 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # Arch-specific CryptoAPI modules.
 #
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 76c96752cd78..8ae8244bfeee 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
 obj- += dummy.o
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 33db7350f85f..1a8144f6c64a 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_BOOTM)	+= bootm.o
 obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index ec6a3aea6721..82507fffc02b 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
 obj-$(CONFIG_BOOTM)     += bootm.o
diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index a004af4867f2..e86a2e5a2f3d 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += stacktrace.o
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-y	+= div0.o
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 734256e3614e..bc55b1c4e76e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_AT91
 
 config HAVE_AT91_UTMI
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index c895af7a2f8b..bfdc89f680ed 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += setup.o aic.o
 lwl-y += at91_pmc_ll.o ddramc_ll.o matrix.o
 lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index 9d6a7b2ec2d4..75acee8dad56 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_BCM283X
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-bcm283x/Makefile b/arch/arm/mach-bcm283x/Makefile
index 940f98cbce76..e5ef78af978f 100644
--- a/arch/arm/mach-bcm283x/Makefile
+++ b/arch/arm/mach-bcm283x/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += core.o mbox.o
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index c00514e86d6c..52cf8468c03f 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_CLPS711X
 
 choice
diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
index 45525343d737..4d5950d9b5f0 100644
--- a/arch/arm/mach-clps711x/Makefile
+++ b/arch/arm/mach-clps711x/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += clock.o devices.o reset.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
index c6d4fce603ae..a87b6256ce49 100644
--- a/arch/arm/mach-davinci/Kconfig
+++ b/arch/arm/mach-davinci/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_DAVINCI
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
index b96d4146f6d5..f7865a941b82 100644
--- a/arch/arm/mach-davinci/Makefile
+++ b/arch/arm/mach-davinci/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += time.o
diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
index d25c3b3f5108..25b9a0da2fe6 100644
--- a/arch/arm/mach-digic/Kconfig
+++ b/arch/arm/mach-digic/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_DIGIC
 
 choice
diff --git a/arch/arm/mach-digic/Makefile b/arch/arm/mach-digic/Makefile
index 16a218658ade..1c2b374603ce 100644
--- a/arch/arm/mach-digic/Makefile
+++ b/arch/arm/mach-digic/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj- := __dummy__.o
diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
index f805a8fd527a..e39f1d8a9b28 100644
--- a/arch/arm/mach-ep93xx/Kconfig
+++ b/arch/arm/mach-ep93xx/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_EP93XX
 
 config EP93XX_SDCE0_PHYS_OFFSET
diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
index fc0cb1afcd6e..80dbe7c42bfa 100644
--- a/arch/arm/mach-ep93xx/Makefile
+++ b/arch/arm/mach-ep93xx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += clocksource.o gpio.o header.o
 
 lwl-y += lowlevel_init.o led.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 92db011baed7..454f7328d834 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_IMX
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index d94c846a13bf..2cafcd77e00d 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_ARCH_IMX1)  += imx1.o
 obj-$(CONFIG_ARCH_IMX25) += imx25.o
 obj-$(CONFIG_ARCH_IMX21) += imx21.o
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index c15d5873a55e..bdd7d0dbfe52 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_LAYERSCAPE
 
 config ARCH_LAYERSCAPE_PPA
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 854a327c9125..58d3ea820aa3 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj- := __dummy__.o
 lwl-y += lowlevel.o errata.o
 lwl-$(CONFIG_ARCH_LS1046) += lowlevel-ls1046a.o
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index bab22f07ff34..1b26148434ad 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_MVEBU
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 6079403b83dd..88580cb58f4c 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-pbl-y			+= common.o
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index f4a9d3d4221e..691c159e365f 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_MXS
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index e3843368c2d1..0f3fba896751 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += imx.o iomux-imx.o power.o
 pbl-y += iomux-imx.o
 obj-$(CONFIG_ARCH_IMX23) += clocksource-imx23.o usb-imx23.o soc-imx23.o
diff --git a/arch/arm/mach-nomadik/Kconfig b/arch/arm/mach-nomadik/Kconfig
index 51d490df1b1b..823777917391 100644
--- a/arch/arm/mach-nomadik/Kconfig
+++ b/arch/arm/mach-nomadik/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_NOMADIK
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-nomadik/Makefile b/arch/arm/mach-nomadik/Makefile
index 1d77c4cf52f9..0ab83f61c816 100644
--- a/arch/arm/mach-nomadik/Makefile
+++ b/arch/arm/mach-nomadik/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 obj-y	+= clock.o reset.o timer.o
 obj-y	+= 8815.o
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index fd9084f83ea1..711f8ed8d83c 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_PXA
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index 0c3219807bc6..9249c8fe14e3 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += clocksource.o
 obj-y += common.o
 obj-y += gpio.o
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 5603fc12c307..2e855714f7da 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menu "Rockchip Features"
 	depends on ARCH_ROCKCHIP
 
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 66bcdba2eb22..72bf77c1e124 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += rockchip.o
 pbl-$(CONFIG_ARCH_RK3568) += atf.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index fa1a3ddcc49f..aa2ae67e2d86 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config ARCH_SAMSUNG
 	bool
 
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 284c80a2ad43..8a893a076ff1 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += s3c-timer.o generic.o
 obj-$(CONFIG_RESET_SOURCE) += reset_source.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index ea2abebaa20c..80344315e3d9 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_SOCFPGA
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index 3a3a2fc57dd3..935270bfad8e 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 pbl-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-init.o cyclone5-freeze-controller.o cyclone5-scan-manager.o cyclone5-system-manager.o
 pbl-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-clock-manager.o
 obj-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-generic.o nic301.o cyclone5-bootsource.o cyclone5-reset-manager.o
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 8328eb899aba..d059dbda56a9 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_STM32MP
 
 config ARCH_NR_GPIO
diff --git a/arch/arm/mach-stm32mp/Makefile b/arch/arm/mach-stm32mp/Makefile
index 8e14b225359d..4163bd176b1f 100644
--- a/arch/arm/mach-stm32mp/Makefile
+++ b/arch/arm/mach-stm32mp/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y := init.o
 obj-pbl-y := ddrctrl.o
 obj-$(CONFIG_BOOTM) += stm32image.o
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index f144d346b4c5..cc256f584ac6 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_TEGRA
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 60aae41ea06c..ddc029bda26a 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
 CFLAGS_tegra_avp_init.pbl.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += tegra_avp_init.o
diff --git a/arch/arm/mach-uemd/Kconfig b/arch/arm/mach-uemd/Kconfig
index 2bcdd320c99a..7844b9c78fbc 100644
--- a/arch/arm/mach-uemd/Kconfig
+++ b/arch/arm/mach-uemd/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_UEMD
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-uemd/Makefile b/arch/arm/mach-uemd/Makefile
index 16a218658ade..1c2b374603ce 100644
--- a/arch/arm/mach-uemd/Makefile
+++ b/arch/arm/mach-uemd/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj- := __dummy__.o
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index 95172cff8c2d..e0e1996d333e 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 if ARCH_VERSATILE
 
diff --git a/arch/arm/mach-versatile/Makefile b/arch/arm/mach-versatile/Makefile
index a8da54c27b2f..6a9630115f9f 100644
--- a/arch/arm/mach-versatile/Makefile
+++ b/arch/arm/mach-versatile/Makefile
@@ -1,2 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += core.o
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index b72684caa722..1b89d0edf9ef 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_VEXPRESS
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-vexpress/Makefile b/arch/arm/mach-vexpress/Makefile
index 9a06e648a6f1..b52ba00f3c11 100644
--- a/arch/arm/mach-vexpress/Makefile
+++ b/arch/arm/mach-vexpress/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += v2m.o
 obj-y += reset.o
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 3e07633e5f08..3f2cd8e99c14 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_ZYNQ
 
 config ARCH_TEXT_BASE
diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
index 06c2ce996cfa..d5e94859a6b1 100644
--- a/arch/arm/mach-zynq/Makefile
+++ b/arch/arm/mach-zynq/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += zynq.o bootm-zynqimg.o
 lwl-y += cpu_init.o
diff --git a/arch/arm/tools/Makefile b/arch/arm/tools/Makefile
index bff825e58a01..298a7f90e627 100644
--- a/arch/arm/tools/Makefile
+++ b/arch/arm/tools/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #
 # linux/arch/arm/tools/Makefile
 #
diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 09344408806b..960b712ac9b4 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config KVX
 	bool
 	select 64BIT
diff --git a/arch/kvx/Makefile b/arch/kvx/Makefile
index f29eeef9210b..9431c9fe18fd 100644
--- a/arch/kvx/Makefile
+++ b/arch/kvx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 KBUILD_DEFCONFIG := generic_defconfig
 
 KBUILD_CPPFLAGS += -fno-strict-aliasing
diff --git a/arch/kvx/dts/Makefile b/arch/kvx/dts/Makefile
index d4221d2c1bb6..3f03192750bc 100644
--- a/arch/kvx/dts/Makefile
+++ b/arch/kvx/dts/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
 obj- += dummy.o
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 7774abe94827..be5a4ff30de9 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -1,6 +1,5 @@
-#
-#
-#
+# SPDX-License-Identifier: GPL-2.0-only
+
 config MIPS
 	bool
 	select GENERIC_LIB_ASHLDI3
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 786695194490..345e703d332b 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 KBUILD_DEFCONFIG := qemu-malta_defconfig
 
 #
diff --git a/arch/mips/boards/8devices-lima/Makefile b/arch/mips/boards/8devices-lima/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/8devices-lima/Makefile
+++ b/arch/mips/boards/8devices-lima/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/Makefile b/arch/mips/boards/Makefile
index 5f9b61e7545c..9402035856c2 100644
--- a/arch/mips/boards/Makefile
+++ b/arch/mips/boards/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_BOARD_8DEVICES_LIMA) += 8devices-lima/
 obj-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift/
 obj-$(CONFIG_BOARD_CI20) += img-ci20/
diff --git a/arch/mips/boards/black-swift/Makefile b/arch/mips/boards/black-swift/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/black-swift/Makefile
+++ b/arch/mips/boards/black-swift/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/dlink-dir-320/Makefile b/arch/mips/boards/dlink-dir-320/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/dlink-dir-320/Makefile
+++ b/arch/mips/boards/dlink-dir-320/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/dptechnics-dpt-module/Makefile b/arch/mips/boards/dptechnics-dpt-module/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/dptechnics-dpt-module/Makefile
+++ b/arch/mips/boards/dptechnics-dpt-module/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/img-ci20/Makefile b/arch/mips/boards/img-ci20/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/img-ci20/Makefile
+++ b/arch/mips/boards/img-ci20/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/loongson-ls1b/Makefile b/arch/mips/boards/loongson-ls1b/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/loongson-ls1b/Makefile
+++ b/arch/mips/boards/loongson-ls1b/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/netgear-wg102/Makefile b/arch/mips/boards/netgear-wg102/Makefile
index 344a6711b2bd..fe0616fdb8f6 100644
--- a/arch/mips/boards/netgear-wg102/Makefile
+++ b/arch/mips/boards/netgear-wg102/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 obj-y += ram.o
diff --git a/arch/mips/boards/okud-max9331/Makefile b/arch/mips/boards/okud-max9331/Makefile
index c58bf72354db..c28b1a9059a2 100644
--- a/arch/mips/boards/okud-max9331/Makefile
+++ b/arch/mips/boards/okud-max9331/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
 lwl-y += lowlevel_boot0.o
diff --git a/arch/mips/boards/openembed-som9331/Makefile b/arch/mips/boards/openembed-som9331/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/openembed-som9331/Makefile
+++ b/arch/mips/boards/openembed-som9331/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/qemu-malta/Makefile b/arch/mips/boards/qemu-malta/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/qemu-malta/Makefile
+++ b/arch/mips/boards/qemu-malta/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/ritmix-rzx50/Makefile b/arch/mips/boards/ritmix-rzx50/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/ritmix-rzx50/Makefile
+++ b/arch/mips/boards/ritmix-rzx50/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/tplink-mr3020/Makefile b/arch/mips/boards/tplink-mr3020/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/tplink-mr3020/Makefile
+++ b/arch/mips/boards/tplink-mr3020/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/tplink-wdr4300/Makefile b/arch/mips/boards/tplink-wdr4300/Makefile
index b08c4a93ca27..458f5209008d 100644
--- a/arch/mips/boards/tplink-wdr4300/Makefile
+++ b/arch/mips/boards/tplink-wdr4300/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel.o
diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index 3d46e836f7a7..d1e27b5e6b8a 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += start.o
 obj-y += main_entry.o
 
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index e5900c971b9a..e4cc3b44a53e 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 ifneq ($(BUILTIN_DTB),)
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 88a2bdbd282b..1ef340202acf 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
 obj-$(CONFIG_CSRC_R4K_LIB) += csrc-r4k.o
 obj-y += cpu-probe.o
diff --git a/arch/mips/mach-ar231x/Kconfig b/arch/mips/mach-ar231x/Kconfig
index f920f300bd20..f3e17000a754 100644
--- a/arch/mips/mach-ar231x/Kconfig
+++ b/arch/mips/mach-ar231x/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if MACH_MIPS_AR231X
 
 choice
diff --git a/arch/mips/mach-ar231x/Makefile b/arch/mips/mach-ar231x/Makefile
index eba8e818b5b7..65e32c7bc3a7 100644
--- a/arch/mips/mach-ar231x/Makefile
+++ b/arch/mips/mach-ar231x/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += ar231x.o
 obj-y += board.o
 obj-y += ar231x_reset.o
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 2dfe0e587a65..75640504895c 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if MACH_MIPS_ATH79
 
 config SOC_QCA_AR9331
diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
index 396df66bf162..9f3a34b3eb77 100644
--- a/arch/mips/mach-ath79/Makefile
+++ b/arch/mips/mach-ath79/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 lwl-y += lowlevel_ar9331_spi_trap.o
 lwl-y += lowlevel_ar9331_sram.o
 
diff --git a/arch/mips/mach-bcm47xx/Kconfig b/arch/mips/mach-bcm47xx/Kconfig
index c4791901afb0..606d9e600099 100644
--- a/arch/mips/mach-bcm47xx/Kconfig
+++ b/arch/mips/mach-bcm47xx/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if MACH_MIPS_BCM47XX
 
 choice
diff --git a/arch/mips/mach-bcm47xx/Makefile b/arch/mips/mach-bcm47xx/Makefile
index f3cc6684b896..d19b1f29501a 100644
--- a/arch/mips/mach-bcm47xx/Makefile
+++ b/arch/mips/mach-bcm47xx/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += reset.o
diff --git a/arch/mips/mach-loongson/Kconfig b/arch/mips/mach-loongson/Kconfig
index ab7ccd0cb569..38d05e415be4 100644
--- a/arch/mips/mach-loongson/Kconfig
+++ b/arch/mips/mach-loongson/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if MACH_MIPS_LOONGSON
 
 choice
diff --git a/arch/mips/mach-loongson/Makefile b/arch/mips/mach-loongson/Makefile
index 52b36f3cf946..451c572e76cb 100644
--- a/arch/mips/mach-loongson/Makefile
+++ b/arch/mips/mach-loongson/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += loongson1_reset.o
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index 467107514006..cf061f667057 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if MACH_MIPS_MALTA
 
 config BOARD_QEMU_MALTA
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index 7d56f215b034..d937083bbb0a 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_PCI) += pci.o
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index ae8093d1a311..954e295fd149 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if MACH_MIPS_XBURST
 
 config CPU_JZ4755
diff --git a/arch/mips/mach-xburst/Makefile b/arch/mips/mach-xburst/Makefile
index e5634ba9cc4c..0d2bb542c790 100644
--- a/arch/mips/mach-xburst/Makefile
+++ b/arch/mips/mach-xburst/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_CPU_JZ4755) += csrc-jz4750.o reset-jz4750.o
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index f85c7a6d6d58..38dfbd47243c 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index bd8851e4b306..34b24bec0858 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config OPENRISC
 	bool
 	select OFTREE
diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index 1776f56df97b..609b998de98e 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 KBUILD_DEFCONFIG := generic_defconfig
 
 KBUILD_CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
diff --git a/arch/openrisc/boards/generic/Makefile b/arch/openrisc/boards/generic/Makefile
index d8a3d7f2cc2d..3cdac31b391d 100644
--- a/arch/openrisc/boards/generic/Makefile
+++ b/arch/openrisc/boards/generic/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += generic.o
diff --git a/arch/openrisc/cpu/Makefile b/arch/openrisc/cpu/Makefile
index 1cd7506003be..9828dff95d02 100644
--- a/arch/openrisc/cpu/Makefile
+++ b/arch/openrisc/cpu/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y                 += start.o
 obj-y                 += cpu.o
 obj-y                 += exceptions.o
diff --git a/arch/openrisc/dts/Makefile b/arch/openrisc/dts/Makefile
index 6d6c9a3ce094..f43a28d6b905 100644
--- a/arch/openrisc/dts/Makefile
+++ b/arch/openrisc/dts/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
diff --git a/arch/openrisc/lib/Makefile b/arch/openrisc/lib/Makefile
index 808b09f3aa50..a55a9049e6e9 100644
--- a/arch/openrisc/lib/Makefile
+++ b/arch/openrisc/lib/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y                 += clock.o
 obj-y                 += board.o
 obj-y                 += cpuinfo.o
diff --git a/arch/powerpc/Kbuild b/arch/powerpc/Kbuild
index 65e249338688..e9f7b32848e0 100644
--- a/arch/powerpc/Kbuild
+++ b/arch/powerpc/Kbuild
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_ARCH_MPC85XX) += cpu-85xx/
 obj-y += lib/
 obj-$(CONFIG_FSL_DDR2) += ddr-8xxx/
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 376c1bf42b5e..7525ecef4948 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config PPC
 	bool
 	select HAVE_CONFIGURABLE_TEXT_BASE
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index aa7626049613..ebd8fe60d3f1 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 KBUILD_DEFCONFIG := p2020rdb_defconfig
 
 KBUILD_CPPFLAGS += -ffixed-r14 -m32 	\
diff --git a/arch/powerpc/boards/freescale-p1010rdb/Makefile b/arch/powerpc/boards/freescale-p1010rdb/Makefile
index a7b64eef4d34..e54ee8ee43fa 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/Makefile
+++ b/arch/powerpc/boards/freescale-p1010rdb/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y	+= p1010rdb.o
 obj-y	+= law.o
 obj-y	+= tlb.o
diff --git a/arch/powerpc/boards/freescale-p1022ds/Makefile b/arch/powerpc/boards/freescale-p1022ds/Makefile
index 48867fa851ee..1d969d48ebb2 100644
--- a/arch/powerpc/boards/freescale-p1022ds/Makefile
+++ b/arch/powerpc/boards/freescale-p1022ds/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y	+= p1022ds.o
 obj-y	+= law.o
 obj-y	+= tlb.o
diff --git a/arch/powerpc/boards/freescale-p2020rdb/Makefile b/arch/powerpc/boards/freescale-p2020rdb/Makefile
index b2497f695cc7..ff0cdd657c94 100644
--- a/arch/powerpc/boards/freescale-p2020rdb/Makefile
+++ b/arch/powerpc/boards/freescale-p2020rdb/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y	+= p2020rdb.o
 obj-y	+= law.o
 obj-y	+= tlb.o
diff --git a/arch/powerpc/boards/owc-da923rc/Makefile b/arch/powerpc/boards/owc-da923rc/Makefile
index 4cf6c5cf3c90..78b6885c0873 100644
--- a/arch/powerpc/boards/owc-da923rc/Makefile
+++ b/arch/powerpc/boards/owc-da923rc/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += da923rc.o
 obj-y += tlb.o
 obj-y += law.o
diff --git a/arch/powerpc/boards/pcm030/Makefile b/arch/powerpc/boards/pcm030/Makefile
index 4e5dc4f57bcd..95dd0610437c 100644
--- a/arch/powerpc/boards/pcm030/Makefile
+++ b/arch/powerpc/boards/pcm030/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += pcm030.o eeprom.o
 extra-y += barebox.lds
diff --git a/arch/powerpc/cpu-85xx/Makefile b/arch/powerpc/cpu-85xx/Makefile
index c649c4ec2530..c7c5c8a00663 100644
--- a/arch/powerpc/cpu-85xx/Makefile
+++ b/arch/powerpc/cpu-85xx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y			+= traps.o
 obj-y			+= tlb.o
 obj-$(CONFIG_MMU)	+= mmu.o
diff --git a/arch/powerpc/ddr-8xxx/Makefile b/arch/powerpc/ddr-8xxx/Makefile
index 43ae3a41df4b..651fe050f65b 100644
--- a/arch/powerpc/ddr-8xxx/Makefile
+++ b/arch/powerpc/ddr-8xxx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y	+=  	main.o util.o ctrl_regs.o options.o lc_common_dimm_params.o
 obj-y	+=	ddr_setctrl.o
 obj-$(CONFIG_FSL_DDR2)	+= ddr2_dimm_params.o
diff --git a/arch/powerpc/lib/Makefile b/arch/powerpc/lib/Makefile
index 405351c19929..65729953e693 100644
--- a/arch/powerpc/lib/Makefile
+++ b/arch/powerpc/lib/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += bat_rw.o
 obj-y += board.o
 obj-y += extable.o
diff --git a/arch/powerpc/mach-mpc5xxx/Kconfig b/arch/powerpc/mach-mpc5xxx/Kconfig
index 4da947dc6cfc..e78c2fa350b1 100644
--- a/arch/powerpc/mach-mpc5xxx/Kconfig
+++ b/arch/powerpc/mach-mpc5xxx/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_MPC5XXX
 
 config ARCH_TEXT_BASE
diff --git a/arch/powerpc/mach-mpc5xxx/Makefile b/arch/powerpc/mach-mpc5xxx/Makefile
index 101d0618152a..9fc45c08bb31 100644
--- a/arch/powerpc/mach-mpc5xxx/Makefile
+++ b/arch/powerpc/mach-mpc5xxx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y 				+= cpu.o
 obj-y				+= cpu_init.o
 obj-y				+= loadtask.o
diff --git a/arch/powerpc/mach-mpc85xx/Kconfig b/arch/powerpc/mach-mpc85xx/Kconfig
index aa518b98fca8..550c554286d7 100644
--- a/arch/powerpc/mach-mpc85xx/Kconfig
+++ b/arch/powerpc/mach-mpc85xx/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 if ARCH_MPC85XX
 
 config MMU
diff --git a/arch/powerpc/mach-mpc85xx/Makefile b/arch/powerpc/mach-mpc85xx/Makefile
index 9886c7da45d6..3e23c1b8125d 100644
--- a/arch/powerpc/mach-mpc85xx/Makefile
+++ b/arch/powerpc/mach-mpc85xx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y 			+= cpuid.o
 obj-y 			+= cpu.o
 obj-y 			+= cpu_init.o
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 8c6669718554..e093ed4226de 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config RISCV
 	def_bool y
 	select GENERIC_FIND_NEXT_BIT
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 9f2a4f825ebb..828b65a0c177 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menu "SoC selection"
 
 config SOC_ERIZO
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 23ea6178a25a..6fbf1d4dddbf 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 KBUILD_DEFCONFIG := virt64_defconfig
 
 KBUILD_CPPFLAGS += -fno-strict-aliasing
diff --git a/arch/riscv/boards/riscvemu/Makefile b/arch/riscv/boards/riscvemu/Makefile
index dcfc2937d325..ad283446eaf1 100644
--- a/arch/riscv/boards/riscvemu/Makefile
+++ b/arch/riscv/boards/riscvemu/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 01078bca971f..a8bca8757f28 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 source "scripts/Kconfig.include"
 
 config SANDBOX
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 5fc7e227be67..2cf51fa34917 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 KBUILD_DEFCONFIG := sandbox_defconfig
 
 KBUILD_CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing -fvisibility=hidden
diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index ed01cb9c3e25..11688c5aba45 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += board.o
 obj-y += clock.o
 obj-y += hostfile.o
diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
index c8d83141ceab..9af91cb72c03 100644
--- a/arch/sandbox/dts/Makefile
+++ b/arch/sandbox/dts/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_OFTREE) += \
 	sandbox.dtb.o
 
diff --git a/arch/sandbox/lib/Makefile b/arch/sandbox/lib/Makefile
index b32ca6aaf804..9535305d5bfa 100644
--- a/arch/sandbox/lib/Makefile
+++ b/arch/sandbox/lib/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_ARCH_HAS_STACK_DUMP) += unwind.o
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 5d0c938ce68c..ebcbe5833b26 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 machine-y := sandbox
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index f40b14dddc00..5e2e26cd6e5b 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -1,6 +1,5 @@
-#
-#
-#
+# SPDX-License-Identifier: GPL-2.0-only
+
 config X86
 	bool
 	select HAS_KALLSYMS
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index a0ce8c17f181..dba5b196b310 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 KBUILD_DEFCONFIG := efi_defconfig
 
 KBUILD_CPPFLAGS += -D__X86__
diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile
index 360aebf56936..d713065fd395 100644
--- a/arch/x86/lib/Makefile
+++ b/arch/x86/lib/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_X86_32) += setjmp_32.o
 obj-$(CONFIG_X86_64) += setjmp_64.o
diff --git a/arch/x86/mach-efi/Makefile b/arch/x86/mach-efi/Makefile
index f633e7c7ed95..bddbac8f66b8 100644
--- a/arch/x86/mach-efi/Makefile
+++ b/arch/x86/mach-efi/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_X86_64) += reloc_x86_64.o crt0-efi-x86_64.o
 obj-$(CONFIG_X86_32) += reloc_ia32.o crt0-efi-ia32.o
 obj-y += clocksource.o
diff --git a/common/Kconfig b/common/Kconfig
index e540cba7ebaa..276b2c0d8f7d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 source "common/boards/Kconfig"
 
 config GREGORIAN_CALENDER
diff --git a/common/Makefile b/common/Makefile
index f4496c4d9b69..35f2120496ea 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y				+= boards/
 obj-y				+= memory.o
 obj-y				+= memory_display.o
diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
index be9405a6495f..7f12383082c4 100644
--- a/common/partitions/Kconfig
+++ b/common/partitions/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config PARTITION_DISK
 	depends on PARTITION
 	depends on BLOCK
diff --git a/common/partitions/Makefile b/common/partitions/Makefile
index 2b0c5b4b9c77..d304b6f8d587 100644
--- a/common/partitions/Makefile
+++ b/common/partitions/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_PARTITION_DISK_DOS)	+= dos.o
 obj-$(CONFIG_PARTITION_DISK_EFI)	+= efi.o
diff --git a/common/ratp/Kconfig b/common/ratp/Kconfig
index 25150addfd75..43720e30a0e4 100644
--- a/common/ratp/Kconfig
+++ b/common/ratp/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 config CONSOLE_RATP
 	bool
@@ -28,4 +29,4 @@ config RATP_CMD_GPIO
 	depends on GENERIC_GPIO
 	prompt "RATP GPIO support"
 	help
-	  This option adds support for GPIO get/set/direction commands via RATP.
\ No newline at end of file
+	  This option adds support for GPIO get/set/direction commands via RATP.
diff --git a/common/ratp/Makefile b/common/ratp/Makefile
index 71288bcb8ceb..e37ccca1fa5b 100644
--- a/common/ratp/Makefile
+++ b/common/ratp/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += ratp.o
 obj-y += ping.o
 obj-y += getenv.o
diff --git a/common/state/Makefile b/common/state/Makefile
index fcf9add52cbe..93215dd06921 100644
--- a/common/state/Makefile
+++ b/common/state/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += state.o
 obj-y += state_variables.o
 obj-y += backend_format_dtb.o
diff --git a/crypto/Kconfig b/crypto/Kconfig
index ff83a40f5b43..3b68836b3482 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menu "Crypto support"
 
 config CRC32
diff --git a/crypto/Makefile b/crypto/Makefile
index 5da58d799882..be0f79d4e39c 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_CRC32)	+= crc32.o
 obj-pbl-$(CONFIG_CRC_ITU_T)	+= crc-itu-t.o
 obj-$(CONFIG_CRC7)	+= crc7.o
diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index 68790321187d..1eaca9f41087 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
diff --git a/firmware/Kconfig b/firmware/Kconfig
index b44753892776..b4a6fd913709 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menu "Firmware files"
 
 config EXTRA_FIRMWARE_DIR
diff --git a/fs/Kconfig b/fs/Kconfig
index e0405de334ee..aeba00073eed 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 menu "Filesystem support"
 
diff --git a/fs/Makefile b/fs/Makefile
index fa950941de92..6160ef4e1a0b 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_FS_CRAMFS)	+= cramfs/
 obj-$(CONFIG_FS_EXT4)	+= ext4/
 obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
diff --git a/fs/cramfs/Makefile b/fs/cramfs/Makefile
index 4e84a98fe119..1b54096664b2 100644
--- a/fs/cramfs/Makefile
+++ b/fs/cramfs/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y	+= cramfs.o
 obj-y	+= uncompress.o
diff --git a/fs/ext4/Kconfig b/fs/ext4/Kconfig
index f36043d9a743..cb01675507ca 100644
--- a/fs/ext4/Kconfig
+++ b/fs/ext4/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config FS_EXT4
 	bool
 	prompt "ext4 filesystem support"
diff --git a/fs/ext4/Makefile b/fs/ext4/Makefile
index 5084e3fb25ab..223f50e470f6 100644
--- a/fs/ext4/Makefile
+++ b/fs/ext4/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_FS_EXT4) += ext4fs.o ext4_common.o ext_barebox.o
diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
index bc3b4b69e870..8cd3b604baeb 100644
--- a/fs/fat/Kconfig
+++ b/fs/fat/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig FS_FAT
 	bool
 	select FS_LEGACY
diff --git a/fs/fat/Makefile b/fs/fat/Makefile
index fe47569bda09..7a7a5ccdc688 100644
--- a/fs/fat/Makefile
+++ b/fs/fat/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += fat.o
 pbl-y += fat-pbl.o
 obj-pbl-y += ff.o fat-diskio.o
diff --git a/fs/jffs2/Kconfig b/fs/jffs2/Kconfig
index 3121d369b470..329e7b806a6e 100644
--- a/fs/jffs2/Kconfig
+++ b/fs/jffs2/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig FS_JFFS2
 	bool
 	select CRC32
diff --git a/fs/jffs2/Makefile b/fs/jffs2/Makefile
index a4da48d3c3c6..3c5bfd261c48 100644
--- a/fs/jffs2/Makefile
+++ b/fs/jffs2/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += compr.o dir.o nodelist.o malloc.o
 obj-y += read.o readinode.o scan.o
 obj-y += build.o fs.o
diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
index 30c2de19c82a..ff9091d3f39f 100644
--- a/fs/pstore/Kconfig
+++ b/fs/pstore/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig FS_PSTORE
 	select FS_LEGACY
 	bool
diff --git a/fs/pstore/Makefile b/fs/pstore/Makefile
index c4043e1a8fb2..18475497a3f3 100644
--- a/fs/pstore/Makefile
+++ b/fs/pstore/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #
 # Makefile for the linux pstorefs routines.
 #
diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index 19b8297af622..af187a2a8ac7 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig FS_SQUASHFS
 	bool
 	prompt "squashfs support"
diff --git a/fs/squashfs/Makefile b/fs/squashfs/Makefile
index 81fc7e570d81..59a78a24b0d7 100644
--- a/fs/squashfs/Makefile
+++ b/fs/squashfs/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y	+= squashfs.o
 obj-y	+= block.o
 obj-y	+= cache.o
diff --git a/fs/ubifs/Kconfig b/fs/ubifs/Kconfig
index 889a2be97a5f..ae58c2b7f230 100644
--- a/fs/ubifs/Kconfig
+++ b/fs/ubifs/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig FS_UBIFS
 	bool
 	depends on MTD_UBI
diff --git a/fs/ubifs/Makefile b/fs/ubifs/Makefile
index d8c4b2299eb8..7a1ce4e8fcc0 100644
--- a/fs/ubifs/Makefile
+++ b/fs/ubifs/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += ubifs.o io.o super.o sb.o master.o
 obj-y += scan.o dir.o misc.o
 obj-y += tnc.o tnc_misc.o debug.o
diff --git a/images/Makefile b/images/Makefile
index cc330d957597..5e2b9ecaaa9f 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile
 #
diff --git a/lib/Kconfig b/lib/Kconfig
index 718033e56e64..53c0e70e3a7c 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menu "Library routines"
 config PARAMETER
 	bool
diff --git a/lib/Makefile b/lib/Makefile
index 9b37d847e0cc..3f6653d74e9a 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y			+= bcd.o
 obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
 obj-pbl-y		+= ctype.o
diff --git a/lib/bootstrap/Kconfig b/lib/bootstrap/Kconfig
index 645f0b4b78dd..5cd6035beef4 100644
--- a/lib/bootstrap/Kconfig
+++ b/lib/bootstrap/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig BOOTSTRAP
 	bool "Library bootstrap routines"
 	depends on SHELL_NONE
diff --git a/lib/bootstrap/Makefile b/lib/bootstrap/Makefile
index cbaa49f9d9da..295d63e07458 100644
--- a/lib/bootstrap/Makefile
+++ b/lib/bootstrap/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y				+= common.o
 obj-$(CONFIG_BOOTSTRAP_DEVFS)	+= devfs.o
 obj-$(CONFIG_BOOTSTRAP_DISK)	+= disk.o
diff --git a/lib/fonts/Kconfig b/lib/fonts/Kconfig
index e1a736d137c2..3201364cae27 100644
--- a/lib/fonts/Kconfig
+++ b/lib/fonts/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #
 # Font configuration
 #
diff --git a/lib/fonts/Makefile b/lib/fonts/Makefile
index 394e2c5e4c18..1eae8ee67b35 100644
--- a/lib/fonts/Makefile
+++ b/lib/fonts/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 # Font handling
 
 font-objs := fonts.o
diff --git a/lib/gui/Kconfig b/lib/gui/Kconfig
index 2625d9fb2fbe..d102604335b5 100644
--- a/lib/gui/Kconfig
+++ b/lib/gui/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menu "Library gui routines"
 
 config IMAGE_RENDERER
diff --git a/lib/gui/Makefile b/lib/gui/Makefile
index 31e66225d7c0..59caa8fbeb8a 100644
--- a/lib/gui/Makefile
+++ b/lib/gui/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_BMP)	+= bmp.o
 obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
 obj-$(CONFIG_PNG)	+= png.o
diff --git a/lib/kasan/Kconfig b/lib/kasan/Kconfig
index 7a18cf95be87..46fc4f263b3e 100644
--- a/lib/kasan/Kconfig
+++ b/lib/kasan/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 source "scripts/Kconfig.include"
 
 config HAVE_ARCH_KASAN
diff --git a/lib/kasan/Makefile b/lib/kasan/Makefile
index 31e9d890d538..e3f4bb61f900 100644
--- a/lib/kasan/Makefile
+++ b/lib/kasan/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += generic_report.o generic.o report.o common.o test_kasan.o
 KASAN_SANITIZE_generic_report.o := n
diff --git a/lib/logo/Kconfig b/lib/logo/Kconfig
index 7d55f7fa2727..56ec76afb6cf 100644
--- a/lib/logo/Kconfig
+++ b/lib/logo/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig BAREBOX_LOGO
 	bool "include barebox logos in build"
 	help
diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index f08beef76b95..3e36cf911f94 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 OPTS_barebox-logo-w64.bblogo = -resize 64
 bblogo-$(CONFIG_BAREBOX_LOGO_64) += barebox-logo-w64
diff --git a/lib/lz4/Makefile b/lib/lz4/Makefile
index 7f548c6d1c5c..7156ec914589 100644
--- a/lib/lz4/Makefile
+++ b/lib/lz4/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_LZ4_DECOMPRESS) += lz4_decompress.o
diff --git a/lib/lzo/Kconfig b/lib/lzo/Kconfig
index 17b0083236af..2ead1321e862 100644
--- a/lib/lzo/Kconfig
+++ b/lib/lzo/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config LZO_DECOMPRESS
 	bool "include lzo uncompression support"
 	select UNCOMPRESS
diff --git a/lib/lzo/Makefile b/lib/lzo/Makefile
index 0e576a1c10d2..4ab28ff6f5cd 100644
--- a/lib/lzo/Makefile
+++ b/lib/lzo/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_LZO_DECOMPRESS) += lzo1x_decompress_safe.o
diff --git a/lib/math/Makefile b/lib/math/Makefile
index 756d7dd90d76..2830dedb2ff9 100644
--- a/lib/math/Makefile
+++ b/lib/math/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += div64.o
 pbl-y += div64.o
 obj-y += rational.o
diff --git a/lib/reed_solomon/Makefile b/lib/reed_solomon/Makefile
index c3d7136827ed..f7475981b92e 100644
--- a/lib/reed_solomon/Makefile
+++ b/lib/reed_solomon/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #
 # This is a modified version of reed solomon lib,
 #
diff --git a/lib/xz/Makefile b/lib/xz/Makefile
index 86ba5507335a..23581d2d8c6b 100644
--- a/lib/xz/Makefile
+++ b/lib/xz/Makefile
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_XZ_DECOMPRESS) += xz_crc32.o xz_dec_bcj.o
 obj-$(CONFIG_XZ_DECOMPRESS) += xz_dec_lzma2.o xz_dec_stream.o
diff --git a/lib/zlib_inflate/Makefile b/lib/zlib_inflate/Makefile
index 8e95fcd3c939..bfe12b0d6ed0 100644
--- a/lib/zlib_inflate/Makefile
+++ b/lib/zlib_inflate/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #
 # This is a modified version of zlib, which does all memory
 # allocation ahead of time.
diff --git a/lib/zstd/Makefile b/lib/zstd/Makefile
index 0c4f56c50c5b..4e8689a4855d 100644
--- a/lib/zstd/Makefile
+++ b/lib/zstd/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_ZSTD_DECOMPRESS) += zstd_decompress.o
 
 ccflags-y += -O3
diff --git a/net/Kconfig b/net/Kconfig
index 3512055c456a..59f14c23cba2 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig NET
 	bool "Networking Support"
 	select POLLER
diff --git a/net/Makefile b/net/Makefile
index 962b2dec58e8..c93d0772c3e4 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y			+= lib.o
 obj-$(CONFIG_NET)	+= eth.o
 obj-$(CONFIG_NET)	+= net.o
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 5fc9971084a5..ce0acbb646c7 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config HAVE_PBL_IMAGE
 	bool
 
diff --git a/pbl/Makefile b/pbl/Makefile
index 9faa56ac91d1..f6e98e78be3f 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #
 # only unsed by the pbl
 #
diff --git a/scripts/Kconfig b/scripts/Kconfig
index 96b0d26f8874..1ec907b5f1cc 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menu "Host Tools"
 
 config COMPILE_HOST_TOOLS
diff --git a/scripts/Makefile b/scripts/Makefile
index dc5fa75f908b..2a17058333e7 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 ###
 # scripts contains sources for various helper programs used throughout
 # barebox for the build process.
diff --git a/scripts/imx/Kconfig b/scripts/imx/Kconfig
index ef83fa14dd14..759f5521a5e5 100644
--- a/scripts/imx/Kconfig
+++ b/scripts/imx/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config ARCH_IMX_USBLOADER
 	depends on ARCH_MXS || ARCH_IMX || COMPILE_HOST_TOOLS
 	bool "imx-usb-loader"
diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index a7f487a0452c..d62277bb5430 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
 hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
 
diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index 9926ed08dc57..b381877a8330 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 hostprogs-always-y	+= modpost mk_elfconfig
 always-y		+= empty.o
 
diff --git a/scripts/tegra/Makefile b/scripts/tegra/Makefile
index dec0b529d6a4..2c682786b168 100644
--- a/scripts/tegra/Makefile
+++ b/scripts/tegra/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 hostprogs-always-$(CONFIG_ARCH_TEGRA) += cbootimage
 
 HOSTLDLIBS_cbootimage  = '-lm'
diff --git a/test/Kconfig b/test/Kconfig
index eece702e68aa..958b483ea946 100644
--- a/test/Kconfig
+++ b/test/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 menuconfig TEST
 	bool "Testing"
 
diff --git a/test/Makefile b/test/Makefile
index 1b9eb2171a82..ac2aa2843518 100644
--- a/test/Makefile
+++ b/test/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += self/
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

