Delivery-date: Tue, 20 Jan 2026 16:59:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viE8u-003RGf-1C
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 16:59:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viE8t-0008U8-Dk
	for lore@pengutronix.de; Tue, 20 Jan 2026 16:59:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a6K/JMkN5SH+V17aH5kAa1mYHWhJtSWh2mNBLkRan6o=; b=IQ90doOQGUS+NXWUfaZ/vQpSJf
	SIXNn5/Nozphd+nhA+3zQSHsEzSs8F5s93tIkz+v5G447F2T/E614AvrEmYImXZOp8oWykG5u3ukX
	qfuKvRmgFET1OW0R4aJmoe/Qa1WEEeWMQZFX2fM+T+s07NSLFs3jSUP3T6W+R8W/Xqhpya19Idddp
	2gP3b5710Qy7hL2Z4S8wDHsQQWRyTZATFxv6atBCi8wyIDVdTZNb2HTtXM36KYadAhH9Jf4MWji09
	I25HfrEg+NCqxFFTSpHmfDeyMyb48C/7BPGBJEgZMsCDx3SGSlfMhwJwOxbhhU6JCWfbE38SuVAOo
	LOYHXQDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viE8M-000000047OU-3wJ2;
	Tue, 20 Jan 2026 15:59:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viE8L-000000047OL-2mU5
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 15:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=a6K/JMkN5SH+V17aH5kAa1mYHWhJtSWh2mNBLkRan6o=; b=ID8CsqvekOcz70XiUvKrVNY+p0
	sV4KMUVZQ9iol1bYtluvciipUjjuamVrrE8+u5lWFmWE7H82zKztYJgTw4H/dlZX1tnS/v7yBYTR3
	1vRR0nrFGtRsqB1bma7b54JggprdLKHfJXm0CfqBcp7hZ57eKsAaWWqWVyACNIOtfDQkr2lRDunak
	g1yd+d6d/SZ/16CGeDksteIkR3CzMq5C32pmKbGXQ98KW4tGUojQBu/ZwxJxnVJ5VTqLuq8rbXrAm
	cb23xxxhNBtKm/R7+QzFu21nbZ6a+4zHnoBH4E1uy91+Y3BluklP3kSESRPcqojhd9vRtjsYDIX3c
	JvigQ3SA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viE8J-0000000EMdR-0A75
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 15:59:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viE8G-0008K6-R5; Tue, 20 Jan 2026 16:59:04 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viE8H-001bm0-10;
	Tue, 20 Jan 2026 16:59:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viE8H-0000000BY7R-0xbB;
	Tue, 20 Jan 2026 16:59:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Jan 2026 16:58:59 +0100
Message-ID: <20260120155902.2752563-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_155907_134003_CD970A52 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] pmdomain: rockchip: enable driver by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Failure to enable the driver leads to annoying warnings in the best
case:

  WARNING: rockchip-dw-pcie 3c0000000.pcie@fe260000.of: power domain not found (ignoring)

and to hangs in the worst case. The defconfigs already enable the
device, but it should really be default y whenever CONFIG_ARCH_ROCKCHIP=y.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pmdomain/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pmdomain/rockchip/Kconfig b/drivers/pmdomain/rockchip/Kconfig
index 0ee292b45b31..05c6c73bbcc5 100644
--- a/drivers/pmdomain/rockchip/Kconfig
+++ b/drivers/pmdomain/rockchip/Kconfig
@@ -5,6 +5,7 @@ config ROCKCHIP_PM_DOMAINS
 	bool "Rockchip generic power domain"
 	depends on REGULATOR
 	select PM_GENERIC_DOMAINS
+	default ARCH_ROCKCHIP
 	help
 	  Say y here to enable power domain support.
 	  The PMU is dedicated for managing the power of the whole chip and may
-- 
2.47.3



