Delivery-date: Mon, 02 Jun 2025 11:59:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1wx-002uuw-1e
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:59:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1wr-0004ju-RH
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QfS7LIXIJJko1wc2S7KY4tHeSl3j73RDVpfLw2PfGtQ=; b=IAJy1VwK0nlr2a8FRyIJRT9YeT
	uEt6qKKU/qGJ/SuPOH+Wv/B0qJo5HPKuTSy7JaGznPwY/F6OQtFx+LvdqcHPTGLaJTlRjjd3o+Lsl
	w+BopBJGWKTpAkKVtrEBhQ8WwjLyHJ538Fj0eKtvCtS3birexa4w7Ry6pxi6PjyooyyrsTCzVkQ1F
	3fEskUQdm3Pzuk8g+9oA6e+nw5ohAXh1h8VML7I+vl8RShoMX4AIZ1sgI8CGa9aT0JVToDmLWfA0V
	i2eKqGiDahW2prRYpuUVhJ98EoOW0VkXVZ12tv9Zeyd0XWJ6z/AkbHDh41+TC6naw4+SRmIZOcfJz
	8L/61g6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1vk-00000007896-0xm8;
	Mon, 02 Jun 2025 09:58:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1vJ-0000000784s-3AVC
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:57:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uM1vI-0003r3-9B; Mon, 02 Jun 2025 11:57:40 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 11:57:36 +0200
Message-Id: <20250602095738.822334-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250602095738.822334-1-a.fatoum@barebox.org>
References: <20250602095738.822334-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] treewide: dts: describe deep probe support in device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have CONFIG_DEEP_PROBE_DEFAULT, annotate our device trees to
explicitly opt-out and opt-in from deep probe.

The opt-out is necessary, so boards aren't broken by whether we have
CONFIG_DEEP_PROBE_DEFAULT enabled or not. The opt-in is optional,
because all deep-probe enabled boards have a BAREBOX_DEEP_PROBE_ENABLE
in board code, but in future we could omit that.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - Collected Marco's R-b
---
 arch/arm/dts/ac-sxb.dts                                      | 2 ++
 arch/arm/dts/am335x-afi-gf.dts                               | 1 +
 arch/arm/dts/am335x-baltos-minimal.dts                       | 1 +
 arch/arm/dts/am335x-bone-common.dts                          | 1 +
 arch/arm/dts/am335x-bone.dts                                 | 1 +
 arch/arm/dts/am335x-boneblack.dts                            | 2 ++
 arch/arm/dts/am335x-myirtech-myd-mlo.dts                     | 4 ++++
 arch/arm/dts/am335x-myirtech-myd.dts                         | 2 ++
 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts               | 1 +
 arch/arm/dts/am335x-phytec-phycard-som.dts                   | 1 +
 arch/arm/dts/am335x-phytec-phycore-som-emmc.dts              | 1 +
 arch/arm/dts/am335x-phytec-phycore-som-mlo.dts               | 1 +
 arch/arm/dts/am335x-phytec-phycore-som-nand-no-eeprom.dts    | 1 +
 .../dts/am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts  | 1 +
 arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts       | 1 +
 arch/arm/dts/am335x-phytec-phycore-som-nand.dts              | 1 +
 arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts               | 1 +
 arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts         | 1 +
 arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts  | 1 +
 arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts            | 1 +
 arch/arm/dts/am335x-phytec-phyflex-som.dts                   | 1 +
 arch/arm/dts/am35xx-pfc-750_820x.dts                         | 1 +
 arch/arm/dts/armada-370-mirabox-bb.dts                       | 2 ++
 arch/arm/dts/armada-370-rn104-bb.dts                         | 2 ++
 arch/arm/dts/armada-385-turris-omnia-bb.dts                  | 2 ++
 arch/arm/dts/armada-xp-db-bb.dts                             | 2 ++
 arch/arm/dts/armada-xp-gp-bb.dts                             | 2 ++
 arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts                | 4 ++++
 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts               | 2 ++
 arch/arm/dts/armada-xp-rn2120-bb.dts                         | 2 ++
 arch/arm/dts/at91-microchip-ksz9477-evb.dts                  | 2 ++
 arch/arm/dts/at91-microchip-sama5d3-eds.dts                  | 2 ++
 arch/arm/dts/at91-sama5d27_giantboard.dts                    | 1 +
 arch/arm/dts/at91-sama5d27_som1_ek.dts                       | 2 ++
 arch/arm/dts/at91-sama5d3_xplained.dts                       | 1 +
 arch/arm/dts/at91-sama5d4_wifx_l1.dts                        | 1 +
 arch/arm/dts/at91-skov-arm9cpu.dts                           | 1 +
 arch/arm/dts/at91sam9263ek.dts                               | 3 ++-
 arch/arm/dts/at91sam9x5ek.dts                                | 2 ++
 arch/arm/dts/bcm2711-rpi-cm4s-io.dts                         | 1 +
 arch/arm/dts/bcm2711-rpi.dtsi                                | 4 ++++
 arch/arm/dts/bcm2835-rpi.dts                                 | 4 ++++
 arch/arm/dts/bcm2836-rpi-2.dts                               | 4 ++++
 arch/arm/dts/bcm2837-rpi-3.dts                               | 4 ++++
 arch/arm/dts/bcm2837-rpi-cm3.dts                             | 2 ++
 arch/arm/dts/dove-cubox-bb.dts                               | 2 ++
 arch/arm/dts/ep7212-clep7212.dts                             | 1 +
 arch/arm/dts/fsl-ls1021a-iot.dts                             | 2 ++
 arch/arm/dts/fsl-ls1028a-rdb.dts                             | 2 ++
 arch/arm/dts/fsl-ls1046a-rdb.dts                             | 2 ++
 arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts            | 2 ++
 arch/arm/dts/imx1-scb9328.dts                                | 1 +
 arch/arm/dts/imx25-karo-tx25.dts                             | 2 ++
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts               | 2 ++
 arch/arm/dts/imx27-phytec-phycore-rdk.dts                    | 2 ++
 arch/arm/dts/imx28-duckbill.dts                              | 2 ++
 arch/arm/dts/imx28-evk.dts                                   | 2 ++
 arch/arm/dts/imx50-kindle-d01100.dts                         | 1 +
 arch/arm/dts/imx50-kindle-d01200.dts                         | 1 +
 arch/arm/dts/imx50-kindle-ey21.dts                           | 1 +
 arch/arm/dts/imx51-babbage.dts                               | 2 ++
 arch/arm/dts/imx51-ccxmx51.dts                               | 2 ++
 arch/arm/dts/imx51-genesi-efika-sb.dts                       | 1 +
 arch/arm/dts/imx51-zii-rdu1.dts                              | 1 +
 arch/arm/dts/imx51-zii-scu2-mezz.dts                         | 4 ++++
 arch/arm/dts/imx51-zii-scu3-esb.dts                          | 4 ++++
 arch/arm/dts/imx53-ccxmx53.dts                               | 1 +
 arch/arm/dts/imx53-guf-vincell-lt.dts                        | 1 +
 arch/arm/dts/imx53-guf-vincell.dts                           | 1 +
 arch/arm/dts/imx53-mba53.dts                                 | 2 ++
 arch/arm/dts/imx53-qsb.dts                                   | 4 ++++
 arch/arm/dts/imx53-qsrb.dts                                  | 4 ++++
 arch/arm/dts/imx53-tx53-1011.dts                             | 1 +
 arch/arm/dts/imx53-tx53-xx30.dts                             | 1 +
 arch/arm/dts/imx53-voipac-bsb.dts                            | 4 ++++
 arch/arm/dts/imx6dl-advantech-rom-7421.dts                   | 1 +
 arch/arm/dts/imx6dl-alti6p.dts                               | 4 ++++
 arch/arm/dts/imx6dl-cm-fx6.dts                               | 1 +
 arch/arm/dts/imx6dl-colibri-iris.dts                         | 2 ++
 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts                     | 1 +
 arch/arm/dts/imx6dl-eltec-hipercam.dts                       | 1 +
 arch/arm/dts/imx6dl-hummingboard.dts                         | 2 ++
 arch/arm/dts/imx6dl-hummingboard2.dts                        | 1 +
 arch/arm/dts/imx6dl-lanmcu.dts                               | 4 ++++
 arch/arm/dts/imx6dl-mba6x.dts                                | 1 +
 arch/arm/dts/imx6dl-nitrogen6x.dts                           | 4 ++++
 arch/arm/dts/imx6dl-phytec-pbab01.dts                        | 1 +
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts                | 1 +
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts           | 1 +
 arch/arm/dts/imx6dl-plybas.dts                               | 4 ++++
 arch/arm/dts/imx6dl-plym2m.dts                               | 4 ++++
 arch/arm/dts/imx6dl-prtmvt.dts                               | 4 ++++
 arch/arm/dts/imx6dl-prtrvt.dts                               | 4 ++++
 arch/arm/dts/imx6dl-prtvt7.dts                               | 4 ++++
 arch/arm/dts/imx6dl-sabrelite.dts                            | 1 +
 arch/arm/dts/imx6dl-sabresd.dts                              | 1 +
 arch/arm/dts/imx6dl-samx6i.dts                               | 4 ++++
 arch/arm/dts/imx6dl-skov-imx6.dts                            | 1 +
 arch/arm/dts/imx6dl-tx6u.dts                                 | 1 +
 arch/arm/dts/imx6dl-victgo.dts                               | 4 ++++
 arch/arm/dts/imx6dl-vicut1.dts                               | 4 ++++
 arch/arm/dts/imx6dl-wandboard.dts                            | 2 ++
 arch/arm/dts/imx6q-cm-fx6.dts                                | 1 +
 arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts                      | 1 +
 arch/arm/dts/imx6q-dmo-edmqmx6.dts                           | 2 ++
 arch/arm/dts/imx6q-embedsky-e9.dts                           | 2 ++
 arch/arm/dts/imx6q-embedsky-e9.dtsi                          | 1 +
 arch/arm/dts/imx6q-gk802.dts                                 | 4 ++++
 arch/arm/dts/imx6q-guf-santaro.dts                           | 1 +
 arch/arm/dts/imx6q-gw54xx.dts                                | 1 +
 arch/arm/dts/imx6q-h100.dts                                  | 2 ++
 arch/arm/dts/imx6q-hummingboard.dts                          | 2 ++
 arch/arm/dts/imx6q-hummingboard2.dts                         | 1 +
 arch/arm/dts/imx6q-marsboard.dts                             | 2 ++
 arch/arm/dts/imx6q-mba6x.dts                                 | 1 +
 arch/arm/dts/imx6q-nitrogen6x.dts                            | 4 ++++
 arch/arm/dts/imx6q-novena.dts                                | 2 ++
 arch/arm/dts/imx6q-phytec-phycard.dts                        | 1 +
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts               | 1 +
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts               | 2 +-
 arch/arm/dts/imx6q-prti6q.dts                                | 4 ++++
 arch/arm/dts/imx6q-prtwd2.dts                                | 4 ++++
 arch/arm/dts/imx6q-sabrelite.dts                             | 1 +
 arch/arm/dts/imx6q-sabresd.dts                               | 1 +
 arch/arm/dts/imx6q-samx6i.dts                                | 4 ++++
 arch/arm/dts/imx6q-skov-imx6.dts                             | 1 +
 arch/arm/dts/imx6q-tx6q.dts                                  | 1 +
 arch/arm/dts/imx6q-udoo.dts                                  | 1 +
 arch/arm/dts/imx6q-utilite.dts                               | 1 +
 arch/arm/dts/imx6q-var-custom.dts                            | 1 +
 arch/arm/dts/imx6q-vicut1.dts                                | 4 ++++
 arch/arm/dts/imx6q-wandboard.dts                             | 2 ++
 arch/arm/dts/imx6q-zii-rdu2.dts                              | 1 +
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi                      | 2 ++
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi                      | 2 ++
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi                 | 1 +
 arch/arm/dts/imx6qdl-prti6q-emmc.dtsi                        | 2 ++
 arch/arm/dts/imx6qp-nitrogen6_max.dts                        | 4 ++++
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts              | 1 +
 arch/arm/dts/imx6qp-prtwd3.dts                               | 3 +++
 arch/arm/dts/imx6qp-sabresd.dts                              | 1 +
 arch/arm/dts/imx6qp-vicutp.dts                               | 4 ++++
 arch/arm/dts/imx6qp-zii-rdu2.dts                             | 1 +
 arch/arm/dts/imx6s-riotboard.dts                             | 2 ++
 arch/arm/dts/imx6s-skov-imx6.dts                             | 1 +
 arch/arm/dts/imx6sx-sdb.dts                                  | 2 ++
 arch/arm/dts/imx6sx-udoo-neo-full.dts                        | 2 +-
 arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts                       | 2 ++
 arch/arm/dts/imx6ul-liteboard.dts                            | 2 ++
 arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts              | 1 +
 arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts              | 1 +
 arch/arm/dts/imx6ul-pico-hobbit.dts                          | 2 ++
 arch/arm/dts/imx6ul-prti6g.dts                               | 2 ++
 arch/arm/dts/imx6ul-tqma6ul-common.dtsi                      | 2 ++
 arch/arm/dts/imx6ul-webasto-ccbv2.dts                        | 2 ++
 arch/arm/dts/imx6ul-webasto-marvel.dts                       | 1 +
 arch/arm/dts/imx6ull-14x14-evk.dts                           | 2 ++
 arch/arm/dts/imx6ull-jozacp.dts                              | 2 ++
 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts             | 1 +
 arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts          | 1 +
 arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts             | 1 +
 arch/arm/dts/imx7d-flex-concentrator-mfg.dts                 | 2 ++
 arch/arm/dts/imx7d-gome-e143_01.dts                          | 1 +
 arch/arm/dts/imx7d-meerkat96.dts                             | 2 ++
 arch/arm/dts/imx7d-phyboard-zeta.dts                         | 2 ++
 arch/arm/dts/imx7d-sdb.dts                                   | 2 ++
 arch/arm/dts/imx7d-zii-rmu2.dts                              | 4 ++++
 arch/arm/dts/imx7d-zii-rpu2.dts                              | 2 ++
 arch/arm/dts/imx7s-warp.dts                                  | 2 ++
 arch/arm/dts/imx8mm-evk.dts                                  | 4 ++++
 arch/arm/dts/imx8mm-evkb.dts                                 | 1 +
 arch/arm/dts/imx8mm-innocomm-wb15-evk.dts                    | 2 ++
 arch/arm/dts/imx8mm-phyboard-polis-rdk.dts                   | 2 ++
 arch/arm/dts/imx8mm-prt8mm.dts                               | 1 +
 arch/arm/dts/imx8mn-ddr4-evk.dts                             | 4 ++++
 arch/arm/dts/imx8mn-evk.dts                                  | 4 ++++
 arch/arm/dts/imx8mp-congatec-qmx8p.dtsi                      | 5 +++++
 arch/arm/dts/imx8mp-debix-model-a.dts                        | 2 ++
 arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts          | 1 +
 arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts                   | 2 ++
 arch/arm/dts/imx8mp-evk.dts                                  | 2 ++
 arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts               | 1 +
 arch/arm/dts/imx8mp-skov.dts                                 | 1 +
 arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts                   | 2 ++
 arch/arm/dts/imx8mp-var-dart.dtsi                            | 1 +
 arch/arm/dts/imx8mq-evk.dts                                  | 2 ++
 arch/arm/dts/imx8mq-mnt-reform2.dts                          | 2 ++
 arch/arm/dts/imx8mq-phytec-phycore-som.dts                   | 1 +
 arch/arm/dts/imx8mq-zii-ultra-rmb3.dts                       | 4 ++++
 arch/arm/dts/imx8mq-zii-ultra-zest.dts                       | 4 ++++
 arch/arm/dts/imx93-phyboard-segin.dts                        | 2 ++
 arch/arm/dts/imx93-tqma93xx.dtsi                             | 4 +++-
 arch/arm/dts/k3-am625.dtsi                                   | 2 ++
 arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts            | 4 ++++
 arch/arm/dts/kirkwood-openblocks_a6-bb.dts                   | 4 ++++
 arch/arm/dts/kirkwood-topkick-bb.dts                         | 4 ++++
 arch/arm/dts/rk3188-radxarock.dts                            | 2 ++
 arch/arm/dts/rk3288-phycore-som.dts                          | 1 +
 arch/arm/dts/rk3566-cm3-io.dts                               | 2 ++
 arch/arm/dts/rk3566-pinetab2.dtsi                            | 2 ++
 arch/arm/dts/rk3566-quartz64-a.dts                           | 2 ++
 arch/arm/dts/rk3568-bpi-r2-pro.dts                           | 2 ++
 arch/arm/dts/rk3568-evb1-v10.dts                             | 2 ++
 arch/arm/dts/rk3568-mecsbc.dts                               | 2 ++
 arch/arm/dts/rk3568-rock-3a.dts                              | 2 ++
 arch/arm/dts/rk3568-wolfvision-pf5.dts                       | 2 ++
 arch/arm/dts/rk3588-orangepi-5-plus.dts                      | 2 ++
 arch/arm/dts/rk3588-rock-5b.dts                              | 2 ++
 arch/arm/dts/socfpga_arria10_achilles.dts                    | 1 +
 arch/arm/dts/socfpga_arria10_mercury_aa1.dts                 | 2 ++
 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts               | 2 ++
 arch/arm/dts/socfpga_cyclone5_de10_nano.dts                  | 1 +
 arch/arm/dts/socfpga_cyclone5_socdk.dts                      | 1 +
 arch/arm/dts/socfpga_cyclone5_sockit.dts                     | 2 ++
 arch/arm/dts/socfpga_cyclone5_socrates.dts                   | 2 ++
 arch/arm/dts/stm32mp133c-mect1s.dts                          | 2 ++
 arch/arm/dts/stm32mp133c-prihmb.dts                          | 2 ++
 arch/arm/dts/stm32mp135f-dk.dts                              | 1 +
 arch/arm/dts/stm32mp151-mecio1.dts                           | 4 ++++
 arch/arm/dts/stm32mp151-mect1s.dts                           | 4 ++++
 arch/arm/dts/stm32mp151-prtt1a.dts                           | 1 +
 arch/arm/dts/stm32mp151-prtt1c.dts                           | 2 ++
 arch/arm/dts/stm32mp151-prtt1s.dts                           | 1 +
 arch/arm/dts/stm32mp151c-plyaqm.dts                          | 2 ++
 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi                  | 2 ++
 arch/arm/dts/stm32mp157a-dk1-scmi.dts                        | 4 ++++
 arch/arm/dts/stm32mp157a-dk1.dts                             | 4 ++++
 arch/arm/dts/stm32mp157c-dk2-scmi.dts                        | 4 ++++
 arch/arm/dts/stm32mp157c-dk2.dts                             | 4 ++++
 arch/arm/dts/stm32mp157c-ev1-scmi.dts                        | 2 ++
 arch/arm/dts/stm32mp157c-ev1.dts                             | 2 ++
 arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts                    | 1 +
 arch/arm/dts/stm32mp157c-lxa-mc1.dts                         | 2 ++
 arch/arm/dts/stm32mp157c-odyssey.dts                         | 2 ++
 arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts              | 1 +
 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi                        | 2 ++
 arch/arm/dts/tegra124-jetson-tk1.dts                         | 2 ++
 arch/arm/dts/tegra20-colibri-iris.dts                        | 1 +
 arch/arm/dts/tegra20-paz00.dts                               | 4 ++++
 arch/arm/dts/tegra30-beaver.dts                              | 1 +
 arch/arm/dts/tny_a9260.dts                                   | 4 ++++
 arch/arm/dts/tny_a9g20.dts                                   | 4 ++++
 arch/arm/dts/usb_a9260.dts                                   | 4 ++++
 arch/arm/dts/usb_a9g20.dts                                   | 4 ++++
 arch/arm/dts/versatile-pb.dts                                | 1 +
 arch/arm/dts/vexpress-v2p-ca15.dts                           | 2 ++
 arch/arm/dts/vexpress-v2p-ca9.dts                            | 2 ++
 arch/arm/dts/vf610-twr.dts                                   | 4 ++++
 arch/arm/dts/vf610-zii-cfu1.dts                              | 2 ++
 arch/arm/dts/vf610-zii-dev-rev-b.dts                         | 4 ++++
 arch/arm/dts/vf610-zii-dev-rev-c.dts                         | 2 ++
 arch/arm/dts/vf610-zii-scu4-aib.dts                          | 2 ++
 arch/arm/dts/vf610-zii-spb4.dts                              | 2 ++
 arch/arm/dts/vf610-zii-ssmb-dtu.dts                          | 4 +++-
 arch/arm/dts/vf610-zii-ssmb-spu3.dts                         | 2 ++
 arch/arm/dts/zynq-zed.dts                                    | 2 ++
 arch/arm/dts/zynqmp-zcu102-revA.dts                          | 2 ++
 arch/arm/dts/zynqmp-zcu102-revB.dts                          | 2 ++
 arch/arm/dts/zynqmp-zcu104-revA.dts                          | 2 ++
 arch/arm/dts/zynqmp-zcu106-revA.dts                          | 2 ++
 arch/kvx/dts/k200.dts                                        | 1 +
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts               | 2 ++
 arch/mips/dts/ar9331-okud-max9331.dts                        | 1 +
 arch/mips/dts/ar9331-openembed-som9331-board.dts             | 1 +
 arch/mips/dts/ar9331_tl_mr3020.dts                           | 2 ++
 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts                     | 1 +
 arch/mips/dts/black-swift.dts                                | 1 +
 arch/mips/dts/dlink-dir-320.dts                              | 1 +
 arch/mips/dts/img-ci20.dts                                   | 1 +
 arch/mips/dts/loongson-ls1b.dts                              | 1 +
 arch/mips/dts/qca4531-8devices-lima.dts                      | 1 +
 arch/mips/dts/qemu-malta.dts                                 | 1 +
 arch/mips/dts/rzx50.dts                                      | 1 +
 arch/openrisc/dts/or1ksim.dts                                | 1 +
 arch/riscv/dts/erizo-generic.dts                             | 1 +
 arch/riscv/dts/erizo.dtsi                                    | 1 +
 arch/riscv/dts/hifive-unleashed-a00.dts                      | 4 ++++
 arch/riscv/dts/hifive-unmatched-a00.dts                      | 4 ++++
 arch/riscv/dts/jh7100-beaglev-starlight.dts                  | 1 +
 arch/riscv/dts/jh7100-beaglev-starlight.dtsi                 | 1 +
 arch/riscv/dts/jh7100.dtsi                                   | 1 +
 arch/riscv/dts/litex-linux.dts                               | 1 +
 arch/riscv/dts/litex_soc_linux.dtsi                          | 1 +
 arch/sandbox/dts/sandbox.dts                                 | 1 +
 284 files changed, 564 insertions(+), 5 deletions(-)

