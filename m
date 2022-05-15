Delivery-date: Sun, 15 May 2022 21:40:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6Q-00EWTW-V3
	for lore@lore.pengutronix.de; Sun, 15 May 2022 21:40:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6M-0005vV-Hs
	for lore@pengutronix.de; Sun, 15 May 2022 21:40:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kGeGLpzVDSjyswORjiQTtnvo5VPKAK8eENNsW0Lv7U=; b=a238cvX3AGkqvQ
	gsHljoKYOx4Z8vivgh8LAgguLFQDOAtvN0yGJMpj6AqC5A3+Gl8fzZ5azGf1ZRD30461kE+FHijlj
	6pCpjdOQmGXIa992ggZiTRpjeelp5q4gjg9Of5U13wzD0jwSQFEmvsr+R7tcoD8+mivQYQ1g9nIJS
	p9AFjTlGN/09vNmWMDY7zpdzH5utXCdIuNSUMCAeN1QY1Ts6h6GY2JzXGTHIGVrZfVjSgGWNbWBYA
	ikFbz4QjUJoSY1dbuJ01KZEgUZE2sbGuJc2vqsZn+yK6scCog03zCnVeroPWIpKIX2JMTYI7HjQsS
	GMliJFVBYlesaNB86NHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqK4c-004nYd-0M; Sun, 15 May 2022 19:38:38 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqK4R-004nUV-Vy
 for barebox@lists.infradead.org; Sun, 15 May 2022 19:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=MwSOE2YgSCFDu0320xuSc1Pk/xQDMqkQ0+w3wociaIU=;
 b=drD0e7ZGw2D+pk6DcV+q9NxqDEyCRvkdHmLJEl9t5rD01qSV2YjjZRXvDn+ZvnVv1HZ16432PfQFQ
 Gg09+TBP/5PPXz9vF1vCuf2yPm1saQAaTF0FGr0+Cw6TiECAwmIW96HoFXjVRUJcm64Bw4cljujhRl
 e6/oJatgp6sfMGmZ1I4V9Sor8ujXrCfh53bPPt5EYhR+Y4NYEBm/k/p/3C/tsqn7RPD827Oc+oGbzi
 YsGxhQhXnFRxutJsNtHhiaDlpXYW49cZqC7ShGHiDYBz7IT2hFWR1ju8A3iZmhLMFuMqqqq13q4ETS
 +NdODdrw7/ycm7QM67rTngVQrjukAww==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=MwSOE2YgSCFDu0320xuSc1Pk/xQDMqkQ0+w3wociaIU=;
 b=Tc2wsft2+zIRJ8k+DgF3hgagzzvT2gvUWeK802dGbrBjoes4CWKmIHKHuYQbopc/A/w/Se4WxbQcN
 qe/IaCnAQ==
X-HalOne-Cookie: 301697b341b3a93f315fe60cc30aa0cc2f6725ee
X-HalOne-ID: 95eb2e44-d486-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod4-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 95eb2e44-d486-11ec-a908-d0431ea8a290;
 Sun, 15 May 2022 19:38:24 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 15 May 2022 21:38:01 +0200
Message-Id: <20220515193807.354903-3-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123828_294087_029A507B 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/8] ARM: at91: Provide at91_mux_pio_pin for use in lowlevel
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


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

