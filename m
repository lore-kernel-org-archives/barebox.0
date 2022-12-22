Delivery-date: Thu, 22 Dec 2022 15:31:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mbx-0051Wg-DK
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 15:31:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mbu-0006vB-O3
	for lore@pengutronix.de; Thu, 22 Dec 2022 15:31:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=acVaLjrkPwrWfrIdtwXdjR9WMpnozk9DYl3/XJ1mpqA=; b=0IMnhltJs/+yjiiBg3dwFjhHTR
	LJGjI+dNS/UwioHYopER1OZ7Q+THN89ly6A3nLswsRQX+Hnh/eWET1S0/icV3UcIejlEmtxDzSftL
	J/RXUl946D+voIZ3gRm2mjVgIkC2ZGoowSAT/i93WNqjLABHD/1CYQHA89OzQC7n/NOm25w7RlnCy
	OQCl5PdqBUQdQXDihUUfh4XIc+yNbvNmwbfGDACLw9xhG//ZpQUTAJY6QbvI83btBCVmPhM+9zxpt
	uPv7rMDotoKYwCcMqAQwzdQoJNFKqH92y0g3f7mrGXSxw+raUZTXh+LYms/3oMLHRwxzxrSTdjfRT
	8RDym+Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Ma9-00CyEB-UT; Thu, 22 Dec 2022 14:30:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIv-00ComD-2q
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 14:12:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIr-0003uW-4B; Thu, 22 Dec 2022 15:12:09 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIq-0011ph-AA; Thu, 22 Dec 2022 15:12:08 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIp-00Cx8m-6A; Thu, 22 Dec 2022 15:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de,
	ore@pengutronix.de,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>
Date: Thu, 22 Dec 2022 15:11:55 +0100
Message-Id: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061213_376318_6E0EE615 
X-CRM114-Status: UNSURE (   8.81  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] ARM: i.MX6: Fix LVDS splash on skov and some others
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Skov boards exist in multiple variants, among them ones with
displays connected over LVDS and HDMI.
HDMI continues to work for me, but LVDS has regressed due to two issues:

  - LVDS clock calculation was broken by clock framework rework

  - Device tree is fixed up in wrong order in skov board code, which
    became problematic when deep probe was enabled for that board

The first four patches fix these issues and should preferably be
applied to master. The remainder are other patches that resulted
during debugging.

The first problem is generic and I am curious what other issues may
disappear or pop up, now that's fixed.

Cheers,
Ahmad Fatoum (6):
  clk: imx: set CLK_SET_RATE_NO_REPARENT for all muxes
  clk: mux: forward round/set rate to parent if CLK_SET_RATE_PARENT
  ARM: i.MX6: skov: refactor LVDS/parallel device tree fixups
  ARM: i.MX6: skov: fix LVDS deep probe
  video: edid: print debug message on EDID read out error
  ARM: configs: imx_v7_defconfig: enable some useful options

 arch/arm/boards/skov-imx6/board.c | 60 +++++++++++++++++++------------
 arch/arm/configs/imx_v7_defconfig | 16 +++++++++
 drivers/clk/clk-mux.c             |  4 +--
 drivers/clk/imx/clk.h             | 30 ++++++++++------
 drivers/video/edid.c              | 11 ++++--
 5 files changed, 84 insertions(+), 37 deletions(-)

-- 
2.30.2



