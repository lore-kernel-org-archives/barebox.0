Delivery-date: Fri, 17 Feb 2023 18:25:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4Uc-00AHru-Sd
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:25:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4Ub-0003RD-Gk
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:25:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ryhud0DZOvaqVBh3wsHo1+v0dpiMsoVm9kL5iGhAIBE=; b=mLrmmR35YvRoT//CTd8I09o3ft
	SQXoeadhMw5QyOVQYwf4Uks5WWjihkoH36VoJ3jjjtdCL1KVhZM9OqlkB+1VgEUAR+tSvMopxL/St
	y6hZKVXOkqtHGy9W5edzxSrtJDk/pVaSsjf/jTexTELGT7MMI3pjqMfZPz4bA2KptWWvhzVQUujaN
	IwiZ/pG9eO9k4vJxgjsJ9s26Hq+6K89HkhEUqgm9tg29hNQy/ikEY52bnRlJ/vORktwtuwgioXAss
	w7BCdK2cq5CmAmrVWpBLBDvK8CqeIlAJwoGP2sfgnSUdryLq4nDw6psIgV6k+ffGpkx1Kw5vlbX94
	EL1wN66Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4TE-00FDAN-B4; Fri, 17 Feb 2023 17:24:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4T6-00FD8n-IE
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:24:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4T2-00032y-EU; Fri, 17 Feb 2023 18:24:16 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4T0-005dSE-JH; Fri, 17 Feb 2023 18:24:15 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4T0-007hWn-Q5; Fri, 17 Feb 2023 18:24:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:24:13 +0100
Message-Id: <20230217172414.1835351-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_092420_622641_ABB4F937 
X-CRM114-Status: UNSURE (   9.16  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] RISC-V: virt: riscvemu: use new-style DT overlay syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DTC nowdays also supports a much less verbose syntax for DT overlays
that is internally converted to the usual much more verbose fragment
syntax. Switch to it.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../riscv/boards/riscvemu/overlay-of-sram.dts | 197 ++++++++----------
 1 file changed, 90 insertions(+), 107 deletions(-)

diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
index 092fb02518b9..395fde84c1a9 100644
--- a/arch/riscv/boards/riscvemu/overlay-of-sram.dts
+++ b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
@@ -3,127 +3,110 @@
 /dts-v1/;
 /plugin/;
 
-/ {
-	fragment@0 {
-		target-path = "/soc";
-		__overlay__ {
-			#address-cells = <2>;
-			#size-cells = <2>;
-			sram@1000 {
-				compatible = "mtd-ram";
-				reg = <0 0x1000 0 0x10000>;
-				#address-cells = <1>;
-				#size-cells = <1>;
+&{/soc} {
+	#address-cells = <2>;
+	#size-cells = <2>;
+	sram@1000 {
+		compatible = "mtd-ram";
+		reg = <0 0x1000 0 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "bootrom";
+				reg = <0x0 0x40>;
+			};
 
-				partitions {
-					compatible = "fixed-partitions";
-					#address-cells = <1>;
-					#size-cells = <1>;
-
-					partition@0 {
-						label = "bootrom";
-						reg = <0x0 0x40>;
-					};
-
-					partition@40 {
-						label = "fdt";
-						reg = <0x40 0x1fc0>;
-					};
-
-					environment_sram: partition@3000 {
-						label = "barebox-environment";
-						reg = <0x3000 0xb000>;
-					};
-
-					backend_state_sram: partition@e000 {
-						label = "barebox-state";
-						reg = <0xe000 0x1000>;
-					};
-				};
+			partition@40 {
+				label = "fdt";
+				reg = <0x40 0x1fc0>;
+			};
+
+			environment_sram: partition@3000 {
+				label = "barebox-environment";
+				reg = <0x3000 0xb000>;
 			};
-		};
-	};
 
-	fragment@2 {
-		target-path = "/chosen";
-		__overlay__ {
-			environment {
-				compatible = "barebox,environment";
-				device-path = "/soc/sram@1000/partitions/partition@3000";
+			backend_state_sram: partition@e000 {
+				label = "barebox-state";
+				reg = <0xe000 0x1000>;
 			};
 		};
 	};
+};
 
-	fragment@3 {
-		target-path = "/";
-		__overlay__ {
-			aliases {
-				state = "/state";
-			};
+&{/chosen} {
+	environment {
+		compatible = "barebox,environment";
+		device-path = "/soc/sram@1000/partitions/partition@3000";
+	};
+};
+
+&{/} {
+	aliases {
+		state = "/state";
+	};
+
+	state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0x290cf8c6>;
+		backend-type = "raw";
+		backend = <&backend_state_sram>;
+		backend-stridesize = <64>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
 
-			state {
+			system0 {
 				#address-cells = <1>;
 				#size-cells = <1>;
-				compatible = "barebox,state";
-				magic = <0x290cf8c6>;
-				backend-type = "raw";
-				backend = <&backend_state_sram>;
-				backend-stridesize = <64>;
-
-				bootstate {
-					#address-cells = <1>;
-					#size-cells = <1>;
-
-					system0 {
-						#address-cells = <1>;
-						#size-cells = <1>;
-
-						remaining_attempts@0 {
-							reg = <0x0 0x4>;
-							type = "uint32";
-							default = <3>;
-						};
-
-						priority@4 {
-							reg = <0x4 0x4>;
-							type = "uint32";
-							default = <20>;
-						};
-					};
-
-					system1 {
-						#address-cells = <1>;
-						#size-cells = <1>;
-
-						remaining_attempts@8 {
-							reg = <0x8 0x4>;
-							type = "uint32";
-							default = <3>;
-						};
-
-						priority@c {
-							reg = <0xc 0x4>;
-							type = "uint32";
-							default = <21>;
-						};
-					};
-
-					last_chosen@10 {
-						reg = <0x10 0x4>;
-						type = "uint32";
-					};
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
 				};
 			};
-		};
-	};
 
-	fragment@4 {
-		target-path = "/htif";
-		#address-cells = <2>;
-		#size-cells = <2>;
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
 
-		__overlay__ {
-			reg = <0 0x40008000 0 0x8>;
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@c {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
 		};
 	};
 };
+
+&{/htif} {
+	reg = <0 0x40008000 0 0x8>;
+};
-- 
2.30.2



