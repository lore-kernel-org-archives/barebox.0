Delivery-date: Fri, 24 Mar 2023 13:20:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgOu-00DC5o-RL
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 13:20:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgOu-0003fU-2t
	for lore@pengutronix.de; Fri, 24 Mar 2023 13:20:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ms1m/4jh4+CBlmR+rykNs0mLBTJTgH5xHB+dfV6ZZAo=; b=rbz4s0zallmjc9U3BFTNxbsIle
	FuI4xP4wFnTqnkZQJngRr5WxsF6zvAHVuaoFy/NjxPVuu50Wl6JOvveCXh5KsqENQNJb+FagO8HxX
	bxyXnAMxI2wZhUNGUUpSW1f/rz78ksPjykzeFIea0JZfwpDem3VAaen0DeUVAJgCHRauTqN3ayr1g
	0vaYBg0Q5YEuZ324fRO2ktiUDltslBDhJQtt1QPigsVphLJdSfQFv1jieTAv74YJESHhP/Lpe8gBy
	wgoK51LeIVlt0Vg7rN5h3KFSMqXcFckEBJap9o7U/EEUkvp+OJU4ofLsJdqo61CepIMlQi+pboRdd
	fKxWgnGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgNh-004Kba-22;
	Fri, 24 Mar 2023 12:18:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgNe-004KYR-0P
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 12:18:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNX-0003Qn-5Q; Fri, 24 Mar 2023 13:18:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNW-006Na1-HM; Fri, 24 Mar 2023 13:18:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNV-00H4y3-HN; Fri, 24 Mar 2023 13:18:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 24 Mar 2023 13:18:37 +0100
Message-Id: <20230324121840.2375026-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_051850_161422_75CA7368 
X-CRM114-Status: GOOD (  10.37  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] ARM: straighten 32bit/64bit Kconfig options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This straightens the 32bit/64bit support Kconfig options for ARM.
With this the 64bit option must be enabled/disabled first in the
toplevel menu and then only the SoCs/boards support by that choice
are shown.

