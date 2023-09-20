Delivery-date: Wed, 20 Sep 2023 12:34:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXg-004Wmd-JI
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 12:34:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXe-000577-CZ
	for lore@pengutronix.de; Wed, 20 Sep 2023 12:34:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DSc4DkgTjtt/OVMjxPmu88XnZVBjTMj8G9DhouNDeUI=; b=ZQZbW8MyxcoItxxBel/ukBc0kD
	cSpeX5wMy7y3IWG1kO2vBzv63LmeLQqR8KObQaOYmaZhc89AwojX9GnRskAN0XQ5v3qq0qBD1tVB/
	x5MHd7Ixt6ebVC62GVq1GHKvxOQ2JE7q+uLwtFWJugcJSocD2q4gqv71af81EBKKfTFdYeqq6Bmip
	zqM702U9loJ+dz9BE63sRmvf2AiywYSQfGtPHAdeJDUR/iow+SDFaHv2l6bZ54WiPdwBCi9y/xDfd
	oBE0Fusyv0h1YiqfG8sc85a6Kbosdg8jzvT0XXZnzW/AFhKfO8imxsihV7ALYlhnMo2faO8MC9g6g
	P/5ZZzcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWJ-002cuu-2x;
	Wed, 20 Sep 2023 10:33:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWG-002csd-1d
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 10:33:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-0004UA-TQ; Wed, 20 Sep 2023 12:33:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-007fJW-Gu; Wed, 20 Sep 2023 12:33:17 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-00BZxs-8P; Wed, 20 Sep 2023 12:33:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 12:33:05 +0200
Message-Id: <20230920103316.2758383-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_033320_537615_53407D0B 
X-CRM114-Status: GOOD (  10.74  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/11] regulator updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series is the result of a longer debugging session on a phyCORE
STM32MP1 board. It turned out that the 'regulator' command prints the
valid voltage range that a regulator has, but by no means makes sure
that a regulator is set to a voltage inside that range, but instead
happily enables a regulator with whatever default voltage it happens
to have.

On my Phytec board this resulted in the ethernet phy regulator being
enabled with a too low voltage with the effect that ethernet was working
with a very high package loss.

This series fixes that. Another bonus of this series is that the
regulator command now prints the regulators in a tree structure instead
of a plain list.

Sascha

Sascha Hauer (11):
  regulator: rename variable rd to rdev
  regulator: merge struct regulator_internal fields into struct
    regulator_dev
  regulator: introduce regulator logging functions.
  regulator: add regulator_get_voltage_internal()
  regulator: Add missing cases in regulator_map_voltage()
  regulator: stpmic1: add .get_voltage_sel
  regulator: stpmic1: add .supply_name
  regulator: register regulator as last step in of_regulator_register()
  regulator: Set initial voltage
  regulator: drop struct regulator_dev::supply_name
  regulator: print regulator tree

 drivers/regulator/bcm2835.c           |   2 +-
 drivers/regulator/core.c              | 377 +++++++++++++++-----------
 drivers/regulator/stpmic1_regulator.c |  11 +
 include/regulator.h                   |  24 +-
 4 files changed, 254 insertions(+), 160 deletions(-)

-- 
2.39.2



