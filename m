Delivery-date: Wed, 04 Mar 2026 12:01:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyp-007xQG-2f
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyo-0005pK-UZ
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhzqzQglgs5KcCaaBEZ1U848QuE/AE2iMjjJxq8CAS0=; b=X5rlx15ZeIO0uS
	hh7LYQrAPKY9yCSEDqJJM2D/HfjEm9DR678DsLA6A8wElT6fU7YAa+d52qLujjMyJQoBJI2bixkuL
	dyB7rz9QJEOs630CHgfokB31+41FFLqL9Smgd3gPNMFSYDH85IcVio3njZraJGmKgPug1fhpTS2kW
	DXvdWpnIQiHVwkFQ8QLmoXyB2+1Zzn8R21nDiN9K6OGQ0n/CA9SKNmmh6SbA1/jrzGmBsNHU1pEsT
	VBUZw7Hn1z6neWlTUXtRLiaP0pqOgWzMN+w8Sy1hA2V7HFYIJAzGmfzaHT9nP0HAUNpmcCSunEMao
	rpb0In63evhcdmOEeqtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyK-0000000H232-2Q6I;
	Wed, 04 Mar 2026 11:00:56 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyG-0000000H206-2LSa
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=RhzqzQglgs5KcCaaBEZ1U848QuE/AE2iMjjJxq8CAS0=;
	b=g2oF3I0dHWoEZ2HTF6OYsMi9WG2yf7PfMXCFFBA9VPIj7ETCXqRAR+KWJIfTNoPvVFlA/QB83L3mr
	 UPBpBdt1gnZo9v6qX2zzAbj58Z/zVjE8h0uEHNcE0Tiq1alFPba4nj04bfOz69Aumpz7v3GBuPqniI
	 ADXG+g3QZTg0BsgB0Ee5maA9lIFDEbY5TD3sricz10kTKCDRNaBBJ7Nh4os+Sa3W9kgVmVJ/tylEkH
	 +YzHPZk6cGyTV6aiSXrBl94A2UMWWJBz2yQzmp1gyRzp/Dpf4cI9BsdLG6jQfArHCmkpnCvu34lT9b
	 DwGJo9cghQwBB1OTR++jXloUA2LHeSA==
X-MSG-ID: 651bb34e-17b9-11f1-9155-005056817704
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:08 +0100
Message-ID: <20260304110013.495725-5-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030052_737751_4C2C5CA3 
X-CRM114-Status: GOOD (  16.46  )
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
Subject: [PATCH 4/9] ARM: boards: protonic-rk356x: Configure ADC and channels in model data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Different boards have different ADC's and/or channels for acquiring the
same information. For example on the the RK3562 the first adc channel of
saradc0 is not available for generic use. But it is used on the MECSBC
(RK3568) board.

This conflicts with the hard coded board code as is. Making it per-board
configurable simplifies adding more boards later on.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 43 ++++++++++++++++---------
 1 file changed, 27 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index aec0303e94..1aff5ddbc8 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -7,15 +7,23 @@
 #include <deep-probe.h>
 #include <init.h>
 #include <mach/rockchip/bbu.h>
+#include <mach/rockchip/rockchip.h>
 #include <environment.h>
 #include <param.h>
 #include <of_device.h>
 #include <aiodev.h>
 #include <globalvar.h>
 
+struct prt_rk356x_adc_chs {
+	int usb_boot;
+	int hw_id;
+	int hw_rev;
+};
+
 struct prt_rk356x_model {
 	const char *name;
 	const char *shortname;
+	const struct prt_rk356x_adc_chs adc_channels;
 };
 
 struct prt_rk356x_priv {
@@ -25,34 +33,35 @@ struct prt_rk356x_priv {
 
 static struct prt_rk356x_priv prt_priv;
 
-static int saradc_get_value(const char *chan)
+static int saradc_read_mv(int chan)
 {
-	int ret, voltage;
+	int error, voltage = 0;
+	char *name;
 
-	ret = aiochannel_name_get_value(chan, &voltage);
-	if (ret) {
-		pr_warn_once("Cannot read ADC %s: %pe\n", chan, ERR_PTR(ret));
-		return 0;
-	}
+	name = xasprintf("saradc.in_value%d_mV", chan);
+	error = aiochannel_name_get_value(name, &voltage);
+	if (error)
+		pr_warn_once("Cannot read ADC %s: %pe\n", name, ERR_PTR(error));
 
+	free(name);
 	return voltage;
 }
 
-static bool prt_rk356x_get_usb_boot(void)
+static bool prt_rk356x_get_usb_boot(int chan)
 {
-	return saradc_get_value("saradc.in_value0_mV") < 74;
+	return saradc_read_mv(chan) < 74;
 }
 
 static int prt_rk356x_adc_id_values[] = {
 	1800, 1662, 1521, 1354, 1214, 1059, 900, 742, 335, 589, 278, 137, 0
 };
 
-static int prt_rk356x_get_adc_id(const char *chan)
+static int prt_rk356x_get_adc_id(int chan)
 {
 	int val;
 	unsigned int t;
 
-	val = saradc_get_value(chan) + 74;
+	val = saradc_read_mv(chan) + 74;
 
 	for (t = 0; t < ARRAY_SIZE(prt_rk356x_adc_id_values); t++) {
 		if (val > prt_rk356x_adc_id_values[t])
@@ -62,16 +71,17 @@ static int prt_rk356x_get_adc_id(const char *chan)
 	return t;
 }
 
-static void prt_rk356x_process_adc(struct device *dev)
+static void prt_rk356x_process_adc(struct device *dev,
+				   const struct prt_rk356x_adc_chs *adc_chs)
 {
-	prt_priv.hw_id = prt_rk356x_get_adc_id("saradc.in_value1_mV");
-	prt_priv.hw_rev = prt_rk356x_get_adc_id("saradc.in_value3_mV");
+	prt_priv.hw_id = prt_rk356x_get_adc_id(adc_chs->hw_id);
+	prt_priv.hw_rev = prt_rk356x_get_adc_id(adc_chs->hw_rev);
 
 	dev_add_param_uint32_ro(dev, "boardrev", &prt_priv.hw_rev, "%u");
 	dev_add_param_uint32_ro(dev, "boardid", &prt_priv.hw_id, "%u");
 
 	/* Check if we need to enable the USB gadget instead of booting */
-	if (prt_rk356x_get_usb_boot()) {
+	if (prt_rk356x_get_usb_boot(adc_chs->usb_boot)) {
 		globalvar_add_simple("boot.default", "net");
 		globalvar_add_simple("usbgadget.acm", "1");
 		globalvar_add_simple("usbgadget.autostart", "1");
@@ -147,7 +157,7 @@ static int prt_rk356x_probe(struct device *dev)
 	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
 	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
 
-	prt_rk356x_process_adc(dev);
+	prt_rk356x_process_adc(dev, &model->adc_channels);
 	prt_rk356x_of_fixup_hwrev(dev);
 
 	return 0;
@@ -156,6 +166,7 @@ static int prt_rk356x_probe(struct device *dev)
 static const struct prt_rk356x_model mecsbc = {
 	.name = "Protonic MECSBC board",
 	.shortname = "mecsbc",
+	.adc_channels = {0, 1, 3},
 };
 
 static const struct of_device_id prt_rk356x_of_match[] = {
-- 
2.43.0



