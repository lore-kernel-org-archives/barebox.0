Delivery-date: Wed, 04 Mar 2026 12:01:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyo-007xPV-2G
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyn-0005oq-MX
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VAyJrmNQyj5SpU+38+3DexTcUUJWKIf6R1DGWBV3K0=; b=dYAqu+8KUOuYtx
	ewR0X7qIhs4BNNnyZ77pVZWbAJJEJY19DCc9JKYiixRXILe9Cne9ZB8/l/B4J7nsM5gtsXEOb/lmB
	3AcQX8KfXUr93AZ5gcK4/HL+gAeJwoqZ70LtkJDre7U5VmnnytQdGZrYpddRfB2c9tyw1lMVUXtgQ
	uO0SYaqNMf/dbfO1y4PvzbCGMBRVNLJroROb0X3OQunii+OvtKHWiYJFan1t1s7bJcNJPTRd2CyGy
	A3UmMjkzyqVkoSZ5FYaCVNZ3E69jfjXGtKVD17RzsOnlz5+mijiSPtBBevbXgRorNsyZNSCZI/4yM
	L0xVQOUY9kfu++TaZYGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyI-0000000H21e-2mqq;
	Wed, 04 Mar 2026 11:00:54 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyG-0000000H202-0Zv8
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=/VAyJrmNQyj5SpU+38+3DexTcUUJWKIf6R1DGWBV3K0=;
	b=R7WpRZqEevJX6JMDWN9blrJvM5dBwuev6CWixXmdEYYPSxVbVRgNl/bGpWKiycnVkQN5WmG4dNvhN
	 2L3qNAoPgnmSlvUx8+ds+NN4r/TusbGeKJabw6yRaXpYBFlhPvbPx2gjrfrdUEHgdCCoocUm6sE3qV
	 ivBBjG820u7S2KgnUn+qg0FCja0zfbAOdPXtOrKHxSTRuNw1WdBJiV7xyctIBcrdjKfy7tIcZoHcDP
	 j9czoe7cMxyy7ZkJtUORUPo11YhyWz0Nm2q9NYqGZ+8AAP/GCdw6iYh07ln6E+gCE5hbNdbQh0okcq
	 jNne3mnz07x3tCOvT3FoMV6knfQZ+cg==
X-MSG-ID: 65ae3056-17b9-11f1-b532-0050568164d1
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:13 +0100
Message-ID: <20260304110013.495725-10-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030052_311058_E5D9C660 
X-CRM114-Status: GOOD (  16.99  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] ARM: boards: protonic-rk356x: Read board serial and MAC address from eMMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Protonic stores the MAC address and serial at the start of the reserved
space gpt partition (see Rockchip doc for partition details).

If a board has multiple ethernet macs the mac addresses are successive.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 75 +++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index 486c77e441..bbf273e44f 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -13,6 +13,8 @@
 #include <of_device.h>
 #include <aiodev.h>
 #include <globalvar.h>
+#include <net.h>
+#include <barebox-info.h>
 
 struct prt_rk356x_adc_chs {
 	int usb_boot;
@@ -24,6 +26,7 @@ struct prt_rk356x_model {
 	const char *name;
 	const char *shortname;
 	const struct prt_rk356x_adc_chs adc_channels;
+	const int mac_cnt;
 	int (*init)(void);
 };
 
@@ -97,6 +100,76 @@ static void prt_rk356x_process_adc(struct device *dev,
 	pr_info("Board id: %d, revision %d\n", prt_priv.hw_id, prt_priv.hw_rev);
 }
 
+static int prt_rk356x_inc_mac(u8 *mac)
+{
+	mac[5]++;
+	if (mac[5])
+		return 0;
+	mac[4]++;
+	if (mac[4])
+		return 0;
+	mac[3]++;
+	if (mac[3])
+		return 0;
+	pr_err("MAC address overflow!!\n");
+	return -EINVAL;
+}
+
+#define RK_GPT_RESERVED_SPACE (7680 * 512)
+
+static void prt_rk356x_board_info(void)
+{
+	struct cdev *cdev;
+	ssize_t size;
+	u8 buf[11];
+	int i;
+
+	cdev = cdev_by_name("mmc0");
+	if (!cdev) {
+		pr_warn("No eMMC device\n");
+		return;
+	}
+
+	/* Read and check TAG */
+	size = cdev_read(cdev, buf, 4, RK_GPT_RESERVED_SPACE, 0);
+	if (size != 4) {
+		pr_warn("Unable to read board data from eMMC\n");
+		return;
+	}
+	if (strncmp(buf, "PRTm", 4)) {
+		pr_warn("Board has no serial number and no MAC address\n");
+		return;
+	}
+
+	/* Read MAC at offset 4 */
+	if (prt_priv.model->mac_cnt > 0) {
+		size = cdev_read(cdev, buf, 6, RK_GPT_RESERVED_SPACE + 4, 0);
+		if (size != 6) {
+			pr_warn("Unable to read MAC address from eMMC\n");
+			return;
+		}
+		if (is_valid_ether_addr(buf)) {
+			eth_register_ethaddr(0, buf);
+			for (i = 1; i < prt_priv.model->mac_cnt; i++) {
+				prt_rk356x_inc_mac(buf);
+				eth_register_ethaddr(i, buf);
+			}
+		} else {
+			pr_warn("Board has invalid MAC address\n");
+		}
+	}
+
+	/* Read serial at offset 10 */
+	size = cdev_read(cdev, buf, 10, RK_GPT_RESERVED_SPACE + 10, 0);
+	if (size != 10) {
+		pr_warn("Unable to read serial number from eMMC\n");
+		return;
+	}
+	buf[10] = 0;
+	pr_info("Board serial number: %s\n", buf);
+	barebox_set_serial_number(buf);
+}
+
 static int mecsbc_sd_of_fixup(struct device_node *root, void *context)
 {
 	struct device *dev = context;
@@ -145,6 +218,7 @@ static int prt_rk356x_devices_init(void)
 		return 0; /* Not a prt_rk356x board! */
 
 	prt_rk356x_bbu();
+	prt_rk356x_board_info();
 
 	if (prt_priv.model->init) {
 		ret = prt_priv.model->init();
@@ -201,6 +275,7 @@ static const struct prt_rk356x_model mecsbc = {
 	.name = "Protonic MECSBC board",
 	.shortname = "mecsbc",
 	.adc_channels = {0, 1, 3},
+	.mac_cnt = 3,
 	.init = prt_rk356x_mecsbc_init,
 };
 
-- 
2.43.0



