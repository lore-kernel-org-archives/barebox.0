Delivery-date: Mon, 15 Apr 2024 07:32:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwExQ-001ZFl-2t
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:32:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwExP-0002wK-Tl
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:32:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PDIsgYZwoXBak4ndF8GrEiJ7zwzT+T45Tdz7vB42TGM=; b=VmfeMSACOhwL7tlLAltuRi9k5u
	tsPc3A4P3PC7nQlQhJanVHIoXkgfMCZ5bmuCOadfsuV8VGSshGGXG/5NXUuxVLN+Jx67bLdQZaDd7
	CHFq29TgYTG8jWXxaKe0PLRftU3PbE6eWt3b+1y8pWessdfvTZ3rto9d+wZgbT7qmnlHMGqdPrBGv
	N/VCCeh/9y8+6TfQCTSmERmRkgGyY58AJ7mujaZbMqCh+MfF/KKjBqpR7lAoaar8SxdGx224yLLcI
	uMNzeI/R6la81sjM16UHCt0gvKeiSujMSolfawg1bg9yWnhB6H7/7umhDpV9nkcTjwa2L9kpigsr+
	ZQd/SgAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEx0-000000070uS-13Lb;
	Mon, 15 Apr 2024 05:32:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEww-000000070tJ-2FAA
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:32:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwv-0002T6-A7; Mon, 15 Apr 2024 07:32:13 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwu-00CMkA-Tt; Mon, 15 Apr 2024 07:32:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwu-001XwJ-2i;
	Mon, 15 Apr 2024 07:32:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:32:12 +0200
