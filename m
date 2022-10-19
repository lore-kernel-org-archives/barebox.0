Delivery-date: Wed, 19 Oct 2022 12:42:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol6X5-000abF-Dm
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 12:42:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol6X2-0006tt-R9
	for lore@pengutronix.de; Wed, 19 Oct 2022 12:42:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pkXIn1udrmeLPb6B1Ak3OYDL3GDm41779TPQTGJhI2M=; b=wmwtAjGnsQFVzY4cADJ4QZ5zIg
	c6kisb2dBXyFpk5ZMeVtKLFaGbFBQw0YUR/OKuCn09D4b/qJOtRDFFmtEW+gv/jps+F8qO78U0HXx
	BcHek8pDHJx8hEh+3RSEW0Qdflw5lofhXy4Kv8Qni8io8XISUPiaa3xngRROLNjcgR/YyDXdJVIhh
	QC19LxcUdthMSTQGZw7P050SPQZpknrxeydIMOw/sFk1sG5oe7YiufbQdI33G91X07uAPFE0RI8h1
	LST+o4quiIl/dHwAnQFZZJmfQhYF60kt74ADPeO2HKt9mR9eWe64feCizFHDIFfOg+cYr411NVIEW
	khhVKZbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol6V5-000NwS-Qu; Wed, 19 Oct 2022 10:40:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol6Uy-000NmS-5g
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 10:40:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Ur-0006Xc-6e; Wed, 19 Oct 2022 12:40:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Uq-0006GA-Fw; Wed, 19 Oct 2022 12:40:24 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Up-00AmFO-Qn; Wed, 19 Oct 2022 12:40:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Oct 2022 12:40:20 +0200
Message-Id: <20221019104022.2568647-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_034032_255774_14398B3C 
X-CRM114-Status: GOOD (  11.54  )
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
Subject: [PATCH 0/2] Reference environment partitions by phandle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I'd like to get rid of the "partname:xxx" binding we use to describe
the partitions we use for the barebox environment. As a first step
replace the users with a phandle directly to the partition node where
possible. With this only the users are left in the tree where the
binding is really necessary, i.e. where the environment is in a
GPT or MBR partition or in a eMMC boot partition.

Sascha Hauer (2):
  ARM: imx6qdl-phytec-pfla02: Remove unused environment nodes
  Treewide: Reference environment partitions by phandle

 arch/arm/dts/am335x-phytec-phycard-som.dtsi   |  4 +--
 arch/arm/dts/am335x-phytec-phycore-som.dtsi   |  8 ++---
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi   |  8 ++---
 arch/arm/dts/ep7212-clep7212.dts              |  4 +--
 arch/arm/dts/imx25-karo-tx25.dts              |  4 +--
 .../arm/dts/imx27-phytec-phycard-s-rdk-bb.dts |  4 +--
 arch/arm/dts/imx28-evk.dts                    |  4 +--
 arch/arm/dts/imx51-ccxmx51.dts                |  4 +--
 arch/arm/dts/imx51-genesi-efika-sb.dts        |  8 ++---
 arch/arm/dts/imx51-zii-rdu1.dts               |  4 +--
 arch/arm/dts/imx53-ccxmx53.dtsi               |  4 +--
 arch/arm/dts/imx53-mba53.dts                  |  4 +--
 arch/arm/dts/imx53-voipac-dmm-668.dtsi        |  4 +--
 arch/arm/dts/imx6dl-advantech-rom-7421.dts    | 12 ++++----
 arch/arm/dts/imx6dl-hummingboard.dts          |  4 +--
 arch/arm/dts/imx6q-dmo-edmqmx6.dts            | 14 +++++----
 arch/arm/dts/imx6q-h100.dts                   |  4 +--
 arch/arm/dts/imx6q-hummingboard.dts           |  4 +--
 arch/arm/dts/imx6q-hummingboard2.dts          |  4 +--
 arch/arm/dts/imx6qdl-gw54xx.dtsi              |  4 +--
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi       |  6 ++--
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi          |  4 +--
 arch/arm/dts/imx6qdl-phytec-mira.dtsi         |  2 +-
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi       | 30 ++++---------------
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi  | 14 ++++-----
 arch/arm/dts/imx6qdl-prti6q-emmc.dtsi         |  4 +--
 arch/arm/dts/imx6qdl-sabrelite.dtsi           |  4 +--
 arch/arm/dts/imx6qdl-tx6x.dtsi                |  4 +--
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi            |  4 +--
 arch/arm/dts/imx6sx-sdb.dts                   |  4 +--
 arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts        |  4 +--
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi   | 12 ++++----
 arch/arm/dts/imx6ul-prti6g.dts                |  4 +--
 arch/arm/dts/imx6ull-jozacp.dts               |  4 +--
 arch/arm/dts/imx8mm-evk.dts                   |  8 ++---
 arch/arm/dts/imx8mm-innocomm-wb15-evk.dts     |  8 ++---
 arch/arm/dts/imx8mn-evk.dts                   |  8 ++---
 arch/arm/dts/imx8mn-evk.dtsi                  |  8 ++---
 arch/arm/dts/imx8mp-evk.dts                   |  8 ++---
 arch/arm/dts/imx8mq-evk.dts                   |  8 ++---
 arch/arm/dts/imx8mq-mnt-reform2.dts           |  8 ++---
 arch/arm/dts/imx8mq-zii-ultra.dtsi            |  8 ++---
 arch/arm/dts/rk3188-radxarock.dts             |  6 ++--
 arch/arm/dts/rk3288-phycore-som.dts           |  8 ++---
 .../mips/dts/ar9331-dptechnics-dpt-module.dts |  4 +--
 arch/mips/dts/ar9331-okud-max9331.dts         |  4 +--
 .../dts/ar9331-openembed-som9331-board.dts    |  4 +--
 arch/mips/dts/ar9331_tl_mr3020.dts            |  4 +--
 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts      |  4 +--
 arch/mips/dts/qca4531-8devices-lima.dts       |  4 +--
 arch/mips/dts/qemu-malta.dts                  |  4 +--
 51 files changed, 150 insertions(+), 166 deletions(-)

-- 
2.30.2



