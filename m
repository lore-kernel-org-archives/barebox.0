Delivery-date: Mon, 03 Jan 2022 13:08:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8b-009oAx-Dq
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:08:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8R-0005o6-V8
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:08:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKIaFg11rjtTm+KCnemMXK3W4hZatgko/SfzsGhZQc4=; b=ciJOGbLLcCZB/T
	ENz28jmqzv+CFIcA7Eq2DN5iHkSzn78ygJUKGJxFysXc+bZqsyFs7Vi48Bu1ckcedwV0J8ox9THP0
	Lc0ciw3OEulbcq6SNDCN25ZKxKC8nd9ySBJEqFNkUC1GUssKTvGfCMBKyaWzYzAM9QOnet+s5/Rgh
	aJ6LMRTLeIza6/oE5qkX09y6SzbgYWrQJT/Zf78rp8X7l8z/UOL99g1pCxBlaswH5n+0DUfYbnY1J
	CDPdU64IiWn9ihY1T9jqIeUiJr+ufc8SvOB5ye4jy/0ToTGHgq3z8bLO5JbA71Y+yjdEyM42XfY7i
	NiSi9tajNq0x6p16kY3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M6a-008yE0-Cx; Mon, 03 Jan 2022 12:06:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M5w-008xtu-4r
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:54 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5u-00052e-Bb; Mon, 03 Jan 2022 13:05:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GWI-CQ; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:35 +0100
Message-Id: <20220103120539.1730644-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040544_745982_DE4CDF94 
X-CRM114-Status: GOOD (  11.11  )
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
Subject: [PATCH 07/11] ARM: i.MX: add SPDX-License-Identifier for DCD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In absence of a license statement, the default is GPL-2.0-only. Add that
to the DCD files. All of //  /* */  # are acceptable comment characters
in the DSL. If there are nearby comments in the file, the same character
is used, otherwise #.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../advantech-mx6/flash-header-advantech-rom-7421.imxcfg      | 2 ++
 .../flash-header-nitrogen6dl-1g.imxcfg                        | 2 ++
 .../flash-header-nitrogen6dl-2g.imxcfg                        | 2 ++
 .../flash-header-nitrogen6q-1g.imxcfg                         | 2 ++
 .../flash-header-nitrogen6q-2g.imxcfg                         | 2 ++
 .../flash-header-nitrogen6qp-max.imxcfg                       | 2 ++
 arch/arm/boards/boundarydevices-nitrogen6/ram-base.imxcfg     | 2 ++
 arch/arm/boards/ccxmx51/flash-header.imxcfg                   | 2 ++
 .../arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg | 2 ++
 .../boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg    | 2 ++
 arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg         | 2 ++
 arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg        | 2 ++
 .../dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg     | 2 ++
 .../dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg      | 2 ++
 .../arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg | 2 ++
 .../flash-header-imx6ul-ccimx6ulsbcpro.imxcfg                 | 2 ++
 .../flash-header-imx51-genesi-efikasb.imxcfg                  | 2 ++
 .../boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg  | 2 ++
 arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg            | 2 ++
 .../embest-marsboard/flash-header-embest-marsboard.imxcfg     | 2 ++
 .../embest-riotboard/flash-header-embest-riotboard.imxcfg     | 2 ++
 arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg           | 2 ++
 arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg           | 2 ++
 arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg           | 2 ++
 arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg        | 2 ++
 arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg        | 2 ++
 .../freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg  | 2 ++
 .../boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg  | 2 ++
 arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg        | 2 ++
 .../freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg      | 2 ++
 .../freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg | 2 ++
 .../freescale-mx6-sabresd/flash-header-mx6q-sabresd.imxcfg    | 2 ++
 .../freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg   | 2 ++
 .../flash-header-mx6sx-sabresdb.imxcfg                        | 2 ++
 .../freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg     | 4 +++-
 .../boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg  | 2 ++
 .../gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg  | 2 ++
 arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg          | 2 ++
 arch/arm/boards/gateworks-ventana/ram-base.imxcfg             | 2 ++
 arch/arm/boards/gk802/flash-header.imxcfg                     | 2 ++
 .../grinn-liteboard/flash-header-liteboard-256mb.imxcfg       | 1 +
 .../grinn-liteboard/flash-header-liteboard-512mb.imxcfg       | 1 +
 arch/arm/boards/grinn-liteboard/flash-header-liteboard.h      | 1 +
 arch/arm/boards/guf-santaro/flash-header.imxcfg               | 2 ++
 arch/arm/boards/guf-vincell/flash-header.imxcfg               | 2 ++
 .../kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg      | 2 ++
 arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg            | 1 +
 arch/arm/boards/karo-tx28/tx28.h                              | 1 +
 arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg    | 2 ++
 .../boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg | 2 ++
 arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg    | 2 ++
 arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg            | 2 ++
 arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg        | 2 ++
 arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg      | 2 ++
 arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg         | 2 ++
 arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg        | 2 ++
 arch/arm/boards/karo-tx6x/pmic.h                              | 1 +
 arch/arm/boards/karo-tx6x/ram-base.imxcfg                     | 2 ++
 arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg | 2 ++
 arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg | 2 ++
 arch/arm/boards/kindle3/flash-header.imxcfg                   | 2 ++
 .../boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg | 2 ++
 .../arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg | 2 ++
 arch/arm/boards/kontron-samx6i/mem.h                          | 2 ++
 arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg                 | 2 ++
 arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg            | 2 ++
 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg            | 2 ++
 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg            | 2 ++
 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg              | 2 ++
 arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg     | 2 ++
 arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg | 2 ++
 arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg | 2 ++
 arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg | 2 ++
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg | 2 ++
 arch/arm/boards/panda/mux.h                                   | 2 ++
 arch/arm/boards/phytec-phycard-omap4/mux.h                    | 2 ++
 arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg      | 2 ++
 arch/arm/boards/phytec-phycore-omap4460/mux.h                 | 2 ++
 .../flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg             | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg   | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg   | 2 ++
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h | 2 ++
 .../boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.h | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h  | 1 +
 .../phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg | 1 +
 .../flash-header-phytec-pcl063ull-256mb.imxcfg                | 1 +
 .../flash-header-phytec-pcl063ull-512mb.imxcfg                | 1 +
 .../phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg    | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg    | 2 ++
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h  | 2 ++
 .../flash-header-phytec-pcm058dl-1gib-32bit.imxcfg            | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg  | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg | 2 ++
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg  | 2 ++
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h | 2 ++
 .../flash-header-phytec-pfla02-1gib-1bank.imxcfg              | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg    | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg    | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg    | 2 ++
 .../flash-header-phytec-pfla02-512mb-1bank.imxcfg             | 2 ++
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h  | 2 ++
 .../flash-header-phytec-pfla02dl-1gib-1bank.imxcfg            | 2 ++
 .../phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg  | 2 ++
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h | 2 ++
 .../flash-header-phytec-pfla02s-128mb-1bank.imxcfg            | 2 ++
 .../flash-header-phytec-pfla02s-256mb-1bank.imxcfg            | 2 ++
 .../flash-header-phytec-pfla02s-512mb-1bank.imxcfg            | 2 ++
 .../phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg             | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg     | 2 ++
 arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg      | 2 ++
 arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg           | 2 ++
 arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg              | 1 +
 arch/arm/boards/protonic-imx6/padsetup-q.imxcfg               | 1 +
 arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg              | 1 +
 arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg     | 2 ++
 arch/arm/boards/skov-imx6/flash-header-mx6-skov-imx6.imxcfg   | 2 ++
 .../boards/solidrun-microsom/flash-header-microsom-i1.imxcfg  | 2 ++
 .../boards/solidrun-microsom/flash-header-microsom-i2.imxcfg  | 2 ++
 .../solidrun-microsom/flash-header-microsom-i2eX.imxcfg       | 2 ++
 .../boards/solidrun-microsom/flash-header-microsom-i4.imxcfg  | 2 ++
 .../flash-header-imx6ul-pico-hobbit-256.imxcfg                | 2 ++
 .../flash-header-imx6ul-pico-hobbit-512.imxcfg                | 2 ++
 .../flash-header-technexion-wandboard.imxcfg                  | 2 ++
 arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg     | 2 ++
 arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg   | 2 ++
 arch/arm/boards/tqma53/flash-header-tq-tqma53.h               | 2 ++
 arch/arm/boards/tqma53/flash-header.imxcfg                    | 2 ++
 arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg            | 2 ++
 arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg             | 2 ++
 arch/arm/boards/tqmls1046a/tqmls1046a_pbi.cfg                 | 2 ++
 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg  | 2 ++
 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg    | 2 ++
 .../boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg   | 2 ++
 arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg             | 2 ++
 arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg   | 2 ++
 .../boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg  | 2 ++
 arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg       | 2 ++
 .../boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg    | 2 ++
 .../boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg  | 2 ++
 .../boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg    | 2 ++
 .../include/mach/flash-header/vf610-ddr-cr-default.imxcfg     | 4 +++-
 .../include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg    | 2 ++
 159 files changed, 306 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
