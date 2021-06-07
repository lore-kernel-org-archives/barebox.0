Delivery-date: Mon, 07 Jun 2021 14:16:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqEAm-0007fL-IW
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 14:16:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqEAj-0005UR-Pk
	for lore@pengutronix.de; Mon, 07 Jun 2021 14:16:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=euYMWj7R1khx1gwz8H63t53qmcTkrQknlz4qNtlJ2MI=; b=kbnHYjGRQwn61G
	dS6+a4FxThCXX9kJMjRLTuOCUxxHGC78M6wpwLot3EQcsmY+OVs4HAeSuc3To670K5CJfhT6lnxbN
	0vZbeltH3mIypJn7oZH7YglP+8oJ589GUIFqiZioBP2fK4SYqG7aJa/raoGhHTPGj2C39ZnYbkFjJ
	NINkjD2jaNlmK08T1dhSV7PqvMkUkaJbH6rUKPXaQFtOzAM+AYvGJAYESa8w2c+I2iQq1/6A2IHBp
	NhCWfSEmp7Oe0TCmdnI9P9bbvNmMIVIpKZXcBrFv3uBTpGS9LyOVYPnAVNhCDotwsJJPYfwcrBkrq
	GUhKz2Hx79mcHTHsk73A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqE8s-003Uch-Tn; Mon, 07 Jun 2021 12:14:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqE8j-003UbL-Vj
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 12:14:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lqE8i-0005A4-8j; Mon, 07 Jun 2021 14:13:56 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lqE8h-00087k-ST; Mon, 07 Jun 2021 14:13:55 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robin@protonic.nl,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  7 Jun 2021 14:13:54 +0200
Message-Id: <20210607121354.31183-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_051358_040570_83FF1557 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] ARM: dts: protonic: define state partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Define one common state partition for all Protonic related boards

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6qdl-prti6q-emmc.dtsi | 70 ++++++++++++++++++++++++++-
 1 file changed, 69 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
index 4fc7bd6473..094b0b09d7 100644
--- a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
@@ -1,6 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 
 / {
+	aliases {
+		state = &state_emmc;
+	};
+
 	chosen {
 		stdout-path = &uart4;
 
@@ -10,6 +14,70 @@
 		};
 	};
 
+	state_emmc: state {
+		magic = <0x292D3A3C>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&state_backend_emmc>;
+		backend-stridesize = <0x400>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x10 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority {
+					reg = <0x14 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			last_chosen {
+				reg = <0x20 0x4>;
+				type = "uint32";
+			};
+		};
+
+		blobs {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			data_partitions {
+				reg = <0x26 0x100>;
+				type = "string";
+			};
+		};
+	};
+
 	reserved-memory {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -42,7 +110,7 @@
 		reg = <0x40000 0x80000>;
 	};
 
-	partition@c0000 {
+	state_backend_emmc: partition@c0000 {
 		label = "state";
 		reg = <0xc0000 0x40000>;
 	};
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

