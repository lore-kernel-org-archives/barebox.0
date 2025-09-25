Delivery-date: Thu, 25 Sep 2025 14:00:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke6-000vt4-21
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke5-0005Fm-AQ
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C8Klxfy56pkGS8LB+bVNnO+6JAdAIINx+hwochVyxtM=; b=mlWMw55J1ryUecS2smIa7o9Z9w
	OKjO9UzUOOLL4QzZGZoonA/h/cIsBIZXZToSqQLrYRzNsArB1mfQB5FNtg4M3s1r3DR6AqiS2kZHw
	yhNDB32i0ZyOlKpJLCfq2JDiszz5Wp6C5klrgmnvefEzTXIK1JgN6V1FQZ0n7YGTOtYE7qz54jb8V
	Ls64688wf3yd7u5c3PV8KRLya7/ySLkd7082WlhQC4ChU3G+1mlnICjcJAKCjVDtZ4LWlW6YH4/vk
	7wl93cflwDw3OWrdOohMWzfegHMfbtOpr6jk4xfoKPkDS65mPENmo8fSNNY50xBfKP5x5zLGuOevI
	4qx98Q4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdO-00000008k1i-0Fme;
	Thu, 25 Sep 2025 11:59:38 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdH-00000008jqg-00kt
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:35 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEl1016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-10-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=3442;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=PD6MRrweWUM9yC0aE+BX+Stf79eHlYWVOpDr7AcUeRk=;
 b=TfjhGlwQPEToZIKK9oqzSZwkE19G9C3fwKL0S0bX/hP95KDpjq3+XlPTYgi2oywERUgReZXa+
 H+GgxKhLYa5Dpee/mC9SnzwJXRH/gFptVWElUmbZ0QSpnr57Z917u5V
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045931_320846_482FCBC5 
X-CRM114-Status: GOOD (  14.50  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/10] boards: enclustra-sa2: read S/N from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Read the SoM serial number from the EEPROM and set it in the
Barebox environment. The serial number can be checked:
- in Barebox, printenv global.serial_number
- in Linux, cat /proc/device-tree/serial-number

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/boards/enclustra-sa2/board.c          | 38 ++++++++++++++++++++++++++
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 12 ++++++++
 2 files changed, 50 insertions(+)

diff --git a/arch/arm/boards/enclustra-sa2/board.c b/arch/arm/boards/enclustra-sa2/board.c
index d2e539cbf9460adddc158885473f4ef0004dc284..03539132654716460cedc2a6edcaf13935dea22c 100644
--- a/arch/arm/boards/enclustra-sa2/board.c
+++ b/arch/arm/boards/enclustra-sa2/board.c
@@ -19,6 +19,7 @@
 /** Enclustra's MAC address vendor prefix is 20:B0:F7 */
 #define ENCLUSTRA_PREFIX            (0x20b0f7)
 #define MAC_ADDR_NUM_BYTES          (6)
+#define SERIAL_NUMBER_NUM_BYTES     (4)
 
 /*
  * Ethernet PHY: Microchip/Micrel KSZ9031RNX
@@ -89,6 +90,42 @@ static void set_mac_addr(void)
 	eth_register_ethaddr(1, enclustra_ethaddr_fallback2);
 }
 
+/*
+ * Read the SoM serial number via the atsha204a driver.
+ */
+static void set_ser_num(void)
+{
+	u8 *data = NULL;
+	uint32_t ser_num = 0;
+	char ser_num_str[12];
+	static const char * const aliases[] = { "som-sernum" };
+	struct device_node *np, *root;
+
+	root = of_get_root_node();
+
+	for (int i = 0; i < ARRAY_SIZE(aliases); i++) {
+		const char *alias = aliases[i];
+
+		np = of_find_node_by_alias(root, alias);
+		if (!np) {
+			pr_warn("%s() >> ERROR: can't find alias %s\n", __func__, alias);
+			continue;
+		}
+		data = nvmem_cell_get_and_read(np, "serial-number",
+									   SERIAL_NUMBER_NUM_BYTES);
+		if (IS_ERR(data)) {
+			pr_warn("%s() >> ERROR: can't read NVMEM cell\n", __func__);
+			data = NULL;
+		}
+	}
+	if (!data)
+		return;
+
+	ser_num = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
+	sprintf(ser_num_str, "%d", ser_num);
+	barebox_set_serial_number(ser_num_str);
+}
+
 static int socfpga_init(void)
 {
 	if (!of_machine_is_compatible("enclustra,mercury-sa2"))
@@ -99,6 +136,7 @@ static int socfpga_init(void)
 								   phy_fixup);
 
 	set_mac_addr();
+	set_ser_num();
 
 #ifdef CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2_SI5338
 	/* configure clock generator on the Enclustra ST1 baseboard: */
diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
index 78ba8008af5d60f10d6a64b0f05e97bf2381079c..ade6f4f6df3a329ee404b2b7a70fcd00c8815fdd 100644
--- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
@@ -24,6 +24,7 @@ chosen {
 
 	aliases {
 		ethernet0 = &gmac1;
+		som-sernum = "/serial-number";
 	};
 
 	/* Adjusted the i2c labels to use generic base-board dtsi files for
@@ -46,6 +47,11 @@ memory {
 		device_type = "memory";
 		reg = <0x0 0x80000000>; /* 2GB */
 	};
+
+	serial-number {
+		nvmem-cells = <&ser_num>;
+		nvmem-cell-names = "serial-number";
+	};
 };
 
 &osc1 {
@@ -82,6 +88,12 @@ nvmem-layout {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
+			ser_num: serial-number@0 {
+				reg = <0x00 0x4>;
+				nvmem-cell-cells = <1>;
+				nvmem-cell-names = "serial-number";
+			};
+
 			mac_address_0: mac@10 {
 				compatible = "mac-base";
 				reg = <0x10 0x6>;

-- 
2.43.0