index aefdf68e8950..91a8babafd57 100644
--- a/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
+++ b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
index 5da5fd941942..8282d4140ce3 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
index 3ccf7591c50a..9ef9b5789fcc 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
index 7bdc0e736cff..5c5af546a74a 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
index c6f5aa8484e1..58b9dc74681c 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
index 797b9717e7a5..4ab0a653bd5c 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/ram-base.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/ram-base.imxcfg
index 5d675883fd49..bf2aec5d965a 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/ram-base.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/ram-base.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 wm 32 MX6_IOM_DRAM_SDQS0		0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1		0x00000030
 wm 32 MX6_IOM_DRAM_SDQS2		0x00000030
diff --git a/arch/arm/boards/ccxmx51/flash-header.imxcfg b/arch/arm/boards/ccxmx51/flash-header.imxcfg
index 3b1df11133ea..185a48fe18e5 100644
--- a/arch/arm/boards/ccxmx51/flash-header.imxcfg
+++ b/arch/arm/boards/ccxmx51/flash-header.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx51
 loadaddr 0x90000000
 ivtofs 0x400
diff --git a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
index 390b75b4f230..c049b2a10f52 100644
--- a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
+++ b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x70000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
index c32ab9c1628d..a6460e0333c9 100644
--- a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
+++ b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x70000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
index 4bb615ebb0f6..da4cd4bebf77 100644
--- a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
+++ b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x00907000
 max_load_size 0x11000
