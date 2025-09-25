Delivery-date: Thu, 25 Sep 2025 14:00:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1keA-000vul-1n
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke8-0005I8-8z
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ZE7CipaPwJi8Yf1zZg/zjJijhbMiLUUSOkPrRabGYw=; b=4Sa0FXxmDW3ypaNKFJCVFluUxg
	JVKDo3w8kLlLQrbrP/EceQlugF6WPoRM/rueCB8FZoF7/OHrmvgi7DrG5/+Jb4JUS9uXQrAWI7mVc
	MgGxho4S26NGbS3wFxVSOd6sxxGPqN1rCgNFHqGkECNNTbCTNGXBTIVRpuneFA1iIEC7sGJleMfyt
	ecMqmX+Ivksp9dFbkbFxk5bSxwgbembVdozUnOQbkzS9Vc3EKAU0ACeidAf3l+t6uEszkWo3k2Ms5
	7c8iYzipK6EF7UmNUh+QVJl7ZBH7mN3ejD33kSV1bYx2RS0qgHMMREkqqulym+e5VO2QUQ9pVHW3s
	DZFlKzxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdL-00000008jyL-2iKo;
	Thu, 25 Sep 2025 11:59:35 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdG-00000008jqh-1HZ9
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:34 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEku016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-5-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=4508;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=vc/mSwNI8eP4Sql5cy5Cnr0viNl2nfydY2ZnAUp49T8=;
 b=3KA9mEw1ZU4lcnRfyKHuWawCQaYX/FIR6Nq8a4NICUtZKvi577bWGXUqMxlF3+qbtKPX9U4v0
 4MvMy0gpiplDR79CbSeWfxsCmOR6J4iLFEI72Dh9q5weCMZPZtyo0li
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045930_643964_94138874 
X-CRM114-Status: GOOD (  17.23  )
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
Subject: [PATCH v2 05/10] boards: enclustra-sa2: read MAC address from
 EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>

---
v1 --> v2:
  - Use the atsha204a driver to read the MAC address instead of
    board-specific code.
---
---
 arch/arm/boards/enclustra-sa2/board.c          | 74 +++++++++++++++++++++++++-
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 16 +++++-
 2 files changed, 87 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/enclustra-sa2/board.c b/arch/arm/boards/enclustra-sa2/board.c
index d3117e9a1058738ea541f45b28c6a95184331554..4c2b44252d84c78ed8de5754051d0bf194ce8d02 100644
--- a/arch/arm/boards/enclustra-sa2/board.c
+++ b/arch/arm/boards/enclustra-sa2/board.c
@@ -12,6 +12,12 @@
 #include <fcntl.h>
 #include <fs.h>
 #include <mach/socfpga/cyclone5-regs.h>
+#include <net.h>
+#include <linux/nvmem-consumer.h>
+
+/** Enclustra's MAC address vendor prefix is 20:B0:F7 */
+#define ENCLUSTRA_PREFIX            (0x20b0f7)
+#define MAC_ADDR_NUM_BYTES          (6)
 
 /*
  * Ethernet PHY: Microchip/Micrel KSZ9031RNX
@@ -21,14 +27,78 @@ static int phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
+/*
+ * Read the MAC address via the atsha204a driver.
+ *
+ * Set two consecutive MAC addresses, as specified by the manufacturer.
+ */
+static void set_mac_addr(void)
+{
+	uint8_t hwaddr[MAC_ADDR_NUM_BYTES] = { 0, 0, 0, 0, 0, 0 };
+	uint32_t hwaddr_prefix;
+	u8 *data = NULL;
+	static const char * const aliases[] = { "ethernet0" };
+	struct device_node *np, *root;
+	/* Fallback MAC addresses, used if we can't read from EEPROM: */
+	const uint8_t enclustra_ethaddr_fallback1[] = { 0x20, 0xB0, 0xF7, 0x01,
+													0x02, 0x03 };
+	const uint8_t enclustra_ethaddr_fallback2[] = { 0x20, 0xB0, 0xF7, 0x01,
+													0x02, 0x04 };
+
+	root = of_get_root_node();
+
+	for (int i = 0; i < ARRAY_SIZE(aliases); i++) {
+		const char *alias = aliases[i];
+		np = of_find_node_by_alias(root, alias);
+		if (!np) {
+			pr_warn("%s() >> ERROR: can't find alias %s\n", __func__, alias);
+			continue;
+		}
+		data = nvmem_cell_get_and_read(np, "mac-address", MAC_ADDR_NUM_BYTES);
+		if (IS_ERR(data)) {
+			pr_warn("%s() >> ERROR: can't read NVMEM cell\n", __func__);
+			data = NULL;
+		}
+	}
+	if (!data)
+		goto fallback_addr;
+
+	memcpy(hwaddr, data, MAC_ADDR_NUM_BYTES);
+
+	debug("MAC address: %02x:%02x:%02x:%02x:%02x:%02x\n",
+		  hwaddr[0], hwaddr[1], hwaddr[2],
+		  hwaddr[3], hwaddr[4], hwaddr[5]);
+
+	/* check vendor prefix and set the environment variable */
+	hwaddr_prefix = (hwaddr[0] << 16) | (hwaddr[1] << 8) | (hwaddr[2]);
+	if (hwaddr_prefix == ENCLUSTRA_PREFIX) {
+		eth_register_ethaddr(0, hwaddr);
+		hwaddr[5]++;    /* calculate 2nd, consecutive MAC address */
+		eth_register_ethaddr(1, hwaddr);
+	} else {
+		printf("%s() >> ERROR: invalid MAC address vendor prefix,"
+			   "using fallback addresses\n", __func__);
+		goto fallback_addr;
+	}
+
+	return;
+
+fallback_addr:
+	eth_register_ethaddr(0, enclustra_ethaddr_fallback1);
+	eth_register_ethaddr(1, enclustra_ethaddr_fallback2);
+}
+
 static int socfpga_init(void)
 {
 	if (!of_machine_is_compatible("enclustra,mercury-sa2"))
 		return 0;
 
 	if (IS_ENABLED(CONFIG_PHYLIB))
-		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK, phy_fixup);
+		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
+								   phy_fixup);
+
+	set_mac_addr();
 
 	return 0;
 }
-console_initcall(socfpga_init);
+late_initcall(socfpga_init);
diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
index fa80b7c63d28d17a24d63ac3ee87531ad320ddb1..55d54d289c81fa4a6d46123bcb93c5fc483485e4 100644
--- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
@@ -76,6 +76,19 @@ atsha204a: atsha204a@64 {
 		status = "okay";
 		compatible = "atmel,atsha204a";
 		reg = <0x64>;
+
+		nvmem-layout {
+		compatible = "fixed-layout";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+			mac_address_0: mac@10 {
+				compatible = "mac-base";
+				reg = <0x10 0x6>;
+				nvmem-cell-cells = <1>;
+				nvmem-cell-names = "mac-address";
+			};
+		};
 	};
 };
 
@@ -129,9 +142,10 @@ &gpio1 {
 
 &gmac1 {
 	status = "okay";
-	/delete-property/ mac-address;
 	phy-mode = "rgmii";
 	phy-handle = <&phy3>;
+	nvmem-cells = <&mac_address_0>;
+	nvmem-cell-names = "mac-address";
 
 	mdio0 {
 		#address-cells = <1>;

-- 
2.43.0



