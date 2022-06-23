Delivery-date: Thu, 23 Jun 2022 15:09:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MZx-00BzD0-Uk
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 15:09:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MZx-0007C2-Jy
	for lore@pengutronix.de; Thu, 23 Jun 2022 15:09:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wxj7AJ3drhw7UAunYzfCKSPKt22iH38Al1oDt4L5OvM=; b=Ri6PAVbRPEPn6TWpGE08yfPQDd
	nsDwxOTo05bZEu6p1tY1cWWJXxyQP3UDmm+7E1J8hgBzPyfywHe68cQEQq84TY1+hSvjOlA1JNa/D
	nILvd5gZY0q/LnDp5qlFi8ZVdfn1GFEOR20aWQRqbCMPK9GXLVR9D3+xvH24CuvnuViHTIHjp28Nl
	ByfSxkIpR+ZBGBcHfxx31pEpYJlkrlC7Up6Cg5tFAdi9ZsctLUV9Smnt9etxT9ESQpTuLIKENFZqY
	3Be57g45ucl/OIQVuutdnQPSBWfpRkK+5v9xPSPvSEDPc5G25Q/bemR7A3jmKLmiegz2D7Vcg7kzB
	aMtWs8uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYX-00FFlf-JM; Thu, 23 Jun 2022 13:07:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYQ-00FFkg-1q
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 13:07:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYN-0006ve-I5; Thu, 23 Jun 2022 15:07:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYK-002FGJ-TA; Thu, 23 Jun 2022 15:07:22 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYL-006rWK-Hf; Thu, 23 Jun 2022 15:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Teresa Remmet <t.remmet@phytec.de>,
	lst@pengutronix.de,
	Joacim Zetterling <joacim.zetterling@westermo.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2022 15:07:12 +0200
Message-Id: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_060726_167829_6EDDE0CC 
X-CRM114-Status: UNSURE (   6.38  )
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
Subject: [PATCH v2 master 0/5] ARM: i.MX8M: fix various miscalculation of DRAM size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes issues of wrong DRAM size calculation for imx8mq-evk,
phytec-som-imx8mq, zii-imx8mq-dev, i.MX8MN-EVK with LPDDR4 as well
as an out-of-tree i.MX8MM board I have.

Ahmad Fatoum (5):
  ARM: i.MX8M: refactor to prepare i.MX8MN LPDDR4 support
  ARM: i.MX8M: esdctl: fix LPDDR4 size calculation for nano
  ARM: i.MX8M: esdctl: ignore ADDRMAP8 for non-DDR4
  ARM: i.MX8MQ: initialize ADDRMAP7
  ddr: imx8m: workaround old spreadsheets not initializing ADDRMAP7

 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c    |  3 +-
 arch/arm/boards/phytec-som-imx8mq/ddr_init.c |  1 +
 arch/arm/boards/zii-imx8mq-dev/ddr_init.c    |  3 +-
 arch/arm/mach-imx/esdctl.c                   | 71 ++++++++++++++------
 drivers/ddr/imx8m/ddr_init.c                 | 18 +++++
 drivers/ddr/imx8m/helper.c                   |  6 ++
 include/soc/imx8m/ddr.h                      |  1 +
 7 files changed, 82 insertions(+), 21 deletions(-)

-- 
2.30.2



