Delivery-date: Thu, 04 Apr 2024 12:27:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsKJV-009OLZ-1M
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 12:27:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsKJU-0001o8-Qb
	for lore@pengutronix.de; Thu, 04 Apr 2024 12:27:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rmvkpFbMCUW6euBNONI+P1lMDfIIkybJ0vChZNBtrx4=; b=wDE4kifrQu9aosC3dG3fXD5OGZ
	64YqxoWdhjcauZTc+ttGKXgmm62z2DIJTiYu7bHVxsTm8nAD7JoPO1gV9o9QcqJmpMf2TK+YLlc9G
	IVMiHDzB8m29BtcUxZgbMtCgZGavi2vHiPWxAsHuh22rNRc81GUrT1LeIB4MykiAF3b/LGmZxbEWJ
	P3tn4v2k30JntW8/6AfIh14sCYLkjk03SRYHVe/fDIXUSRCvaxcaeB4YIXF4phG7qQ0VOnCTzjv7r
	SUmI57yIqUr3v7BFflaUQy4EazirBfXylhSdjjiEGVXUKVVqzWrnZz90MQlNVbXS+xsc8mIIZmnjI
	PRUpScMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsKIn-00000002Ahz-2ocw;
	Thu, 04 Apr 2024 10:26:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsKIj-00000002AgO-1uUI
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 10:26:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsKIh-0000zi-12; Thu, 04 Apr 2024 12:26:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsKIg-00ALlw-L6; Thu, 04 Apr 2024 12:26:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsKIg-004EV3-1n;
	Thu, 04 Apr 2024 12:26:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 12:26:23 +0200
Message-Id: <20240404102623.1008974-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404102623.1008974-1-a.fatoum@pengutronix.de>
References: <20240404102623.1008974-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_032633_671621_CC4CE91B 
X-CRM114-Status: GOOD (  13.89  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: stm32mp: lxa-mc1: add state description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MC-1 can boot from either SD or eMMC. Detect this at runtime and
select the state that's stored on the boot medium.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/lxa-mc1/board.c      | 13 +++++++++++--
 arch/arm/dts/stm32mp157c-lxa-mc1.dts | 14 ++++++++++++++
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
index b377d4323ecc..8be265b0fca0 100644
--- a/arch/arm/boards/lxa-mc1/board.c
+++ b/arch/arm/boards/lxa-mc1/board.c
@@ -31,6 +31,7 @@ static int of_fixup_regulator_supply_disable(struct device_node *root, void *pat
 
 static int mc1_probe(struct device *dev)
 {
+	struct device_node *state_node, *state_backend;
 	int flags;
 
 	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
@@ -40,10 +41,18 @@ static int mc1_probe(struct device *dev)
 	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl", flags);
 
 
-	if (bootsource_get_instance() == 0)
+	if (bootsource_get_instance() == 0) {
 		of_device_enable_path("/chosen/environment-sd");
-	else
+		state_backend = of_find_node_by_alias(NULL, "mmc0");
+	} else {
 		of_device_enable_path("/chosen/environment-emmc");
+		state_backend = of_find_node_by_alias(NULL, "mmc1");
+	}
+
+	state_node = of_find_node_by_alias(NULL, "state");
+	if (state_node)
+		of_property_write_u32(state_node, "backend",
+				      of_node_create_phandle(state_backend));
 
 	barebox_set_hostname("lxa-mc1");
 
diff --git a/arch/arm/dts/stm32mp157c-lxa-mc1.dts b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
index 1220a77c1bb0..29852ee9aae0 100644
--- a/arch/arm/dts/stm32mp157c-lxa-mc1.dts
+++ b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
@@ -7,6 +7,10 @@
 #include "stm32mp151.dtsi"
 
 / {
+	aliases {
+		state = &state;
+	};
+
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
@@ -21,6 +25,16 @@ environment-emmc {
 		};
 	};
 
+	state: state {
+		compatible = "barebox,state";
+		magic = <0x778ec0f4>;
+		/* backend is fixed up by board code */
+		backend-type = "raw";
+		backend-storage-type = "direct";
+		backend-stridesize = <0x40>;
+
+		#include "bootstate.dtsi"
+	};
 };
 
 &panel {
-- 
2.39.2



