Delivery-date: Tue, 22 Oct 2024 09:49:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39db-007Ngr-0D
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 09:49:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dZ-0006Ex-RR
	for lore@pengutronix.de; Tue, 22 Oct 2024 09:49:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/gvGJdXAtr6Ee4GlniwsWbQ539Hw6YZMgoaTvLKjjYE=; b=Tva2Kj2qBoz4x4kEbNBxbdNOf5
	JowctXfWWUNvmpIpCdfS23EQ8HybkBEcVMv1eW0J/Br0PzJeLroUhNiFQ+OGwCAS6O9e1RwhtL8yz
	rs1W2cCMJSfS2a5MZbvgl34vK3i1vW1updv1n3xGv6aY3aOCg4sXsVKNiuezZB66T1o01mPO6vnBP
	nJliNQge2ZvsvvjRRr9eCWyveGwuk/kwpi8u6ZHt8Wh2RUE4xIhRP+iHQrP42pejy66qBkkP0CcVd
	MkAgohYJ1o8Bq19I8LgYiaBHSagW5h+zaF775DySM3vs6UpQwYrBIHIRDZvJiU3CEycSXavk9Vy53
	OLLA2/Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39cq-0000000A2Uy-2o9n;
	Tue, 22 Oct 2024 07:48:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39b2-0000000A2H5-3K9s
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 07:46:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39b0-0005hv-An; Tue, 22 Oct 2024 09:46:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-000pLO-3C;
	Tue, 22 Oct 2024 09:46:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2t;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-arm-layerscape-tfa-v2-6-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=9873;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=t8WcZ9MaylLOOjMp+paiYOXcLXC8OB2bkmUVEkahVag=;
 b=93RLEIgOY76vAC+OKUrgTBuPZJnoFsZnGi2/W1lW167YXjzGcEgrkWJw3tOwU5X365IehXepy
 3FCYc4bPdiGAhyZRyxgAqoOhCqBBYz7nlKDK+eTL3ySYbSz+PGBC/sT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_004629_153656_22FFEE5F 
X-CRM114-Status: GOOD (  15.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/12] ARM: Layerscape: remove register arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The various Layerscape xload_start_image functions all take r0, r1 and
r2 arguments. These are all unused in the code, so remove them.

The ls1021aiot board passes the memory size in r0 in one case, but this
is never used, so it's safe to remove that as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1021aiot/lowlevel.c |  6 +++---
 arch/arm/boards/ls1046ardb/lowlevel.c |  6 +++---
 arch/arm/boards/tqmls1046a/lowlevel.c | 10 +++++-----
 arch/arm/mach-layerscape/xload-qspi.c | 17 +++++++----------
 arch/arm/mach-layerscape/xload.c      | 12 +++++-------
 drivers/mci/imx-esdhc-pbl.c           | 10 ++++------
 include/mach/layerscape/xload.h       | 14 +++++---------
 7 files changed, 32 insertions(+), 43 deletions(-)

diff --git a/arch/arm/boards/ls1021aiot/lowlevel.c b/arch/arm/boards/ls1021aiot/lowlevel.c
index d2d4237c3d..887f0e39db 100644
--- a/arch/arm/boards/ls1021aiot/lowlevel.c
+++ b/arch/arm/boards/ls1021aiot/lowlevel.c
@@ -97,7 +97,7 @@ static noinline __noreturn void ls1021aiot_r_entry(void)
 
 	ls1021a_errata_post_ddr();
 
-	ls1021a_xload_start_image(SZ_1G, 0, 0);
+	ls1021a_xload_start_image();
 
 	pr_err("Booting failed\n");
 
@@ -105,10 +105,10 @@ static noinline __noreturn void ls1021aiot_r_entry(void)
 		;
 }
 
-void ls1021aiot_entry(unsigned long r0, unsigned long r1, unsigned long r2);
+void ls1021aiot_entry(void);
 
 __noreturn void
-ls1021aiot_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+ls1021aiot_entry(void)
 {
 	relocate_to_current_adr();
 	setup_c();
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 9c3f1a8375..753fca3272 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -210,7 +210,7 @@ static noinline __noreturn void ls1046ardb_r_entry(void)
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_esdhc_start_image(0, 0, 0);
+	ls1046a_esdhc_start_image();
 
 err:
 	pr_err("Booting failed\n");
@@ -218,9 +218,9 @@ static noinline __noreturn void ls1046ardb_r_entry(void)
 	while (1);
 }
 
