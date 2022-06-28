Delivery-date: Tue, 28 Jun 2022 22:40:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0y-000bL5-7o
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:40:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0z-0004Fr-S4
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MwSOE2YgSCFDu0320xuSc1Pk/xQDMqkQ0+w3wociaIU=; b=08LUvCJVoKU4BC/xNmJXMmhCw1
	XKpYsOFrb+rl41HXZ5O8/gtMH/npASPjmrUjqyl3yM9SH6mlwu+nzPuKd5VqM5mj9e7ywVQdRhEBV
	QTTFM5hbU+ZKp3T9tNFY3hwcdRbjP0IaaPNPaOkNXpEUOcx29FApZjkAamQRKHfcOhdVFDuEKtC7V
	KA3cCf6SIlH8iRF107XPPKQ9ixeO10v9CrRvqHCC9VQSwRbW6oAAaK7yZdOlJDFOarWICX54YKsTJ
	5XmBlV2YUD1kbIBiXzFNmr+SiNmAEeGBWULLgyAC1oB2PiDcOdgiqqF0R/rSeLjwbxkOhjQcPT8Zs
	cusC/eaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzQ-0084ko-MM; Tue, 28 Jun 2022 20:39:16 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzG-0084hD-8j
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=MwSOE2YgSCFDu0320xuSc1Pk/xQDMqkQ0+w3wociaIU=;
	b=c9j6EIll1dUkiZA2A3qjjNotBcrSevM1YXA02/b4cnnQMZa/wBIhwnrn8UGMLAmY7ofWTSMdrjFft
	 8oOPoAzdH+jJbysENfuea7m9LsKvRh19/KFXLkr+GVE+uxrrYAvkimQNwom2rMAWKTgyYLHybPqV2G
	 QyMPeuGfVBrQZD35cSmU+Cq0RiDa0MZu22Aw5jGVBGsrB0UFuSW9A6qlQxckdbmDxzvDQlggM08ok/
	 62kQmgGmiqj7v6C4zt2xunoyNlMwxbWWDl/Je4qBJBcLy+cDMp30bXtLIQLO5SeugV3P5bpLPE9oVu
	 nuQZwN+xosIDDpPJIdkYKY0PTmZBigQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=MwSOE2YgSCFDu0320xuSc1Pk/xQDMqkQ0+w3wociaIU=;
	b=6krimu8W5zCwu4UPdx9Z2jzBASLVCGtcjQ5JXL/YIX6+eSkfL31kGJZojDVWEuDsC3Y1zxA36vJTs
	 kRulh4cDA==
X-HalOne-Cookie: 88636119bcaf9d80f731f6879a5157402994e712
X-HalOne-ID: 598ed97b-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 598ed97b-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:04 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:42 +0200
Message-Id: <20220628203849.2785611-5-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133906_489993_24E6E87F 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/11] ARM: at91: Provide at91_mux_pio_pin for use in lowlevel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Lowlevel init code may wish the ability to configure pins, e.g. for low
level debug UART. The pinctrl-at91 driver already exports an
at91_mux_pin function, but that one is only usable after driver
probe. Instead, provide an at91_mux_pio_pin function, which can be used
at all times.

This is similar to the already existing at91_mux_pio3_pin function

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/include/mach/gpio.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index ddd6971e3..7f84f41e5 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -151,6 +151,31 @@ static inline int at91_mux_gpio_get(void __iomem *pio, unsigned mask)
 	return (pdsr & mask) != 0;
 }
 
+static inline void at91_mux_pio_pin(void __iomem *pio, unsigned mask,
+				    enum at91_mux mux, int gpio_state)
+{
+	at91_mux_disable_interrupt(pio, mask);
+
+	switch(mux) {
+	case AT91_MUX_GPIO:
+		at91_mux_gpio_enable(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_A:
+		at91_mux_set_A_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_B:
+		at91_mux_set_B_periph(pio, mask);
+		break;
+	default:
+		/* ignore everything else */
+		break;
+	}
+	if (mux != AT91_MUX_GPIO)
+		at91_mux_gpio_disable(pio, mask);
+
+	at91_mux_set_pullup(pio, mask, gpio_state & GPIO_PULL_UP);
+}
+
 static inline void at91_mux_pio3_pin(void __iomem *pio, unsigned mask,
 				     enum at91_mux mux, int gpio_state)
 {
-- 
2.34.1



