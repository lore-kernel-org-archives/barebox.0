Delivery-date: Mon, 28 Jun 2021 08:42:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxky4-0001Sb-Tj
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:42:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxky3-00037a-UW
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:42:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/q3nRuN7AIi/cpuWSwqNA6ghjqIWno/F7hjncXQgSk8=; b=bycqrufGTtDqUc
	1iLxEkZMqZ5mwQ0XbH4Wh0oNa+BBdvXJhQI6ofOz6YkeCH4ILqFhI4DSMXloOfajn+7mzpUzF9z4E
	rlbKT0irXoyXDt/Q3vSYgX7AhZH1VtYiUo4qk2dEiqRmf3uV88Fz/wGZa9odfzrePvxf0fJYJKmTO
	3BAEJWEtyjPhwZVZZ5i5gcQHttUKF59Gp8y+IMOYBNPUZJI21r1eIfB/YsKH/ZCSPXWl9oRIaXL+G
	xasNZ6nKlkaAuQI2mEkqRVVpsZsUJ9Gc6fbFRFadmFPirjLn3Ls5puWM3w0LhkKilCa+X6NTSM56a
	Qqu7srQHArlT/Ksvu4+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxkwv-0073Et-4O; Mon, 28 Jun 2021 06:40:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxkwj-0073B2-9T
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:40:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxkwi-0002ib-3t; Mon, 28 Jun 2021 08:40:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxkwh-00070G-Rz; Mon, 28 Jun 2021 08:40:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:40:36 +0200
Message-Id: <20210628064036.25991-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064036.25991-1-a.fatoum@pengutronix.de>
References: <20210628064036.25991-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234041_404244_AE2DE1CB 
X-CRM114-Status: GOOD (  12.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] ARM: dts: stm32mp: retire barebox,
 provide-mac-address in favor of NVMEM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now have generic support for populating MAC address out of NVMEM, so
use it instead of barebox,provide-mac-address. There should be no
functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi | 11 ++++++--
 drivers/nvmem/bsec.c         | 51 +-----------------------------------
 2 files changed, 10 insertions(+), 52 deletions(-)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index eb3c6222e785..65df4ca44115 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -64,11 +64,18 @@
 };
 
 &bsec {
-	barebox,provide-mac-address = <&ethernet0 0x39>;
-
 	otp_serial: serial-number@34 {
 		reg = <0x34 0xc>;
 	};
+
+	macaddr: mac-address@e4 {
+		reg = <0xe4 0x6>;
+	};
+};
+
+&ethernet0 {
+	nvmem-cell-names = "mac-address";
+	nvmem-cells = <&macaddr>;
 };
 
 &vrefbuf {
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 097d34069afd..0ed4d089d46b 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -68,51 +68,6 @@ static struct regmap_bus stm32_bsec_regmap_bus = {
 	.reg_read = stm32_bsec_read_shadow,
 };
 
-static int stm32_bsec_read_mac(struct regmap *map, int offset, u8 *mac)
-{
-	u8 res[8];
-	int ret;
-
-	ret = regmap_bulk_read(map, offset * 4, res, 8);
-	if (ret)
-		return ret;
-
-	memcpy(mac, res, ETH_ALEN);
-	return 0;
-}
-
-static void stm32_bsec_init_dt(struct device_d *dev, struct regmap *map)
-{
-	struct device_node *node = dev->device_node;
-	struct device_node *rnode;
-	u32 phandle, offset;
-	char mac[ETH_ALEN];
-	const __be32 *prop;
-
-	int len;
-	int ret;
-
-	prop = of_get_property(node, "barebox,provide-mac-address", &len);
-	if (!prop)
-		return;
-
-	if (len != 2 * sizeof(__be32))
-		return;
-
-	phandle = be32_to_cpup(prop++);
-
-	rnode = of_find_node_by_phandle(phandle);
-	offset = be32_to_cpup(prop++);
-
-	ret = stm32_bsec_read_mac(map, offset, mac);
-	if (ret) {
-		dev_warn(dev, "error setting MAC address: %s\n", strerror(-ret));
-		return;
-	}
-
-	of_eth_register_ethaddr(rnode, mac);
-}
-
 static int stm32_bsec_probe(struct device_d *dev)
 {
 	struct regmap *map;
@@ -139,12 +94,8 @@ static int stm32_bsec_probe(struct device_d *dev)
 		return PTR_ERR(map);
 
 	nvmem = nvmem_regmap_register(map, "stm32-bsec");
-	if (IS_ERR(nvmem))
-		return PTR_ERR(nvmem);
-
-	stm32_bsec_init_dt(dev, map);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(nvmem);
 }
 
 static struct stm32_bsec_data stm32mp15_bsec_data = {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