diff --git a/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg b/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg
index 14146bed2284..139e6df79206 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg
+++ b/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x00907000
 ivtofs 0x400
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
index fe8bd8cbd6ee..9f821650668e 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x27800000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
index 6919bd8c3f8e..ccb3e6848766 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x27800000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
index 709c11974b08..5b8bc2625741 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x17800000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg b/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
index 7b2a198672dd..6f1c5bc8a78e 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
+++ b/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x80000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg b/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
index 60436e7e37d0..de28650519cc 100644
--- a/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
+++ b/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx51
 loadaddr 0x90000000
 ivtofs 0x400
diff --git a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
index 5b422a786714..e53f1c107fe1 100644
--- a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
+++ b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
index d51dc17a1262..474ad3a15943 100644
--- a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
+++ b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x27800000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg b/arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg
index afc95d9bd936..5cf7201e88fd 100644
--- a/arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg
+++ b/arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
index bc30e4c38759..a005b500dee3 100644
--- a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
+++ b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x20000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
index 129498ca8521..00417dddedb7 100644
--- a/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
+++ b/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx25
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
index c1353e2904ec..ad187db742dc 100644
--- a/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
+++ b/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx35
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
index 85c128c8fdd8..7f9a8773dab8 100644
--- a/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
+++ b/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx51
 ivtofs 0x400
 loadaddr 0x90000000
