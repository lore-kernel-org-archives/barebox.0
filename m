Delivery-date: Wed, 06 Jul 2022 16:22:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vO-007nQP-7A
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 16:22:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vQ-0007xC-De
	for lore@pengutronix.de; Wed, 06 Jul 2022 16:22:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EsvQNMPOVW2rZf67kmDr5Qoj1N2KoOieXr0zaBkhbkk=; b=O5jysE5wxzZ9ysWHiYXX5IYwmf
	HS6QrCVzVaR9O7M6S+R+hRU7uBabU7PlKFd4Qgj3x3ntXLpFJFBb8dRrkRnpFKnAmQu0ysqV1j+JE
	4iquBY9aWJJn/8EKeFrTJ7HlahLFlkXzLo/333gn4zRpSOyDuEBpoXlOU7gqeC1sZkxBSUJwsv6V1
	fds/rfPx/+IqblbuIihBS2B6+zHEJSw19lC1CMs1BiKCl0ymmgdjD0erMRRiitoF8+uLjoMk0Dyyj
	Zsa899h5gQYAP+hI2nACjVqYRjRSMqyyhNzfathzb4iu8EVn4pSZc4JQ2wqY+A7lXUMICWWYiY2Zo
	hCh/9iug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95u2-00AazI-3o; Wed, 06 Jul 2022 14:21:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95tu-00Aaw1-NW
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 14:21:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tt-0007br-7C
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95to-004mEK-V1
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:08 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tr-009Wd3-Io
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  6 Jul 2022 16:21:01 +0200
Message-Id: <20220706142105.2266956-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_072110_843653_B83735D4 
X-CRM114-Status: UNSURE (   8.89  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] MX8MN-EVK DDR4 Support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

this small series adds the correct DDR4 support for the imx8mn-evk since
till now we misused the LPDDR4 DT for it.

Before applying Ahmads patch the preceding patches must be applied else
the deep probe support will cause odd boot issues.

Regards,
  Marco

Ahmad Fatoum (1):
  ARM: i.MX8MN: pass along correct DT depending on variant

Marco Felsch (3):
  phy: fix deep probe support
  phy: propagate error in of_phy_get_by_phandle
  usb: chipidea: imx: call enable_clk after all resources are requested

 arch/arm/boards/nxp-imx8mn-evk/board.c    | 21 ++++--
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 13 +++-
 arch/arm/dts/Makefile                     |  2 +-
 arch/arm/dts/imx8mn-ddr4-evk.dts          |  6 ++
 arch/arm/dts/imx8mn-evk.dts               | 84 +----------------------
 arch/arm/dts/imx8mn-evk.dtsi              | 83 ++++++++++++++++++++++
 drivers/phy/phy-core.c                    | 11 +--
 drivers/usb/imx/chipidea-imx.c            | 10 ++-
 8 files changed, 131 insertions(+), 99 deletions(-)
 create mode 100644 arch/arm/dts/imx8mn-ddr4-evk.dts
 create mode 100644 arch/arm/dts/imx8mn-evk.dtsi

-- 
2.30.2