diff --git a/arch/arm/dts/ac-sxb.dts b/arch/arm/dts/ac-sxb.dts
index 8f2eec0fa036..10ed303afb65 100644
--- a/arch/arm/dts/ac-sxb.dts
+++ b/arch/arm/dts/ac-sxb.dts
@@ -8,6 +8,8 @@
 #include "imx7d-ddrc.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 	};
diff --git a/arch/arm/dts/am335x-afi-gf.dts b/arch/arm/dts/am335x-afi-gf.dts
index 54059dbfce1b..d12440d7615e 100644
--- a/arch/arm/dts/am335x-afi-gf.dts
+++ b/arch/arm/dts/am335x-afi-gf.dts
@@ -13,6 +13,7 @@
 / {
 	model = "GF";
 	compatible = "afi,gf", "ti,am33xx";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart2;
diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index 28a550aa846b..3bb625eb329b 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -19,6 +19,7 @@
 / {
 	model = "OnRISC Baltos";
 	compatible = "vscom,onrisc", "ti,am33xx";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart0;
diff --git a/arch/arm/dts/am335x-bone-common.dts b/arch/arm/dts/am335x-bone-common.dts
index 26896b4c7c23..b105e106b1b3 100644
--- a/arch/arm/dts/am335x-bone-common.dts
+++ b/arch/arm/dts/am335x-bone-common.dts
@@ -15,6 +15,7 @@
 / {
 	model = "TI AM335x BeagleBone";
 	compatible = "ti,am335x-bone", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &mmc2 {
diff --git a/arch/arm/dts/am335x-bone.dts b/arch/arm/dts/am335x-bone.dts
index df044a57382b..2b5c2c57875f 100644
--- a/arch/arm/dts/am335x-bone.dts
+++ b/arch/arm/dts/am335x-bone.dts
@@ -13,6 +13,7 @@
 / {
 	model = "TI AM335x BeagleBone";
 	compatible = "ti,am335x-bone", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &{/memory@80000000} {
diff --git a/arch/arm/dts/am335x-boneblack.dts b/arch/arm/dts/am335x-boneblack.dts
index 3c286c71bfa2..b962a3ada5b0 100644
--- a/arch/arm/dts/am335x-boneblack.dts
+++ b/arch/arm/dts/am335x-boneblack.dts
@@ -13,6 +13,8 @@
 / {
 	model = "TI AM335x BeagleBone black";
 	compatible = "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
+	barebox,disable-deep-probe;
+
 };
 
 &{/memory@80000000} {
diff --git a/arch/arm/dts/am335x-myirtech-myd-mlo.dts b/arch/arm/dts/am335x-myirtech-myd-mlo.dts
index 20c32980733e..5d42aed0dad7 100644
--- a/arch/arm/dts/am335x-myirtech-myd-mlo.dts
+++ b/arch/arm/dts/am335x-myirtech-myd-mlo.dts
@@ -8,3 +8,7 @@
 #include "am33xx-clocks-strip.dtsi"
 
 /delete-node/ &{/sound};
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
index 647b71cca721..f5ca2e92c684 100644
--- a/arch/arm/dts/am335x-myirtech-myd.dts
+++ b/arch/arm/dts/am335x-myirtech-myd.dts
@@ -6,6 +6,8 @@
 #include <arm/ti/omap/am335x-myirtech-myd.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		gpio0 = &gpio0;
 		gpio1 = &gpio1;
diff --git a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
index a1755fda53ca..e339e4d23e4f 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Phytec phyCARD AM335x";
 	compatible = "phytec,phycard-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 /* Keep all bootsources disabled, we enable and register them
diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dts b/arch/arm/dts/am335x-phytec-phycard-som.dts
index 6b4318023117..9831a7a82143 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dts
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dts
@@ -13,6 +13,7 @@
 / {
 	model = "Phytec phyCARD AM335x";
 	compatible = "phytec,phycard-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &eeprom {
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts b/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts
index f264498e5287..3173ee3862b5 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts
@@ -21,6 +21,7 @@
 / {
 	model = "Phytec phyCORE EMMC AM335x";
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &mmc2 {
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
index f7bc462feeeb..4242f7a82c7f 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Phytec phyCORE AM335x";
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 /* Keep all bootsources disabled, we enable and register them
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-nand-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-eeprom.dts
index 9f0da372cd20..a6fc96c8aea3 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-nand-no-eeprom.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-eeprom.dts
@@ -14,6 +14,7 @@
 / {
 	model = "Phytec phyCORE AM335x";
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &gpmc {
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts
index c026a820e22f..278c6345f65c 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts
@@ -14,6 +14,7 @@
 / {
 	model = "Phytec phyCORE AM335x";
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &gpmc {
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
index b35294c586b4..a825814dfb6b 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
@@ -14,6 +14,7 @@
 / {
 	model = "Phytec phyCORE AM335x";
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &gpmc {
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-nand.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand.dts
index 4d7606b57457..4d5d1362cbc8 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand.dts
@@ -14,6 +14,7 @@
 / {
 	model = "Phytec phyCORE AM335x";
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &gpmc {
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
index e848a298f56c..91364e500731 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Phytec phyFLEX AM335x";
 	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 /* Keep all bootsources disabled, we enable and register them
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts
index 0022e14750a6..4c3f1b976d74 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Phytec phyFLEX AM335x";
 	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &spi0 {
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts
index 486aac65709b..5e17ea1c3b0c 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts
@@ -15,4 +15,5 @@
 / {
 	model = "Phytec phyFLEX AM335x";
 	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts b/arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts
index 5f3a1e08d01d..16d6fd39b0eb 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Phytec phyFLEX AM335x";
 	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &at24c32 {
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dts b/arch/arm/dts/am335x-phytec-phyflex-som.dts
index 2be83b6b9dbe..08a114047ce3 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dts
@@ -13,6 +13,7 @@
 / {
 	model = "Phytec phyFLEX AM335x";
 	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
+	barebox,disable-deep-probe;
 };
 
 &spi0 {
diff --git a/arch/arm/dts/am35xx-pfc-750_820x.dts b/arch/arm/dts/am35xx-pfc-750_820x.dts
index ad54be4dd6d1..25fc08ab0efb 100644
--- a/arch/arm/dts/am35xx-pfc-750_820x.dts
+++ b/arch/arm/dts/am35xx-pfc-750_820x.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Wago PFC200 (AM3505)";
 	compatible = "ti,pfc200", "ti,am3517", "ti,omap3";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart3;
diff --git a/arch/arm/dts/armada-370-mirabox-bb.dts b/arch/arm/dts/armada-370-mirabox-bb.dts
index fcd72bda0eca..6dcc2401cafb 100644
--- a/arch/arm/dts/armada-370-mirabox-bb.dts
+++ b/arch/arm/dts/armada-370-mirabox-bb.dts
@@ -6,6 +6,8 @@
 #include "arm/marvell/armada-370-mirabox.dts"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/armada-370-rn104-bb.dts b/arch/arm/dts/armada-370-rn104-bb.dts
index d59f00b9bea0..b786ef350a34 100644
--- a/arch/arm/dts/armada-370-rn104-bb.dts
+++ b/arch/arm/dts/armada-370-rn104-bb.dts
@@ -5,6 +5,8 @@
 #include "arm/marvell/armada-370-netgear-rn104.dts"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/armada-385-turris-omnia-bb.dts b/arch/arm/dts/armada-385-turris-omnia-bb.dts
index ffea724ac48a..44d6737c2c35 100644
--- a/arch/arm/dts/armada-385-turris-omnia-bb.dts
+++ b/arch/arm/dts/armada-385-turris-omnia-bb.dts
@@ -1,6 +1,8 @@
 #include "arm/marvell/armada-385-turris-omnia.dts"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/armada-xp-db-bb.dts b/arch/arm/dts/armada-xp-db-bb.dts
index 68974de783fa..3fabc05856d5 100644
--- a/arch/arm/dts/armada-xp-db-bb.dts
+++ b/arch/arm/dts/armada-xp-db-bb.dts
@@ -6,6 +6,8 @@
 #include "arm/marvell/armada-xp-db.dts"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/armada-xp-gp-bb.dts b/arch/arm/dts/armada-xp-gp-bb.dts
index a863bd5bb1b7..00faa7e33365 100644
--- a/arch/arm/dts/armada-xp-gp-bb.dts
+++ b/arch/arm/dts/armada-xp-gp-bb.dts
@@ -6,6 +6,8 @@
 #include "arm/marvell/armada-xp-gp.dts"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts b/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
index 5a883ecdc204..38cf07cd5fe9 100644
--- a/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
+++ b/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
@@ -5,6 +5,10 @@
 
 #include "arm/marvell/armada-xp-lenovo-ix4-300d.dts"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &{/gpio-leds/power-led} {
 	linux,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
index b4a80388bc97..39f3beca80e3 100644
--- a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
+++ b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
@@ -6,6 +6,8 @@
 #include "arm/marvell/armada-xp-openblocks-ax3-4.dts"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/armada-xp-rn2120-bb.dts b/arch/arm/dts/armada-xp-rn2120-bb.dts
index 30bf4f622903..02afd65f9565 100644
--- a/arch/arm/dts/armada-xp-rn2120-bb.dts
+++ b/arch/arm/dts/armada-xp-rn2120-bb.dts
@@ -5,6 +5,8 @@
 #include "arm/marvell/armada-xp-netgear-rn2120.dts"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/at91-microchip-ksz9477-evb.dts b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
index 9c2f6d97a6c3..aec2fcb743a9 100644
--- a/arch/arm/dts/at91-microchip-ksz9477-evb.dts
+++ b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
@@ -4,6 +4,8 @@
 #include "sama5d3.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/at91-microchip-sama5d3-eds.dts b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
index d35c8c3c6eca..36454f828e90 100644
--- a/arch/arm/dts/at91-microchip-sama5d3-eds.dts
+++ b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
@@ -4,6 +4,8 @@
 #include "sama5d3.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
index 3aa28ed501e6..5b6f8c1bf873 100644
--- a/arch/arm/dts/at91-sama5d27_giantboard.dts
+++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
@@ -22,6 +22,7 @@
 / {
 	model = "Giant Board";
 	compatible = "groboards,sama5d27-giantboard", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
index 44e63054497f..3bbb4a98a653 100644
--- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
@@ -7,6 +7,8 @@
 #include "at91-sama5d27_som1.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment-qspi {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/at91-sama5d3_xplained.dts b/arch/arm/dts/at91-sama5d3_xplained.dts
index de47ede7c620..b081e9d0be44 100644
--- a/arch/arm/dts/at91-sama5d3_xplained.dts
+++ b/arch/arm/dts/at91-sama5d3_xplained.dts
@@ -10,6 +10,7 @@
 
 / {
 	model = "Atmel sama5d3_xplained";
+	barebox,disable-deep-probe;
 
 	chosen {
 		environment {
diff --git a/arch/arm/dts/at91-sama5d4_wifx_l1.dts b/arch/arm/dts/at91-sama5d4_wifx_l1.dts
index 91c807334308..c93868dd786a 100644
--- a/arch/arm/dts/at91-sama5d4_wifx_l1.dts
+++ b/arch/arm/dts/at91-sama5d4_wifx_l1.dts
@@ -12,6 +12,7 @@
 / {
 	model = "Wifx L1";
 	compatible = "wifx,l1", "atmel,sama5d4", "atmel,sama5";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &usart3;
diff --git a/arch/arm/dts/at91-skov-arm9cpu.dts b/arch/arm/dts/at91-skov-arm9cpu.dts
index d04d031f4053..a3f2345c9ec5 100644
--- a/arch/arm/dts/at91-skov-arm9cpu.dts
+++ b/arch/arm/dts/at91-skov-arm9cpu.dts
@@ -13,6 +13,7 @@
 / {
 	model = "SKOV ARM9 CPU";
 	compatible = "skov,arm9-cpu", "atmel,at91sam9263", "atmel,at91sam9";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = "serial0:115200n8";
diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
index 77da4479abeb..4911187bce65 100644
--- a/arch/arm/dts/at91sam9263ek.dts
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -1,12 +1,13 @@
 #include <arm/microchip/at91sam9263ek.dts>
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_nand;
 		};
 	};
-
 };
 
 &{nand_controller/nand@3} {
diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
index 3137b395ecbe..a4d6693c4b5d 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -10,6 +10,8 @@
 #include <arm/microchip/at91sam9x5ek.dtsi>
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		mmc0 = &mmc0;
 		mmc1 = &mmc1;
diff --git a/arch/arm/dts/bcm2711-rpi-cm4s-io.dts b/arch/arm/dts/bcm2711-rpi-cm4s-io.dts
index 8302523e47ba..a9e7ab83ec75 100644
--- a/arch/arm/dts/bcm2711-rpi-cm4s-io.dts
+++ b/arch/arm/dts/bcm2711-rpi-cm4s-io.dts
@@ -9,6 +9,7 @@
 / {
 	compatible = "raspberrypi,4-compute-module-s", "brcm,bcm2711";
 	model = "Raspberry Pi Compute Module 4S IO Board";
+	barebox,deep-probe;
 
 	chosen {
 		stdout-path = "serial0:115200n8";
diff --git a/arch/arm/dts/bcm2711-rpi.dtsi b/arch/arm/dts/bcm2711-rpi.dtsi
index cb2952ccac85..dbcfc085ae1f 100644
--- a/arch/arm/dts/bcm2711-rpi.dtsi
+++ b/arch/arm/dts/bcm2711-rpi.dtsi
@@ -1,5 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0
 
+/ {
+	barebox,deep-probe;
+};
+
 &{/memory@0} {
 	reg = <0x0 0x0 0x0>;
 };
diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
index ed03a369bd7a..1564ebfcd713 100644
--- a/arch/arm/dts/bcm2835-rpi.dts
+++ b/arch/arm/dts/bcm2835-rpi.dts
@@ -1,5 +1,9 @@
 #include <arm/broadcom/bcm2835-rpi-a.dts>
 
+/ {
+	barebox,deep-probe;
+};
+
 &{/aliases} {
 	usb0 = &usb;
 };
diff --git a/arch/arm/dts/bcm2836-rpi-2.dts b/arch/arm/dts/bcm2836-rpi-2.dts
index 783128a5493e..4b59afb17e93 100644
--- a/arch/arm/dts/bcm2836-rpi-2.dts
+++ b/arch/arm/dts/bcm2836-rpi-2.dts
@@ -1,5 +1,9 @@
 #include <arm/broadcom/bcm2836-rpi-2-b.dts>
 
+/ {
+	barebox,deep-probe;
+};
+
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
index 38d673aec4ba..38fc947b4038 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -1,5 +1,9 @@
 #include <arm64/broadcom/bcm2837-rpi-3-b.dts>
 
+/ {
+	barebox,deep-probe;
+};
+
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
diff --git a/arch/arm/dts/bcm2837-rpi-cm3.dts b/arch/arm/dts/bcm2837-rpi-cm3.dts
index 340fc58882c5..78613f12c697 100644
--- a/arch/arm/dts/bcm2837-rpi-cm3.dts
+++ b/arch/arm/dts/bcm2837-rpi-cm3.dts
@@ -1,6 +1,8 @@
 #include <arm/broadcom/bcm2837-rpi-cm3-io3.dts>
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/dove-cubox-bb.dts b/arch/arm/dts/dove-cubox-bb.dts
index 5b93bfd1a0a7..bce416c3dd5b 100644
--- a/arch/arm/dts/dove-cubox-bb.dts
+++ b/arch/arm/dts/dove-cubox-bb.dts
@@ -6,6 +6,8 @@
 #include "arm/marvell/dove-cubox.dts"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 	};
diff --git a/arch/arm/dts/ep7212-clep7212.dts b/arch/arm/dts/ep7212-clep7212.dts
index 37a939946428..a0ba14c4980e 100644
--- a/arch/arm/dts/ep7212-clep7212.dts
+++ b/arch/arm/dts/ep7212-clep7212.dts
@@ -6,6 +6,7 @@
 / {
 	model = "Cirrus Logic EP7212";
 	compatible = "cirrus,clep7212", "cirrus,ep7212", "cirrus,ep7209";
+	barebox,disable-deep-probe;
 
 	memory@c0000000 {
 		device_type = "memory";
diff --git a/arch/arm/dts/fsl-ls1021a-iot.dts b/arch/arm/dts/fsl-ls1021a-iot.dts
index 47eebcb6a95e..d7e8bcc7ed9d 100644
--- a/arch/arm/dts/fsl-ls1021a-iot.dts
+++ b/arch/arm/dts/fsl-ls1021a-iot.dts
@@ -10,6 +10,8 @@
 #include <arm/nxp/ls/ls1021a-iot.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 
diff --git a/arch/arm/dts/fsl-ls1028a-rdb.dts b/arch/arm/dts/fsl-ls1028a-rdb.dts
index 671c97413b37..7aa4423a0959 100644
--- a/arch/arm/dts/fsl-ls1028a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1028a-rdb.dts
@@ -6,6 +6,8 @@
 #include "fsl-ls1028a.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			status = "disabled";
diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index 37023fae9be0..dae111e08e71 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -6,6 +6,8 @@
 #include "fsl-ls1046a.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		eeprom = &{i2c0/eeprom@52};
 	};
diff --git a/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
index 61ac294c0a36..a65d64ed71d5 100644
--- a/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
+++ b/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
@@ -9,6 +9,8 @@
 #include "fsl-ls1046a.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx1-scb9328.dts b/arch/arm/dts/imx1-scb9328.dts
index bcc1598e3b76..9a2f55a791ac 100644
--- a/arch/arm/dts/imx1-scb9328.dts
+++ b/arch/arm/dts/imx1-scb9328.dts
@@ -9,6 +9,7 @@
 / {
 	model = "Synertronix scb9328";
 	compatible = "stx,scb9328", "fsl,imx1";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index 9de8c5a84164..e5ab2ee88bcc 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -13,6 +13,8 @@
 #include "imx25.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
index b082bf45545b..e9b69eff6d8a 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
@@ -6,6 +6,8 @@
 #include "imx27-phytec-phycard-s-som.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx27-phytec-phycore-rdk.dts b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
index 04f037bab80f..f83ce65d06f6 100644
--- a/arch/arm/dts/imx27-phytec-phycore-rdk.dts
+++ b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
@@ -5,6 +5,8 @@
 #include <arm/nxp/imx/imx27-phytec-phycore-rdk.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx28-duckbill.dts b/arch/arm/dts/imx28-duckbill.dts
index 31e6f43a22fe..f6ee84d64e3d 100644
--- a/arch/arm/dts/imx28-duckbill.dts
+++ b/arch/arm/dts/imx28-duckbill.dts
@@ -1,6 +1,8 @@
 #include <arm/nxp/mxs/imx28-duckbill.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &duart;
 	};
diff --git a/arch/arm/dts/imx28-evk.dts b/arch/arm/dts/imx28-evk.dts
index 15159f2d982d..06f047d21e94 100644
--- a/arch/arm/dts/imx28-evk.dts
+++ b/arch/arm/dts/imx28-evk.dts
@@ -1,6 +1,8 @@
 #include <arm/nxp/mxs/imx28-evk.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &duart;
 
diff --git a/arch/arm/dts/imx50-kindle-d01100.dts b/arch/arm/dts/imx50-kindle-d01100.dts
index bfec71910cbd..b41dd22ad921 100644
--- a/arch/arm/dts/imx50-kindle-d01100.dts
+++ b/arch/arm/dts/imx50-kindle-d01100.dts
@@ -18,6 +18,7 @@
 / {
 	model = "Amazon Kindle D01100";
 	compatible = "amazon,kindle-d01100", "fsl,imx50";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx50-kindle-d01200.dts b/arch/arm/dts/imx50-kindle-d01200.dts
index 57eb9ba7346a..0f24894b339e 100644
--- a/arch/arm/dts/imx50-kindle-d01200.dts
+++ b/arch/arm/dts/imx50-kindle-d01200.dts
@@ -18,6 +18,7 @@
 / {
 	model = "Amazon Kindle D01200";
 	compatible = "amazon,kindle-d01200", "fsl,imx50";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx50-kindle-ey21.dts b/arch/arm/dts/imx50-kindle-ey21.dts
index 603f6bead6ac..3f861041d4dc 100644
--- a/arch/arm/dts/imx50-kindle-ey21.dts
+++ b/arch/arm/dts/imx50-kindle-ey21.dts
@@ -18,6 +18,7 @@
 / {
 	model = "Amazon Kindle EY21";
 	compatible = "amazon,kindle-ey21", "fsl,imx50";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index 178276c6e18f..187dfd0517e6 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -13,6 +13,8 @@
 #include <arm/nxp/imx/imx51-babbage.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx51-ccxmx51.dts b/arch/arm/dts/imx51-ccxmx51.dts
index d5536447303c..72c9633761ac 100644
--- a/arch/arm/dts/imx51-ccxmx51.dts
+++ b/arch/arm/dts/imx51-ccxmx51.dts
@@ -4,6 +4,8 @@
 #include <arm/nxp/imx/imx51-digi-connectcore-jsk.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 1d8183fff159..3138058ed889 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -18,6 +18,7 @@
 / {
 	model = "Genesi Efika MX Smartbook";
 	compatible = "genesi,imx51-sb", "fsl,imx51";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 99da52858f4f..b6cf84b36c61 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -15,6 +15,7 @@
 
 / {
 	compatible = "zii,imx51-rdu1", "fsl,imx51-babbage-power", "fsl,imx51";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx51-zii-scu2-mezz.dts b/arch/arm/dts/imx51-zii-scu2-mezz.dts
index e44f7f999e35..43bf578bd9eb 100644
--- a/arch/arm/dts/imx51-zii-scu2-mezz.dts
+++ b/arch/arm/dts/imx51-zii-scu2-mezz.dts
@@ -6,6 +6,10 @@
 
 #include <arm/nxp/imx/imx51-zii-scu2-mezz.dts>
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &iim {
 	barebox,provide-mac-address = <&fec 1 9>;
 };
diff --git a/arch/arm/dts/imx51-zii-scu3-esb.dts b/arch/arm/dts/imx51-zii-scu3-esb.dts
index a7cffb60a96b..4bff3fdf31b8 100644
--- a/arch/arm/dts/imx51-zii-scu3-esb.dts
+++ b/arch/arm/dts/imx51-zii-scu3-esb.dts
@@ -7,6 +7,10 @@
 
 #include <arm/nxp/imx/imx51-zii-scu3-esb.dts>
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &iim {
 	barebox,provide-mac-address = <&fec 1 9>;
 };
diff --git a/arch/arm/dts/imx53-ccxmx53.dts b/arch/arm/dts/imx53-ccxmx53.dts
index 4b5ec6534fc4..e5112eec8d0b 100644
--- a/arch/arm/dts/imx53-ccxmx53.dts
+++ b/arch/arm/dts/imx53-ccxmx53.dts
@@ -17,6 +17,7 @@
 / {
 	model = "Digi ConnectCore ccxmx53";
 	compatible = "digi,imx53-ccxmx53", "fsl,imx53";
+	barebox,disable-deep-probe;
 };
 
 &iomuxc {
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index a56a5346530d..f9e9f16fac4c 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -20,6 +20,7 @@
 / {
 	model = "Garz & Fricke VINCELL LT";
 	compatible = "guf,imx53-vincell-lt", "fsl,imx53";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart2;
diff --git a/arch/arm/dts/imx53-guf-vincell.dts b/arch/arm/dts/imx53-guf-vincell.dts
index f5922c2bf1d7..b398214bfe29 100644
--- a/arch/arm/dts/imx53-guf-vincell.dts
+++ b/arch/arm/dts/imx53-guf-vincell.dts
@@ -20,6 +20,7 @@
 / {
 	model = "Garz & Fricke VINCELL";
 	compatible = "guf,imx53-vincell", "fsl,imx53";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart2;
diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
index 02fdc6fdb3d7..091a5e1ab9fd 100644
--- a/arch/arm/dts/imx53-mba53.dts
+++ b/arch/arm/dts/imx53-mba53.dts
@@ -15,6 +15,8 @@
 #include "imx53.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart2;
 
diff --git a/arch/arm/dts/imx53-qsb.dts b/arch/arm/dts/imx53-qsb.dts
index e035f4fcb9ef..99de7e3a1117 100644
--- a/arch/arm/dts/imx53-qsb.dts
+++ b/arch/arm/dts/imx53-qsb.dts
@@ -13,3 +13,7 @@
 #include <arm/nxp/imx/imx53-qsb.dts>
 #include "imx53.dtsi"
 #include "imx53-qsb-common.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/imx53-qsrb.dts b/arch/arm/dts/imx53-qsrb.dts
index 358583ed07cb..e4fda4f4772c 100644
--- a/arch/arm/dts/imx53-qsrb.dts
+++ b/arch/arm/dts/imx53-qsrb.dts
@@ -13,3 +13,7 @@
 #include <arm/nxp/imx/imx53-qsrb.dts>
 #include "imx53.dtsi"
 #include "imx53-qsb-common.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/imx53-tx53-1011.dts b/arch/arm/dts/imx53-tx53-1011.dts
index 9f2ad398bf3a..1c0eb937c5f3 100644
--- a/arch/arm/dts/imx53-tx53-1011.dts
+++ b/arch/arm/dts/imx53-tx53-1011.dts
@@ -4,6 +4,7 @@
 / {
 	model = "Ka-Ro electronics TX53 module";
 	compatible = "karo,tx53-1011", "karo,tx53", "fsl,imx53";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx53-tx53-xx30.dts b/arch/arm/dts/imx53-tx53-xx30.dts
index cf0fface2121..f994a152fb85 100644
--- a/arch/arm/dts/imx53-tx53-xx30.dts
+++ b/arch/arm/dts/imx53-tx53-xx30.dts
@@ -4,6 +4,7 @@
 / {
 	model = "Ka-Ro electronics TX53 module";
 	compatible = "karo,tx53-xx30", "karo,tx53", "fsl,imx53";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx53-voipac-bsb.dts b/arch/arm/dts/imx53-voipac-bsb.dts
index 316f662f27a3..155391a4d6c1 100644
--- a/arch/arm/dts/imx53-voipac-bsb.dts
+++ b/arch/arm/dts/imx53-voipac-bsb.dts
@@ -12,3 +12,7 @@
 #include <arm/nxp/imx/imx53-voipac-bsb.dts>
 #include "imx53-voipac-dmm-668.dtsi"
 #include "imx53.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-advantech-rom-7421.dts b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
index 9bb17441ae6e..69f20f75cd0a 100755
--- a/arch/arm/dts/imx6dl-advantech-rom-7421.dts
+++ b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
@@ -18,6 +18,7 @@
 / {
 	model = "Advantech i.MX6 ROM-7421";
 	compatible = "advantech,imx6dl-rom-7421", "fsl,imx6dl";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx6dl-alti6p.dts b/arch/arm/dts/imx6dl-alti6p.dts
index 93ff66ee9c5b..9667279e86a6 100644
--- a/arch/arm/dts/imx6dl-alti6p.dts
+++ b/arch/arm/dts/imx6dl-alti6p.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6dl-alti6p.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-cm-fx6.dts b/arch/arm/dts/imx6dl-cm-fx6.dts
index 202f4db7d6fa..32a4da713244 100644
--- a/arch/arm/dts/imx6dl-cm-fx6.dts
+++ b/arch/arm/dts/imx6dl-cm-fx6.dts
@@ -19,4 +19,5 @@
 / {
 	model = "CompuLab CM-FX6";
 	compatible = "compulab,cm-fx6", "fsl,imx6dl";
+	barebox,disable-deep-probe;
 };
diff --git a/arch/arm/dts/imx6dl-colibri-iris.dts b/arch/arm/dts/imx6dl-colibri-iris.dts
index 0986aa6067a5..bbc671b8faec 100644
--- a/arch/arm/dts/imx6dl-colibri-iris.dts
+++ b/arch/arm/dts/imx6dl-colibri-iris.dts
@@ -7,6 +7,8 @@
 #include "imx6qdl.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		barebox-environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts b/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
index b7666112792c..3f07a1f04cf4 100644
--- a/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
+++ b/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
@@ -21,4 +21,5 @@
 / {
 	model = "DFI FS700-M60-6S i.MX6s Q7 Board";
 	compatible = "dfi,fs700-m60-6s", "dfi,fs700-m60", "fsl,imx6dl";
+	barebox,disable-deep-probe;
 };
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index ff13c6679c17..9e2f78911ac9 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -6,6 +6,7 @@
 / {
 	model = "ELTEC HiPerCam";
 	compatible = "eltec,hipercam-rev01", "fsl,imx6dl";
+	barebox,disable-deep-probe;
 
 	memory@10000000 {
 		device_type = "memory";
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index d3de32627355..6d7d75f45edd 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -9,6 +9,8 @@
 #include "imx6qdl.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx6dl-hummingboard2.dts b/arch/arm/dts/imx6dl-hummingboard2.dts
index 2530a8da602c..59f111e7980e 100644
--- a/arch/arm/dts/imx6dl-hummingboard2.dts
+++ b/arch/arm/dts/imx6dl-hummingboard2.dts
@@ -49,6 +49,7 @@
 / {
 	model = "SolidRun HummingBoard2 Solo/DualLite";
 	compatible = "solidrun,hummingboard2/dl", "fsl,imx6dl";
+	barebox,disable-deep-probe;
 };
 
 &usdhc3 {
diff --git a/arch/arm/dts/imx6dl-lanmcu.dts b/arch/arm/dts/imx6dl-lanmcu.dts
index 4780985da0fd..f519471d86c1 100644
--- a/arch/arm/dts/imx6dl-lanmcu.dts
+++ b/arch/arm/dts/imx6dl-lanmcu.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6dl-lanmcu.dts>
 #include "imx6qdl-prti6q-emmc.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-mba6x.dts b/arch/arm/dts/imx6dl-mba6x.dts
index 612acba3239b..757c3e127a1a 100644
--- a/arch/arm/dts/imx6dl-mba6x.dts
+++ b/arch/arm/dts/imx6dl-mba6x.dts
@@ -16,6 +16,7 @@
 / {
 	model = "TQ TQMA6S on MBa6x";
 	compatible = "tq,mba6x", "tq,tqma6s", "fsl,imx6dl";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart2;
diff --git a/arch/arm/dts/imx6dl-nitrogen6x.dts b/arch/arm/dts/imx6dl-nitrogen6x.dts
index 760709087664..fd801c4ec931 100644
--- a/arch/arm/dts/imx6dl-nitrogen6x.dts
+++ b/arch/arm/dts/imx6dl-nitrogen6x.dts
@@ -14,3 +14,7 @@
 #include <arm/nxp/imx/imx6dl-nitrogen6x.dts>
 #include "imx6dl.dtsi"
 #include "imx6qdl-nitrogen6x.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-phytec-pbab01.dts b/arch/arm/dts/imx6dl-phytec-pbab01.dts
index 4fe3c308e72e..b524a0cc7a29 100644
--- a/arch/arm/dts/imx6dl-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6dl-phytec-pbab01.dts
@@ -19,6 +19,7 @@
 / {
 	model = "Phytec phyFLEX-i.MX6 Duallite Carrier-Board";
 	compatible = "phytec,imx6x-pbab01", "phytec,imx6dl-pfla02", "fsl,imx6dl";
+	barebox,deep-probe;
 
 	chosen {
 		stdout-path = &uart4;
diff --git a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
index 430745f1001a..efed30651ae6 100644
--- a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
+++ b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
@@ -19,4 +19,5 @@
 / {
 	model = "Phytec phyBOARD SUBRA";
 	compatible = "phytec,imx6dl-pbab05", "phytec,imx6s-pfla02", "fsl,imx6dl";
+	barebox,deep-probe;
 };
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
index 7bb6acb556b7..c94489146545 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
@@ -17,6 +17,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 DualLite/SOLO with eMMC low-cost";
 	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
+	barebox,deep-probe;
 };
 
 &eeprom {
diff --git a/arch/arm/dts/imx6dl-plybas.dts b/arch/arm/dts/imx6dl-plybas.dts
index 20ff7fdf1322..fe63127d9a24 100644
--- a/arch/arm/dts/imx6dl-plybas.dts
+++ b/arch/arm/dts/imx6dl-plybas.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6dl-plybas.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-plym2m.dts b/arch/arm/dts/imx6dl-plym2m.dts
index e1ae8d48b720..eef2d40133c1 100644
--- a/arch/arm/dts/imx6dl-plym2m.dts
+++ b/arch/arm/dts/imx6dl-plym2m.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6dl-plym2m.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-prtmvt.dts b/arch/arm/dts/imx6dl-prtmvt.dts
index 6c49bbf60601..a024610daa9c 100644
--- a/arch/arm/dts/imx6dl-prtmvt.dts
+++ b/arch/arm/dts/imx6dl-prtmvt.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6dl-prtmvt.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-prtrvt.dts b/arch/arm/dts/imx6dl-prtrvt.dts
index ee97fa8a6515..044cb0826fce 100644
--- a/arch/arm/dts/imx6dl-prtrvt.dts
+++ b/arch/arm/dts/imx6dl-prtrvt.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6dl-prtrvt.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-prtvt7.dts b/arch/arm/dts/imx6dl-prtvt7.dts
index a9e0589c2c24..44bffe7487c1 100644
--- a/arch/arm/dts/imx6dl-prtvt7.dts
+++ b/arch/arm/dts/imx6dl-prtvt7.dts
@@ -4,6 +4,10 @@
 #include <arm/nxp/imx/imx6dl-prtvt7.dts>
 #include "imx6qdl-prti6q-emmc.dtsi"
 
+/ {
+	barebox,deep-probe;
+};
+
 &state_emmc {
 	magic = <0x72766467>;
 	#address-cells = <1>;
diff --git a/arch/arm/dts/imx6dl-sabrelite.dts b/arch/arm/dts/imx6dl-sabrelite.dts
index 051100ef42bb..c1f27b2050af 100644
--- a/arch/arm/dts/imx6dl-sabrelite.dts
+++ b/arch/arm/dts/imx6dl-sabrelite.dts
@@ -18,4 +18,5 @@
 / {
 	model = "Freescale i.MX6 DualLite SABRE Lite Board";
 	compatible = "fsl,imx6dl-sabrelite", "fsl,imx6dl";
+	barebox,deep-probe;
 };
diff --git a/arch/arm/dts/imx6dl-sabresd.dts b/arch/arm/dts/imx6dl-sabresd.dts
index 6de132a64e60..d71085b1bf91 100644
--- a/arch/arm/dts/imx6dl-sabresd.dts
+++ b/arch/arm/dts/imx6dl-sabresd.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Freescale i.MX6 DualLite SABRE Smart Device Board";
 	compatible = "fsl,imx6dl-sabresd", "fsl,imx6dl";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx6dl-samx6i.dts b/arch/arm/dts/imx6dl-samx6i.dts
index 5a752296d036..ed9dc973398f 100644
--- a/arch/arm/dts/imx6dl-samx6i.dts
+++ b/arch/arm/dts/imx6dl-samx6i.dts
@@ -9,6 +9,10 @@
 #include "imx6dl.dtsi"
 #include "imx6qdl-smarc-samx6i.dtsi"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &fec {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6dl-skov-imx6.dts b/arch/arm/dts/imx6dl-skov-imx6.dts
index 304068cbdbcb..7357a921c678 100644
--- a/arch/arm/dts/imx6dl-skov-imx6.dts
+++ b/arch/arm/dts/imx6dl-skov-imx6.dts
@@ -17,6 +17,7 @@
 / {
 	model = "Skov IMX6";
 	compatible = "skov,imx6", "fsl,imx6dl";
+	barebox,deep-probe;
 
 	chosen {
 		stdout-path = &uart2;
diff --git a/arch/arm/dts/imx6dl-tx6u.dts b/arch/arm/dts/imx6dl-tx6u.dts
index a41773780c49..1055de9d806a 100644
--- a/arch/arm/dts/imx6dl-tx6u.dts
+++ b/arch/arm/dts/imx6dl-tx6u.dts
@@ -8,5 +8,6 @@
 / {
 	model = "Ka-Ro electronics TX6U-801x Module";
 	compatible = "karo,imx6dl-tx6dl", "fsl,imx6dl";
+	barebox,disable-deep-probe;
 };
 
diff --git a/arch/arm/dts/imx6dl-victgo.dts b/arch/arm/dts/imx6dl-victgo.dts
index e3bbda56321e..71f443ae453b 100644
--- a/arch/arm/dts/imx6dl-victgo.dts
+++ b/arch/arm/dts/imx6dl-victgo.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6dl-victgo.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-vicut1.dts b/arch/arm/dts/imx6dl-vicut1.dts
index 4a2965518cda..ccd8570cb86c 100644
--- a/arch/arm/dts/imx6dl-vicut1.dts
+++ b/arch/arm/dts/imx6dl-vicut1.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6dl-vicut1.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6dl-wandboard.dts b/arch/arm/dts/imx6dl-wandboard.dts
index 391d118869b8..6c9ad994710b 100644
--- a/arch/arm/dts/imx6dl-wandboard.dts
+++ b/arch/arm/dts/imx6dl-wandboard.dts
@@ -3,6 +3,8 @@
 #include "imx6dl.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx6q-cm-fx6.dts b/arch/arm/dts/imx6q-cm-fx6.dts
index d661c074dd4b..77474f853091 100644
--- a/arch/arm/dts/imx6q-cm-fx6.dts
+++ b/arch/arm/dts/imx6q-cm-fx6.dts
@@ -18,6 +18,7 @@
 / {
 	model = "CompuLab CM-FX6";
 	compatible = "compulab,cm-fx6", "fsl,imx6q";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart4;
diff --git a/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts b/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
index 58927097cd11..dbef8c0089ba 100644
--- a/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
+++ b/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
@@ -21,4 +21,5 @@
 / {
 	model = "DFI FS700-M60-6Q i.MX6q Q7 Board";
 	compatible = "dfi,fs700-m60-6q", "dfi,fs700-m60", "fsl,imx6q";
+	barebox,disable-deep-probe;
 };
diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
index 1280837db66d..fb1eb892c5b8 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -14,6 +14,8 @@
 #include <arm/nxp/imx/imx6q-dmo-edmqmx6.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart2;
 
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index 7ab2b22e9534..dd822428c8f4 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -17,6 +17,8 @@
 #include "imx6q-embedsky-e9.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dtsi b/arch/arm/dts/imx6q-embedsky-e9.dtsi
index e745808f093d..6e7c270b2a85 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dtsi
+++ b/arch/arm/dts/imx6q-embedsky-e9.dtsi
@@ -16,6 +16,7 @@
 / {
 	model = "Embedsky E9";
 	compatible = "embedsky,e9", "fsl,imx6q";
+	barebox,disable-deep-probe;
 
 	regulators {
 		compatible = "simple-bus";
diff --git a/arch/arm/dts/imx6q-gk802.dts b/arch/arm/dts/imx6q-gk802.dts
index d40f503936c8..82f9a73d235f 100644
--- a/arch/arm/dts/imx6q-gk802.dts
+++ b/arch/arm/dts/imx6q-gk802.dts
@@ -9,6 +9,10 @@
 #include <arm/nxp/imx/imx6q-gk802.dts>
 #include "imx6q.dtsi"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 /* External USB-A port (USBOTG) */
 &usbotg {
 	phy_type = "utmi";
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 96ea1dda3bcd..01b162bbbd18 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -19,6 +19,7 @@
 / {
 	model = "Garz+Fricke i.MX6q Santaro";
 	compatible = "guf,imx6q-santaro", "fsl,imx6q";
+	barebox,disable-deep-probe;
 
 	memory@10000000 {
 		device_type = "memory";
diff --git a/arch/arm/dts/imx6q-gw54xx.dts b/arch/arm/dts/imx6q-gw54xx.dts
index 316fe3790f55..e0b9c585eef5 100644
--- a/arch/arm/dts/imx6q-gw54xx.dts
+++ b/arch/arm/dts/imx6q-gw54xx.dts
@@ -17,6 +17,7 @@
 / {
 	model = "Gateworks Ventana i.MX6 Quad GW54XX";
 	compatible = "gw,imx6q-gw54xx", "gw,ventana", "fsl,imx6q";
+	barebox,disable-deep-probe;
 };
 
 &sata {
diff --git a/arch/arm/dts/imx6q-h100.dts b/arch/arm/dts/imx6q-h100.dts
index 2cf8fb23d067..3ea6ae04270c 100644
--- a/arch/arm/dts/imx6q-h100.dts
+++ b/arch/arm/dts/imx6q-h100.dts
@@ -42,6 +42,8 @@
 #include <arm/nxp/imx/imx6q-h100.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index e4d8cab6d834..f282016a5779 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -9,6 +9,8 @@
 #include "imx6qdl.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx6q-hummingboard2.dts b/arch/arm/dts/imx6q-hummingboard2.dts
index 5144395094ce..80d078ea20f1 100644
--- a/arch/arm/dts/imx6q-hummingboard2.dts
+++ b/arch/arm/dts/imx6q-hummingboard2.dts
@@ -50,6 +50,7 @@
 / {
 	model = "SolidRun HummingBoard2 Dual/Quad";
 	compatible = "solidrun,hummingboard2/q", "fsl,imx6q";
+	barebox,disable-deep-probe;
 
 	chosen {
 		environment {
diff --git a/arch/arm/dts/imx6q-marsboard.dts b/arch/arm/dts/imx6q-marsboard.dts
index b6fce7c898af..440d2bae2bab 100644
--- a/arch/arm/dts/imx6q-marsboard.dts
+++ b/arch/arm/dts/imx6q-marsboard.dts
@@ -7,6 +7,8 @@
 #include "imx6q.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		stdout-path = &uart2;
 
diff --git a/arch/arm/dts/imx6q-mba6x.dts b/arch/arm/dts/imx6q-mba6x.dts
index 5154580fae73..b4c218909fbb 100644
--- a/arch/arm/dts/imx6q-mba6x.dts
+++ b/arch/arm/dts/imx6q-mba6x.dts
@@ -16,6 +16,7 @@
 / {
 	model = "TQ TQMA6Q on MBa6x";
 	compatible = "tq,mba6x", "tq,tqma6q", "fsl,imx6q";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart2;
diff --git a/arch/arm/dts/imx6q-nitrogen6x.dts b/arch/arm/dts/imx6q-nitrogen6x.dts
index 294b9d8ce2c1..7d0d929d16f1 100644
--- a/arch/arm/dts/imx6q-nitrogen6x.dts
+++ b/arch/arm/dts/imx6q-nitrogen6x.dts
@@ -15,4 +15,8 @@
 #include "imx6q.dtsi"
 #include "imx6qdl-nitrogen6x.dtsi"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 /delete-node/ &{/memory@10000000};
diff --git a/arch/arm/dts/imx6q-novena.dts b/arch/arm/dts/imx6q-novena.dts
index 554b66fb5ae3..a0df20549d0a 100644
--- a/arch/arm/dts/imx6q-novena.dts
+++ b/arch/arm/dts/imx6q-novena.dts
@@ -4,6 +4,8 @@
 #include <arm/nxp/imx/imx6q-novena.dts>
 
 / {
+	barebox,deep-probe;
+
 	aliases {
 		eeprom0 = &eeprom;
 	};
diff --git a/arch/arm/dts/imx6q-phytec-phycard.dts b/arch/arm/dts/imx6q-phytec-phycard.dts
index 0fbd62af7b64..9e1bbbe15dc4 100644
--- a/arch/arm/dts/imx6q-phytec-phycard.dts
+++ b/arch/arm/dts/imx6q-phytec-phycard.dts
@@ -17,6 +17,7 @@
 / {
 	model = "PHYTEC phyCARD-i.MX6 Quad";
 	compatible = "phytec,imx6q-pcaaxl3", "fsl,imx6q";
+	barebox,deep-probe;
 
 	chosen {
 		stdout-path = &uart3;
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index 167d68cc8cf6..574e31c4761f 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -17,6 +17,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 Quad with eMMC";
 	compatible = "phytec,imx6q-pcm058-emmc", "fsl,imx6q";
+	barebox,deep-probe;
 };
 
 &eeprom {
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 188197d5b6d1..70b8cfca8bc4 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -17,7 +17,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 Quad with NAND";
 	compatible = "phytec,imx6q-pcm058-nand", "fsl,imx6q";
-
+	barebox,deep-probe;
 };
 
 &eeprom {
diff --git a/arch/arm/dts/imx6q-prti6q.dts b/arch/arm/dts/imx6q-prti6q.dts
index caf1ea746de5..56c65f2b0762 100644
--- a/arch/arm/dts/imx6q-prti6q.dts
+++ b/arch/arm/dts/imx6q-prti6q.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6q-prti6q.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6q-prtwd2.dts b/arch/arm/dts/imx6q-prtwd2.dts
index a2315f6e2cc9..8c1e5521f3fd 100644
--- a/arch/arm/dts/imx6q-prtwd2.dts
+++ b/arch/arm/dts/imx6q-prtwd2.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6q-prtwd2.dts>
 #include "imx6qdl-prti6q-emmc.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
index 74060f3e79be..1652de713988 100644
--- a/arch/arm/dts/imx6q-sabrelite.dts
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -18,6 +18,7 @@
 / {
 	model = "Freescale i.MX6 Quad SABRE Lite Board";
 	compatible = "fsl,imx6q-sabrelite", "fsl,imx6q";
+	barebox,deep-probe;
 
 	aliases {
 		spinor0 = &flash;
diff --git a/arch/arm/dts/imx6q-sabresd.dts b/arch/arm/dts/imx6q-sabresd.dts
index c4456e322e9b..ee8a2a9f95d6 100644
--- a/arch/arm/dts/imx6q-sabresd.dts
+++ b/arch/arm/dts/imx6q-sabresd.dts
@@ -19,6 +19,7 @@
 / {
 	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
 	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx6q-samx6i.dts b/arch/arm/dts/imx6q-samx6i.dts
index 6069db43975d..1f8f2a867693 100644
--- a/arch/arm/dts/imx6q-samx6i.dts
+++ b/arch/arm/dts/imx6q-samx6i.dts
@@ -9,6 +9,10 @@
 #include "imx6q.dtsi"
 #include "imx6qdl-smarc-samx6i.dtsi"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &fec {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6q-skov-imx6.dts b/arch/arm/dts/imx6q-skov-imx6.dts
index 7a2063a416bd..2150257e5e47 100644
--- a/arch/arm/dts/imx6q-skov-imx6.dts
+++ b/arch/arm/dts/imx6q-skov-imx6.dts
@@ -17,6 +17,7 @@
 / {
 	model = "Skov IMX6";
 	compatible = "skov,imx6", "fsl,imx6q";
+	barebox,deep-probe;
 };
 
 &i2c2 {
diff --git a/arch/arm/dts/imx6q-tx6q.dts b/arch/arm/dts/imx6q-tx6q.dts
index b5602fa4fd02..c2aacfc415cb 100644
--- a/arch/arm/dts/imx6q-tx6q.dts
+++ b/arch/arm/dts/imx6q-tx6q.dts
@@ -8,5 +8,6 @@
 / {
 	model = "Ka-Ro electronics TX6Q Module";
 	compatible = "karo,imx6q-tx6q", "fsl,imx6q";
+	barebox,disable-deep-probe;
 };
 
diff --git a/arch/arm/dts/imx6q-udoo.dts b/arch/arm/dts/imx6q-udoo.dts
index 1d2b05c19e8d..b7b0c7769a6f 100644
--- a/arch/arm/dts/imx6q-udoo.dts
+++ b/arch/arm/dts/imx6q-udoo.dts
@@ -20,4 +20,5 @@
 / {
        model = "Freescale i.MX6 Quad UDOO Board";
        compatible = "udoo,imx6q-udoo", "udoo,imx6qdl-udoo", "fsl,imx6q";
+       barebox,disable-deep-probe;
 };
diff --git a/arch/arm/dts/imx6q-utilite.dts b/arch/arm/dts/imx6q-utilite.dts
index 79465975d199..0d97e6fffdef 100644
--- a/arch/arm/dts/imx6q-utilite.dts
+++ b/arch/arm/dts/imx6q-utilite.dts
@@ -5,6 +5,7 @@
 / {
 	model = "CompuLab Utilite";
 	compatible = "compulab,utilite", "compulab,cm-fx6", "fsl,imx6q";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart4;
diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
index cbfe4da7e1b4..d32e1ae7abfd 100644
--- a/arch/arm/dts/imx6q-var-custom.dts
+++ b/arch/arm/dts/imx6q-var-custom.dts
@@ -17,6 +17,7 @@
 / {
 	model = "Variscite i.MX6 Quad Custom Carrier-Board";
 	compatible = "variscite,imx6q-custom", "variscite,imx6q-som", "fsl,imx6q";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx6q-vicut1.dts b/arch/arm/dts/imx6q-vicut1.dts
index cd882b0ed191..475f18393fdd 100644
--- a/arch/arm/dts/imx6q-vicut1.dts
+++ b/arch/arm/dts/imx6q-vicut1.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6q-vicut1.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6q-wandboard.dts b/arch/arm/dts/imx6q-wandboard.dts
index 77b1cf63cd57..9cd33e6d974a 100644
--- a/arch/arm/dts/imx6q-wandboard.dts
+++ b/arch/arm/dts/imx6q-wandboard.dts
@@ -3,6 +3,8 @@
 #include "imx6q.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx6q-zii-rdu2.dts b/arch/arm/dts/imx6q-zii-rdu2.dts
index dadba5be370e..429dfdedf583 100644
--- a/arch/arm/dts/imx6q-zii-rdu2.dts
+++ b/arch/arm/dts/imx6q-zii-rdu2.dts
@@ -49,4 +49,5 @@
 / {
 	model = "ZII RDU2 Board";
 	compatible = "zii,imx6q-zii-rdu2", "fsl,imx6q";
+	barebox,disable-deep-probe;
 };
diff --git a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
index 0f6d17ad6ce5..d838549dd9ea 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
@@ -41,6 +41,8 @@
  */
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 4ba6d90de0d5..2dbd848d3a0d 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -12,6 +12,8 @@
 #include <arm/nxp/imx/imx6qdl-phytec-pfla02.dtsi>
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-nand {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 7b77a22ec31e..c1e67ce2f530 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
+	barebox,deep-probe;
 	chosen {
 		environment-sd1 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
index c9c75a9aded9..7918026c1da6 100644
--- a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 
 / {
+	barebox,deep-probe;
+
 	aliases {
 		state = &state_emmc;
 	};
diff --git a/arch/arm/dts/imx6qp-nitrogen6_max.dts b/arch/arm/dts/imx6qp-nitrogen6_max.dts
index 17ae7c1bd350..09234bede104 100644
--- a/arch/arm/dts/imx6qp-nitrogen6_max.dts
+++ b/arch/arm/dts/imx6qp-nitrogen6_max.dts
@@ -42,3 +42,7 @@
 
 #include <arm/nxp/imx/imx6qp-nitrogen6_max.dts>
 #include "imx6qdl-nitrogen6_max.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
index 8ed5635199f3..76d0ac0847b3 100644
--- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -15,6 +15,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 QuadPlus with NAND";
 	compatible = "phytec,imx6qp-pcm058-nand", "fsl,imx6qp";
+	barebox,deep-probe;
 };
 
 &eeprom {
diff --git a/arch/arm/dts/imx6qp-prtwd3.dts b/arch/arm/dts/imx6qp-prtwd3.dts
index dc52eebc8578..f9e729f2d351 100644
--- a/arch/arm/dts/imx6qp-prtwd3.dts
+++ b/arch/arm/dts/imx6qp-prtwd3.dts
@@ -4,3 +4,6 @@
 #include <arm/nxp/imx/imx6qp-prtwd3.dts>
 #include "imx6qdl-prti6q-emmc.dtsi"
 
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6qp-sabresd.dts b/arch/arm/dts/imx6qp-sabresd.dts
index 1811044d94ff..da6cff84a83d 100644
--- a/arch/arm/dts/imx6qp-sabresd.dts
+++ b/arch/arm/dts/imx6qp-sabresd.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Freescale i.MX6 Quad Plus SABRE Smart Device Board";
 	compatible = "fsl,imx6qp-sabresd", "fsl,imx6qp";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx6qp-vicutp.dts b/arch/arm/dts/imx6qp-vicutp.dts
index 8827ffdebbcb..eb1b1f9ebd43 100644
--- a/arch/arm/dts/imx6qp-vicutp.dts
+++ b/arch/arm/dts/imx6qp-vicutp.dts
@@ -3,3 +3,7 @@
 
 #include <arm/nxp/imx/imx6qp-vicutp.dts>
 #include "imx6qdl-prti6q-nor.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx6qp-zii-rdu2.dts b/arch/arm/dts/imx6qp-zii-rdu2.dts
index 007428640f70..536d9748f977 100644
--- a/arch/arm/dts/imx6qp-zii-rdu2.dts
+++ b/arch/arm/dts/imx6qp-zii-rdu2.dts
@@ -49,4 +49,5 @@
 / {
 	model = "ZII RDU2+ Board";
 	compatible = "zii,imx6qp-zii-rdu2", "fsl,imx6qp";
+	barebox,disable-deep-probe;
 };
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 57817c1197a7..0d2424414abd 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -9,6 +9,8 @@
 #include "imx6qdl.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		stdout-path = &uart2;
 
diff --git a/arch/arm/dts/imx6s-skov-imx6.dts b/arch/arm/dts/imx6s-skov-imx6.dts
index e05abd3dab08..6581378dbb39 100644
--- a/arch/arm/dts/imx6s-skov-imx6.dts
+++ b/arch/arm/dts/imx6s-skov-imx6.dts
@@ -11,6 +11,7 @@
 / {
 	model = "Skov IMX6";
 	compatible = "skov,imx6", "fsl,imx6dl";
+	barebox,deep-probe;
 
 	chosen {
 		stdout-path = &uart2;
diff --git a/arch/arm/dts/imx6sx-sdb.dts b/arch/arm/dts/imx6sx-sdb.dts
index f58df62cbd6e..b33effc45c40 100644
--- a/arch/arm/dts/imx6sx-sdb.dts
+++ b/arch/arm/dts/imx6sx-sdb.dts
@@ -11,6 +11,8 @@
 #include "imx6sx.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6sx-udoo-neo-full.dts b/arch/arm/dts/imx6sx-udoo-neo-full.dts
index 12fd5073dbba..d5ed588b2113 100644
--- a/arch/arm/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/dts/imx6sx-udoo-neo-full.dts
@@ -2,7 +2,7 @@
 #include "imx6sx.dtsi"
 
 / {
-
+	barebox,deep-probe;
 	/delete-node/ memory@80000000;
 
 	chosen {
diff --git a/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts b/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
index a9a2581c0e3e..d9504b9a8810 100644
--- a/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
+++ b/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
@@ -1,6 +1,8 @@
 #include <arm/nxp/imx/imx6ul-ccimx6ulsbcpro.dts>
 
 /{
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart5;
 
diff --git a/arch/arm/dts/imx6ul-liteboard.dts b/arch/arm/dts/imx6ul-liteboard.dts
index 2b9a817a955c..f8cf86d0e963 100644
--- a/arch/arm/dts/imx6ul-liteboard.dts
+++ b/arch/arm/dts/imx6ul-liteboard.dts
@@ -45,6 +45,8 @@
 #include "imx6ul-litesom.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
index b30cd60aa668..0faa17198b54 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
@@ -15,6 +15,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 Ultra Light SOM with eMMC";
 	compatible = "phytec,imx6ul-pcl063-emmc", "fsl,imx6ul";
+	barebox,deep-probe;
 };
 
 &fec1 {
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
index c8be386e7f58..39020efd2586 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
@@ -15,6 +15,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 Ultra Lite SOM with NAND";
 	compatible = "phytec,imx6ul-pcl063-nand", "fsl,imx6ul";
+	barebox,deep-probe;
 };
 
 &fec1 {
diff --git a/arch/arm/dts/imx6ul-pico-hobbit.dts b/arch/arm/dts/imx6ul-pico-hobbit.dts
index 3deb89c448e3..2e0c5f8ba85d 100644
--- a/arch/arm/dts/imx6ul-pico-hobbit.dts
+++ b/arch/arm/dts/imx6ul-pico-hobbit.dts
@@ -1,6 +1,8 @@
 #include <arm/nxp/imx/imx6ul-pico-hobbit.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx6ul-prti6g.dts b/arch/arm/dts/imx6ul-prti6g.dts
index 262a96742b68..90fa10548684 100644
--- a/arch/arm/dts/imx6ul-prti6g.dts
+++ b/arch/arm/dts/imx6ul-prti6g.dts
@@ -4,6 +4,8 @@
 #include <arm/nxp/imx/imx6ul-prti6g.dts>
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		stdout-path = &uart4;
 
diff --git a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
index a22b842a2881..c2f8d79ec361 100644
--- a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
@@ -7,6 +7,8 @@
 #include "imx6ul.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6ul-webasto-ccbv2.dts b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
index 517d1a343b51..8628eefc9730 100644
--- a/arch/arm/dts/imx6ul-webasto-ccbv2.dts
+++ b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
@@ -9,6 +9,8 @@
 #include "imx6ul-webasto-ccbv2.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6ul-webasto-marvel.dts b/arch/arm/dts/imx6ul-webasto-marvel.dts
index 7571923b5551..533829d47767 100644
--- a/arch/arm/dts/imx6ul-webasto-marvel.dts
+++ b/arch/arm/dts/imx6ul-webasto-marvel.dts
@@ -13,6 +13,7 @@
 / {
 	model = "Webasto common communication board Marvel MK3";
 	compatible = "webasto,imx6ul-marvel-b2", "webasto,imx6ul-marvel", "fsl,imx6ul";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart7;
diff --git a/arch/arm/dts/imx6ull-14x14-evk.dts b/arch/arm/dts/imx6ull-14x14-evk.dts
index ad283ca96843..ff9778562acb 100644
--- a/arch/arm/dts/imx6ull-14x14-evk.dts
+++ b/arch/arm/dts/imx6ull-14x14-evk.dts
@@ -1,6 +1,8 @@
 #include <arm/nxp/imx/imx6ull-14x14-evk.dts>
 
 /{
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6ull-jozacp.dts b/arch/arm/dts/imx6ull-jozacp.dts
index 612dac67cae0..08a21807b4a1 100644
--- a/arch/arm/dts/imx6ull-jozacp.dts
+++ b/arch/arm/dts/imx6ull-jozacp.dts
@@ -4,6 +4,8 @@
 #include "imx6ull-jozacp.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
index 81f8aea24530..7df04e2c694f 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
@@ -15,6 +15,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 ULL SOM with eMMC";
 	compatible = "phytec,imx6ul-pcl063-emmc", "fsl,imx6ull";
+	barebox,deep-probe;
 };
 
 &fec1 {
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
index b76b60220d46..e833b7218575 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
@@ -14,6 +14,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 ULL SOM low-cost with NAND";
 	compatible = "phytec,imx6ul-pcl063-nand", "fsl,imx6ull";
+	barebox,deep-probe;
 };
 
 &fec1 {
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
index 3906e554d512..d9b60c1b71f8 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
@@ -15,6 +15,7 @@
 / {
 	model = "PHYTEC phyCORE-i.MX6 ULL SOM with NAND";
 	compatible = "phytec,imx6ul-pcl063-nand", "fsl,imx6ull";
+	barebox,deep-probe;
 };
 
 &fec1 {
diff --git a/arch/arm/dts/imx7d-flex-concentrator-mfg.dts b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
index 3b176587ee5f..048f8ab61cfd 100644
--- a/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
+++ b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
@@ -10,6 +10,8 @@
 #include <arm/nxp/imx/imx7d-flex-concentrator-mfg.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx7d-gome-e143_01.dts b/arch/arm/dts/imx7d-gome-e143_01.dts
index 88034609e4e3..32079cf80737 100644
--- a/arch/arm/dts/imx7d-gome-e143_01.dts
+++ b/arch/arm/dts/imx7d-gome-e143_01.dts
@@ -9,6 +9,7 @@
 
 / {
 	compatible = "gome,e143_01", "variscite,var-som-mx7", "fsl,imx7d";
+	barebox,deep-probe;
 
 	aliases {
 		state = &state;
diff --git a/arch/arm/dts/imx7d-meerkat96.dts b/arch/arm/dts/imx7d-meerkat96.dts
index da3a3a6dfced..9afc0fa1bcd9 100644
--- a/arch/arm/dts/imx7d-meerkat96.dts
+++ b/arch/arm/dts/imx7d-meerkat96.dts
@@ -2,6 +2,8 @@
 #include <arm/nxp/imx/imx7d-meerkat96.dts>
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx7d-phyboard-zeta.dts b/arch/arm/dts/imx7d-phyboard-zeta.dts
index 0725a186ec6b..cb15ca19ccde 100644
--- a/arch/arm/dts/imx7d-phyboard-zeta.dts
+++ b/arch/arm/dts/imx7d-phyboard-zeta.dts
@@ -12,6 +12,8 @@
 #include "imx7d-peb-eval-02.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart5;
 
diff --git a/arch/arm/dts/imx7d-sdb.dts b/arch/arm/dts/imx7d-sdb.dts
index b947e4463405..817f58281f44 100644
--- a/arch/arm/dts/imx7d-sdb.dts
+++ b/arch/arm/dts/imx7d-sdb.dts
@@ -10,6 +10,8 @@
 #include <arm/nxp/imx/imx7d-sdb.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 	};
diff --git a/arch/arm/dts/imx7d-zii-rmu2.dts b/arch/arm/dts/imx7d-zii-rmu2.dts
index 64da9cf55d72..57740c4b9028 100644
--- a/arch/arm/dts/imx7d-zii-rmu2.dts
+++ b/arch/arm/dts/imx7d-zii-rmu2.dts
@@ -7,6 +7,10 @@
 #include <arm/nxp/imx/imx7d-zii-rmu2.dts>
 #include "imx7d-ddrc.dtsi"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 /* FIXME: barebox serial is broken when barebox applies requested reparenting */
 &uart2 {
 	/delete-property/ assigned-clocks;
diff --git a/arch/arm/dts/imx7d-zii-rpu2.dts b/arch/arm/dts/imx7d-zii-rpu2.dts
index d8a5ffd19472..dd6ff4e0a09e 100644
--- a/arch/arm/dts/imx7d-zii-rpu2.dts
+++ b/arch/arm/dts/imx7d-zii-rpu2.dts
@@ -8,6 +8,8 @@
 #include "imx7d-ddrc.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		/*
 		 * NVMEM device corresponding to EEPROM attached to
diff --git a/arch/arm/dts/imx7s-warp.dts b/arch/arm/dts/imx7s-warp.dts
index e6a99cae4f95..c6d6b3cc3b73 100644
--- a/arch/arm/dts/imx7s-warp.dts
+++ b/arch/arm/dts/imx7s-warp.dts
@@ -10,6 +10,8 @@
 #include <arm/nxp/imx/imx7s-warp.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
index abe0a2e450a4..18ad177a8bf7 100644
--- a/arch/arm/dts/imx8mm-evk.dts
+++ b/arch/arm/dts/imx8mm-evk.dts
@@ -9,3 +9,7 @@
 #include <arm64/freescale/imx8mm-evk.dts>
 #include "imx8mm.dtsi"
 #include "imx8mm-evk.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx8mm-evkb.dts b/arch/arm/dts/imx8mm-evkb.dts
index b7d3be7a847a..a5fcce76036c 100644
--- a/arch/arm/dts/imx8mm-evkb.dts
+++ b/arch/arm/dts/imx8mm-evkb.dts
@@ -14,6 +14,7 @@
 / {
 	model = "FSL i.MX8MM EVKB";
 	compatible = "fsl,imx8mm-evkb", "fsl,imx8mm";
+	barebox,deep-probe;
 };
 
 &i2c1 {
diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
index 85f346884280..30341c857917 100644
--- a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
+++ b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
@@ -5,6 +5,8 @@
 #include <arm64/freescale/imx8mm-innocomm-wb15-evk.dts>
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts b/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
index 3d1c74562ea8..3e23427c1aa6 100644
--- a/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
+++ b/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
@@ -5,6 +5,8 @@
 #include <arm64/freescale/imx8mm-phyboard-polis-rdk.dts>
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx8mm-prt8mm.dts b/arch/arm/dts/imx8mm-prt8mm.dts
index abd758f2856e..d227ea6ed337 100644
--- a/arch/arm/dts/imx8mm-prt8mm.dts
+++ b/arch/arm/dts/imx8mm-prt8mm.dts
@@ -12,6 +12,7 @@
 / {
 	model = "Protonic PRT8MM";
 	compatible = "prt,prt8mm", "fsl,imx8mm";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart4;
diff --git a/arch/arm/dts/imx8mn-ddr4-evk.dts b/arch/arm/dts/imx8mn-ddr4-evk.dts
index 6ebb4d15e431..4e85b6f1f936 100644
--- a/arch/arm/dts/imx8mn-ddr4-evk.dts
+++ b/arch/arm/dts/imx8mn-ddr4-evk.dts
@@ -4,3 +4,7 @@
 
 #include <arm64/freescale/imx8mn-ddr4-evk.dts>
 #include "imx8mn-evk.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
index eb6e1312f4cb..c9a21b5481f3 100644
--- a/arch/arm/dts/imx8mn-evk.dts
+++ b/arch/arm/dts/imx8mn-evk.dts
@@ -4,3 +4,7 @@
 
 #include <arm64/freescale/imx8mn-evk.dts>
 #include "imx8mn-evk.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/imx8mp-congatec-qmx8p.dtsi b/arch/arm/dts/imx8mp-congatec-qmx8p.dtsi
index b2e8fa968ac7..188599519c4a 100644
--- a/arch/arm/dts/imx8mp-congatec-qmx8p.dtsi
+++ b/arch/arm/dts/imx8mp-congatec-qmx8p.dtsi
@@ -3,6 +3,11 @@
 // SPDX-FileCopyrightText: 2022 congatec GmbH
 // SPDX-FileCopyrightText: 2023 Pengutronix
 
+/ {
+	barebox,deep-probe;
+};
+
+
 &w25q64fw { /* FlexSPI NOR Flash */
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx8mp-debix-model-a.dts b/arch/arm/dts/imx8mp-debix-model-a.dts
index 4bb5ebf106dd..81596ec7c120 100644
--- a/arch/arm/dts/imx8mp-debix-model-a.dts
+++ b/arch/arm/dts/imx8mp-debix-model-a.dts
@@ -6,6 +6,8 @@
 #include "imx8mp.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	/*
 	* Switch the ethernet aliases compared to usual i.MX8MP ordering
 	* as the EQOS interface is on the main board, the FEC interface
diff --git a/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts b/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
index 59334ce30c8a..1e47499659a7 100644
--- a/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
+++ b/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
@@ -12,6 +12,7 @@ / {
 	model = "Polyhex i.MX8MPlus Debix SOM A on BMB-08";
 	compatible = "polyhex,imx8mp-debix-som-a-bmb-08", "polyhex,imx8mp-debix-som-a",
 		     "fsl,imx8mp";
+	barebox,deep-probe;
 
 	aliases {
 		ethernet0 = &eqos;
diff --git a/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts b/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
index 5f1c76d435b9..4c66b8a66753 100644
--- a/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
+++ b/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
@@ -6,6 +6,8 @@
 #include "imx8mp.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index 037674306817..e6f8c2d1b482 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -10,6 +10,8 @@
 #include "imx8mp.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts b/arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts
index eec42954dcfc..a2643deb8bf1 100644
--- a/arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts
+++ b/arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts
@@ -11,6 +11,7 @@
 / {
 	model = "Ka-Ro electronics QSXP-ML81-QSBASE4 (NXP i.MX8MP) Board";
 	compatible = "karo,imx8mp-qsxp-ml81-qsbase4", "karo,imx8mp-qsxp-ml81", "fsl,imx8mp";
+	barebox,deep-probe;
 };
 
 &eqos {
diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index 9ec0b9d21709..3f5c97228fbf 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -11,6 +11,7 @@
 / {
 	model = "Skov i.MX8MP";
 	compatible = "skov,imx8mp", "fsl,imx8mp";
+	barebox,deep-probe;
 
 	chosen {
 		stdout-path = &uart2;
diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
index bf23e4048918..e10a6c613f33 100644
--- a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -10,6 +10,8 @@
 #include "imx8mp.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx8mp-var-dart.dtsi b/arch/arm/dts/imx8mp-var-dart.dtsi
index 75c31b07f1b7..1ff10612af29 100644
--- a/arch/arm/dts/imx8mp-var-dart.dtsi
+++ b/arch/arm/dts/imx8mp-var-dart.dtsi
@@ -12,6 +12,7 @@
 
 / {
 	compatible = "variscite,imx8mp-var-dart", "fsl,imx8mp";
+	barebox,deep-probe;
 
 	aliases {
 		ethernet0 = &eqos;
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
index 2e753aeb0fb8..f7e829267819 100644
--- a/arch/arm/dts/imx8mq-evk.dts
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -11,6 +11,8 @@
 #include "imx8mq-ddrc.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx8mq-mnt-reform2.dts b/arch/arm/dts/imx8mq-mnt-reform2.dts
index b048faa2b1c3..547edaf14da0 100644
--- a/arch/arm/dts/imx8mq-mnt-reform2.dts
+++ b/arch/arm/dts/imx8mq-mnt-reform2.dts
@@ -11,6 +11,8 @@
 #include "imx8mq-ddrc.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx8mq-phytec-phycore-som.dts b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
index 736c007f498b..c28fab0f04b6 100644
--- a/arch/arm/dts/imx8mq-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
@@ -13,6 +13,7 @@
 / {
 	model = "Phytec phyCORE-i.MX8";
 	compatible = "phytec,imx8mq-pcl066", "fsl,imx8mq";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart1;
diff --git a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
index 414497b4e84e..af9f7cd89482 100644
--- a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
+++ b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
@@ -5,3 +5,7 @@
 
 #include <arm64/freescale/imx8mq-zii-ultra-rmb3.dts>
 #include "imx8mq-zii-ultra.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/imx8mq-zii-ultra-zest.dts b/arch/arm/dts/imx8mq-zii-ultra-zest.dts
index 491e66908032..fc2605b60164 100644
--- a/arch/arm/dts/imx8mq-zii-ultra-zest.dts
+++ b/arch/arm/dts/imx8mq-zii-ultra-zest.dts
@@ -5,3 +5,7 @@
 
 #include <arm64/freescale/imx8mq-zii-ultra-zest.dts>
 #include "imx8mq-zii-ultra.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/imx93-phyboard-segin.dts b/arch/arm/dts/imx93-phyboard-segin.dts
index 0fc69b878966..60c745c6f4ca 100644
--- a/arch/arm/dts/imx93-phyboard-segin.dts
+++ b/arch/arm/dts/imx93-phyboard-segin.dts
@@ -5,6 +5,8 @@
 #include "imx93-phyboard-segin-downstream.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx93-tqma93xx.dtsi b/arch/arm/dts/imx93-tqma93xx.dtsi
index aafeadc27570..df2f0d66c09d 100644
--- a/arch/arm/dts/imx93-tqma93xx.dtsi
+++ b/arch/arm/dts/imx93-tqma93xx.dtsi
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
 
-/{
+/ {
+	barebox,deep-probe;
+
 	chosen {
 		environment-spi-nor {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
index 7910cf3e6c39..bb61586fe224 100644
--- a/arch/arm/dts/k3-am625.dtsi
+++ b/arch/arm/dts/k3-am625.dtsi
@@ -1,5 +1,7 @@
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		barebox,bootsource-mmc0 = &sdhci0;
 		barebox,bootsource-mmc1 = &sdhci1;
diff --git a/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts b/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
index d10cf0b00b8d..b77e77f8f8e7 100644
--- a/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
+++ b/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
@@ -5,6 +5,10 @@
 
 #include "arm/marvell/kirkwood-guruplug-server-plus.dts"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &{/gpio-leds/led-health-r} {
 	barebox,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/kirkwood-openblocks_a6-bb.dts b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
index 748a57f92442..eb752d4c5133 100644
--- a/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
+++ b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
@@ -4,6 +4,10 @@
 
 #include "arm/marvell/kirkwood-openblocks_a6.dts"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &{/gpio-leds/led-green} {
 	barebox,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/kirkwood-topkick-bb.dts b/arch/arm/dts/kirkwood-topkick-bb.dts
index d99eba0274c9..7171e819aba5 100644
--- a/arch/arm/dts/kirkwood-topkick-bb.dts
+++ b/arch/arm/dts/kirkwood-topkick-bb.dts
@@ -5,6 +5,10 @@
 
 #include "arm/marvell/kirkwood-topkick.dts"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &{/gpio-leds/system} {
 	barebox,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/rk3188-radxarock.dts b/arch/arm/dts/rk3188-radxarock.dts
index 35aba4f5a6ed..8446a17f3902 100644
--- a/arch/arm/dts/rk3188-radxarock.dts
+++ b/arch/arm/dts/rk3188-radxarock.dts
@@ -15,6 +15,8 @@
 #include <arm/rockchip/rk3188-radxarock.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart2;
 
diff --git a/arch/arm/dts/rk3288-phycore-som.dts b/arch/arm/dts/rk3288-phycore-som.dts
index 2e4fe44479e5..9ebdbe27e838 100644
--- a/arch/arm/dts/rk3288-phycore-som.dts
+++ b/arch/arm/dts/rk3288-phycore-som.dts
@@ -19,6 +19,7 @@
 / {
 	model = "phycore-rk3288";
 	compatible = "phytec,rk3288-phycore-som", "rockchip,rk3288";
+	barebox,disable-deep-probe;
 
 	memory@0 {
 		device_type = "memory";
diff --git a/arch/arm/dts/rk3566-cm3-io.dts b/arch/arm/dts/rk3566-cm3-io.dts
index 17033edb78e2..68593b306bb8 100644
--- a/arch/arm/dts/rk3566-cm3-io.dts
+++ b/arch/arm/dts/rk3566-cm3-io.dts
@@ -6,6 +6,8 @@
 #include "rk356x.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen: chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/rk3566-pinetab2.dtsi b/arch/arm/dts/rk3566-pinetab2.dtsi
index 112acffc36b4..64f6e47dccf7 100644
--- a/arch/arm/dts/rk3566-pinetab2.dtsi
+++ b/arch/arm/dts/rk3566-pinetab2.dtsi
@@ -4,6 +4,8 @@
 #include "rk356x.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen: chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/rk3566-quartz64-a.dts b/arch/arm/dts/rk3566-quartz64-a.dts
index 0036ef31f13a..bb9e12f91799 100644
--- a/arch/arm/dts/rk3566-quartz64-a.dts
+++ b/arch/arm/dts/rk3566-quartz64-a.dts
@@ -6,6 +6,8 @@
 #include "rk356x.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	memory@a00000 {
 		device_type = "memory";
 		reg = <0x0 0x00a00000 0x0 0x7f600000>;
diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
index 39ad25a7632b..ff31fdc510fe 100644
--- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -7,6 +7,8 @@
 /dts-v1/;
 #include "arm64/rockchip/rk3568-bpi-r2-pro.dts"
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index c9466d9caf6c..d714501d4663 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -10,6 +10,8 @@
 #include "rk356x.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen: chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/rk3568-mecsbc.dts b/arch/arm/dts/rk3568-mecsbc.dts
index d63386012377..1beea32f03eb 100644
--- a/arch/arm/dts/rk3568-mecsbc.dts
+++ b/arch/arm/dts/rk3568-mecsbc.dts
@@ -6,6 +6,8 @@
 #include "rk356x.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	aliases {
 		state = &state_emmc;
 	};
diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
index 927eb8eb63ae..bcbfab14a580 100644
--- a/arch/arm/dts/rk3568-rock-3a.dts
+++ b/arch/arm/dts/rk3568-rock-3a.dts
@@ -6,6 +6,8 @@
 #include "rk356x.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen: chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5.dts b/arch/arm/dts/rk3568-wolfvision-pf5.dts
index 9ce24dfc6236..a0fb03672559 100644
--- a/arch/arm/dts/rk3568-wolfvision-pf5.dts
+++ b/arch/arm/dts/rk3568-wolfvision-pf5.dts
@@ -11,6 +11,8 @@
 #include "wolfvision-state.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	aliases {
 		saradc = &saradc;
 	};
diff --git a/arch/arm/dts/rk3588-orangepi-5-plus.dts b/arch/arm/dts/rk3588-orangepi-5-plus.dts
index 8bafbbd7f2bf..6ca5024c32c5 100644
--- a/arch/arm/dts/rk3588-orangepi-5-plus.dts
+++ b/arch/arm/dts/rk3588-orangepi-5-plus.dts
@@ -6,6 +6,8 @@
 #include "rk3588.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen: chosen {
 		environment-emmc {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
index 67fc39557400..aca675f57f4c 100644
--- a/arch/arm/dts/rk3588-rock-5b.dts
+++ b/arch/arm/dts/rk3588-rock-5b.dts
@@ -8,6 +8,8 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
+	barebox,deep-probe;
+
 	aliases {
 		mmc1 = &sdmmc;
 	};
diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index c36912f30eac..2539ff17b185 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -20,6 +20,7 @@
 / {
 	model = "Reflex SOCFPGA Arria 10 Achilles";
 	compatible = "reflex,achilles", "altr,socfpga-arria10", "altr,socfpga";
+	barebox,disable-deep-probe;
 
 	aliases {
 		serial0 = &uart0;
diff --git a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
index b3cd37ed393d..1b1437c7bd9c 100644
--- a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
+++ b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
@@ -5,6 +5,8 @@
 #include <arm/intel/socfpga/socfpga_arria10_mercury_aa1.dtsi>
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		mmc0 = &mmc;
 	};
diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
index 479c81476da8..80bb0f7b307a 100644
--- a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
+++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
@@ -19,6 +19,8 @@
 #include "socfpga.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 
diff --git a/arch/arm/dts/socfpga_cyclone5_de10_nano.dts b/arch/arm/dts/socfpga_cyclone5_de10_nano.dts
index 4a47773a7890..fce3dff8df7a 100644
--- a/arch/arm/dts/socfpga_cyclone5_de10_nano.dts
+++ b/arch/arm/dts/socfpga_cyclone5_de10_nano.dts
@@ -13,6 +13,7 @@
 / {
 	model = "Terasic DE10-Nano";
 	compatible = "terasic,de10-nano", "altr,socfpga-cyclone5", "altr,socfpga";
+	barebox,disable-deep-probe;
 
 	chosen {
 		bootargs = "earlyprintk";
diff --git a/arch/arm/dts/socfpga_cyclone5_socdk.dts b/arch/arm/dts/socfpga_cyclone5_socdk.dts
index ef1f9af9cf14..0b7d81524560 100644
--- a/arch/arm/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts
@@ -21,6 +21,7 @@
 / {
 	model = "Altera SOCFPGA Cyclone V SoC Development Kit";
 	compatible = "altr,socdk", "altr,socfpga-cyclone5", "altr,socfpga";
+	barebox,disable-deep-probe;
 
 	chosen {
 		environment {
diff --git a/arch/arm/dts/socfpga_cyclone5_sockit.dts b/arch/arm/dts/socfpga_cyclone5_sockit.dts
index 0c377477f33c..c8eed30e0ad7 100644
--- a/arch/arm/dts/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/dts/socfpga_cyclone5_sockit.dts
@@ -19,6 +19,8 @@
 #include "socfpga.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 
diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index 627a306b8adc..9b8c37dcd019 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -19,6 +19,8 @@
 #include "socfpga.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart0;
 
diff --git a/arch/arm/dts/stm32mp133c-mect1s.dts b/arch/arm/dts/stm32mp133c-mect1s.dts
index 9cc971b5d4ca..273253bf0d33 100644
--- a/arch/arm/dts/stm32mp133c-mect1s.dts
+++ b/arch/arm/dts/stm32mp133c-mect1s.dts
@@ -10,6 +10,8 @@
 #endif
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		stdout-path = "serial0:1500000n8";
 
diff --git a/arch/arm/dts/stm32mp133c-prihmb.dts b/arch/arm/dts/stm32mp133c-prihmb.dts
index 4b7b85c5dae0..e91055505b09 100644
--- a/arch/arm/dts/stm32mp133c-prihmb.dts
+++ b/arch/arm/dts/stm32mp133c-prihmb.dts
@@ -10,6 +10,8 @@
 #endif
 
 / {
+	barebox,deep-probe;
+
 	aliases {
 		state = &state_emmc;
 	};
diff --git a/arch/arm/dts/stm32mp135f-dk.dts b/arch/arm/dts/stm32mp135f-dk.dts
index 5f0f52d00535..bf45276c864f 100644
--- a/arch/arm/dts/stm32mp135f-dk.dts
+++ b/arch/arm/dts/stm32mp135f-dk.dts
@@ -5,6 +5,7 @@
 
 / {
 	model = "STM32MP135F-DK";
+	barebox,deep-probe;
 
 	chosen {
 		stdout-path = "serial0:115200n8";
diff --git a/arch/arm/dts/stm32mp151-mecio1.dts b/arch/arm/dts/stm32mp151-mecio1.dts
index 124f3079f256..4b64ed092b4d 100644
--- a/arch/arm/dts/stm32mp151-mecio1.dts
+++ b/arch/arm/dts/stm32mp151-mecio1.dts
@@ -3,3 +3,7 @@
 
 #include <arm/st/stm32mp151c-mecio1r0.dts>
 #include "stm32mp151.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/stm32mp151-mect1s.dts b/arch/arm/dts/stm32mp151-mect1s.dts
index 1f5b5bdba6df..383e3ff39597 100644
--- a/arch/arm/dts/stm32mp151-mect1s.dts
+++ b/arch/arm/dts/stm32mp151-mect1s.dts
@@ -3,3 +3,7 @@
 
 #include <arm/st/stm32mp151c-mect1s.dts>
 #include "stm32mp151.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/stm32mp151-prtt1a.dts b/arch/arm/dts/stm32mp151-prtt1a.dts
index 0f3c50f3e95f..9bad3a36394b 100644
--- a/arch/arm/dts/stm32mp151-prtt1a.dts
+++ b/arch/arm/dts/stm32mp151-prtt1a.dts
@@ -9,6 +9,7 @@
 / {
 	model = "Protonic PRTT1A";
 	compatible = "prt,prtt1a", "st,stm32mp151";
+	barebox,deep-probe;
 
 	chosen {
 		environment-sd {
diff --git a/arch/arm/dts/stm32mp151-prtt1c.dts b/arch/arm/dts/stm32mp151-prtt1c.dts
index faea9451ccc7..13c37b03323f 100644
--- a/arch/arm/dts/stm32mp151-prtt1c.dts
+++ b/arch/arm/dts/stm32mp151-prtt1c.dts
@@ -8,6 +8,8 @@
 #include "stm32mp151.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 
diff --git a/arch/arm/dts/stm32mp151-prtt1s.dts b/arch/arm/dts/stm32mp151-prtt1s.dts
index f9093d01ac63..a2eed5eacf19 100644
--- a/arch/arm/dts/stm32mp151-prtt1s.dts
+++ b/arch/arm/dts/stm32mp151-prtt1s.dts
@@ -9,6 +9,7 @@
 / {
 	model = "Protonic PRTT1S";
 	compatible = "prt,prtt1s", "st,stm32mp151";
+	barebox,deep-probe;
 
 	chosen {
 		environment-sd {
diff --git a/arch/arm/dts/stm32mp151c-plyaqm.dts b/arch/arm/dts/stm32mp151c-plyaqm.dts
index 7806ed723132..229032e9866f 100644
--- a/arch/arm/dts/stm32mp151c-plyaqm.dts
+++ b/arch/arm/dts/stm32mp151c-plyaqm.dts
@@ -9,6 +9,8 @@
 #endif
 
 / {
+	barebox,deep-probe;
+
 	aliases {
 		state = &state_emmc;
 	};
diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
index 12a7c290dd0b..6a45dc843437 100644
--- a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
+++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
@@ -7,6 +7,8 @@
 #include "stm32mp151.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/stm32mp157a-dk1-scmi.dts b/arch/arm/dts/stm32mp157a-dk1-scmi.dts
index 7092b3af9fe5..b3c431a53b39 100644
--- a/arch/arm/dts/stm32mp157a-dk1-scmi.dts
+++ b/arch/arm/dts/stm32mp157a-dk1-scmi.dts
@@ -2,3 +2,7 @@
 
 #include <arm/st/stm32mp157a-dk1-scmi.dts>
 #include "stm32mp15xx-dkx.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/stm32mp157a-dk1.dts b/arch/arm/dts/stm32mp157a-dk1.dts
index d3395b0d9570..875d85604e36 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/dts/stm32mp157a-dk1.dts
@@ -6,3 +6,7 @@
 
 #include <arm/st/stm32mp157a-dk1.dts>
 #include "stm32mp15xx-dkx.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/stm32mp157c-dk2-scmi.dts b/arch/arm/dts/stm32mp157c-dk2-scmi.dts
index 7f015319867a..30e419887f59 100644
--- a/arch/arm/dts/stm32mp157c-dk2-scmi.dts
+++ b/arch/arm/dts/stm32mp157c-dk2-scmi.dts
@@ -2,3 +2,7 @@
 
 #include <arm/st/stm32mp157c-dk2-scmi.dts>
 #include "stm32mp15xx-dkx.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/stm32mp157c-dk2.dts b/arch/arm/dts/stm32mp157c-dk2.dts
index e3840153ac4c..1d56b5c4cc89 100644
--- a/arch/arm/dts/stm32mp157c-dk2.dts
+++ b/arch/arm/dts/stm32mp157c-dk2.dts
@@ -6,3 +6,7 @@
 
 #include <arm/st/stm32mp157c-dk2.dts>
 #include "stm32mp15xx-dkx.dtsi"
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/dts/stm32mp157c-ev1-scmi.dts b/arch/arm/dts/stm32mp157c-ev1-scmi.dts
index 7cd279da4c2e..933cc3e70b8c 100644
--- a/arch/arm/dts/stm32mp157c-ev1-scmi.dts
+++ b/arch/arm/dts/stm32mp157c-ev1-scmi.dts
@@ -4,6 +4,8 @@
 #include "stm32mp151.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/stm32mp157c-ev1.dts b/arch/arm/dts/stm32mp157c-ev1.dts
index f1ca0cf99709..d7f78b8ad282 100644
--- a/arch/arm/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/dts/stm32mp157c-ev1.dts
@@ -4,6 +4,8 @@
 #include "stm32mp151.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts b/arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts
index a7674cf0b38a..628c763d6fb4 100644
--- a/arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts
+++ b/arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts
@@ -6,6 +6,7 @@ / {
 	model = "Linux Automation MC-1 SCMI board";
 	compatible = "lxa,stm32mp157c-mc1-scmi", "lxa,stm32mp157c-mc1",
 			   "oct,stm32mp15xx-osd32", "st,stm32mp157";
+	barebox,deep-probe;
 
 };
 
diff --git a/arch/arm/dts/stm32mp157c-lxa-mc1.dts b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
index 29852ee9aae0..392194c20bd6 100644
--- a/arch/arm/dts/stm32mp157c-lxa-mc1.dts
+++ b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
@@ -7,6 +7,8 @@
 #include "stm32mp151.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	aliases {
 		state = &state;
 	};
diff --git a/arch/arm/dts/stm32mp157c-odyssey.dts b/arch/arm/dts/stm32mp157c-odyssey.dts
index 9c9fd34ccdf0..562612f12f8b 100644
--- a/arch/arm/dts/stm32mp157c-odyssey.dts
+++ b/arch/arm/dts/stm32mp157c-odyssey.dts
@@ -7,6 +7,8 @@
 #include "stm32mp151.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts b/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
index 6ad978f453d8..5219a8ad44ca 100644
--- a/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
+++ b/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
@@ -12,6 +12,7 @@
 / {
 	model = "PHYTEC phyCORE-STM32MP1-3 SoM";
 	compatible = "phytec,phycore-stm32mp1-3", "st,stm32mp157";
+	barebox,disable-deep-probe;
 
 	chosen {
 		environment-sd {
diff --git a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
index 32f42e4b04d8..7a080fe11d1f 100644
--- a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
+++ b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
@@ -6,6 +6,8 @@
 #include "stm32mp151.dtsi"
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/tegra124-jetson-tk1.dts b/arch/arm/dts/tegra124-jetson-tk1.dts
index 186985545b46..09a0fe176d00 100644
--- a/arch/arm/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/dts/tegra124-jetson-tk1.dts
@@ -2,6 +2,8 @@
 #include "tegra124.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uartd;
 
diff --git a/arch/arm/dts/tegra20-colibri-iris.dts b/arch/arm/dts/tegra20-colibri-iris.dts
index e8bd8feb3138..51b15eda4d96 100644
--- a/arch/arm/dts/tegra20-colibri-iris.dts
+++ b/arch/arm/dts/tegra20-colibri-iris.dts
@@ -5,6 +5,7 @@
 / {
 	model = "Toradex Colibri T20 on Iris";
 	compatible = "toradex,iris", "toradex,colibri_t20", "nvidia,tegra20";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uarta;
diff --git a/arch/arm/dts/tegra20-paz00.dts b/arch/arm/dts/tegra20-paz00.dts
index a9019d195951..2fcc55a19069 100644
--- a/arch/arm/dts/tegra20-paz00.dts
+++ b/arch/arm/dts/tegra20-paz00.dts
@@ -1,2 +1,6 @@
 #include <arm/nvidia/tegra20-paz00.dts>
 #include "tegra20.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index d6aa0e4d1378..8869722cf6bf 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -6,6 +6,7 @@
 / {
 	model = "NVIDIA Tegra30 Beaver evaluation board";
 	compatible = "nvidia,beaver", "nvidia,tegra30";
+	barebox,disable-deep-probe;
 
 	aliases {
 		rtc0 = &pmic;
diff --git a/arch/arm/dts/tny_a9260.dts b/arch/arm/dts/tny_a9260.dts
index 2c4df66f7a75..02b178892bc0 100644
--- a/arch/arm/dts/tny_a9260.dts
+++ b/arch/arm/dts/tny_a9260.dts
@@ -2,3 +2,7 @@
 #include <arm/microchip/tny_a9260.dts>
 #include "at91sam9260.dtsi"
 #include "calao_nand.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/tny_a9g20.dts b/arch/arm/dts/tny_a9g20.dts
index 654a988c44c3..ce7497ca3a79 100644
--- a/arch/arm/dts/tny_a9g20.dts
+++ b/arch/arm/dts/tny_a9g20.dts
@@ -2,3 +2,7 @@
 #include <arm/microchip/tny_a9g20.dts>
 #include "at91sam9g20.dtsi"
 #include "calao_nand.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/usb_a9260.dts b/arch/arm/dts/usb_a9260.dts
index 9eb2db3ff8ce..05671bd144ba 100644
--- a/arch/arm/dts/usb_a9260.dts
+++ b/arch/arm/dts/usb_a9260.dts
@@ -2,3 +2,7 @@
 #include <arm/microchip/usb_a9260.dts>
 #include "at91sam9260.dtsi"
 #include "calao_nand.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/usb_a9g20.dts b/arch/arm/dts/usb_a9g20.dts
index a8ed22b7c407..634c53ec9ad3 100644
--- a/arch/arm/dts/usb_a9g20.dts
+++ b/arch/arm/dts/usb_a9g20.dts
@@ -2,3 +2,7 @@
 #include <arm/microchip/usb_a9g20.dts>
 #include "at91sam9g20.dtsi"
 #include "calao_nand.dtsi"
+
+/ {
+	barebox,disable-deep-probe;
+};
diff --git a/arch/arm/dts/versatile-pb.dts b/arch/arm/dts/versatile-pb.dts
index d81b7d27152c..f72b2970cde5 100644
--- a/arch/arm/dts/versatile-pb.dts
+++ b/arch/arm/dts/versatile-pb.dts
@@ -3,6 +3,7 @@
 / {
 	model = "ARM Versatile PB";
 	compatible = "arm,versatile-pb";
+	barebox,disable-deep-probe;
 
 	chosen {
 		environment-nor {
diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
index acf4e023d5cd..4c86f4acd80c 100644
--- a/arch/arm/dts/vexpress-v2p-ca15.dts
+++ b/arch/arm/dts/vexpress-v2p-ca15.dts
@@ -1,6 +1,8 @@
 #include <arm/arm/vexpress-v2p-ca15_a7.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	barebox_environment {
 		compatible = "barebox,environment";
 		device-path = &barebox_env;
diff --git a/arch/arm/dts/vexpress-v2p-ca9.dts b/arch/arm/dts/vexpress-v2p-ca9.dts
index d1484ff4b0a9..51ae830a95fb 100644
--- a/arch/arm/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/dts/vexpress-v2p-ca9.dts
@@ -1,6 +1,8 @@
 #include <arm/arm/vexpress-v2p-ca9.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	barebox_environment {
 		compatible = "barebox,environment";
 		device-path = &barebox_env;
diff --git a/arch/arm/dts/vf610-twr.dts b/arch/arm/dts/vf610-twr.dts
index 14d9e74274c7..e6f0e438e538 100644
--- a/arch/arm/dts/vf610-twr.dts
+++ b/arch/arm/dts/vf610-twr.dts
@@ -11,6 +11,10 @@
 #include "vf610.dtsi"
 #include "vf610-ddrmc.dtsi"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &usbdev0 {
 	status = "disabled";
 };
diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
index fd06147c8e37..d7f5c6bba16e 100644
--- a/arch/arm/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -9,6 +9,8 @@
 #include "vf610-zii-dev.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		/*
 		 * NVMEM device corresponding to EEPROM attached to
diff --git a/arch/arm/dts/vf610-zii-dev-rev-b.dts b/arch/arm/dts/vf610-zii-dev-rev-b.dts
index ec71b1e43acd..e36ef08af68b 100644
--- a/arch/arm/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/dts/vf610-zii-dev-rev-b.dts
@@ -8,6 +8,10 @@
 
 #include "vf610-zii-dev.dtsi"
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 &{/spi-0/flash@0} {
 	#address-cells = <1>;
 	#size-cells = <0>;
diff --git a/arch/arm/dts/vf610-zii-dev-rev-c.dts b/arch/arm/dts/vf610-zii-dev-rev-c.dts
index d61b2915099f..dd4137b38225 100644
--- a/arch/arm/dts/vf610-zii-dev-rev-c.dts
+++ b/arch/arm/dts/vf610-zii-dev-rev-c.dts
@@ -9,6 +9,8 @@
 #include "vf610-zii-dev.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		/*
 		 * NVMEM device corresponding to EEPROM attached to
diff --git a/arch/arm/dts/vf610-zii-scu4-aib.dts b/arch/arm/dts/vf610-zii-scu4-aib.dts
index a6f585ae3710..506b286dd8d5 100644
--- a/arch/arm/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/dts/vf610-zii-scu4-aib.dts
@@ -7,6 +7,8 @@
 #include "vf610-zii-dev.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		/*
 		 * NVMEM device corresponding to EEPROM attached to
diff --git a/arch/arm/dts/vf610-zii-spb4.dts b/arch/arm/dts/vf610-zii-spb4.dts
index e7d35d0e69f7..653ad31ff75b 100644
--- a/arch/arm/dts/vf610-zii-spb4.dts
+++ b/arch/arm/dts/vf610-zii-spb4.dts
@@ -5,6 +5,8 @@
 #include "vf610-zii-dev.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		/*
 		* NVMEM device corresponding to EEPROM attached to
diff --git a/arch/arm/dts/vf610-zii-ssmb-dtu.dts b/arch/arm/dts/vf610-zii-ssmb-dtu.dts
index 7952b09e8479..a402ec655bce 100644
--- a/arch/arm/dts/vf610-zii-ssmb-dtu.dts
+++ b/arch/arm/dts/vf610-zii-ssmb-dtu.dts
@@ -5,6 +5,8 @@
 #include "vf610-zii-dev.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		/*
 		* NVMEM device corresponding to EEPROM attached to
@@ -13,4 +15,4 @@ aliases {
 		*/
 		switch-eeprom = &switch0;
 	};
-};
\ No newline at end of file
+};
diff --git a/arch/arm/dts/vf610-zii-ssmb-spu3.dts b/arch/arm/dts/vf610-zii-ssmb-spu3.dts
index d6c436b204bc..e8f4dfb9c235 100644
--- a/arch/arm/dts/vf610-zii-ssmb-spu3.dts
+++ b/arch/arm/dts/vf610-zii-ssmb-spu3.dts
@@ -5,6 +5,8 @@
 #include "vf610-zii-dev.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		/*
 		* NVMEM device corresponding to EEPROM attached to
diff --git a/arch/arm/dts/zynq-zed.dts b/arch/arm/dts/zynq-zed.dts
index 2a166189d683..0aca93256668 100644
--- a/arch/arm/dts/zynq-zed.dts
+++ b/arch/arm/dts/zynq-zed.dts
@@ -2,6 +2,8 @@
 #include "zynq-7000.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		stdout-path = &uart1;
 
diff --git a/arch/arm/dts/zynqmp-zcu102-revA.dts b/arch/arm/dts/zynqmp-zcu102-revA.dts
index 8f5410d5e6eb..225745cb7488 100644
--- a/arch/arm/dts/zynqmp-zcu102-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu102-revA.dts
@@ -3,6 +3,8 @@
 #include <arm64/xilinx/zynqmp-zcu102-revA.dts>
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/zynqmp-zcu102-revB.dts b/arch/arm/dts/zynqmp-zcu102-revB.dts
index 3f772f465a45..a71769da3979 100644
--- a/arch/arm/dts/zynqmp-zcu102-revB.dts
+++ b/arch/arm/dts/zynqmp-zcu102-revB.dts
@@ -3,6 +3,8 @@
 #include <arm64/xilinx/zynqmp-zcu102-revB.dts>
 
 / {
+	barebox,deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
index 95b60a6b1d69..d56171ee0c63 100644
--- a/arch/arm/dts/zynqmp-zcu104-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -10,6 +10,8 @@
 #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/zynqmp-zcu106-revA.dts b/arch/arm/dts/zynqmp-zcu106-revA.dts
index 7c505882688a..26734160e1ba 100644
--- a/arch/arm/dts/zynqmp-zcu106-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu106-revA.dts
@@ -11,6 +11,8 @@
 #include <arm64/xilinx/zynqmp-zcu106-revA.dts>
 
 / {
+	barebox,disable-deep-probe;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/kvx/dts/k200.dts b/arch/kvx/dts/k200.dts
index d463ffda50e0..c55b2c16d2a2 100644
--- a/arch/kvx/dts/k200.dts
+++ b/arch/kvx/dts/k200.dts
@@ -8,6 +8,7 @@
 / {
 	model = "KONIC 200 (K200)";
 	compatible = "kalray,board-k200";
+	barebox,disable-deep-probe;
 
 	#address-cells = <2>;
 	#size-cells = <2>;
diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index 25eabc9b7e37..01fc1c5470fb 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -2,6 +2,8 @@
 #include "ar9331.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		spiflash = &spiflash;
 	};
diff --git a/arch/mips/dts/ar9331-okud-max9331.dts b/arch/mips/dts/ar9331-okud-max9331.dts
index f65272905b83..974aa1bd3162 100644
--- a/arch/mips/dts/ar9331-okud-max9331.dts
+++ b/arch/mips/dts/ar9331-okud-max9331.dts
@@ -10,6 +10,7 @@
 / {
 	model = "o&kud max9331";
 	compatible = "okud,max9331";
+	barebox,disable-deep-probe;
 
 	aliases {
 		spiflash = &spiflash;
diff --git a/arch/mips/dts/ar9331-openembed-som9331-board.dts b/arch/mips/dts/ar9331-openembed-som9331-board.dts
index 78f5ef1ea298..26195afbc880 100644
--- a/arch/mips/dts/ar9331-openembed-som9331-board.dts
+++ b/arch/mips/dts/ar9331-openembed-som9331-board.dts
@@ -9,6 +9,7 @@
 / {
 	model = "OpenEmbed SOM9331 Board";
 	compatible = "openembed,som9331-board", "openembed,som9331-module";
+	barebox,disable-deep-probe;
 
 	aliases {
 		serial0 = &uart;
diff --git a/arch/mips/dts/ar9331_tl_mr3020.dts b/arch/mips/dts/ar9331_tl_mr3020.dts
index 66587912c483..832b0aac5aeb 100644
--- a/arch/mips/dts/ar9331_tl_mr3020.dts
+++ b/arch/mips/dts/ar9331_tl_mr3020.dts
@@ -2,6 +2,8 @@
 #include "ar9331.dtsi"
 
 / {
+	barebox,disable-deep-probe;
+
 	aliases {
 		spiflash = &spiflash;
 	};
diff --git a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
index d788b5ed6332..9c182cd2330e 100644
--- a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
+++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
@@ -8,6 +8,7 @@
 / {
 	model = "TP-Link WDR4300 v1.7";
 	compatible = "tplink,tl-wdr4300", "tplink,tl-wdr4300-v1.7";
+	barebox,disable-deep-probe;
 
 	aliases {
 		serial0 = &uart0;
diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
index 6bb26d427f2d..be4b83433013 100644
--- a/arch/mips/dts/black-swift.dts
+++ b/arch/mips/dts/black-swift.dts
@@ -8,6 +8,7 @@
 / {
 	model = "Black Swift";
 	compatible = "smartlx,black-swift";
+	barebox,disable-deep-probe;
 
 	aliases {
 		spiflash = &spiflash;
diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-320.dts
index beec40f3dcc5..2964e549eb20 100644
--- a/arch/mips/dts/dlink-dir-320.dts
+++ b/arch/mips/dts/dlink-dir-320.dts
@@ -3,6 +3,7 @@
 / {
 	model = "D-Link DIR-320";
 	compatible = "dlink,dir320";
+	barebox,disable-deep-probe;
 
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/mips/dts/img-ci20.dts b/arch/mips/dts/img-ci20.dts
index 71038890d977..561250e5fdfc 100644
--- a/arch/mips/dts/img-ci20.dts
+++ b/arch/mips/dts/img-ci20.dts
@@ -13,6 +13,7 @@
 / {
 	model = "MIPS Creator CI20";
 	compatible = "img,ci20";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &uart0;
diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-ls1b.dts
index 30520a34f53b..2330a0120dfa 100644
--- a/arch/mips/dts/loongson-ls1b.dts
+++ b/arch/mips/dts/loongson-ls1b.dts
@@ -5,6 +5,7 @@
 / {
 	model = "Loongson Tech LS1B Demo Board";
 	compatible = "loongson,ls1b";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &serial2;
diff --git a/arch/mips/dts/qca4531-8devices-lima.dts b/arch/mips/dts/qca4531-8devices-lima.dts
index bb3e5247dc40..6f6e77246728 100644
--- a/arch/mips/dts/qca4531-8devices-lima.dts
+++ b/arch/mips/dts/qca4531-8devices-lima.dts
@@ -8,6 +8,7 @@
 / {
 	model = "8devices LIMA";
 	compatible = "8devices,lima";
+	barebox,disable-deep-probe;
 
 	aliases {
 		serial0 = &uart0;
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 6cf7513ff5fa..c8e30c5aebf3 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -3,6 +3,7 @@
 / {
 	model = "qemu malta";
 	compatible = "qemu,malta";
+	barebox,disable-deep-probe;
 
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
index 93211a97a59f..3627565e79f0 100644
--- a/arch/mips/dts/rzx50.dts
+++ b/arch/mips/dts/rzx50.dts
@@ -5,6 +5,7 @@
 / {
 	model = "Ritmix RZX-50";
 	compatible = "ritmix,rzx50";
+	barebox,disable-deep-probe;
 
 	chosen {
 		stdout-path = &serial1;
diff --git a/arch/openrisc/dts/or1ksim.dts b/arch/openrisc/dts/or1ksim.dts
index ac938be9ee31..5aba92b1d9de 100644
--- a/arch/openrisc/dts/or1ksim.dts
+++ b/arch/openrisc/dts/or1ksim.dts
@@ -2,6 +2,7 @@
 / {
 	model = "or1ksim";
 	compatible = "opencores,or1ksim";
+	barebox,disable-deep-probe;
 	#address-cells = <1>;
 	#size-cells = <1>;
 	interrupt-parent = <&pic>;
diff --git a/arch/riscv/dts/erizo-generic.dts b/arch/riscv/dts/erizo-generic.dts
index 29da01ef8ead..3b0ef76c9414 100644
--- a/arch/riscv/dts/erizo-generic.dts
+++ b/arch/riscv/dts/erizo-generic.dts
@@ -6,6 +6,7 @@
 / {
 	model = "generic Erizo SoC board";
 	compatible = "miet-riscv-workgroup,erizo-generic-board";
+	barebox,disable-deep-probe;
 
 	memory@80000000 {
 		device_type = "memory";
diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
index 4eb92ae6f1cd..165f5e56fdf9 100644
--- a/arch/riscv/dts/erizo.dtsi
+++ b/arch/riscv/dts/erizo.dtsi
@@ -4,6 +4,7 @@
 
 / {
 	compatible = "miet-riscv-workgroup,erizo";
+	barebox,disable-deep-probe;
 
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/riscv/dts/hifive-unleashed-a00.dts b/arch/riscv/dts/hifive-unleashed-a00.dts
index 3b82c16ff0f7..fd174333a95c 100644
--- a/arch/riscv/dts/hifive-unleashed-a00.dts
+++ b/arch/riscv/dts/hifive-unleashed-a00.dts
@@ -2,6 +2,10 @@
 
 #include <riscv/sifive/hifive-unleashed-a00.dts>
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 /* probing on QEMU v5.2.0 triggers load access fault @0x10040014 */
 &qspi0 { status = "disabled"; };
 &qspi2 { status = "disabled"; };
diff --git a/arch/riscv/dts/hifive-unmatched-a00.dts b/arch/riscv/dts/hifive-unmatched-a00.dts
index 24a4c798a941..b16d7609e28f 100644
--- a/arch/riscv/dts/hifive-unmatched-a00.dts
+++ b/arch/riscv/dts/hifive-unmatched-a00.dts
@@ -2,6 +2,10 @@
 
 #include <riscv/sifive/hifive-unmatched-a00.dts>
 
+/ {
+	barebox,disable-deep-probe;
+};
+
 /* probing on QEMU v5.2.0 triggers load access fault @0x10040014 */
 &qspi0 { status = "disabled"; };
 &qspi1 { status = "disabled"; };
diff --git a/arch/riscv/dts/jh7100-beaglev-starlight.dts b/arch/riscv/dts/jh7100-beaglev-starlight.dts
index 8b4c1ac0eaa4..f4090b10a057 100644
--- a/arch/riscv/dts/jh7100-beaglev-starlight.dts
+++ b/arch/riscv/dts/jh7100-beaglev-starlight.dts
@@ -10,6 +10,7 @@ / {
 	#size-cells = <2>;
 	compatible = "beagle,beaglev-starlight-jh7100", "starfive,jh7100";
 	model = "BeagleV Starlight Beta";
+	barebox,disable-deep-probe;
 
 	aliases {
 		serial0 = &uart3;
diff --git a/arch/riscv/dts/jh7100-beaglev-starlight.dtsi b/arch/riscv/dts/jh7100-beaglev-starlight.dtsi
index 13238f087f16..43acfcc1dc21 100644
--- a/arch/riscv/dts/jh7100-beaglev-starlight.dtsi
+++ b/arch/riscv/dts/jh7100-beaglev-starlight.dtsi
@@ -8,6 +8,7 @@ / {
 	#size-cells = <2>;
 	compatible = "beagle,beaglev-starlight-jh7100", "starfive,jh7100";
 	model = "BeagleV Starlight Beta";
+	barebox,disable-deep-probe;
 
 	aliases {
 		serial0 = &uart3;
diff --git a/arch/riscv/dts/jh7100.dtsi b/arch/riscv/dts/jh7100.dtsi
index b11801553bf7..f7102808eb15 100644
--- a/arch/riscv/dts/jh7100.dtsi
+++ b/arch/riscv/dts/jh7100.dtsi
@@ -7,6 +7,7 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 	compatible = "starfive,jh7100";
+	barebox,disable-deep-probe;
 
 	aliases {
 		spi0 = &qspi;
diff --git a/arch/riscv/dts/litex-linux.dts b/arch/riscv/dts/litex-linux.dts
index d21fa57e3035..bc40c1b90329 100644
--- a/arch/riscv/dts/litex-linux.dts
+++ b/arch/riscv/dts/litex-linux.dts
@@ -7,6 +7,7 @@
 / {
 	model = "LiteX VexRiscV-SoC-Linux";
 	compatible = "litex,vexriscv-soc-linux";
+	barebox,disable-deep-probe;
 
 	aliases {
 		rom = &rom;
diff --git a/arch/riscv/dts/litex_soc_linux.dtsi b/arch/riscv/dts/litex_soc_linux.dtsi
index 94a0ba29dae7..e9433b82a89d 100644
--- a/arch/riscv/dts/litex_soc_linux.dtsi
+++ b/arch/riscv/dts/litex_soc_linux.dtsi
@@ -4,6 +4,7 @@
 
 / {
 	compatible = "litex,vexriscv-soc-linux";
+	barebox,disable-deep-probe;
 
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index ec00301d0980..163c4cb7dcfb 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -3,6 +3,7 @@
 / {
 	model = "Sandbox";
 	compatible = "barebox,sandbox";
+	barebox,deep-probe;
 
 	#address-cells = <2>;
 	#size-cells = <2>;
-- 
2.39.5



