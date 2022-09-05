Delivery-date: Mon, 05 Sep 2022 09:45:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6nh-007Evy-Qy
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 09:45:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6ni-0008UM-DG
	for lore@pengutronix.de; Mon, 05 Sep 2022 09:45:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+LEa3BSA0E0fleeN6G4V7s5CvoyAi+5NlASun1Z/D78=; b=SXnjWG4sl4kfQKQGkdNj0zsqkc
	FBztMKAlKl7yRzwJfkcmU19o0npCZ/D2KPeVLJD1QlWUANhsV/aWSfconvazcX5T0ROEeOiVPjZ7o
	6FzeLgltT+cwQ9j4iiZWP9fl/qV7+2MpPF/TBpskPTQvC7lS2trwlu4pJ8oI5fhF7TUthDWDBfb4X
	E1spy1BNP86in2JnZ/Yd+Mk8Tfxn2cyntbjGgguzUj5rcrMxcaAX4cHrQ9Th9nbtvekruWg8xoaZX
	igyBfWK/Hj/9+SnRDhs2p9cBsUkRWV8mNVbgfbeyWR0Sn+Yaa3mtfqqiDHCEQ2OVEwdILicYTID33
	EjK0DTXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV6ls-00DXRG-HD; Mon, 05 Sep 2022 07:43:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV69T-00CrV1-AG
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 07:04:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV69R-0002S8-G5; Mon, 05 Sep 2022 09:04:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV69O-0040qA-Tb; Mon, 05 Sep 2022 09:04:08 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV69Q-002GIK-21; Mon, 05 Sep 2022 09:04:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 09:04:06 +0200
Message-Id: <20220905070406.539244-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_000414_477142_575AD595 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] soc: imx: gpcv2: make available to all i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that the driver supports i.MX8M Mini, Nano and Plus, we should no
longer restrict it to just i.MX7 and i.MX8MQ.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/imx/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index eabe4a06d22c..624aff2ecae3 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -3,9 +3,9 @@ menu "i.MX SoC drivers"
 
 config IMX_GPCV2_PM_DOMAINS
         bool "i.MX GPCv2 PM domains"
-	depends on ARCH_IMX7 || ARCH_IMX8MQ
+	depends on ARCH_IMX7 || ARCH_IMX8M
 	select PM_GENERIC_DOMAINS
-	default y if ARCH_IMX7 || ARCH_IMX8MQ
+	default y if ARCH_IMX7 || ARCH_IMX8M
 
 config IMX8M_FEATCTRL
         bool "i.MX8M feature controller"
-- 
2.30.2