diff --git a/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg b/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
index 8c1a25782967..9f83d102cbce 100644
--- a/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
+++ b/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx25
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg b/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
index ea1803b7de59..a6d16e8ab421 100644
--- a/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
+++ b/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx35
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
index b4e11fc22743..56e2a9607cd4 100644
--- a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
+++ b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x90000000
 soc imx51
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg b/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
index 2025f5da082c..da08c607392d 100644
--- a/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
+++ b/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x70000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg b/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
index fac4c29019a3..e885186c5418 100644
--- a/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
+++ b/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x70000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg b/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
index e6f73df30e6d..20e028691a29 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
+++ b/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x70000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg b/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
index d635c8b9487a..af2807134edc 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
+++ b/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6q-sabresd.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6q-sabresd.imxcfg
index d0a0b40189a0..39f8950e8e16 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6q-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6q-sabresd.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg
index aa52776afb74..224ac3207f01 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg b/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
index 5536f342b4fe..ebae00b8ea10 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x80000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
index 41e0e9ca61c2..9194b19fe4e8 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
@@ -1,5 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx7
 loadaddr 0x80000000
 ivtofs 0x400
 
-#include <mach/flash-header/imx7d-ddr-sabresd.imxcfg>
\ No newline at end of file
+#include <mach/flash-header/imx7d-ddr-sabresd.imxcfg>
diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index bcef9921fab0..06d5a40a69cd 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc vf610
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
index 98c7ae60953a..8f155a88dd2a 100644
--- a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
+++ b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg b/arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg
index daf01a8ad1da..66a78766495d 100644
--- a/arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg
+++ b/arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 wm 32 MX6_MMDC_P0_MPWLDECTRL0	0x00190017
 wm 32 MX6_MMDC_P0_MPWLDECTRL1	0x00140026
 wm 32 MX6_MMDC_P1_MPWLDECTRL0	0x0021001C
diff --git a/arch/arm/boards/gateworks-ventana/ram-base.imxcfg b/arch/arm/boards/gateworks-ventana/ram-base.imxcfg
index 07dc34c0bbd1..c482f60b0930 100644
--- a/arch/arm/boards/gateworks-ventana/ram-base.imxcfg
+++ b/arch/arm/boards/gateworks-ventana/ram-base.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 wm 32 MX6_IOM_DRAM_SDQS0	0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1	0x00000030
 wm 32 MX6_IOM_DRAM_SDQS2	0x00000030
diff --git a/arch/arm/boards/gk802/flash-header.imxcfg b/arch/arm/boards/gk802/flash-header.imxcfg
index acc7a367856a..aa5aef554f1f 100644
--- a/arch/arm/boards/gk802/flash-header.imxcfg
+++ b/arch/arm/boards/gk802/flash-header.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
index 1b980c7846dd..c2d4b2875bfe 100644
--- a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
+++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 #define SETUP_MDASP_MDCTL		\
 	wm 32 0x021B0040 0x00000047;	\
diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
index c93a2cc0faa7..45bc841ab598 100644
--- a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
+++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 #define SETUP_MDASP_MDCTL		\
 	wm 32 0x021B0040 0x0000004F;	\
diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
index 82f5c627a3ab..776a69f8b60f 100644
--- a/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
+++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 loadaddr 0x80000000
 soc imx6
diff --git a/arch/arm/boards/guf-santaro/flash-header.imxcfg b/arch/arm/boards/guf-santaro/flash-header.imxcfg
index 4505d81ea1f1..eff9f66f9404 100644
--- a/arch/arm/boards/guf-santaro/flash-header.imxcfg
+++ b/arch/arm/boards/guf-santaro/flash-header.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/guf-vincell/flash-header.imxcfg b/arch/arm/boards/guf-vincell/flash-header.imxcfg
index c17dcbab6e64..f5f2eceb5da5 100644
--- a/arch/arm/boards/guf-vincell/flash-header.imxcfg
+++ b/arch/arm/boards/guf-vincell/flash-header.imxcfg
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x71000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg b/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
index 4b363241100d..564fa62b91a6 100644
--- a/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
+++ b/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx7
 loadaddr 0xbfbff000
 ivtofs 0x400
diff --git a/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg b/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
index 6f8eaf0fc566..0786017a852e 100644
--- a/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
+++ b/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # currently unused in barebox, but useful to generate
 # a imx-image to use with imx-usb-loader
