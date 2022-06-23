Delivery-date: Thu, 23 Jun 2022 12:32:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4K8e-00Bqb8-9z
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 12:32:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4K8e-0005fV-5C
	for lore@pengutronix.de; Thu, 23 Jun 2022 12:32:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WIGMU1RwfMOeEquauqAsUJSvivZit85Hd4RTEfIQDCE=; b=NiIc9bh0O0Iy6pYa+7xr931txy
	ENNIxuiHmYx4Vlxo8X0gZtkSB1+c6be8EmDFKKGktMLJzcpbUs0iZSNzeZvV228GVZ7+rat6Dubiv
	lsDMRFfWlTQGKdpKVWfkQaHDsTbAYMfqb/YcfL096/vuQqAS12uB3eDcOVMqd3CXllGHL//emZb8v
	IdDmq7QSJGxMs/T8T8TqHXn/OxNBv/nGcLSyFRbFs0aw/FxHN+ovwX1oDFhI3O2GGeFMXKgWs81Ze
	X4dibYwWLPYBdDcPL0v/JZBv9TmGZCfUxlzdIPaPJMrcdAXXqmo/rU9LstOYRqGup7sk8lRKeQ9Gv
	E57xDZ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4K78-00EXQj-8E; Thu, 23 Jun 2022 10:31:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4K74-00EXPe-1K
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 10:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K70-0005IL-IL; Thu, 23 Jun 2022 12:30:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K6u-002DTL-NV; Thu, 23 Jun 2022 12:30:54 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K6v-002PvL-C0; Thu, 23 Jun 2022 12:30:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Teresa Remmet <t.remmet@phytec.de>,
	lst@pengutronix.de,
	Joacim Zetterling <joacim.zetterling@westermo.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2022 12:30:47 +0200
Message-Id: <20220623103051.572885-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_033102_115458_B824F7B6 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 0/4] ARM: i.MX8M: fix various miscalculation of DRAM size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes issues of wrong DRAM size calculation for imx8mq-evk,
phytec-som-imx8mq, zii-imx8mq-dev as well as an out-of-tree 
i.MX8MM board I have.

For i.MX8MN-EVK, DDR4 size is correctly calculated, but not LPDDR4.
I can't see where the issue is though, so I am disabling detection
there until it's figured out. Device Tree already contains correct
RAM size.

Ahmad Fatoum (4):
  ARM: i.MX8M: esdctl: ignore ADDRMAP8 for non-DDR4
  ARM: i.MX8MQ: initialize ADDRMAP7
  ddr: imx8m: workaround old spreadsheets not initializing ADDRMAP7
  ARM: i.MX8M: imx8mn-evk: disable DDRC memory detection

 arch/arm/boards/nxp-imx8mn-evk/board.c       |  7 +++++++
 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c    |  3 ++-
 arch/arm/boards/phytec-som-imx8mq/ddr_init.c |  1 +
 arch/arm/boards/zii-imx8mq-dev/ddr_init.c    |  3 ++-
 arch/arm/mach-imx/esdctl.c                   |  8 +++++++-
 drivers/ddr/imx8m/ddr_init.c                 | 18 ++++++++++++++++++
 drivers/ddr/imx8m/helper.c                   |  6 ++++++
 include/soc/imx8m/ddr.h                      |  1 +
 8 files changed, 44 insertions(+), 3 deletions(-)

-- 
2.30.2



