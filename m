Delivery-date: Mon, 27 Nov 2023 07:41:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJZ-00AeD4-38
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:41:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJa-0008I0-0h
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:41:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y6PPA0pnnFgsh5Ib7fetDvOa0v2Dcf5ZlyyzCzs/fS4=; b=oSfIvAbyWScF3aKSyHkuzWF1F8
	oMuGnn0Dj0jLFuebtZDhufNnCzyiUo/LcXDOwMylFNNjwxj8NoACLao+36Iw0lKYKGGDifZiPEwm+
	5RaWv8U9O2noS0e3I/a52IctnQ/HpAANmzG98LcKwDVxE8VRB46NeWbyhfLgvWy8Tn0uQMuQWhsOM
	vLpjUiijJqw9LVAJlF8K5qAGl6DUVE9qacmLI5tBSeFmgrkNAxfTb3VBuQP/5QITvpppdLOcgbI61
	FMS39A75D++EKPMy9cB8ucpWAj5L5HMRvOlP3xxdp6/ayz3ewXrmYBafhkDezJsu7o3YcDKm7ANi+
	Kj6Wqcyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIP-001aA8-1n;
	Mon, 27 Nov 2023 06:40:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIL-001a7k-0w
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:40:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIK-0007xq-5f; Mon, 27 Nov 2023 07:40:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-00Bshh-Ob; Mon, 27 Nov 2023 07:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-009G6Z-2B;
	Mon, 27 Nov 2023 07:40:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:40:33 +0100
Message-Id: <20231127064034.2206788-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
References: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224037_428495_52D250C0 
X-CRM114-Status: GOOD (  12.29  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/6] ARM: dts: stm32mp: add dtsi for SMC SiP-based SCMI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upstream device trees use OP-TEE shared memory for SCMI, but upstream
OP-TEE also supports a compatibility mode to service SCMI over the
a sillicon provider secure monitor call, like what TF-A implements.

This can be enabled via including the device tree added here
and configuring OP-TEE appropriately:

  CFG_STM32MP1_SCMI_SIP=y
  CFG_STM32MP1_SCMI_SHM_SYSRAM=y

or just compiling TF-A with `AARCH32_SP=sp_min`.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp1-scmi-smc.dtsi | 49 +++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 arch/arm/dts/stm32mp1-scmi-smc.dtsi

diff --git a/arch/arm/dts/stm32mp1-scmi-smc.dtsi b/arch/arm/dts/stm32mp1-scmi-smc.dtsi
new file mode 100644
index 000000000000..590df657e907
--- /dev/null
+++ b/arch/arm/dts/stm32mp1-scmi-smc.dtsi
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause) */
+
+/ {
+	firmware {
+		scmi: scmi {
+			compatible = "arm,scmi-smc";
+			shmem = <&scmi0_shm>;
+			arm,smc-id = <0x82002000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			scmi_clk: protocol@14 {
+				reg = <0x14>;
+				#clock-cells = <1>;
+			};
+
+			scmi_reset: protocol@16 {
+				reg = <0x16>;
+				#reset-cells = <1>;
+			};
+		};
+	};
+
+	soc {
+		sram@2ffff000 {
+			compatible = "mmio-sram";
+			reg = <0x2ffff000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x2ffff000 0x1000>;
+
+			scmi0_shm: scmi_shm@0 {
+				compatible = "arm,scmi-shmem";
+				reg = <0 0x80>;
+			};
+
+			scmi1_shm: scmi_shm@200 {
+				compatible = "arm,scmi-shmem";
+				reg = <0x200 0x80>;
+			};
+		};
+	};
+};
+
+/delete-node/ &clk_hse;
+/delete-node/ &clk_hsi;
+/delete-node/ &clk_lse;
+/delete-node/ &clk_lsi;
+/delete-node/ &clk_csi;
-- 
2.39.2



