Delivery-date: Wed, 31 Aug 2022 14:54:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEs-002dcd-Ha
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 14:54:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNEs-000706-Ke
	for lore@pengutronix.de; Wed, 31 Aug 2022 14:54:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0O55z7xF1SZ/HmsVeIztLXfa6cSfqAQz6LnZsDKgMG0=; b=OPmGKAO0aTvHzO0//RmD5v4E0x
	/IOmrCSI7Kc+Ki2yHhI8/w3oqRzj6L08xNUHVTkVVkXd2b4+ZSNvKJxo3HiMynJn1DFHH3FcifEkg
	65SvgCuTNlXbq2+yKDuo2RL6ku8rD5HOBill7MZ0X4EH1hPVVFXIoaOvkVZIhtXAoqaBdCJiw6uVq
	Gpenntqthxp6jdGAdYL4IrFZVo1hgAixa2TcVjW+Wd4NTFD8ZqIb71LVu83jtNbreXkTsVHGQy7ZJ
	SCic2i4gb7pDDctd83I7jUHb9pAVWqQb0X0uCKmjVGN8bm3T507z+ZqSYvCsRVxEeZBKgScL92WLG
	trkjRx4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDL-00691s-Cz; Wed, 31 Aug 2022 12:53:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDE-0068xz-MW
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 12:52:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND8-0006T6-NX; Wed, 31 Aug 2022 14:52:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND7-0034Og-W1; Wed, 31 Aug 2022 14:52:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND7-0091S2-A6; Wed, 31 Aug 2022 14:52:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 Aug 2022 14:52:42 +0200
Message-Id: <20220831125248.2105893-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_055256_793654_5277B801 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/6] Add power domain support for i.MX8MM, i.MX8MN and i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series brings the gpcv2 driver closer to the Linux one and adds
i.MX8MM, i.MX8MN and i.MX8MP support

Sascha

Ahmad Fatoum (6):
  soc: imx: gpcv2: switch to regmap
  soc: imx: gpcv2: split power_up/power_off
  soc: imx: gpcv2: align with upstream Linux driver
  soc: imx: gpcv2: extend for i.MX8M Mini/Nano/Plus support
  Revert "ARM: i.MX8MM: assume USBOTG power domains to be powered"
  Revert "ARM: i.MX8MN: assume USBOTG power domains to be powered"

 arch/arm/dts/imx8mm.dtsi |    8 -
 arch/arm/dts/imx8mn.dtsi |    4 -
 drivers/soc/imx/gpcv2.c  | 1014 ++++++++++++++++++++++++++++++++++----
 3 files changed, 906 insertions(+), 120 deletions(-)

-- 
2.30.2



