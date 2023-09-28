Delivery-date: Thu, 28 Sep 2023 13:00:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlol0-00F2Q6-F8
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 13:00:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlokw-0003ib-HF
	for lore@pengutronix.de; Thu, 28 Sep 2023 13:00:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sTQv7dhKAmwNTDAweRBzcP41/NLASmMSn1NRLyWEjoQ=; b=2qNl74gRPY6bn8HONj6DMxLaTS
	Z4Hw7kYyEBsdOppAPd6uHUC4Nuezi7A0XmUibqqnCpZeCmDjJe9mNnOBmywF6yRsGn/fpF5dBXu3Y
	Qyp0rS87QZ6sJoG/vXy9kXAtHNegJX/FYVokWBuADn5RQ867bm5JGNxjx9XrgkiyMMOItpk24AR2n
	M25wMRI83S9WaIyCRIVC0ykbr8k4BgZJk6ilgswAljA/ywh8o5fmaXJAPR4U9iAAL8CL4uDxr5LVl
	FIPtMn8XOWpjTTZ8ecRuck10A7sYVJsCkNnd6bWm/a/q8TIee39q/my6ZfPHfrnZYqhoOHDdUSeJw
	39uSGkXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlojK-0030Ch-2I;
	Thu, 28 Sep 2023 10:58:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlojE-00305p-26
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 10:58:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-00032y-RQ; Thu, 28 Sep 2023 12:58:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-009Yau-Cx; Thu, 28 Sep 2023 12:58:38 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-00AXdu-15;
	Thu, 28 Sep 2023 12:58:38 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 28 Sep 2023 12:58:35 +0200
Message-Id: <20230928105837.2512555-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928105837.2512555-1-o.rempel@pengutronix.de>
References: <20230928105837.2512555-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035844_708348_7B7DA1FA 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 5/7] arm: dts: imx8mp-skov: Add barebox state backend in DTS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce 'state' node to manage device states using barebox state framework.
Set backend to usdhc3 and define storage parameters.

For now, reuse existing layout from Skov i.MX6 variants.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx8mp-skov.dts | 105 +++++++++++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index b94b9dd51d..7d6514f04b 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -31,6 +31,7 @@ aliases {
 		ethernet0 = &eqos;
 		ethernet1 = &lan1;
 		ethernet2 = &lan2;
+		state = &state;
 	};
 
 	leds {
@@ -83,6 +84,110 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	state: state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		magic = <0x1c5b3f49>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&usdhc3>;
+                /*
+                 * barebox-state partition size: 1 MiB
+                 * nr. of redundant copies:      4
+                 * ==> max. stride size: 1 MiB / 4 = 256 KiB = 262144 Byte
+                 *
+                 * stride size:     262144 Byte
+                 * raw-header:     -    16 Byte
+                 * direct-storage: -     8 Byte
+                 *                 ------------
+                 * max state size:  262120 Byte
+                 *                  ===========
+                 */
+		backend-stridesize = <0x40000>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <30>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority@C {
+					reg = <0xC 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+		};
+
+		display {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			xres@14 {
+				reg = <0x14 0x4>;
+				type = "uint32";
+				default = <0>;
+			};
+
+			yres@18 {
+				reg = <0x18 0x4>;
+				type = "uint32";
+				default = <0>;
+			};
+
+			brightness@1C {
+				reg = <0x1C 0x1>;
+				type = "uint8";
+				default = <8>;
+			};
+
+			external@1D {
+				reg = <0x1D 0x1>;
+				type = "uint8";
+				default = <0>;
+			};
+		};
+
+		ethaddr {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			eth2@1e {
+				reg = <0x1E 0x6>;
+				type = "mac";
+				default = [00 11 22 33 44 55];
+			};
+		};
+	};
 };
 
 &usdhc2 {
-- 
2.39.2



