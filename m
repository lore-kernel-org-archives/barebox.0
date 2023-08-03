Delivery-date: Thu, 03 Aug 2023 12:52:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVwG-004wVW-Kz
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:52:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVwC-0002Iw-QC
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:52:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ylarHHcBkN5CWOChJRo3Gi1AuSWvLS5sBjaiIyiwBtc=; b=AuhHXkSjo9sS4O0wkRoctovjtN
	6xvJd19qDCa7/aaMFkgRcyg8NC0HYcdy0r1qlt5FN4RtlZB0STOPL/XOGBmd1Q4ivMIrQsOfOjTsw
	eERWcRHSMRZ2rHT4vX7Cjm2gxKltgcGkT2+NboXkI5XUHro6oiMo8YLaEAYZQ/8nrjKgSA4kOA5NI
	rsF19MffUNSV9U6t1hKsHi2U3zpQpq5+DI79GxXNtEtYU7BDL1B8IUP6OeaIYDjlaU8wr/BgqkqS8
	29flX20jgD+F4eOmEoRnZlQOuRYWV56xbckBpxi2FxBgMqoAWkeSidhEikBQWh0L32s1H+T4+qWZI
	b10PKocw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuz-007VI2-02;
	Thu, 03 Aug 2023 10:50:57 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuF-007UbC-2r
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuD-0000yv-QW; Thu, 03 Aug 2023 12:50:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuD-000owJ-78; Thu, 03 Aug 2023 12:50:09 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzz-SQ; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:50:00 +0200
Message-Id: <20230803105003.4088205-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035011_954731_8BAA51E4 
X-CRM114-Status: GOOD (  12.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 19/22] ARM: k3: BeaglePlay: Work around non working SD card
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The upstream dts file configures the SD card detect pin as GPIO.
With this our SD driver currently doesn't work. Until the reasons
are found out let's configure the pin as native card detect for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625-beagleplay.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/dts/k3-am625-beagleplay.dts b/arch/arm/dts/k3-am625-beagleplay.dts
index 6efc178777..b4606ff129 100644
--- a/arch/arm/dts/k3-am625-beagleplay.dts
+++ b/arch/arm/dts/k3-am625-beagleplay.dts
@@ -7,3 +7,24 @@ chosen {
 		stdout-path = &main_uart0;
 	};
 };
+
+&sd_pins_default {
+	pinctrl-single,pins = <
+		AM62X_IOPAD(0x023c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
+		AM62X_IOPAD(0x0234, PIN_INPUT, 0) /* (B22) MMC1_CLK */
+		AM62X_IOPAD(0x0230, PIN_INPUT, 0) /* (A22) MMC1_DAT0 */
+		AM62X_IOPAD(0x022c, PIN_INPUT, 0) /* (B21) MMC1_DAT1 */
+		AM62X_IOPAD(0x0228, PIN_INPUT, 0) /* (C21) MMC1_DAT2 */
+		AM62X_IOPAD(0x0224, PIN_INPUT, 0) /* (D22) MMC1_DAT3 */
+		/*
+		 * The upstream dts configures this as MMC1_SDCD.GPIO1_48 and
+		 * uses main_gpio1 48 as card detect GPIO. With this the
+		 * MMC driver doesn't doesn't detect the card. Upstream
+		 * dts has the ti,fails-without-test-cd property which
+		 * purpose seems to be to work around this issue. This
+		 * doesn't work either in barebox. For now configure the
+		 * pin as native SDHCI card detect.
+		 */
+		AM62X_IOPAD(0x0240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
+	>;
+};
-- 
2.39.2



