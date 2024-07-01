Delivery-date: Mon, 01 Jul 2024 09:28:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBSH-000QKC-1a
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:28:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBSG-0006Ss-TI
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:28:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K+LWq/EHoO2TCFYCqDtGH3HRUwlgZNWTz6xUE/8p5e0=; b=KTT3gFyONkDvwzVbMW43C1I6rA
	n5InWMpGsqESYPr0pd1i9Tmbim7rwnHDGTqrbCM9jVU4dCZLyLNha3c2gJRW4uR1T+Bdz7Dq759Xj
	wq8+P2GKffiN7NYH7myFQWj0SOJ2rx4AVa4/oMjwecxVqzHUrYYeviJ3BIKipytEKd6Xg+3c+sFRV
	kgxz7kc9vMefp2n3jayevxahRGuae8vanFYBixZZRbouL5Uq4fp6SFPnusvEPRVjVn3qOS8rEXrL9
	ggvnDOwfy97RM03GX42dTA7RkyXgMY+imyXwx9abpY+shfLC+u/OQ0ofCtP76W5L2WJc228lzkGBK
	G6QSJCFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBRs-000000021da-0jQJ;
	Mon, 01 Jul 2024 07:27:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBRp-000000021ci-0Mvm
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:27:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRn-0006Kr-RN; Mon, 01 Jul 2024 09:27:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRn-006JiE-Ez; Mon, 01 Jul 2024 09:27:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRn-000gXu-1C;
	Mon, 01 Jul 2024 09:27:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:27:33 +0200
Message-Id: <20240701072733.163431-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701072733.163431-1-a.fatoum@pengutronix.de>
References: <20240701072733.163431-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_002737_150612_9FB2480B 
X-CRM114-Status: UNSURE (   8.87  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] sandbox: add dummy pinctrl nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that MMIO addresses 0-1023 point at valid memory, let's use it
describe a fake pinctrl-single controller. This allows testing common
pinctrl code in sandbox.

Device parameter support to select the state will follow later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/dts/sandbox.dts | 53 ++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index f3fe6ce65c08..bb37cfeaf9a2 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -108,19 +108,72 @@ power {
 		compatible = "barebox,sandbox-power";
 		nvmem-cell-names = "reset-source";
 		nvmem-cells = <&reset_source>;
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&pinctrl_power_default>;
+		pinctrl-1 = <&pinctrl_power_sleep>;
 	};
 
 	watchdog {
 		compatible = "barebox,sandbox-watchdog";
 		nvmem-cell-names = "reset-source";
 		nvmem-cells = <&reset_source>;
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&pinctrl_watchdog_default>;
+		pinctrl-1 = <&pinctrl_watchdog_sleep>;
 	};
 
 	sound {
 		compatible = "barebox,sandbox-sound";
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&pinctrl_sound_default>;
+		pinctrl-1 = <&pinctrl_sound_sleep>;
 	};
 
 	led {
 		compatible = "barebox,sandbox-led";
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&pinctrl_led_default>;
+		pinctrl-1 = <&pinctrl_led_sleep>;
+	};
+
+	pinctrl {
+		compatible = "pinctrl-single";
+		/* Proxy 0 addressing */
+		reg = <0x0 0x0 0x0 0x4>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <8>;
+		pinctrl-single,function-mask = <0x0000000f>;
+
+		pinctrl_power_default: power-default-pins {
+			pinctrl-single,pins = <0x00	0x01>;
+		};
+
+		pinctrl_power_sleep: power-sleep-pins {
+			pinctrl-single,pins = <0x00	0x02>;
+		};
+
+		pinctrl_watchdog_default: watchdog-default-pins {
+			pinctrl-single,pins = <0x01	0x01>;
+		};
+
+		pinctrl_watchdog_sleep: watchdog-sleep-pins {
+			pinctrl-single,pins = <0x01	0x02>;
+		};
+
+		pinctrl_sound_default: sound-default-pins {
+			pinctrl-single,pins = <0x02	0x01>;
+		};
+
+		pinctrl_sound_sleep: sound-sleep-pins {
+			pinctrl-single,pins = <0x02	0x02>;
+		};
+
+		pinctrl_led_default: led-default-pins {
+			pinctrl-single,pins = <0x03	0x01>;
+		};
+
+		pinctrl_led_sleep: led-sleep-pins {
+			pinctrl-single,pins = <0x03	0x02>;
+		};
 	};
 };
-- 
2.39.2