diff --git a/arch/arm/boards/karo-tx28/tx28.h b/arch/arm/boards/karo-tx28/tx28.h
index 5fb1e13412b6..2e14211b7a95 100644
--- a/arch/arm/boards/karo-tx28/tx28.h
+++ b/arch/arm/boards/karo-tx28/tx28.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 void base_board_init(void);
 
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
index 4bcb3b8b5eba..158233cc86ae 100644
--- a/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x71000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
index a4e3fab9a377..d7da89beef68 100644
--- a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x71000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
index 5b6b79f7058d..d516da37702f 100644
--- a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x71000000
 soc imx53
 ivtofs 0x400
diff --git a/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg b/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
index 7e244edfd33d..f11387b0232b 100644
--- a/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
+++ b/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* MDMISC	mirroring	interleaved (row/bank/col) */
 wm 32 MX6_MMDC_P0_MDMISC		0x00000742
 check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
index 7d77f54f00e6..d860a5e2af3d 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
index eb63fa34d315..c327b5f0c149 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
index e5a1ed233154..9c8196d4da27 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
index 889416b849b3..c242193a620c 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/karo-tx6x/pmic.h b/arch/arm/boards/karo-tx6x/pmic.h
index 2427a52e50c9..5e5616e8c769 100644
--- a/arch/arm/boards/karo-tx6x/pmic.h
+++ b/arch/arm/boards/karo-tx6x/pmic.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <i2c/i2c.h>
 
diff --git a/arch/arm/boards/karo-tx6x/ram-base.imxcfg b/arch/arm/boards/karo-tx6x/ram-base.imxcfg
index e912fb0f2b52..9f15806b5531 100644
--- a/arch/arm/boards/karo-tx6x/ram-base.imxcfg
+++ b/arch/arm/boards/karo-tx6x/ram-base.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 wm 32 MX6_IOM_DRAM_DQM0			0x00020030
 wm 32 MX6_IOM_DRAM_DQM1			0x00020030
 wm 32 MX6_IOM_DRAM_DQM2			0x00020030
diff --git a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
index b8a4e824ef5a..5f1f8ef6b00e 100644
--- a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
+++ b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 # DCD i.MX50 SoC setup using 256MiB LPDDR1
 # Copyright (C) 2017 Alexander Kurz <akurz@blala.de>
 #
diff --git a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
index 527d91dc78c0..520e61be5823 100644
--- a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
+++ b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
 # DCD i.MX50 SoC setup using 256MiB LPDDR2
 # Copyright (C) 2017 Alexander Kurz <akurz@blala.de>
 #
diff --git a/arch/arm/boards/kindle3/flash-header.imxcfg b/arch/arm/boards/kindle3/flash-header.imxcfg
index 74b65d6a5c1f..5ef09200ed69 100644
--- a/arch/arm/boards/kindle3/flash-header.imxcfg
+++ b/arch/arm/boards/kindle3/flash-header.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx35
 loadaddr 0x87eff400
 ivtofs 0x400
diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
index db1698d272f7..1ff4caccfaae 100644
--- a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
+++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
index 99608d0fe8fb..a8cc0d512b6b 100644
--- a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
+++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/kontron-samx6i/mem.h b/arch/arm/boards/kontron-samx6i/mem.h
index 57e3c0ceccab..25faf3849071 100644
--- a/arch/arm/boards/kontron-samx6i/mem.h
+++ b/arch/arm/boards/kontron-samx6i/mem.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __BOARD_KONTRON_SAMX6I_MEM_H
 #define __BOARD_KONTRON_SAMX6I_MEM_H
 
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg
index 5478217524d0..0ed997031e88 100644
--- a/arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #Configure Scratch register
 09570600 00000000
 09570604 10000000
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg
index 735d46c9f9b7..b9e455da9e1e 100644
--- a/arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #QSPI clk
 0957015c 40100000
 #Configure Scratch register
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg
index ccedf87e8495..debb6479a86c 100644
--- a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #PBL preamble and RCW header
 aa55aa55 01ee0100
 # RCW
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg
index 7b9be0ad3f8e..2167a71b7f1c 100644
--- a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #PBL preamble and RCW header
 aa55aa55 01ee0100
 # RCW
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg
index d3b152282f2e..ec18028c4b80 100644
--- a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #PBL preamble and RCW header
 aa55aa55 01ee0100
 # RCW
