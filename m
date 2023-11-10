Delivery-date: Fri, 10 Nov 2023 14:03:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RAQ-005rnU-1d
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:03:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RAQ-0006Di-GU
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:03:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3K5ZaKB+huW72CkUzbRZZHMuH5LzuohFLSC8kJn7fdY=; b=ZVpdxFS74AUmfKPOqeEkjFi4PO
	DiFEEox4SsUpN7QmzxHoVXwW/aIYljfUZR22j1RpTrHPK705mcB/mpvTF76V3kvtKqItxj1r+aZl0
	3dolWlAxGewweszToHn1uaRFf+xLinpcXlgfZ5EdJTiJJFWYja5xZzGUhUqt6cbBJas4S3Jr9eFDe
	Q0G5ii4G7WGrfHujCy69B7Ef4Jm/b24pCRxNjl9Dyo/Aoa5ykTEkSKmHhh9HfwUvblsnDyxa+LHPC
	GBqn+2EXuE3Z9XUCOO2mZmcM4j7S+N5NpRNm7Ghgjr6qjMzWk3X5UunO8kXgWFAzc/bApBYV4l0JY
	PcaslHmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9S-008nCx-0W;
	Fri, 10 Nov 2023 13:02:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9N-008n9t-1r
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=3K5ZaKB+huW72CkUzbRZZHMuH5LzuohFLSC8kJn7fdY=; b=bgUMupyBTHOiXr2ljk7N4iYWb2
	5KZK3A8Z3Zznf1bOWELeXc5Jx5CBQN3FPErtTaXCAPy2Mp+4J/peuuLNH2snC08WIBXH2O75Avo8P
	CYKMJ4xL05vIOqljkCLPIhChpbKUIQ5QAX4c0tniis2R6QLBRyPhMdkm8TnvAD13z2PYHW7lxSFN3
	VyYDp38k2E//bSpTZyue/I/SuUk/zSac2SQvHuWvcoE3ZfQJLoFVNGMeNAeFF+L15mwhuC3jesavb
	pEEgEDuvXEwT8k3wofdGI4nQeS3pa/Yenvt2eCfyaT24/T8ATHWbsr7pQvHeXP48tzN9nHnmDDT5x
	/diCY4qA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9H-00Fc8s-0d
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:02:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9G-0005J0-CD; Fri, 10 Nov 2023 14:02:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9F-0081yd-Kf; Fri, 10 Nov 2023 14:02:09 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9F-009GZ7-1s;
	Fri, 10 Nov 2023 14:02:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:02:03 +0100
Message-Id: <20231110130206.2172907-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130213_344974_B17B0EAA 
X-CRM114-Status: UNSURE (   9.45  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] Add i.MX9 EQOS networking support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like some i.MX8M variants the i.MX9 also has a designware EQOS network
controller. This series adjusts the glue code to make the driver
available on i.MX9.

Sascha

Sascha Hauer (3):
  net: eqos: rename i.MX8 driver glue code to i.MX
  net: eqos: imx: move common stuff to probe()
  net: eqos: Add i.MX93 support

 arch/arm/configs/imx_v8_defconfig   |   2 +-
 arch/arm/configs/multi_v8_defconfig |   2 +-
 drivers/net/Kconfig                 |   8 +-
 drivers/net/Makefile                |   2 +-
 drivers/net/designware_imx.c        | 269 ++++++++++++++++++++++++++++
 drivers/net/designware_imx8.c       | 195 --------------------
 6 files changed, 276 insertions(+), 202 deletions(-)
 create mode 100644 drivers/net/designware_imx.c
 delete mode 100644 drivers/net/designware_imx8.c

-- 
2.39.2