Sascha Hauer (3):
  ARM: remove freescale-mx21-ads_defconfig
  ARM: update defconfigs
  ARM: cleanup 32bit/64bit support in Kconfig

 arch/arm/Kconfig                              | 52 +++++++--------
 arch/arm/configs/am335x_mlo_defconfig         |  2 +-
 .../arm/configs/am35xx_pfc200_xload_defconfig |  5 --
 arch/arm/configs/animeo_ip_defconfig          |  7 +-
 arch/arm/configs/archosg9_xload_defconfig     |  2 +-
 arch/arm/configs/at91_multi_defconfig         |  1 -
 arch/arm/configs/at91rm9200ek_defconfig       |  1 -
 arch/arm/configs/at91sam9260ek_defconfig      |  7 +-
 .../configs/at91sam9261ek_bootstrap_defconfig |  6 +-
 arch/arm/configs/at91sam9261ek_defconfig      |  7 +-
 .../at91sam9261ek_first_stage_defconfig       |  7 +-
 arch/arm/configs/at91sam9g10ek_defconfig      |  7 +-
 arch/arm/configs/at91sam9g20ek_defconfig      |  7 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig   |  7 +-
 arch/arm/configs/at91sam9m10ihd_defconfig     |  6 +-
 arch/arm/configs/at91sam9n12ek_defconfig      |  3 +-
 arch/arm/configs/canon-a1100_defconfig        |  2 -
 arch/arm/configs/clps711x_defconfig           |  1 -
 arch/arm/configs/dss11_defconfig              |  2 -
 arch/arm/configs/edb93xx_defconfig            |  1 -
 arch/arm/configs/freescale-mx21-ads_defconfig | 38 -----------
 arch/arm/configs/haba_knx_lite_defconfig      |  7 +-
 arch/arm/configs/imx28_defconfig              |  1 -
 arch/arm/configs/imx_defconfig                |  3 -
 arch/arm/configs/imx_v7_defconfig             | 64 +++++++++----------
 arch/arm/configs/imx_v8_defconfig             |  8 +--
 arch/arm/configs/kindle-mx50_defconfig        |  1 -
 arch/arm/configs/layerscape_defconfig         | 13 ++--
 arch/arm/configs/layerscape_v7_defconfig      | 10 +--
 arch/arm/configs/lubbock_defconfig            |  2 +-
 arch/arm/configs/mainstone_defconfig          |  2 +-
 arch/arm/configs/mioa701_defconfig            |  3 +-
 arch/arm/configs/module-mb7707_defconfig      |  1 -
 arch/arm/configs/mvebu_defconfig              |  2 +-
 arch/arm/configs/nhk8815_defconfig            |  1 -
 arch/arm/configs/omap3530_beagle_defconfig    |  2 +-
 .../configs/omap3530_beagle_xload_defconfig   |  5 --
 .../phytec-phycard-omap3-xload_defconfig      |  6 +-
 .../configs/phytec-phycard-omap3_defconfig    |  1 -
 .../phytec-phycard-omap4-xload_defconfig      |  5 --
 .../configs/phytec-phycard-omap4_defconfig    |  1 -
 ...hytec-phycore-omap4460-xload-mmc_defconfig |  2 +-
 ...ytec-phycore-omap4460-xload-nand_defconfig |  7 +-
 .../configs/phytec-phycore-omap4460_defconfig |  3 +-
 arch/arm/configs/pm9261_defconfig             |  1 -
 arch/arm/configs/pm9263_defconfig             |  1 -
 arch/arm/configs/pm9g45_defconfig             |  7 +-
 arch/arm/configs/qemu_virt64_defconfig        |  1 +
 arch/arm/configs/qil_a9260_defconfig          |  7 +-
 arch/arm/configs/qil_a9g20_defconfig          |  7 +-
 arch/arm/configs/rockchip_v7a_defconfig       |  1 -
 arch/arm/configs/sama5d3xek_defconfig         |  9 +--
 arch/arm/configs/sama5d4_xplained_defconfig   |  7 +-
 arch/arm/configs/sama5d4ek_defconfig          |  7 +-
 arch/arm/configs/socfpga-arria10_defconfig    |  2 -
 arch/arm/configs/socfpga_defconfig            |  1 -
 arch/arm/configs/stm32mp_defconfig            |  1 -
 arch/arm/configs/telit_evk_pro3_defconfig     |  6 +-
 arch/arm/configs/tny_a9260_defconfig          |  7 +-
 .../arm/configs/tny_a9263_bootstrap_defconfig |  6 +-
 arch/arm/configs/tny_a9263_defconfig          |  7 +-
 arch/arm/configs/tny_a9g20_defconfig          |  7 +-
 arch/arm/configs/usb_a9260_defconfig          |  7 +-
 .../arm/configs/usb_a9263_bootstrap_defconfig |  6 +-
 arch/arm/configs/usb_a9263_defconfig          |  7 +-
 arch/arm/configs/usb_a9g20_defconfig          |  7 +-
 .../arm/configs/versatilepb_arm1176_defconfig |  3 +-
 arch/arm/configs/versatilepb_defconfig        |  3 +-
 arch/arm/configs/virt2real_defconfig          |  1 -
 arch/arm/configs/zii_vf610_dev_defconfig      |  1 -
 arch/arm/configs/zylonite310_defconfig        |  2 +-
 arch/arm/configs/zynqmp_defconfig             |  3 +-
 arch/arm/cpu/Kconfig                          |  5 --
 arch/arm/mach-layerscape/Kconfig              |  9 ++-
 74 files changed, 120 insertions(+), 340 deletions(-)
 delete mode 100644 arch/arm/configs/freescale-mx21-ads_defconfig

-- 
2.30.2