diff --git a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
index 80ce03e22c3a..180a44fda361 100644
--- a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
+++ b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx8mq
 
 loadaddr 0x007E1000
diff --git a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
index b013173113e4..10606ce29c96 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx8mm
 
 loadaddr 0x007e1000
diff --git a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
index a768874d4076..27a2138e4322 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx8mn
 
 loadaddr 0x912000
diff --git a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
index 7739fe5be6e8..663bd102e9a2 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx8mp
 
 loadaddr 0x920000
diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
index 80ce03e22c3a..180a44fda361 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx8mq
 
 loadaddr 0x007E1000
diff --git a/arch/arm/boards/panda/mux.h b/arch/arm/boards/panda/mux.h
index 11f2848a2734..540d4e5d3422 100644
--- a/arch/arm/boards/panda/mux.h
+++ b/arch/arm/boards/panda/mux.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __BOARD_MUX_H
 #define __BOARD_MUX_H
 
diff --git a/arch/arm/boards/phytec-phycard-omap4/mux.h b/arch/arm/boards/phytec-phycard-omap4/mux.h
index 8b1a3d37e9c2..46a2434ad0ee 100644
--- a/arch/arm/boards/phytec-phycard-omap4/mux.h
+++ b/arch/arm/boards/phytec-phycard-omap4/mux.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __BOARD_MUX_H
 #define __BOARD_MUX_H
 
diff --git a/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg b/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
index d3049369d9ed..3d690e9732ae 100644
--- a/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
+++ b/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx35
 ivtofs 0x400
 loadaddr 0x80000000
diff --git a/arch/arm/boards/phytec-phycore-omap4460/mux.h b/arch/arm/boards/phytec-phycore-omap4460/mux.h
index 64d4478b2c9f..c84ecd32c8a3 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/mux.h
+++ b/arch/arm/boards/phytec-phycore-omap4460/mux.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __BOARD_MUX_H
 #define __BOARD_MUX_H
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
index bb4fbeb20538..d124518930c5 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x54597955;	\
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
index 990c34b3af71..4c3e5b06c9d9 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x3a3f7975;	\
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
index 7c56c24ed757..bb858e874d38 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x54597955;	\
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
index 1876a5aa9df0..3d1952fb99fc 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.h
index c4122d245d7d..c7ee1aaeeba3 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #define SETUP_MDCFG0			\
 	wm 32 0x021B000C 0x676B52F3
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
index 8e0ab6f58510..984795469302 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 loadaddr 0x80000000
 soc imx6
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
index f629a8e7b2f7..225f8a32aa70 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #include "flash-header-phytec-pcl063-512mb.h"
 #include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
index e6871d8534fe..44f103603288 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 #define SETUP_MDCFG0			\
 	wm 32 0x021B000C 0x676B52F3
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
index d2d71838430e..e976979118a8 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 #include "flash-header-phytec-pcl063-512mb.h"
 #include <mach/habv4-imx6ull-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
index 0042909c9592..b2ea8ee0e8d8 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x555A7955
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
index 8a090369929b..f6895a0587c9 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x8c929b85
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
index d32ee836a8e3..d213403467bc 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
index c949f985030d..ec5beb937c17 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x8c929b85
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
index 3ac7e4e7ffa9..a5b3cdc63322 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x555A7955
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
index bb8cdc9e4d5e..26755f946a4a 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x3c409b85
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg
index 5b92e5809c56..cd1d2d185e0d 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x3c409b85
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
index e820cbf86b3a..94ca4bcc0eaa 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
index 3ed5b346aeea..0d2d245fc270 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x555A7955
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
index f3174f9bb70c..aae646e75c56 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
index 02f3fa7b33b8..77ef6358ec54 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0                    \
 	wm 32 0x021b000c 0x565c9b85
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
index dd142a20a9f3..dd222ed7a179 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x3c409b85
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
index 3f9d11dc49b9..de5aab6242cb 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0                    \
 	wm 32 0x021b000c 0x565c9b85
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
index fdb1d155380e..c3819e958f22 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0                    \
 	wm 32 0x021b000c 0x8c929b85
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
index f4f150ee68ff..08d579241ee9 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x555a7975
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
index 4a9b179f59f3..998411784401 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
index b2a0521bbc87..c851cc2844a6 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0                    \
 	wm 32 0x021b000c 0x41447525
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
index e03e25eae284..7276adad604b 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x2d307525
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
index be4084c1615e..48d2001fb243 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
index 58c1576219b2..d450ec1efda6 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0                    \
         wm 32 0x021b000c 0x2D307525
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
index 9975e2197bea..7f1535d0e0fd 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0                    \
         wm 32 0x021b000c 0x2D307525
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
index edc396bc5d33..b6fd2db254f4 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x41447525
 
