Delivery-date: Wed, 21 Feb 2024 16:04:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8l-00HNnf-39
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 16:04:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8l-00058C-AW
	for lore@pengutronix.de; Wed, 21 Feb 2024 16:04:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=87lrD7aLbJWwTv+5eMFUnFtlHgVh3bFtshRZF98VYQg=; b=s+vn2q5Sc/cKqTwYhDHHGTv6L9
	YOQHbTF7yJicOylYjp24vwuDrkNMHuxfL9HUrNc1S4MIeBFUs6gnbbsmt3jgHauOBKYevjkPvPdtr
	0anryf1MoEk9/igXeq+2JLqz74MMsbKpAortusIO27/WDPh4WMSlTywyPA/6WxPsoPfNgTw1M0R3d
	KNEb6lSKqnEYRAVmQaFoJaY8SqgGyNMKoxbinoh2buT6nVlpuhhJGUztvSWVk+AwThW6p+e/ZetHj
	7h5F8v4Nj4YEGZ1lnbBJmAew2OgqdOQSGYWroJztoK9VS62dWYLhHaBpxn/9gNL5qpnLMJsUPnCRW
	62XD0Pcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco8E-00000001OQx-12Pe;
	Wed, 21 Feb 2024 15:03:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco86-00000001OM7-210G
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 15:03:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0004gX-Ok; Wed, 21 Feb 2024 16:03:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0023j6-B6; Wed, 21 Feb 2024 16:03:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-00BYvn-0k;
	Wed, 21 Feb 2024 16:03:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 16:03:19 +0100
Message-Id: <20240221150323.2715164-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221150323.2715164-1-s.hauer@pengutronix.de>
References: <20240221150323.2715164-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_070326_624127_61A147EE 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/8] ARM: i.MX6: add i2c4 base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a define for the I2C4 base address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/imx/imx6-regs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/mach/imx/imx6-regs.h b/include/mach/imx/imx6-regs.h
index 89a3b267c6..957b95bc95 100644
--- a/include/mach/imx/imx6-regs.h
+++ b/include/mach/imx/imx6-regs.h
@@ -132,6 +132,7 @@
 #define MX6_UART3_BASE_ADDR             (MX6_AIPS2_OFF_BASE_ADDR + 0x6C000)
 #define MX6_UART4_BASE_ADDR             (MX6_AIPS2_OFF_BASE_ADDR + 0x70000)
 #define MX6_UART5_BASE_ADDR             (MX6_AIPS2_OFF_BASE_ADDR + 0x74000)
+#define MX6_I2C4_BASE_ADDR              (MX6_AIPS2_OFF_BASE_ADDR + 0x78000)
 #define MX6_IP2APB_USBPHY1_BASE_ADDR    (MX6_AIPS2_OFF_BASE_ADDR + 0x78000)
 #define MX6_IP2APB_USBPHY2_BASE_ADDR    (MX6_AIPS2_OFF_BASE_ADDR + 0x7C000)
 
-- 
2.39.2



