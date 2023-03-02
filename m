Delivery-date: Thu, 02 Mar 2023 11:41:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNT-006TQb-NK
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:41:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNT-0003FL-30
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:41:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E+qL9ghgOUqqR8dc0sRYSbtH0+7JO8z87eJCFejnIj8=; b=0rQvaHt03Bi67xGs9Yh5zw565x
	w5JUu3+7uWgS/W7KBCFLHWVUB8wDgLBwyGXyMDyUfjwRlDur3nsIUDPAATshpItaGX8uTEbIuMizQ
	GZm+FnnucvWIKePwbLvlMVuzNxmxgr2CKkBaaZXefIdOY8MqU6WfVQCKskZEOVTQX+cDkNG05g/Ci
	1HlLZxVZf7AeAoLf5aE+H+oWQt6Y0wqqbieoJJv5NSGuMMHOI6bXK5UmCf+qkM/utFvOvwRlyhqoh
	502O9KmQLCxxgFqUU2YahEK8BUnNzqk7xQyvkCy5E2Wzc4Y86NtmvkbmYKj8MG1AMD1Z8VkatlO3I
	NCz99Ang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgLz-001hGV-5B; Thu, 02 Mar 2023 10:40:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgLr-001hE9-NT
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:39:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLk-0002W6-9H; Thu, 02 Mar 2023 11:39:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLi-001J5X-GC; Thu, 02 Mar 2023 11:39:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLg-003wZ6-Hg; Thu, 02 Mar 2023 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:39:39 +0100
Message-Id: <20230302103943.939422-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302103943.939422-1-s.hauer@pengutronix.de>
References: <20230302103943.939422-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_023955_828191_D3833312 
X-CRM114-Status: GOOD (  12.73  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] ARM: dts: Fix dtc warnings in state nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many state variables have a reg property, but no unit name. Also some
unnecessary #size-cells and #address-cells are removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6dl-prtvt7.dts         |  4 +++-
 arch/arm/dts/imx6qdl-prti6q-emmc.dtsi  | 14 ++++++--------
 arch/arm/dts/imx6qdl-skov-imx6.dtsi    |  2 +-
 arch/arm/dts/imx6ul-phytec-state.dtsi  | 16 +++++++---------
 arch/arm/dts/imx6ul-webasto-ccbv2.dts  |  2 --
 arch/arm/dts/imx6ul-webasto-marvel.dts |  2 --
 6 files changed, 17 insertions(+), 23 deletions(-)

diff --git a/arch/arm/dts/imx6dl-prtvt7.dts b/arch/arm/dts/imx6dl-prtvt7.dts
index 19794add17..dcfde2c8c6 100644
--- a/arch/arm/dts/imx6dl-prtvt7.dts
+++ b/arch/arm/dts/imx6dl-prtvt7.dts
@@ -6,8 +6,10 @@
 
 &state_emmc {
 	magic = <0x72766467>;
+	#address-cells = <1>;
+	#size-cells = <1>;
 
-	brand {
+	brand@1b0 {
 		reg = <0x1b0 0x4>;
 		type = "enum32";
 		names = "unbranded", "agco", "vermeer";
diff --git a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
index 8ad41174d4..581ff349a4 100644
--- a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
@@ -20,8 +20,6 @@
 		backend-type = "raw";
 		backend = <&state_backend_emmc>;
 		backend-stridesize = <0x400>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
 		bootstate {
 			#address-cells = <1>;
@@ -31,13 +29,13 @@
 				#address-cells = <1>;
 				#size-cells = <1>;
 
-				remaining_attempts {
+				remaining_attempts@0 {
 					reg = <0x0 0x4>;
 					type = "uint32";
 					default = <3>;
 				};
 
-				priority {
+				priority@4 {
 					reg = <0x4 0x4>;
 					type = "uint32";
 					default = <21>;
@@ -48,20 +46,20 @@
 				#address-cells = <1>;
 				#size-cells = <1>;
 
-				remaining_attempts {
+				remaining_attempts@10 {
 					reg = <0x10 0x4>;
 					type = "uint32";
 					default = <3>;
 				};
 
-				priority {
+				priority@14 {
 					reg = <0x14 0x4>;
 					type = "uint32";
 					default = <20>;
 				};
 			};
 
-			last_chosen {
+			last_chosen@20 {
 				reg = <0x20 0x4>;
 				type = "uint32";
 			};
@@ -71,7 +69,7 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			data_partitions {
+			data_partitions@26 {
 				reg = <0x26 0x100>;
 				type = "string";
 			};
diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
index cb4224f1b4..12be8ee4f7 100644
--- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
+++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
@@ -113,7 +113,7 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			eth2 {
+			eth2@1e {
 				reg = <0x1E 0x6>;
 				type = "mac";
 				default = [00 11 22 33 44 55];
diff --git a/arch/arm/dts/imx6ul-phytec-state.dtsi b/arch/arm/dts/imx6ul-phytec-state.dtsi
index 78a32ed96b..d0cad1b516 100644
--- a/arch/arm/dts/imx6ul-phytec-state.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-state.dtsi
@@ -18,29 +18,27 @@
 		backend-stridesize = <54>;
 		status = "disabled";
 
-		#address-cells = <1>;
-		#size-cells = <1>;
 		bootstate {
 			#address-cells = <1>;
 			#size-cells = <1>;
-			last_chosen {
+			last_chosen@0 {
 				reg = <0x0 0x4>;
 				type = "uint32";
 			};
 			system0 {
 				#address-cells = <1>;
 				#size-cells = <1>;
-				remaining_attempts {
+				remaining_attempts@4 {
 					reg = <0x4 0x4>;
 					type = "uint32";
 					default = <3>;
 				};
-				priority {
+				priority@8 {
 					reg = <0x8 0x4>;
 					type = "uint32";
 					default = <21>;
 				};
-				ok {
+				ok@c {
 					reg = <0xc 0x4>;
 					type = "uint32";
 					default = <0>;
@@ -49,17 +47,17 @@
 			system1 {
 				#address-cells = <1>;
 				#size-cells = <1>;
-				remaining_attempts {
+				remaining_attempts@10 {
 					reg = <0x10 0x4>;
 					type = "uint32";
 					default = <3>;
 				};
-				priority {
+				priority@14 {
 					reg = <0x14 0x4>;
 					type = "uint32";
 					default = <20>;
 				};
-				ok {
+				ok@18 {
 					reg = <0x18 0x4>;
 					type = "uint32";
 					default = <0>;
diff --git a/arch/arm/dts/imx6ul-webasto-ccbv2.dts b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
index 93e9445b48..198088bd44 100644
--- a/arch/arm/dts/imx6ul-webasto-ccbv2.dts
+++ b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
@@ -32,8 +32,6 @@
 	};
 
 	state_emmc: state {
-		#address-cells = <1>;
-		#size-cells = <1>;
 		compatible = "barebox,state";
 		magic = <0x290cf8c6>;
 		backend-type = "raw";
diff --git a/arch/arm/dts/imx6ul-webasto-marvel.dts b/arch/arm/dts/imx6ul-webasto-marvel.dts
index b8ecb00c8c..300cd5cf4b 100644
--- a/arch/arm/dts/imx6ul-webasto-marvel.dts
+++ b/arch/arm/dts/imx6ul-webasto-marvel.dts
@@ -38,8 +38,6 @@
 	};
 
 	state_emmc: state {
-		#address-cells = <1>;
-		#size-cells = <1>;
 		compatible = "barebox,state";
 		magic = <0x290cf8c6>;
 		backend-type = "raw";
-- 
2.30.2