diff --git a/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg b/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
index 8921f32110b9..93cf14f26ba5 100644
--- a/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
+++ b/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx8mq
 
 loadaddr 0x007E1000
diff --git a/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg b/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
index 65bd1bc3c6f0..5bcd6c5f3c01 100644
--- a/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
+++ b/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Timing configuration:
  *
diff --git a/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
index c778391d7576..4e71e493aeef 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg
index ec9fb8410834..472767611dc8 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
index b08e14983454..e6e37672aa3e 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
index dbbb9818b645..16f2f596c773 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
index dbbb9818b645..1692c1e08771 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
index ec9fb8410834..472767611dc8 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
index 029edc248af6..2d0064e8c1cb 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
index 1131174f70a6..887811fa4240 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
index dbbb9818b645..16f2f596c773 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
index 019696295de5..7f2662567e6b 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
index 5f847c004dce..035b5f13152c 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
index 054043cc800e..be2b9883a8cc 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
index d3de7b6aab4f..e3f0f0a19a7c 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
index 54f655c4c2e5..b86a32be0c2c 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
index f7e75b47bf8d..3abb21b70e32 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
index e21827923960..a8178fe2580b 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
diff --git a/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg b/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
index 29c42cc697c9..b54b9542bd68 100644
--- a/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
+++ b/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Timing configuration:
  *
