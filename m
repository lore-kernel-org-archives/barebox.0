Delivery-date: Tue, 16 Jul 2024 14:03:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTguI-005RDr-1P
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 14:03:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTguH-0003FT-R5
	for lore@pengutronix.de; Tue, 16 Jul 2024 14:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=66Mq9XJwylmO7mq3Be9TBNqQdx/pvzIrZnaqY0tIt4g=; b=GqQHuVXeNwGWl+znSynIjIz6+j
	MNGNCFz1GIU/mY8F0AqOvuY6l5mMKxd8YRtRtDlfZ9/PnSDIoPdrzN9nk3k5YI28kQzegS63Gj7sH
	QbrxarB5uxKLKhFpfehLsoV71TIT5k7ERJFLmWkuLHWcTycElcLzmH93KNBNZg27lXJ32863d9ej9
	WeSU2+IVOa5uVCyCsVK8NjnVa0ZnY6Z99H9wF1M/ufQeDSPjDB6p35U4y1AGpG9OEblgm1iuB4ruT
	phC93PD1aJfiPNOM6NvRD0RBQtzAwH+IhwTrL6gRMIIJ3eOTBNFCWoyyKrUh9JaEqzhzl/IVTRy0U
	SRR+9TlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgtp-0000000ALZm-2Fvt;
	Tue, 16 Jul 2024 12:03:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgtn-0000000ALZT-3Zp2
	for barebox@bombadil.infradead.org;
	Tue, 16 Jul 2024 12:03:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=66Mq9XJwylmO7mq3Be9TBNqQdx/pvzIrZnaqY0tIt4g=; b=HMR9mI7hLdWRgDjdIaeD8PyXR6
	cpoKcHkRBREqg5gDriFnFQUhizctTjlf+ITT6DwFDGsXmu7pM1Neu4wP206Rt/1W0CIo3lPwIW3xn
	8HuaHGwtyufophAFUmQrOQT+CgG3xN6enyIeDwbcVi7V+2MDQV2K921Bt6Fi+288myAyV1gMyyvlH
	olTWYvlWlcYQdM6tImzGKCz6TaQ43BPQWshPcE7C2N2pcBrhBW0ZIKQnUUtOAK4U1NR6Wl1OW8Cq8
	KcVtgTVvW0RFlzmojwzJ0ffmtKUc+OHQmgY4VXIWLYhrv9daf8Ib8EtVEl02wew2NaudTsuNgNFoR
	BBl2rJ3w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgtk-0000000224B-1pua
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 12:03:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgtj-00031q-UG; Tue, 16 Jul 2024 14:03:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgtj-0007aA-Gw; Tue, 16 Jul 2024 14:03:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgtj-008LGV-1P;
	Tue, 16 Jul 2024 14:03:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 14:03:10 +0200
Message-Id: <20240716120310.1968471-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716120310.1968471-1-a.fatoum@pengutronix.de>
References: <20240716120310.1968471-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_130312_706434_A3CEACD8 
X-CRM114-Status: GOOD (  10.63  )
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
Subject: [PATCH v2 2/2] sandbox: add dummy pinctrl nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that I/O ports are represented in the device tree , let's use it
describe a fake pinctrl-single controller. This allows testing common
pinctrl code in sandbox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - remove power/watchdog pinmux to reduce dupication
  - add an unknown device to test that scenario too
---
 arch/sandbox/dts/sandbox.dts | 41 ++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index ea75f3a6a9b0..cf47513c76fe 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -59,6 +59,35 @@ io-ports {
 		compatible = "barebox,sandbox-ioport-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
+
+		pinctrl@0 {
+			compatible = "pinctrl-single";
+			/* Proxy 0 addressing */
+			reg = <0x0 0x0 0x0 0x4>;
+			#pinctrl-cells = <1>;
+			pinctrl-single,register-width = <8>;
+			pinctrl-single,function-mask = <0x0000000f>;
+
+			pinctrl_sound_default: sound-default-pins {
+				pinctrl-single,pins = <0x00	0x01>;
+			};
+
+			pinctrl_sound_sleep: sound-sleep-pins {
+				pinctrl-single,pins = <0x00	0x02>;
+			};
+
+			pinctrl_led_default: led-default-pins {
+				pinctrl-single,pins = <0x01	0x01>;
+			};
+
+			pinctrl_led_sleep: led-sleep-pins {
+				pinctrl-single,pins = <0x01	0x02>;
+			};
+
+			pinctrl_unknown_default: unknown-default-pins {
+				pinctrl-single,pins = <0x02	0x01>;
+			};
+		};
 	};
 
 	stickypage: stickypage {
@@ -128,9 +157,21 @@ watchdog {
 
 	sound {
 		compatible = "barebox,sandbox-sound";
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&pinctrl_sound_default>;
+		pinctrl-1 = <&pinctrl_sound_sleep>;
+	};
+
+	unknown-device {
+		compatible = "barebox,unknown-device";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_unknown_default>;
 	};
 
 	led {
 		compatible = "barebox,sandbox-led";
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&pinctrl_led_default>;
+		pinctrl-1 = <&pinctrl_led_sleep>;
 	};
 };
-- 
2.39.2



