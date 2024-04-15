Delivery-date: Mon, 15 Apr 2024 07:33:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEy7-001ZHc-2E
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:33:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEy7-0003aq-4e
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:33:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V815GYLFtZ12iSEcpLUQW2zik/ImjLJfI58o0d45Luw=; b=ixKUTY4FJIprB9CXUr3aL7iM33
	gVtVeX5/e81nIv6LyWQXhiyHS/YXn5Z0PC/uDMCMWjqeXK0dp97UDF0bW/50h9kauWY7ZFTGYKQcb
	6u6yVvRSdk5unOnhQw6ejunwG6vmhWE+0xi5RmISvCKliXdV2QmBOQDvpfuiJEdzY5l2MxItDPe99
	YgCd5tx9XVNEVAeDFqVML9G6z17z3TwVAv2Gmutju0mP5Umbjuh/PRiRU8EKJ8/VHnMBzxEfb4Zd4
	j9/2FDES/9VRtc3jvqfOBwrcTdI0eQKepl8cNjbw0wWxn9FJ9EQu7rjTsEZr+CO8zlkvkFM9ryYYh
	eSWnF2Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwExg-0000000711J-0ICf;
	Mon, 15 Apr 2024 05:33:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwExc-0000000710b-2I9U
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:32:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwExb-00036d-13; Mon, 15 Apr 2024 07:32:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwExa-00CMkG-Ke; Mon, 15 Apr 2024 07:32:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwExa-001Y5a-1n;
	Mon, 15 Apr 2024 07:32:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:32:53 +0200
Message-Id: <20240415053253.369354-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223256_604884_179B76C4 
X-CRM114-Status: UNSURE (   8.64  )
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
Subject: [PATCH] ARM: dts: rk356x: describe serial reboot mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PMUGRF (Power Management Unit - General Register File) of the RK3568
has a general purpose register checked by the BootROM on power-on to
decide on whether to drop to recovery mode (rk-usb-loader/rkdeveloptool).

Describe this in the device tree, so it's possible to use, e.g.

  global.system.reboot_mode.next=serial reset

to force falling into serial (USB) boot mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rk356x.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
index 923e18e7ccda..7fd5f72a5918 100644
--- a/arch/arm/dts/rk356x.dtsi
+++ b/arch/arm/dts/rk356x.dtsi
@@ -1,6 +1,12 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/soc/rockchip,boot-mode.h>
+
 / {
+	aliases {
+		pmugrf.reboot_mode = &reboot_mode_pmugrf;
+	};
+
 	chosen {
 		barebox,bootsource-mmc0 = &sdhci;
 		barebox,bootsource-mmc1 = &sdmmc0;
@@ -31,3 +37,12 @@ rng: rng@fe388000 {
 		resets = <&cru SRST_TRNG_NS>;
 	};
 };
+
+&pmugrf {
+	reboot_mode_pmugrf: reboot-mode {
+		compatible = "syscon-reboot-mode";
+		offset = <0x200>;
+		mode-normal = <BOOT_NORMAL>;
+		mode-serial = <0xef08a53c>; /* rk-usb-loader */
+	};
+};
-- 
2.39.2



