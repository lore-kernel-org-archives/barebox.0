Delivery-date: Mon, 27 Nov 2023 22:50:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7jUT-00BOVb-2C
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 22:50:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7jUT-0003Dn-IU
	for lore@pengutronix.de; Mon, 27 Nov 2023 22:50:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Aj9UKq+lygF9tyW7pTmItC3mVxyKLCBDjVoehqCpF2I=; b=mhy1gSnPkjUjxhVUgpML81IlV5
	kxfyXFz+AivUY31WOgh2P1P6/T3X1I9sGJmr77MhS6A+J6vl34GNWiCzbB10HEH1lbsxHMqpb/xEc
	TxMw6pwWyBpp5HyUOU8ZgMRz/VjzuO4Z6GxW4y0M+a/g9CWHjGwUjiRQPfCZzzEk9mN7XUwowmrZ+
	w740mgUzLOC5jHKeYOxFv7Bz8eFs6cGQsvDgdMfmIo1jLoo3unQKeV13ErkwvNF+JVUrXU+54qil1
	EEq0GWEzYmPzwxpwDOtE6hcorWbthHZd36qMgZeVqzSoBGnu3Bdf4J0eW+/tmW+pNX5g322rwQ1fT
	QDX0JUVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7jSu-003Wrc-1V;
	Mon, 27 Nov 2023 21:48:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7jSq-003Wql-2K
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 21:48:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-0002qS-VZ; Mon, 27 Nov 2023 22:48:21 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-00C1vk-IY; Mon, 27 Nov 2023 22:48:21 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-00Fk6W-1h;
	Mon, 27 Nov 2023 22:48:21 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 27 Nov 2023 22:48:16 +0100
Message-Id: <20231127214818.3751722-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_134824_761414_B0DD04F2 
X-CRM114-Status: GOOD (  10.08  )
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
Subject: [PATCH 1/3] drivers: regulator: make pfuze available on i.MX7 too
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It can also not hurt to build it for compile-tests.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/regulator/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 56abe3896e3b..17e217f0bba7 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -20,7 +20,7 @@ config REGULATOR_BCM283X
 config REGULATOR_PFUZE
 	bool "Freescale PFUZE100/200/3000 regulator driver"
 	depends on I2C
-	depends on ARCH_IMX6 || ARCH_IMX8MQ
+	depends on ARCH_IMX || COMPILE_TEST
 
 config REGULATOR_STM32_PWR
 	bool "STMicroelectronics STM32 PWR"
-- 
2.39.2



