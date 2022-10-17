Delivery-date: Mon, 17 Oct 2022 15:52:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQXM-00BfAe-65
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 15:52:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQXK-0001Y3-5m
	for lore@pengutronix.de; Mon, 17 Oct 2022 15:52:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GuJkIsoPPAy7+g/qIeQZHlqYGnrOjd/N8N5EraKNVq4=; b=qMptxseLqdG/j9ZmDreOjQPg9u
	tcQt6rbjCEbcN69ZMPZhFizBADw6nH3d7RrdgCnAbZVh3ljnvIDW3cRV2cQyx350KxHCcOqaBZZNX
	4SQJIq/8gLqlhsxxDZCGRtXlV2dQhuPZ87vraW5/NRy106Wn4g+8n9PaHmD5ntcf4+/7xZkBXNyIh
	Y8uY7ymhZ7D0l3elowwkfR6+lsfZ6rtWBBL7y97j+8ia4OutYL5xERakSIDWdOFrvbWhP0TvDYoD8
	euXoSIBKg9JFXtZijJ67vdOs2Wm5H7ZQ/GCgx2fdqRnfjcbEfR0k6A/htj+cN9QRyMFOb12JOYVD3
	NTpQlehg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQUv-00CJmS-TO; Mon, 17 Oct 2022 13:49:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQUn-00CJY1-NB
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 13:49:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUm-00011v-8V; Mon, 17 Oct 2022 15:49:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUl-0025Xd-6V; Mon, 17 Oct 2022 15:49:31 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUk-00373J-BC; Mon, 17 Oct 2022 15:49:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>
Date: Mon, 17 Oct 2022 15:49:26 +0200
Message-Id: <20221017134929.622022-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_064933_805181_663281E7 
X-CRM114-Status: UNSURE (   6.79  )
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
Subject: [RFT PATCH master 0/3] soc: imx8m-featctrl: fixes and first 8MP support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newer upstream kernels may fail to boot with less featureful 8MP SoCs,
because barebox doesn't fix the DT up appropriately. Fix that.

@Hans, could you give this a test? I tested on 8MM only.

Ahmad Fatoum (3):
  dt-bindings: features: imx8m: fix typo in constant
  soc: imx: imx8m-featctrl: check if all bits are set
  ARM: i.MX8MP: add feature controller support for Plus

 arch/arm/dts/imx8mp.dtsi             | 43 ++++++++++++++++++++++++++++
 drivers/nvmem/ocotp.c                |  9 ++++++
 drivers/soc/imx/imx8m-featctrl.c     | 29 +++++++++++++------
 include/dt-bindings/features/imx8m.h |  6 ++--
 include/soc/imx8m/featctrl.h         |  3 ++
 5 files changed, 79 insertions(+), 11 deletions(-)

-- 
2.30.2



