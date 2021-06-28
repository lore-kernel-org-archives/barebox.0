Delivery-date: Mon, 28 Jun 2021 08:42:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxky0-0001S2-By
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:42:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxkxz-00036W-Bu
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:42:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDviJpI4705Tta3hRqqfMtzV80eJmTU7FAYoJllkvn0=; b=ALXeMKolMWSjGf
	57P/yq+NzO27LudlrQI/P+LjG0pQu7u5hFA9spJxZTZGj02IFgP/nDNJM1/uJCs5VKUrxtQU9RpY/
	UogxGFqKpzRnjIaQ0Uf105JNokJcWDUAdpJjwzxh8lG8/B7xe+zbop62Zp6rU/uCV+Mm22CvClOmP
	zGOFNW+cf/U/PQfuygyVU25XEV3vPpO74KQ7t7JAfpVi+2wAjh4NmZbDGs+TyVywURCQm1cu09NsO
	aDheNscTUdl4bAnkWYoxT/J1LK5YJ4V6noAo07gy+Lp7BRXeCapyRApCgIaNk4qCN39jaGw5hE/gG
	0vc8gQGUKyOJ+6qIHKYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxkwo-0073Cl-CH; Mon, 28 Jun 2021 06:40:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxkwi-0073Al-N7
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:40:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxkwh-0002iJ-H7; Mon, 28 Jun 2021 08:40:39 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxkwh-000706-8m; Mon, 28 Jun 2021 08:40:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:40:33 +0200
Message-Id: <20210628064036.25991-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064036.25991-1-a.fatoum@pengutronix.de>
References: <20210628064036.25991-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234040_793344_7A950D4B 
X-CRM114-Status: GOOD (  13.87  )
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
Subject: [PATCH 2/5] ARM: stm32mp: migrate to barebox,machine-id-path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All STM32MP1 boards use a device tree that includes stm32mp151.dtsi, so
we can just make use of the new property there and drop machine_id_set_hashable
without affecting behavior.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi |  8 ++++++++
 drivers/nvmem/bsec.c         | 17 -----------------
 2 files changed, 8 insertions(+), 17 deletions(-)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index f1fd888fa1c6..eb3c6222e785 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -31,6 +31,10 @@
 		tamp.reboot_mode = &reboot_mode_tamp;
 	};
 
+	chosen {
+		barebox,machine-id-path = &otp_serial;
+	};
+
 };
 
 &{/clocks} {
@@ -61,6 +65,10 @@
 
 &bsec {
 	barebox,provide-mac-address = <&ethernet0 0x39>;
+
+	otp_serial: serial-number@34 {
+		reg = <0x34 0xc>;
+	};
 };
 
 &vrefbuf {
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index d9b38c8414fb..097d34069afd 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -15,7 +15,6 @@
 #include <of.h>
 #include <regmap.h>
 #include <mach/bsec.h>
-#include <machine_id.h>
 #include <linux/nvmem-provider.h>
 
 #define BSEC_OTP_SERIAL	13
@@ -69,19 +68,6 @@ static struct regmap_bus stm32_bsec_regmap_bus = {
 	.reg_read = stm32_bsec_read_shadow,
 };
 
-static void stm32_bsec_set_unique_machine_id(struct regmap *map)
-{
-	u32 unique_id[3];
-	int ret;
-
-	ret = regmap_bulk_read(map, BSEC_OTP_SERIAL * 4,
-			       unique_id, sizeof(unique_id));
-	if (ret)
-		return;
-
-	machine_id_set_hashable(unique_id, sizeof(unique_id));
-}
-
 static int stm32_bsec_read_mac(struct regmap *map, int offset, u8 *mac)
 {
 	u8 res[8];
@@ -156,9 +142,6 @@ static int stm32_bsec_probe(struct device_d *dev)
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
-	if (IS_ENABLED(CONFIG_MACHINE_ID))
-		stm32_bsec_set_unique_machine_id(map);
-
 	stm32_bsec_init_dt(dev, map);
 
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