Message-Id: <20240415053212.368779-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223214_751263_D148E6BE 
X-CRM114-Status: UNSURE (   8.90  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: rockchip: drop unreferenced rockchip-pinconf.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This file is no longer used in barebox and existing drivers instead use
the upstream variant. Therefore drop our unreferenced and possibly stale
copy.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rockchip-pinconf.dtsi | 344 -----------------------------
 1 file changed, 344 deletions(-)
 delete mode 100644 arch/arm/dts/rockchip-pinconf.dtsi

diff --git a/arch/arm/dts/rockchip-pinconf.dtsi b/arch/arm/dts/rockchip-pinconf.dtsi
deleted file mode 100644
index 5c645437b507..000000000000
--- a/arch/arm/dts/rockchip-pinconf.dtsi
+++ /dev/null
@@ -1,344 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
- */
-
-&pinctrl {
-	/omit-if-no-ref/
-	pcfg_pull_up: pcfg-pull-up {
-		bias-pull-up;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down: pcfg-pull-down {
-		bias-pull-down;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none: pcfg-pull-none {
-		bias-disable;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_0: pcfg-pull-none-drv-level-0 {
-		bias-disable;
-		drive-strength = <0>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_1: pcfg-pull-none-drv-level-1 {
-		bias-disable;
-		drive-strength = <1>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_2: pcfg-pull-none-drv-level-2 {
-		bias-disable;
-		drive-strength = <2>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_3: pcfg-pull-none-drv-level-3 {
-		bias-disable;
-		drive-strength = <3>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_4: pcfg-pull-none-drv-level-4 {
-		bias-disable;
-		drive-strength = <4>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_5: pcfg-pull-none-drv-level-5 {
-		bias-disable;
-		drive-strength = <5>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_6: pcfg-pull-none-drv-level-6 {
-		bias-disable;
-		drive-strength = <6>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_7: pcfg-pull-none-drv-level-7 {
-		bias-disable;
-		drive-strength = <7>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_8: pcfg-pull-none-drv-level-8 {
-		bias-disable;
-		drive-strength = <8>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_9: pcfg-pull-none-drv-level-9 {
-		bias-disable;
-		drive-strength = <9>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_10: pcfg-pull-none-drv-level-10 {
-		bias-disable;
-		drive-strength = <10>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_11: pcfg-pull-none-drv-level-11 {
-		bias-disable;
-		drive-strength = <11>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_12: pcfg-pull-none-drv-level-12 {
-		bias-disable;
-		drive-strength = <12>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_13: pcfg-pull-none-drv-level-13 {
-		bias-disable;
-		drive-strength = <13>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_14: pcfg-pull-none-drv-level-14 {
-		bias-disable;
-		drive-strength = <14>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_15: pcfg-pull-none-drv-level-15 {
-		bias-disable;
-		drive-strength = <15>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_0: pcfg-pull-up-drv-level-0 {
-		bias-pull-up;
-		drive-strength = <0>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_1: pcfg-pull-up-drv-level-1 {
-		bias-pull-up;
-		drive-strength = <1>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_2: pcfg-pull-up-drv-level-2 {
-		bias-pull-up;
-		drive-strength = <2>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_3: pcfg-pull-up-drv-level-3 {
-		bias-pull-up;
-		drive-strength = <3>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_4: pcfg-pull-up-drv-level-4 {
-		bias-pull-up;
-		drive-strength = <4>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_5: pcfg-pull-up-drv-level-5 {
-		bias-pull-up;
-		drive-strength = <5>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_6: pcfg-pull-up-drv-level-6 {
-		bias-pull-up;
-		drive-strength = <6>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_7: pcfg-pull-up-drv-level-7 {
-		bias-pull-up;
-		drive-strength = <7>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_8: pcfg-pull-up-drv-level-8 {
-		bias-pull-up;
-		drive-strength = <8>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_9: pcfg-pull-up-drv-level-9 {
-		bias-pull-up;
-		drive-strength = <9>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_10: pcfg-pull-up-drv-level-10 {
-		bias-pull-up;
-		drive-strength = <10>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_11: pcfg-pull-up-drv-level-11 {
-		bias-pull-up;
-		drive-strength = <11>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_12: pcfg-pull-up-drv-level-12 {
-		bias-pull-up;
-		drive-strength = <12>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_13: pcfg-pull-up-drv-level-13 {
-		bias-pull-up;
-		drive-strength = <13>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_14: pcfg-pull-up-drv-level-14 {
-		bias-pull-up;
-		drive-strength = <14>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_drv_level_15: pcfg-pull-up-drv-level-15 {
-		bias-pull-up;
-		drive-strength = <15>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_0: pcfg-pull-down-drv-level-0 {
-		bias-pull-down;
-		drive-strength = <0>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_1: pcfg-pull-down-drv-level-1 {
-		bias-pull-down;
-		drive-strength = <1>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_2: pcfg-pull-down-drv-level-2 {
-		bias-pull-down;
-		drive-strength = <2>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_3: pcfg-pull-down-drv-level-3 {
-		bias-pull-down;
-		drive-strength = <3>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_4: pcfg-pull-down-drv-level-4 {
-		bias-pull-down;
-		drive-strength = <4>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_5: pcfg-pull-down-drv-level-5 {
-		bias-pull-down;
-		drive-strength = <5>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_6: pcfg-pull-down-drv-level-6 {
-		bias-pull-down;
-		drive-strength = <6>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_7: pcfg-pull-down-drv-level-7 {
-		bias-pull-down;
-		drive-strength = <7>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_8: pcfg-pull-down-drv-level-8 {
-		bias-pull-down;
-		drive-strength = <8>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_9: pcfg-pull-down-drv-level-9 {
-		bias-pull-down;
-		drive-strength = <9>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_10: pcfg-pull-down-drv-level-10 {
-		bias-pull-down;
-		drive-strength = <10>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_11: pcfg-pull-down-drv-level-11 {
-		bias-pull-down;
-		drive-strength = <11>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_12: pcfg-pull-down-drv-level-12 {
-		bias-pull-down;
-		drive-strength = <12>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_13: pcfg-pull-down-drv-level-13 {
-		bias-pull-down;
-		drive-strength = <13>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_14: pcfg-pull-down-drv-level-14 {
-		bias-pull-down;
-		drive-strength = <14>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_drv_level_15: pcfg-pull-down-drv-level-15 {
-		bias-pull-down;
-		drive-strength = <15>;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_up_smt: pcfg-pull-up-smt {
-		bias-pull-up;
-		input-schmitt-enable;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_down_smt: pcfg-pull-down-smt {
-		bias-pull-down;
-		input-schmitt-enable;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_smt: pcfg-pull-none-smt {
-		bias-disable;
-		input-schmitt-enable;
-	};
-
-	/omit-if-no-ref/
-	pcfg_pull_none_drv_level_0_smt: pcfg-pull-none-drv-level-0-smt {
-		bias-disable;
-		drive-strength = <0>;
-		input-schmitt-enable;
-	};
-
-	/omit-if-no-ref/
-	pcfg_output_high: pcfg-output-high {
-		output-high;
-	};
-
-	/omit-if-no-ref/
-	pcfg_output_low: pcfg-output-low {
-		output-low;
-	};
-};
-- 
2.39.2



