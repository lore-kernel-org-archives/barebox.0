Delivery-date: Mon, 21 Mar 2022 15:10:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWIjv-001RCV-6E
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 15:10:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWIjx-0005ej-DM
	for lore@pengutronix.de; Mon, 21 Mar 2022 15:10:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwALb4M52Yt9+iDke0V5CjcsGe5IQwlxRMTXvRXWB6E=; b=BxwtsDw7XGqUXt
	SPRsV4RpZXWLBlS35GVnlYvLupZZLgYaqDGcu+mmkcdnmzMIqPdlzQBklkdncpylcshUwj7oanHhF
	ZEUoaX84Xde+LKMpyPzlL4U2yxzSvFMwp69v8wDqyvtnYJv241aDZ1F9hQEqjqN8WHQuIhrAaoD0a
	mcrPvL4iIJw9jTqn2K6P07xTWxjgLGqLb3ztRcN9l3Q5gAbDqLCcyCLQaSrQIKUKfNl2zCdH+zOL5
	ujAc5j/sl4wMTyDEs+PkcDMuSnP16WsdRwi+GcFVo/ed5n8WjR8lGT5LtfdMDlhAQGANPLR9jPmfI
	6Vc0c0BZA5tVMt4Y3rPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWIia-007z1l-GU; Mon, 21 Mar 2022 14:09:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWIiT-007z0A-Np
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 14:09:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1nWIiQ-0005Ns-Qo
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 15:08:58 +0100
Received: from [2a0a:edc0:0:900:1d::45] (helo=ginster)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1nWIiO-0026iH-Du
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 15:08:57 +0100
Received: from jbe by ginster with local (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1nWIiO-000FUD-KO
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 15:08:56 +0100
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 21 Mar 2022 15:08:56 +0100
Message-Id: <20220321140856.59479-3-jbe@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220321140856.59479-1-jbe@pengutronix.de>
References: <20220321140856.59479-1-jbe@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_070901_797277_5C4BBB36 
X-CRM114-Status: GOOD (  13.03  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] ARM: webasto-marvel: share the run-time setup with the
 ccbv2 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/arm/boards/webasto-ccbv2/board.c    |  6 +++++-
 arch/arm/boards/webasto-ccbv2/lowlevel.c | 24 ++++++++++++++++++------
 images/Makefile.imx                      |  2 ++
 3 files changed, 25 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
index 4777713..fd6ea6f 100644
--- a/arch/arm/boards/webasto-ccbv2/board.c
+++ b/arch/arm/boards/webasto-ccbv2/board.c
@@ -22,7 +22,10 @@ static int ccbv2_probe(struct device_d *dev)
 	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc1",
 			BBU_HANDLER_FLAG_DEFAULT);
 
-	barebox_set_hostname("weabsto-ccbv2");
+	if (of_machine_is_compatible("webasto,imx6ul-marvel"))
+		barebox_set_hostname("webasto-marvel");
+	else
+		barebox_set_hostname("webasto-ccbv2");
 
 	if(!IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE))
 		return 0;
@@ -48,6 +51,7 @@ err:
 
 static const struct of_device_id ccbv2_of_match[] = {
 	{ .compatible = "webasto,imx6ul-ccbv2" },
+	{ .compatible = "webasto,imx6ul-marvel" },
 	{ /* sentinel */ },
 };
 
diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index dfc5c0f..2bf0c36 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -15,8 +15,6 @@
 
 #include "ccbv2.h"
 
-extern char __dtb_z_imx6ul_webasto_ccbv2_start[];
-
 static void configure_uart(void)
 {
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
@@ -32,7 +30,7 @@ static void configure_uart(void)
 
 }
 
-static void noinline start_ccbv2(u32 r0, unsigned long mem_size)
+static void noinline start_ccbv2(u32 r0, unsigned long mem_size, char *fdt)
 {
 	int tee_size;
 	void *tee;
@@ -56,9 +54,10 @@ static void noinline start_ccbv2(u32 r0, unsigned long mem_size)
 		start_optee_early(NULL, tee);
 	}
 
-	imx6ul_barebox_entry(__dtb_z_imx6ul_webasto_ccbv2_start);
+	imx6ul_barebox_entry(fdt);
 }
 
+extern char __dtb_z_imx6ul_webasto_ccbv2_start[];
 ENTRY_FUNCTION(start_imx6ul_ccbv2_256m, r0, r1, r2)
 {
 
@@ -70,12 +69,25 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_256m, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0, SZ_256M);
+	start_ccbv2(r0, SZ_256M, __dtb_z_imx6ul_webasto_ccbv2_start);
 }
 
 ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
 {
+	imx6ul_cpu_lowlevel_init();
 
+	arm_setup_stack(0x00910000);
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	start_ccbv2(r0, SZ_512M, __dtb_z_imx6ul_webasto_ccbv2_start);
+}
+
+extern char __dtb_z_imx6ul_webasto_marvel_start[];
+ENTRY_FUNCTION(start_imx6ul_marvel, r0, r1, r2)
+{
 	imx6ul_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00910000);
@@ -84,5 +96,5 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0, SZ_512M);
+	start_ccbv2(r0, SZ_512M, __dtb_z_imx6ul_webasto_marvel_start);
 }
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 18cabbf..4b2ad6e 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -377,6 +377,8 @@ $(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2_256m, w
 
 $(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2_512m, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512, imx6ul-webasto-ccbv2-512m)
 
+$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_marvel, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512, imx6ul-webasto-marvel-512m)
+
 # ----------------------- vf6xx based boards ---------------------------
 pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
 CFG_start_vf610_twr.pblb.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