-void ls1046ardb_entry(unsigned long r0, unsigned long r1, unsigned long r2);
+void ls1046ardb_entry(void);
 
-__noreturn void ls1046ardb_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+__noreturn void ls1046ardb_entry(void)
 {
 	relocate_to_current_adr();
 	setup_c();
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 9f471d001e..6531b22bd1 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -331,16 +331,16 @@ static noinline __noreturn void tqmls1046a_r_entry(bool is_8g)
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_xload_start_image(0, 0, 0);
+	ls1046a_xload_start_image();
 
 	pr_err("Booting failed\n");
 
 	while (1);
 }
 
-void tqmls1046a_entry(unsigned long r0, unsigned long r1, unsigned long r2);
+void tqmls1046a_entry(void);
 
-__noreturn void tqmls1046a_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+__noreturn void tqmls1046a_entry(void)
 {
 	relocate_to_current_adr();
 	setup_c();
@@ -348,9 +348,9 @@ __noreturn void tqmls1046a_entry(unsigned long r0, unsigned long r1, unsigned lo
 	tqmls1046a_r_entry(false);
 }
 
-void tqmls1046a_8g_entry(unsigned long r0, unsigned long r1, unsigned long r2);
+void tqmls1046a_8g_entry(void);
 
-__noreturn void tqmls1046a_8g_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+__noreturn void tqmls1046a_8g_entry(void)
 {
 	relocate_to_current_adr();
 	setup_c();
diff --git a/arch/arm/mach-layerscape/xload-qspi.c b/arch/arm/mach-layerscape/xload-qspi.c
index 608434bf1f..11119840c3 100644
--- a/arch/arm/mach-layerscape/xload-qspi.c
+++ b/arch/arm/mach-layerscape/xload-qspi.c
@@ -19,10 +19,9 @@ struct layerscape_base_addr {
 	void *qspi_mem_base;
 };
 
-static int layerscape_qspi_start_image(struct layerscape_base_addr *base,
-		unsigned long r0, unsigned long r1, unsigned long r2)
+static int layerscape_qspi_start_image(struct layerscape_base_addr *base)
 {
-	void (*barebox)(unsigned long, unsigned long, unsigned long) = base->membase;
+	void (*barebox)(void) = base->membase;
 
 	/* Switch controller into little endian mode */
 	out_be32(base->qspi_reg_base, 0x000f400c);
@@ -33,15 +32,14 @@ static int layerscape_qspi_start_image(struct layerscape_base_addr *base,
 
 	printf("Starting barebox\n");
 
-	barebox(r0, r1, r2);
+	barebox();
 
 	printf("failed\n");
 
 	return -EIO;
 }
 
-int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
-					     unsigned long r2)
+int ls1046a_qspi_start_image(void)
 {
 	struct layerscape_base_addr base;
 
@@ -49,11 +47,10 @@ int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
 	base.membase = IOMEM(LS1046A_DDR_SDRAM_BASE);
 	base.qspi_mem_base = IOMEM(0x40000000);
 
-	return layerscape_qspi_start_image(&base, r0, r1, r2);
+	return layerscape_qspi_start_image(&base);
 }
 
-int ls1021a_qspi_start_image(unsigned long r0, unsigned long r1,
-					     unsigned long r2)
+int ls1021a_qspi_start_image(void)
 {
 	struct layerscape_base_addr base;
 
@@ -61,5 +58,5 @@ int ls1021a_qspi_start_image(unsigned long r0, unsigned long r1,
 	base.membase = IOMEM(LS1021A_DDR_SDRAM_BASE);
 	base.qspi_mem_base = IOMEM(0x40000000);
 
-	return layerscape_qspi_start_image(&base, r0, r1, r2);
+	return layerscape_qspi_start_image(&base);
 }
diff --git a/arch/arm/mach-layerscape/xload.c b/arch/arm/mach-layerscape/xload.c
index 32ff158b1b..9103e8b4bc 100644
--- a/arch/arm/mach-layerscape/xload.c
+++ b/arch/arm/mach-layerscape/xload.c
@@ -5,8 +5,7 @@
 #include <mach/layerscape/layerscape.h>
 #include <mach/layerscape/xload.h>
 
-int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
-			      unsigned long r2)
+int ls1046a_xload_start_image(void)
 {
 	enum bootsource src;
 
@@ -14,10 +13,10 @@ int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
 
 	switch (src) {
 	case BOOTSOURCE_SPI_NOR:
-		return ls1046a_qspi_start_image(r0, r1, r2);
+		return ls1046a_qspi_start_image();
 #if defined(CONFIG_MCI_IMX_ESDHC_PBL)
 	case BOOTSOURCE_MMC:
-		return ls1046a_esdhc_start_image(r0, r1, r2);
+		return ls1046a_esdhc_start_image();
 #endif
 	default:
 		pr_err("Unknown bootsource\n");
@@ -25,8 +24,7 @@ int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
 	}
 }
 
-int ls1021a_xload_start_image(unsigned long r0, unsigned long r1,
-			      unsigned long r2)
+int ls1021a_xload_start_image(void)
 {
 	enum bootsource src;
 
@@ -34,7 +32,7 @@ int ls1021a_xload_start_image(unsigned long r0, unsigned long r1,
 
 	switch (src) {
 	case BOOTSOURCE_SPI_NOR:
-		return ls1021a_qspi_start_image(r0, r1, r2);
+		return ls1021a_qspi_start_image();
 	default:
 		pr_err("Unknown bootsource\n");
 		return -EINVAL;
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 5b1d9a3cf4..3bf3a7ace6 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -352,7 +352,7 @@ static int layerscape_esdhc_load_image(struct fsl_esdhc_host *host, void *adr, u
  * Return: If successful, this function does not return. A negative error
  * code is returned when this function fails.
  */
-int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2)
+int ls1046a_esdhc_start_image(void)
 {
 	int ret;
 	struct esdhc_soc_data data = {
@@ -364,8 +364,7 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 	};
 	void *sdram = (void *)0x80000000;
 	unsigned long size = ALIGN(barebox_image_size + LS1046A_SD_IMAGE_OFFSET, 512);
-	void (*barebox)(unsigned long, unsigned long, unsigned long) =
-		(sdram + LS1046A_SD_IMAGE_OFFSET);
+	void (*barebox)(void) = (sdram + LS1046A_SD_IMAGE_OFFSET);
 
 	ret = layerscape_esdhc_load_image(&host, sdram, size, (8 << 8) | (3 << 4));
 	if (ret)
@@ -373,7 +372,7 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 
 	printf("Starting barebox\n");
 
-	barebox(r0, r1, r2);
+	barebox();
 
 	return -EINVAL;
 }
@@ -393,8 +392,7 @@ static int ls1028a_esdhc_start_image(void __iomem *base, struct dram_regions_inf
 	void *bl31_image;
 	struct bl2_to_bl31_params_mem_v2 *params;
 	unsigned long size = ALIGN(barebox_image_size + LS1046A_SD_IMAGE_OFFSET, 512);
-	void (*barebox)(unsigned long, unsigned long, unsigned long) =
-		(sdram + LS1046A_SD_IMAGE_OFFSET);
+	void (*barebox)(void) = (sdram + LS1046A_SD_IMAGE_OFFSET);
 	int ret;
 
 	ret = layerscape_esdhc_load_image(&host, sdram, size, 8 << 4);
diff --git a/include/mach/layerscape/xload.h b/include/mach/layerscape/xload.h
index 86327c63e6..64990e2ca1 100644
--- a/include/mach/layerscape/xload.h
+++ b/include/mach/layerscape/xload.h
@@ -5,16 +5,12 @@
 
 struct dram_regions_info;
 
-int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2);
+int ls1046a_esdhc_start_image(void);
 int ls1028a_esdhc1_start_image(struct dram_regions_info *dram_info);
 int ls1028a_esdhc2_start_image(struct dram_regions_info *dram_info);
-int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
-					     unsigned long r2);
-int ls1021a_qspi_start_image(unsigned long r0, unsigned long r1,
-					     unsigned long r2);
-int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
-			      unsigned long r2);
-int ls1021a_xload_start_image(unsigned long r0, unsigned long r1,
-			      unsigned long r2);
+int ls1046a_qspi_start_image(void);
+int ls1021a_qspi_start_image(void);
+int ls1046a_xload_start_image(void);
+int ls1021a_xload_start_image(void);
 
 #endif /* __MACH_LAYERSCAPE_XLOAD_H */

-- 
2.39.5



