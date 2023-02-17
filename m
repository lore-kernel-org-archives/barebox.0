Delivery-date: Fri, 17 Feb 2023 21:39:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7VZ-00AOU3-9j
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 21:39:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7VY-0000PR-1t
	for lore@pengutronix.de; Fri, 17 Feb 2023 21:39:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mFYSbV623mUQY4cdqrwS/6KzBtgi3wjxdbCl/a2O+40=; b=udiBQvrw6AobkuJ58QDim6FVnS
	ysiQbn+GCn9dU/RyylPAKxwI7xEX/4LSdPEptM5KSsOjSXfWda0WJZJCIsZcUutu5ahGPSkv4oeFj
	qBjUR8ckxhGyrbIzyM/tzLCRFl9B+j9g7UlnSIc6j61crlywvXprKdTRnxT3HbC22qruHQqJclDXh
	RFmeNbDYav0K5dnO0pc/1xpR6379i10awPlE9AAQyEp+OqTFNRWsqzc0ym1SIMnUDF1hxBohibFwg
	mON/i5vGVXAhd3o+7Vl7wBfShOoPBG7/FQJfCh+wjpXMII4v+5/88zllkgQ22/A0DK8eOoYTXQ83n
	ILCl6+PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7UH-00FeM7-T2; Fri, 17 Feb 2023 20:37:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7UA-00FeKB-Fm
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 20:37:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7U8-0000J7-8w; Fri, 17 Feb 2023 21:37:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7U6-005fDQ-Ed; Fri, 17 Feb 2023 21:37:35 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7U6-00CHeV-RI; Fri, 17 Feb 2023 21:37:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 21:37:33 +0100
Message-Id: <20230217203733.2926811-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217203733.2926811-1-a.fatoum@pengutronix.de>
References: <20230217203733.2926811-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_123738_573665_31EE5336 
X-CRM114-Status: GOOD (  11.56  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] treewide: remove no-longer needed IMD_USED_OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that a __dtb* reference automatically pulls in the IMD tag if
support is compiled in, we can drop all IMD_USED_OF and turn the macro
into a no-op until we remove it completely.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c  | 2 --
 arch/arm/boards/ls1046ardb/lowlevel.c            | 2 --
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c        | 2 --
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c        | 2 --
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c        | 2 --
 arch/arm/boards/phytec-som-imx6/lowlevel.c       | 1 -
 arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c | 2 --
 arch/arm/boards/tqmls1046a/lowlevel.c            | 2 --
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c        | 3 ---
 include/image-metadata.h                         | 5 +----
 10 files changed, 1 insertion(+), 22 deletions(-)

diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
index f7753bd32671..f4c6239551f9 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
@@ -74,8 +74,6 @@ void innocomm_wb15_power_init_board(void)
 
 ENTRY_FUNCTION(start_innocomm_wb15_evk, r0, r1, r2)
 {
-	IMD_USED_OF(imx8mm_innocomm_wb15_evk);
-
 	imx8mm_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 9eae032377d7..fdb5202182db 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -202,8 +202,6 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 	debug_ll_init();
 	ls1046a_init_lowlevel();
 
-	IMD_USED_OF(fsl_ls1046a_rdb);
-
 	i2c = ls1046_i2c_init(IOMEM(LSCH2_I2C1_BASE_ADDR));
 	ret = spd_read_eeprom(i2c, 0x51, &spd_eeprom, SPD_MEMTYPE_DDR4);
 	if (ret) {
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 5861d8d8bece..6381ed3a3690 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -159,7 +159,5 @@ ENTRY_FUNCTION(start_nxp_imx8mm_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mm_evk);
-
 	nxp_imx8mm_evk_start();
 }
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index d6fc32e65b61..88764b9f6549 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -140,7 +140,5 @@ ENTRY_FUNCTION(start_nxp_imx8mp_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mp_evk);
-
 	nxp_imx8mp_evk_start();
 }
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 0c9f6345ff30..f0020e2a1cc3 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -107,7 +107,5 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mq_evk);
-
 	nxp_imx8mq_evk_start();
 }
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 62a1c8de7309..31c1e056aa1f 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -75,7 +75,6 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 		extern char __dtb_##fdt_name##_start[];			\
 									\
 		IMD_USED(physom_mx6_memsize_##memory_size);		\
-		IMD_USED_OF(fdt_name);					\
 									\
 		start_imx6_phytec_common(memory_size, do_early_uart_config, \
 					 __dtb_##fdt_name##_start);	\
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index bfae39ea522e..56fc24b2d6b7 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -87,7 +87,5 @@ ENTRY_FUNCTION(start_prt_prt8mm, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mm_prt8mm);
-
 	prt_prt8mm_start();
 }
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 99dcf1eff7ab..17da09eb515d 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -109,8 +109,6 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 	udelay(500);
 	putc_ll('>');
 
-	IMD_USED_OF(fsl_tqmls1046a_mbls10xxa);
-
 	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
 
 	ls1046a_errata_post_ddr();
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index cf53fb2defd6..d2b677d3890f 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -201,8 +201,5 @@ ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mq_zii_ultra_rmb3);
-	IMD_USED_OF(imx8mq_zii_ultra_zest);
-
 	zii_imx8mq_dev_start();
 }
diff --git a/include/image-metadata.h b/include/image-metadata.h
index bf4e08d98a47..619154dcbe11 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -156,10 +156,7 @@ static inline void imd_used(const void *unused)
 
 #define IMD_USED(_name) \
 	imd_used(&__barebox_imd_##_name)
-#define IMD_USED_OF(_name) ({ \
-	extern char __barebox_imd_OF_ ## _name[]; \
-	imd_used(&__barebox_imd_OF_ ## _name); \
-	})
+#define IMD_USED_OF(_name) do { } while (0)
 
 #endif /* __BAREBOX__ */
 
-- 
2.30.2



