Delivery-date: Fri, 13 Dec 2024 22:01:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCnK-007jNO-2Z
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 22:01:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCnK-0001WO-Ow
	for lore@pengutronix.de; Fri, 13 Dec 2024 22:01:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Opc4eHHs8P4Wlx9W//9oaxQ3hu6gUvDInRz15IUlhY0=; b=glWoae8fJlvAKiRk73zRCJLJ+F
	uXlqmOYKxf4DD2aIss5ufzdlf7bZunX6xtUIRRBi6FRTkSmNh/+/TAF42BifnVGQRN5XX/eCDvrq0
	9F8Tb9Zo0+iBH2cvuaV0VQx2gz6ckPjRL5ovZqGQgopZTDyWXFxRXBX9sO+nDu1Nm9F2fsS4UnL3F
	kjYSIO9ooRARoFXXliR89bpWR4zCkCn4Ums1x4VRoNKiKhuRO9lfsxrixESDFxHOy19cQkbDB1XvA
	JF/WQQdyy5Mn0IdJk2e/C/RJ1UlqSSUU9oi11bqWA+QF5OFVDcx4geFoUU0wuyG3fau5FHJx3iIHD
	Tp4wEs6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmv-000000051uX-14BF;
	Fri, 13 Dec 2024 21:01:29 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmp-000000051pI-2gMg
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 21:01:25 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 138CEE74086; Fri, 13 Dec 2024 22:00:26 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id F1D1AE74071
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 22:00:20 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 22:00:15 +0100
Message-ID: <20241213210015.357249-9-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241213210015.357249-1-dev@lynxeye.de>
References: <20241213210015.357249-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_130123_862701_A04A56D9 
X-CRM114-Status: GOOD (  10.73  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] ARM: zynq: zed: always relocate in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PBL console is currently broken, as the setup relocates the
running code, invalidating the previously computed FDT address.
Relocate always to avoid those differences in behavior.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 1ecddf24085f..026a03d04be8 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -276,10 +276,6 @@ static void avnet_zedboard_ps7_init(void)
 
 static void avnet_zedboard_pbl_console_init(void)
 {
-	relocate_to_current_adr();
-	setup_c();
-	barrier();
-
 	cadence_uart_init((void *)ZYNQ_UART1_BASE_ADDR);
 	pbl_set_putc(cadence_uart_putc, (void *)ZYNQ_UART1_BASE_ADDR);
 
@@ -288,9 +284,6 @@ static void avnet_zedboard_pbl_console_init(void)
 
 ENTRY_FUNCTION_WITHSTACK(start_avnet_zedboard, 0xfffff000, r0, r1, r2)
 {
-
-	void *fdt = __dtb_z_zynq_zed_start + get_runtime_offset();
-
 	/* MIO_07 in GPIO Mode 3.3V VIO, can be uncomented because it is the default value */
 	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
 	writel(0x00000600, 0xF800071C );
@@ -305,8 +298,12 @@ ENTRY_FUNCTION_WITHSTACK(start_avnet_zedboard, 0xfffff000, r0, r1, r2)
 
 	avnet_zedboard_ps7_init();
 
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
 	if (IS_ENABLED(CONFIG_PBL_CONSOLE))
 		avnet_zedboard_pbl_console_init();
 
-	barebox_arm_entry(0, SZ_512M, fdt);
+	barebox_arm_entry(0, SZ_512M, __dtb_z_zynq_zed_start);
 }
-- 
2.47.1



