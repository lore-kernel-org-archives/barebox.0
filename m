Delivery-date: Wed, 28 May 2025 16:40:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHx4-001Dih-1D
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:40:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHx3-0005Kk-NM
	for lore@pengutronix.de; Wed, 28 May 2025 16:40:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VRydsuKgL7qAko3jn1uCgcicwbhqUvy+le6ivcqPJKI=; b=KxAQ3z54tX/iDF5K7Jm4oYOLya
	j6BpSs49l3HZMIa+yDP3pQCGlpVSVvJoewccnVFK3gGxB6Pv1XFx1O6uZtKS7CEhWxCesbpCHiYcc
	Bj6gdkG9XW1hEj/eaZvIQiZCue61R777xZ7dJ7jI66zx6snUKUrLfW9fV7YGsZugcdO6l08weIqGg
	IwUrhlrFJILGY26krYzGceKcTgc0rm3E/zbP9k+ObWrMvXTnb+3Hy/tHD1uLFNZpbKN2OgV2TyhaD
	3S2bSmq8Oc1pUThyGkZCm1N0tunGHtd5nIJ7lGLHdhw/kU4yGBcnSymBFf8DrMA67OphrqpGsB16Y
	FT2S4m5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHwd-0000000DRT4-0O4z;
	Wed, 28 May 2025 14:39:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHrJ-0000000DPkv-1Q44
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:34:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHrI-0000Lg-0U; Wed, 28 May 2025 16:34:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHrH-000bYs-2h;
	Wed, 28 May 2025 16:34:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-001qOC-1X;
	Wed, 28 May 2025 16:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 16:30:43 +0200
Message-Id: <20250528143043.434446-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_073421_375548_752932CF 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/10] ARM: stm32mp: lxa: enable TLV support for TAC & FairyTux2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that TLV support is in place and the LXA-specific parsers have been
added, enable them in the respective board code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/lxa-fairytux2/board.c           | 8 ++++++++
 arch/arm/boards/lxa-tac/board.c                 | 8 ++++++++
 arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts | 1 +
 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi     | 1 +
 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi           | 2 ++
 arch/arm/mach-stm32mp/Kconfig                   | 2 ++
 6 files changed, 22 insertions(+)

diff --git a/arch/arm/boards/lxa-fairytux2/board.c b/arch/arm/boards/lxa-fairytux2/board.c
index 2dc625c40408..5c5a76353d32 100644
--- a/arch/arm/boards/lxa-fairytux2/board.c
+++ b/arch/arm/boards/lxa-fairytux2/board.c
@@ -7,13 +7,21 @@
 #include <bootsource.h>
 #include <deep-probe.h>
 #include <of.h>
+#include <tlv/tlv.h>
 
 static int fairytux2_probe(struct device *dev)
 {
+	struct tlv_device *tlvcpu;
+
 	barebox_set_hostname("fairytux2");
 
 	stm32mp_bbu_mmc_fip_register("mmc", "/dev/mmc1", BBU_HANDLER_FLAG_DEFAULT);
 
+	tlvcpu = tlv_ensure_probed_by_alias("baseboard-factory-data");
+	if (!IS_ERR(tlvcpu))
+		dev_info(dev, "HW release: %s\n",
+			 dev_get_param(&tlvcpu->dev, "device-hardware-release"));
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/lxa-tac/board.c b/arch/arm/boards/lxa-tac/board.c
index 96ffc46500bf..e513175c1b04 100644
--- a/arch/arm/boards/lxa-tac/board.c
+++ b/arch/arm/boards/lxa-tac/board.c
@@ -7,13 +7,21 @@
 #include <bootsource.h>
 #include <deep-probe.h>
 #include <of.h>
+#include <tlv/tlv.h>
 
 static int tac_probe(struct device *dev)
 {
+	struct tlv_device *tlvcpu;
+
 	barebox_set_hostname("lxatac");
 
 	stm32mp_bbu_mmc_fip_register("mmc", "/dev/mmc1", BBU_HANDLER_FLAG_DEFAULT);
 
+	tlvcpu = tlv_ensure_probed_by_alias("baseboard-factory-data");
+	if (!IS_ERR(tlvcpu))
+		dev_info(dev, "HW release: %s\n",
+			 dev_get_param(&tlvcpu->dev, "device-hardware-release"));
+
 	return 0;
 }
 
diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts b/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts
index 2040959965f3..fe549db3f30a 100644
--- a/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts
+++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts
@@ -19,6 +19,7 @@ partitions {
 		#size-cells = <1>;
 
 		io_board_factory_data: factory-data@0 {
+			compatible = "lxa,tlv-ioboard-v1";
 			reg = <0 0x100>;
 			label = "tlv";
 		};
diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
index 12a7c290dd0b..a5a5f6296558 100644
--- a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
+++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
@@ -96,6 +96,7 @@ partitions {
 		#size-cells = <1>;
 
 		baseboard_factory_data: factory-data@0 {
+			compatible = "lxa,tlv-baseboard-v1";
 			reg = <0 0x400>;
 			label = "tlv";
 		};
diff --git a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
index 32f42e4b04d8..3437e81cc1af 100644
--- a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
+++ b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
@@ -88,6 +88,7 @@ partitions {
 		#size-cells = <1>;
 
 		baseboard_factory_data: factory-data@0 {
+			compatible = "lxa,tlv-baseboard-v1";
 			reg = <0 0x400>;
 			label = "tlv";
 		};
@@ -101,6 +102,7 @@ partitions {
 		#size-cells = <1>;
 
 		powerboard_factory_data: factory-data@0 {
+			compatible = "lxa,tlv-powerboard-v1";
 			reg = <0 0x100>;
 			label = "tlv";
 		};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index ad6c4e202fc1..5ea0c4004f2c 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -32,10 +32,12 @@ config MACH_LXA_MC1
 config MACH_LXA_TAC
 	select ARCH_STM32MP157
 	bool "Linux Automation TAC board"
+	select BOARD_LXA
 
 config MACH_LXA_FAIRYTUX2
 	select ARCH_STM32MP157
 	bool "Linux Automation FairyTux 2"
+	select BOARD_LXA
 
 config MACH_SEEED_ODYSSEY
 	select ARCH_STM32MP157
-- 
2.39.5



