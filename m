Delivery-date: Sat, 19 Jun 2021 05:47:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRxS-0003Ri-Dp
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:47:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRxQ-00030A-Dy
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:47:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SI9vfBnoHot9lUMOdNCiUHOMsTbkdDPFj1He9RIsOg=; b=QjaOuz0Jw6yY50
	KodcMwmBeM/tPfNYWyZ4M7+jHDaRq0nmWw1C+vFzDDb9JpVoi/1528nLGbqgb0Z0SnsBkd5Hie/ih
	fGXRyYFuH8EfJEOYMek/Jy/QSaOTix/mlKECQgL4d6tTytWCg51lHtn10ZDF28k21vkXEgiOOj/ac
	1Qyy/u1Zw06SXvrlNsHig9/eUftAmnU/eckYPDjIWE29vkkJ+UFQrrDqkVn1MSxYLZfMYzNDzpj9x
	i+9OXKPAph0OsV4fDdlMOe0DGmMgojn4w79oyTgvOA3ySRAZQcOlC6+iAK5esFsy5o4jaXwnpVWz1
	ia1zxgwvwlEeMFo3J1Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRw7-00GCaz-1y; Sat, 19 Jun 2021 03:46:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRvN-00GC54-7U
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-0001v5-U8; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv4-00029c-UI; Sat, 19 Jun 2021 05:45:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:08 +0200
Message-Id: <20210619034516.6737-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204537_370911_063FB590 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/13] sandbox: use nvmem on top of stickypage for reset reason
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Watchdog and system reset driver use a byte in the sticky page to
persist reset reason over reexec. So far, this was a byte outside
partitioned space. With the new nvmem-cells binding, a partition can be
dedicated to holding nvmem cells. Use that instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/power.c    | 35 ++++++++++++++++++++---------------
 arch/sandbox/board/watchdog.c | 20 ++++++++++----------
 arch/sandbox/dts/sandbox.dts  | 18 +++++++++++++++---
 3 files changed, 45 insertions(+), 28 deletions(-)

diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 3cc944795895..57801c8c3dc4 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -4,11 +4,11 @@
 #include <restart.h>
 #include <mach/linux.h>
 #include <reset_source.h>
-#include <mfd/syscon.h>
+#include <linux/nvmem-consumer.h>
 
 struct sandbox_power {
 	struct restart_handler rst_hang, rst_reexec;
-	struct regmap *src;
+	struct nvmem_cell *reset_source_cell;
 	u32 src_offset;
 };
 
@@ -24,16 +24,20 @@ static void sandbox_rst_hang(struct restart_handler *rst)
 
 static void sandbox_rst_reexec(struct restart_handler *rst)
 {
+	u8 reason = RESET_RST;
 	struct sandbox_power *power = container_of(rst, struct sandbox_power, rst_reexec);
-	regmap_update_bits(power->src, power->src_offset, 0xff, RESET_RST);
+
+	if (!IS_ERR(power->reset_source_cell))
+		WARN_ON(nvmem_cell_write(power->reset_source_cell, &reason, 1) <= 0);
+
 	linux_reexec();
 }
 
 static int sandbox_power_probe(struct device_d *dev)
 {
 	struct sandbox_power *power = xzalloc(sizeof(*power));
-	unsigned int rst;
-	int ret;
+	size_t len = 1;
+	u8 *rst;
 
 	poweroff_handler_register_fn(sandbox_poweroff);
 
@@ -52,20 +56,21 @@ static int sandbox_power_probe(struct device_d *dev)
 	if (IS_ENABLED(CONFIG_SANDBOX_REEXEC))
 		restart_handler_register(&power->rst_reexec);
 
-	power->src = syscon_regmap_lookup_by_phandle(dev->device_node, "barebox,reset-source");
-	if (IS_ERR(power->src))
+	power->reset_source_cell = of_nvmem_cell_get(dev->device_node, "reset-source");
+	if (IS_ERR(power->reset_source_cell)) {
+		dev_warn(dev, "No reset source info available: %pe\n", power->reset_source_cell);
 		return 0;
+	}
 
-	ret = of_property_read_u32_index(dev->device_node, "barebox,reset-source", 1,
-					 &power->src_offset);
-	if (ret)
-		return 0;
+	rst = nvmem_cell_read(power->reset_source_cell, &len);
+	if (!IS_ERR(rst)) {
+		if (*rst == 0)
+			*rst = RESET_POR;
+		reset_source_set_prinst(*rst, RESET_SOURCE_DEFAULT_PRIORITY, 0);
 
-	ret = regmap_read(power->src, power->src_offset, &rst);
-	if (ret == 0 && rst == 0)
-		rst = RESET_POR;
+		free(rst);
+	}
 
-	reset_source_set_prinst(rst, RESET_SOURCE_DEFAULT_PRIORITY, 0);
 	return 0;
 }
 
diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
index e1cff7a0bf0b..ff26a2019fac 100644
--- a/arch/sandbox/board/watchdog.c
+++ b/arch/sandbox/board/watchdog.c
@@ -6,7 +6,7 @@
 #include <mach/linux.h>
 #include <of.h>
 #include <watchdog.h>
-#include <mfd/syscon.h>
+#include <linux/nvmem-consumer.h>
 #include <reset_source.h>
 
 struct sandbox_watchdog {
@@ -36,10 +36,9 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
 static int sandbox_watchdog_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
+	struct nvmem_cell *reset_source_cell;
 	struct sandbox_watchdog *wd;
 	struct watchdog *wdd;
-	struct regmap *src;
-	u32 src_offset;
 	int ret;
 
 	wd = xzalloc(sizeof(*wd));
@@ -57,16 +56,17 @@ static int sandbox_watchdog_probe(struct device_d *dev)
 		return ret;
 	}
 
-	src = syscon_regmap_lookup_by_phandle(np, "barebox,reset-source");
-	if (IS_ERR(src))
-		return 0;
+	reset_source_cell = of_nvmem_cell_get(dev->device_node, "reset-source");
+	if (IS_ERR(reset_source_cell)) {
+		dev_warn(dev, "No reset source info available: %pe\n", reset_source_cell);
+		goto out;
+	}
 
-	ret = of_property_read_u32_index(np, "barebox,reset-source", 1, &src_offset);
-	if (ret)
-		return 0;
+	nvmem_cell_write(reset_source_cell, &(u8) { RESET_WDG }, 1);
 
-	regmap_update_bits(src, src_offset, 0xff, RESET_WDG);
+	nvmem_cell_put(reset_source_cell);
 
+out:
 	dev_info(dev, "probed\n");
 	return 0;
 }
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index e99986bb9062..7f8f1964e408 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -71,7 +71,17 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			/* 0x00+4 reserved for syscon use */
+			part_nvmem: nvmem@300 {
+				compatible = "nvmem-cells";
+				reg = <0x300 0x100>;
+				label = "nvmem";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				reset_source: reset-source@0 {
+					reg = <0x0 0x1>;
+				};
+			};
 
 			part_env: env@400 {
 				reg = <0x400 0x800>;
@@ -87,12 +97,14 @@
 
 	power {
 		compatible = "barebox,sandbox-power";
-		barebox,reset-source = <&stickypage 0>;
+		nvmem-cell-names = "reset-source";
+		nvmem-cells = <&reset_source>;
 	};
 
 	watchdog {
 		compatible = "barebox,sandbox-watchdog";
-		barebox,reset-source = <&stickypage 0>;
+		nvmem-cell-names = "reset-source";
+		nvmem-cells = <&reset_source>;
 	};
 
 	sound {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

