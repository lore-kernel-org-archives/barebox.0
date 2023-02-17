Delivery-date: Fri, 17 Feb 2023 18:25:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4UO-00AHr6-Rp
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:25:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4UN-0003NF-GG
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:25:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HXi/1H4NhJwxnOKUELOBUJ2zqRaMzO1BtumMcsDPJbE=; b=2KKN8DbEV5aCiUM9rP7JOEsv0O
	FWezsoAT95ik80S2ZJXG4+lumbQy6DClmWz3hJopOtK3ThZm7sRay2ZdkD06wKBiwwK44Efeb0J0E
	UmOvSuj+K1tBBk/1/gn58LvBBcKf8wOiPpJHkkAk8j7f3+Bz34X1tCkj+yQbNcRfNsQvbgAmkpCP8
	jOhlaVZqMKUFhn3lInBN8Iw0h48NRWvT9j+Nh3iCPPKaM+xjLdXcv98SZINhAAhFO/tRL97l4N7mU
	P8M5x4UUa7CW+jITe0wnk2Ap2899kmyfyQvoKVZeaal/ugPK2M6x9kZ3PQysZXRhgbnekoOK6kfVn
	DsSaaX7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4TC-00FDA7-DO; Fri, 17 Feb 2023 17:24:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4T6-00FD8k-ID
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:24:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4T2-00032x-9L; Fri, 17 Feb 2023 18:24:16 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4T0-005dSB-F4; Fri, 17 Feb 2023 18:24:15 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4T0-007hWp-QV; Fri, 17 Feb 2023 18:24:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:24:14 +0100
Message-Id: <20230217172414.1835351-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217172414.1835351-1-a.fatoum@pengutronix.de>
References: <20230217172414.1835351-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_092420_624443_18C048AD 
X-CRM114-Status: UNSURE (   9.69  )
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
Subject: [PATCH 2/2] common: boards: qemu-virt: use new-style DT overlay syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DTC nowdays also supports a much less verbose syntax for DT overlays
that is internally converted to the usual much more verbose fragment
syntax. Switch to it.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/overlay-of-flash.dts | 159 +++++++++----------
 1 file changed, 74 insertions(+), 85 deletions(-)

diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
index 3f2beaac3798..15c8cc450d49 100644
--- a/common/boards/qemu-virt/overlay-of-flash.dts
+++ b/common/boards/qemu-virt/overlay-of-flash.dts
@@ -4,110 +4,99 @@
 /plugin/;
 
 #ifdef RISCV_VIRT
-#define PARTS_TARGET_PATH	"/flash@20000000"
+#define PARTS_TARGET_PATH	/flash@20000000
 #define ENV_DEVICE_PATH		"/flash@20000000/partitions/partition@3c00000"
 #else
-#define PARTS_TARGET_PATH	"/flash@0"
+#define PARTS_TARGET_PATH	/flash@0
 #define ENV_DEVICE_PATH		"/flash@0/partitions/partition@3c00000"
 #endif
 
-/ {
-	fragment@0 {
-		target-path = PARTS_TARGET_PATH;
-		__overlay__ {
-			partitions {
-				compatible = "fixed-partitions";
-				#address-cells = <1>;
-				#size-cells = <1>;
+&{PARTS_TARGET_PATH} {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-				partition@0 {
-					label = "initramfs";
-					reg = <0x0 0x3c00000>;
-				};
+		partition@0 {
+			label = "initramfs";
+			reg = <0x0 0x3c00000>;
+		};
 
-				environment_flash: partition@3c00000 {
-					label = "barebox-environment";
-					reg = <0x3c00000 0x200000>;
-				};
+		environment_flash: partition@3c00000 {
+			label = "barebox-environment";
+			reg = <0x3c00000 0x200000>;
+		};
 
-				backend_state_flash: partition@3e00000 {
-					label = "barebox-state";
-					reg = <0x3e00000 0x200000>;
-				};
-			};
+		backend_state_flash: partition@3e00000 {
+			label = "barebox-state";
+			reg = <0x3e00000 0x200000>;
 		};
 	};
+};
 
-	fragment@1 {
-		target-path = "/chosen";
-		__overlay__ {
-			environment {
-				compatible = "barebox,environment";
-				device-path = ENV_DEVICE_PATH;
-			};
-		};
+&{/chosen} {
+	environment {
+		compatible = "barebox,environment";
+		device-path = ENV_DEVICE_PATH;
+	};
+};
+
+&{/} {
+	aliases {
+		state = "/state";
 	};
 
-	fragment@2 {
-		target-path = "/";
-		__overlay__ {
-			aliases {
-				state = "/state";
+	state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0x290cf8c6>;
+		backend-type = "raw";
+		backend = < &backend_state_flash >;
+		backend-stridesize = <0x200>;
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
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
 			};
 
-			state {
+			system1 {
 				#address-cells = <1>;
 				#size-cells = <1>;
-				compatible = "barebox,state";
-				magic = <0x290cf8c6>;
-				backend-type = "raw";
-				backend = < &backend_state_flash >;
-				backend-stridesize = <0x200>;
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
 				};
 			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
 		};
 	};
 };
-- 
2.30.2



