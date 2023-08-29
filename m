Delivery-date: Tue, 29 Aug 2023 14:45:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qay60-00DKdy-Lx
	for lore@lore.pengutronix.de; Tue, 29 Aug 2023 14:45:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qay5y-0004mP-Bs
	for lore@pengutronix.de; Tue, 29 Aug 2023 14:45:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hM9sNuGvY8f5CzVh5ChMvTq7L6EndPR4YrpOsYbrr9w=; b=ulu5QnciJ5a7E4CBbNr6agBSI7
	ib+/EQB2DyHefMiaZeLhrGSuwHVCtzLPpooPyxIiH65IMygG0DfJRl9wjujA8aqOwnq3rZPU1Fx1t
	6K60CmrwXE1/5C4izkPIK+G41C5M25FxcHW94vApjuTJD7UWgNhT70yGhLxfMEbycEd7rTBWaOa/M
	MOdQDOoOcOgJ0bxnjqeNzvd8Q56NU3kTEV8w++S8nrVYgLV5HjtnLsXbCUzBPYBOMO3ioEgP8xqZH
	5fdfY53X3W5vyY0oYTdjjhLU++v/wwXPlSL4L6fAd5J1BsPr/6ysSnezwkWL/Keu/3GoSlx86l5pN
	iJxrfGJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qay4i-00BWV9-2U;
	Tue, 29 Aug 2023 12:44:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qay4f-00BWT9-09
	for barebox@lists.infradead.org;
	Tue, 29 Aug 2023 12:44:02 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qay4b-0004QT-V5
	for barebox@lists.infradead.org; Tue, 29 Aug 2023 14:43:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 29 Aug 2023 14:43:55 +0200
Message-Id: <20230829124356.4178308-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829124356.4178308-1-m.felsch@pengutronix.de>
References: <20230829124356.4178308-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_054401_083717_F9AE67FD 
X-CRM114-Status: GOOD (  18.25  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM: boards: polyhex-debix: add support to read MAC addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For the Debix SoM/Baseboard combination the MAC addresses are stored on
a baseboard EEPROM in ASCII format. This commit adds the support to read
the MAC addresses from the EEPROM and set it accordingly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/polyhex-debix/board.c | 66 ++++++++++++++++++++++++++-
 1 file changed, 65 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/polyhex-debix/board.c b/arch/arm/boards/polyhex-debix/board.c
index f81666ce0c93..ea4fc26a0ceb 100644
--- a/arch/arm/boards/polyhex-debix/board.c
+++ b/arch/arm/boards/polyhex-debix/board.c
@@ -6,11 +6,67 @@
 #include <envfs.h>
 #include <init.h>
 #include <io.h>
+#include <linux/nvmem-consumer.h>
 #include <mach/imx/bbu.h>
 #include <mach/imx/iomux-mx8mp.h>
+#include <net.h>
+
+struct debix_polyhex_machine_data {
+	void (*ethernet_setup)(void);
+};
+
+#define ETH_ALEN_ASCII	12
+
+static int polyhex_debix_eth_register_ethaddr(struct device_node *np)
+{
+	u8 mac[ETH_ALEN];
+	u8 *data;
+	int ret;
+
+	data = nvmem_cell_get_and_read(np, "mac-address", ETH_ALEN_ASCII);
+	if (IS_ERR(data))
+		return PTR_ERR(data);
+
+	ret = hex2bin(mac, data, ETH_ALEN);
+	if (ret)
+		goto err;
+
+	of_eth_register_ethaddr(np, mac);
+err:
+	free(data);
+
+	return ret;
+}
+
+static void polyhex_debix_ethernet_init(void)
+{
+	static const char * const aliases[] = { "ethernet0", "ethernet1" };
+	struct device_node *np, *root;
+	unsigned int i;
+
+	root = of_get_root_node();
+
+	for (i = 0; i < ARRAY_SIZE(aliases); i++) {
+		const char *alias = aliases[i];
+		int ret;
+
+		np = of_find_node_by_alias(root, alias);
+		if (!np) {
+			pr_warn("Failed to find %s\n", alias);
+			continue;
+		}
+
+		ret = polyhex_debix_eth_register_ethaddr(np);
+		if (ret) {
+			pr_warn("Failed to register MAC for %s\n", alias);
+			continue;
+		}
+	}
+}
 
 static int polyhex_debix_probe(struct device *dev)
 {
+	const struct debix_polyhex_machine_data *machine_data;
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
 	u32 val;
@@ -32,12 +88,20 @@ static int polyhex_debix_probe(struct device *dev)
 	       MX8MP_IOMUXC_GPR1_ENET_QOS_RGMII_EN;
 	writel(val, MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
 
+	machine_data = device_get_match_data(dev);
+	if (machine_data && machine_data->ethernet_setup)
+		machine_data->ethernet_setup();
+
 	return 0;
 }
 
+static const struct debix_polyhex_machine_data debix_som_a_bmb_08 = {
+	.ethernet_setup = polyhex_debix_ethernet_init,
+};
+
 static const struct of_device_id polyhex_debix_of_match[] = {
 	{ .compatible = "polyhex,imx8mp-debix" },
-	{ .compatible = "polyhex,imx8mp-debix-som-a-bmb-08" },
+	{ .compatible = "polyhex,imx8mp-debix-som-a-bmb-08", .data = &debix_som_a_bmb_08 },
 	{ /* Sentinel */ }
 };
 BAREBOX_DEEP_PROBE_ENABLE(polyhex_debix_of_match);
-- 
2.39.2



