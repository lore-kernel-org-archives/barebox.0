Delivery-date: Tue, 02 May 2023 11:15:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6f-002Abq-25
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6c-000243-Q2
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rV5i6xcZNFU8glgIAloB0pDigjkr9rNEqG4DZIZSgFk=; b=Y87LfKYqwwsXCrKpbFsI5VjZcP
	LpYqcQ7gH+iqXZUFnjXYn0Uwc+5KB42vS05+a7mMiyNEBG9OXl17pD/bT/sysZ6jkd+LsYyiPdsuK
	d//cZ8fi/ssqcYndv+XxTosMP3Abz0A3SAgpI7x7gTZRtSvTplNp9iZc+nnnKRCUIn8tJINE9SfWW
	k4XExMAMFTXGJDy73Ssc/xQxzCfw+HDXnU2GtZ/wnm58z4UCtwxw+NZ5HqadlpL4sCy9C3LhOTOEk
	vnQWI5DP59kPnh6BgdSmvsXmXW0HmuUmEN5lwD1T/KaftsHzlt6Il71N66FNBRXpQQHX3WOJc/bqF
	LIMEifkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5a-000jKL-17;
	Tue, 02 May 2023 09:14:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGm-1h
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-00019u-45; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5V-000YjM-HP; Tue, 02 May 2023 11:14:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00AqzW-6a; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:12 +0200
Message-Id: <20230502091419.2551228-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_566379_E5FD7AE1 
X-CRM114-Status: GOOD (  12.87  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/12] ARM: versatile: Use flash from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/versatile/env/init/mtdparts-nor    |  6 -----
 arch/arm/boards/versatile/versatilepb.c       |  4 ---
 arch/arm/dts/versatile-pb.dts                 | 26 +++++++++++++++++++
 3 files changed, 26 insertions(+), 10 deletions(-)
 delete mode 100644 arch/arm/boards/versatile/env/init/mtdparts-nor

diff --git a/arch/arm/boards/versatile/env/init/mtdparts-nor b/arch/arm/boards/versatile/env/init/mtdparts-nor
deleted file mode 100644
index 20c2b994cc..0000000000
--- a/arch/arm/boards/versatile/env/init/mtdparts-nor
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="512k(nor0.barebox)ro,512k(nor0.bareboxenv),4864k(nor0.kernel),256k(nor0.dtb),3M(nor0.update),-(nor0.root)"
-kernelname="physmap-flash.0"
-
-mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index c5ce46e525..0ea397d3cb 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -45,10 +45,6 @@ static struct smc91c111_pdata net_pdata = {
 
 static int vpb_devices_init(void)
 {
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
-	devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self");
-	devfs_add_partition("nor0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
-
 	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, VERSATILE_ETH_BASE,
 			64 * 1024, IORESOURCE_MEM, &net_pdata);
 
diff --git a/arch/arm/dts/versatile-pb.dts b/arch/arm/dts/versatile-pb.dts
index d374f54291..31af9d5e73 100644
--- a/arch/arm/dts/versatile-pb.dts
+++ b/arch/arm/dts/versatile-pb.dts
@@ -3,8 +3,34 @@
 / {
 	model = "ARM Versatile PB";
 	compatible = "arm,versatile-pb";
+
+	chosen {
+		environment-nor {
+			compatible = "barebox,environment";
+			device-path = &env_nor;
+		};
+	};
 };
 
 &{/memory} {
 	reg = <0x0 0x04000000>;
 };
+
+&{/flash@34000000} {
+	partitions {
+		compatible = "fixed-partitions";
+
+		#address-cells = <1>;
+                #size-cells = <1>;
+
+                partition@0 {
+			label = "barebox";
+			reg = <0x0 0x400000>;
+		};
+
+                env_nor: partition@400000 {
+			label = "bareboxenv";
+			reg = <0x400000 0x400000>;
+		};
+	};
+};
-- 
2.39.2