diff --git a/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
index f60d37f63e2e..380ce8863cf4 100644
--- a/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
+++ b/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 /*
  * Some defines for PAD setup:
diff --git a/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
index f5fa3e8d2857..c58a481e13a2 100644
--- a/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 /*
  * Some defines for PAD setup:
diff --git a/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
index e36601942d10..9cdc9ac9a3c8 100644
--- a/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
+++ b/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 /*
  * Some defines for PAD setup:
diff --git a/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg b/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
index b013173113e4..10606ce29c96 100644
--- a/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
+++ b/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx8mm
 
 loadaddr 0x007e1000
diff --git a/arch/arm/boards/skov-imx6/flash-header-mx6-skov-imx6.imxcfg b/arch/arm/boards/skov-imx6/flash-header-mx6-skov-imx6.imxcfg
index 4bb615ebb0f6..da4cd4bebf77 100644
--- a/arch/arm/boards/skov-imx6/flash-header-mx6-skov-imx6.imxcfg
+++ b/arch/arm/boards/skov-imx6/flash-header-mx6-skov-imx6.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x00907000
 max_load_size 0x11000
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
index 2c6a32eed425..374ea2e8a20b 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
index 7f9b2a3988ff..7c1b17f6f266 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
index 7f75a17a35d3..f777784e44af 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
index 9d5bc03c965d..2a12b053408a 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
index 6d2d37de59d2..00ac4ef8ec74 100644
--- a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
+++ b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x80000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
index 201493e6a38c..915203950778 100644
--- a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
+++ b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x80000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg b/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
index 5f91bed6f377..61425976ec59 100644
--- a/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
+++ b/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 loadaddr 0x00907000
 soc imx6
 max_load_size 0x11000
diff --git a/arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg b/arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg
index 50a8f27dc5af..6aeff80de5b6 100644
--- a/arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg
+++ b/arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #define SETUP_512MIB_1GIB \
 	wm 32 0x63fd9018 0x00011740; \
 	wm 32 0x63fd9000 0xc3190000
diff --git a/arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg b/arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg
index 4c8eed40d2af..2431d6f03998 100644
--- a/arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg
+++ b/arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #define SETUP_512MIB_1GIB \
 	wm 32 0x63fd9018 0x00101740; \
 	wm 32 0x63fd9000 0x83190000
diff --git a/arch/arm/boards/tqma53/flash-header-tq-tqma53.h b/arch/arm/boards/tqma53/flash-header-tq-tqma53.h
index b9492bbcb302..a11855f926b8 100644
--- a/arch/arm/boards/tqma53/flash-header-tq-tqma53.h
+++ b/arch/arm/boards/tqma53/flash-header-tq-tqma53.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx53
 loadaddr 0x70000000
 ivtofs 0x400
diff --git a/arch/arm/boards/tqma53/flash-header.imxcfg b/arch/arm/boards/tqma53/flash-header.imxcfg
index bbe2300ece53..6981a230a56c 100644
--- a/arch/arm/boards/tqma53/flash-header.imxcfg
+++ b/arch/arm/boards/tqma53/flash-header.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx53
 loadaddr 0x70000000
 ivtofs 0x400
diff --git a/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg b/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
index 4f557d5db56c..9f8d9c0d2624 100644
--- a/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
+++ b/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg b/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
index deda53b46433..b0923e77f9ea 100644
--- a/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
+++ b/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_pbi.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi.cfg
index 0a04afa770b6..e4c293ab778d 100644
--- a/arch/arm/boards/tqmls1046a/tqmls1046a_pbi.cfg
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi.cfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
 #Configure QSPI clock
 0957015c 40100000
 #Configure Scratch register
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
index 2df229c56c2c..490d45af9e31 100644
--- a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
 # RCW values
 #   0:  1 - SYS_PLL_CFG              :       0 [0x0 / 0b00]
 #   2:  6 - SYS_PLL_RAT              :       6 [0x6 / 0b00110]
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
index 72ab1cd7d7ac..645dc4fd22ed 100644
--- a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
 # RCW values
 #   0:  1 - SYS_PLL_CFG              :       0 [0x0 / 0b00]
 #   2:  6 - SYS_PLL_RAT              :       6 [0x6 / 0b00110]
diff --git a/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg b/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
index a349b1022b86..6246e17a7387 100644
--- a/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
+++ b/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * These values are taken from:
  * repository: https://github.com/UDOOboard/uboot-imx
diff --git a/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg b/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
index fc88a0b8b4d0..0d364bf8ce52 100644
--- a/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
+++ b/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
diff --git a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
index 50968d79409f..b0a31a0b96f6 100644
--- a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
+++ b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
diff --git a/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg b/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
index 5674e7a6e139..6d40976b83c0 100644
--- a/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
+++ b/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx51
 loadaddr 0x90000000
 ivtofs 0x400
diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
index fcfef9c23477..0b37ab248f90 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
+++ b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx6
 loadaddr 0x00907000
 max_load_size 0x31000
diff --git a/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg b/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
index 022f9711b252..05f95bbed11e 100644
--- a/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
+++ b/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc imx7
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
index 8921f32110b9..93cf14f26ba5 100644
--- a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
+++ b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 soc imx8mq
 
 loadaddr 0x007E1000
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 4b73da4c191d..617245b2d372 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 soc vf610
 loadaddr 0x80000000
 ivtofs 0x400
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
index 8c411ddc7ecf..ab70fa7bd938 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
 
  The following table contains DDR3 memory timing parameters derived
@@ -128,4 +130,4 @@ wm 32 DDRMC_CR138 0x01000100
 wm 32 DDRMC_CR154 0x682c4000
 wm 32 DDRMC_CR155 0x00000009
 wm 32 DDRMC_CR158 0x00000006
-wm 32 DDRMC_CR161 0x00010606
\ No newline at end of file
+wm 32 DDRMC_CR161 0x00010606
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg
index 74d119b59ed3..e235b0990b74 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Ungate all IP block clocks
  */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

