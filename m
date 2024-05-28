Delivery-date: Tue, 28 May 2024 22:13:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sC3Bt-00105j-0L
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 22:13:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sC3Bs-0005qo-DG
	for lore@pengutronix.de; Tue, 28 May 2024 22:13:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IDvCH0FWjN27Lh3Ww6SP6BpfIL4d4iXz39LwYK+1cPc=; b=CR4JgbFnmZjKx5+4q+Xe0h21cO
	RcUYoGyRRfAEVVJAT7tt16CmQAoadMo1SAIGAh0SqJJOxuoQHxI3ayhuzdu0pf1/bvZszX/++o6ep
	UtERjJPtWYmq8hCOZubhUXlFRRbrsJ5k8/Icli27SUgp3WWjCEZZ3G2CthBHcWmzMhz8XdoAkCyC1
	w3yrn/NBXkXf6cUQs/2Ku9VXOgM1tTQs82IN5W60t/FUC+0ZNopxCFUbbsw99dLyiDxFKTv3HoVYY
	xgiGOwznzCrmXlFNf1RjtOqV2HHGbVsQd2zZsSBVdyJnxeHfxgPNzZAOAx9y0Fd7P7F+UKRbUyqDq
	P5sfUUDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC3BS-00000001w01-3n2g;
	Tue, 28 May 2024 20:12:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC3BP-00000001vyg-2kZO
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 20:12:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BG-0005hc-7O; Tue, 28 May 2024 22:12:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BE-003N7a-87; Tue, 28 May 2024 22:12:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BE-0069n8-0R;
	Tue, 28 May 2024 22:12:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 May 2024 22:12:13 +0200
Message-Id: <20240528201214.1467597-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528201214.1467597-1-s.hauer@pengutronix.de>
References: <20240528201214.1467597-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_131231_724639_95867D8F 
X-CRM114-Status: GOOD (  13.63  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] ARM: Phytec-phyCARD-imx27: switch to deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch board to deep probe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycard-imx27/pca100.c | 29 +++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index d3a5598e96..6a881498c2 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -45,7 +45,17 @@ static void pca100_usb_register(void) { };
 
 static void pca100_usb_init(void)
 {
+	struct device_node *gpio_np;
 	u32 reg;
+	int ret;
+
+	gpio_np = of_find_node_by_name_address(NULL, "gpio@10015100");
+	if (!gpio_np)
+		return;
+
+	ret = of_device_ensure_probed(gpio_np);
+	if (ret)
+		return;
 
 	reg = readl(MX27_USB_OTG_BASE_ADDR + 0x600);
 	reg &= ~((3 << 21) | 1);
@@ -75,7 +85,7 @@ static void pca100_usb_init(void)
 	gpio_direction_output(GPIO_PORTB + 24, 1);
 }
 
-static int pca100_devices_init(void)
+static int pca100_probe(struct device *dev)
 {
 	int i;
 	unsigned int mode[] = {
@@ -106,9 +116,6 @@ static int pca100_devices_init(void)
 		PE25_PF_USBOTG_DATA7,
 	};
 
-	if (!of_machine_is_compatible("phytec,imx27-pca100"))
-		return 0;
-
 	barebox_set_model("Phytec phyCARD-i.MX27");
 	barebox_set_hostname("phycard-imx27");
 
@@ -128,4 +135,16 @@ static int pca100_devices_init(void)
 	return 0;
 }
 
-device_initcall(pca100_devices_init);
+static const struct of_device_id pca100_of_match[] = {
+	{ .compatible = "phytec,imx27-pca100" },
+	{ /* Sentinel */},
+};
+
+static struct driver pca100_driver = {
+	.name = "phytec-imx27-pca100",
+	.probe = pca100_probe,
+	.of_compatible = pca100_of_match,
+};
+postcore_platform_driver(pca100_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(pca100_of_match);
-- 
2.39.2



