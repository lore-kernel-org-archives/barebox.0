Delivery-date: Tue, 16 Jan 2024 18:08:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvo-002FMR-35
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:08:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvp-0007R2-ER
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:08:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jnUq0qoON8QjAdH+wu/OSyAZfKduxyvFH1uiLDXYEC8=; b=L5rnpz+osSPN6azgQ7L2InJn0T
	UVYgON8p7rCYGWDXEs2Op/lp7gdRQ2F3l5fhNhGaVUJ4FXLEgGIbiC9A+mm9/PFZbkniad7K4kKxO
	IH24f4lF/F+MgOmBKA/2l/UkVLwn8wAdaeyVU3AZIIdO//uUTSoyMF63JsvMbLLZcjPuOWfql1Jhp
	8fbW6x114XcP8yWLaBrOKV4w2wPOaQ/Nyyfinm7TitTpdQhOb+xsyZlFuEIuHd+Qc1hDmsevNS61F
	xdAkRgMRoJZJ5PldxZ9B6G7rjQe+bK30IEBJ8PJpx3VX4moPAjSTS6rgieIu6oNVG8VliLkj3acIA
	Pw+sJWrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmun-00ChvO-0i;
	Tue, 16 Jan 2024 17:07:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmug-00ChqA-0d
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 17:07:49 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-1R
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:23 +0100
Message-Id: <20240116170738.209954-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090746_324378_4DE9C82A 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 03/18] ARM: i.MX8M: scratch: make imx_scratch_space private
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make the scratch layout opaque and provide required accessor functions
to make it easier to extent it later on.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/romapi.c  |  6 ++----
 arch/arm/mach-imx/scratch.c | 12 +++++++++++-
 include/mach/imx/scratch.h  |  6 ++----
 3 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index e11f38202461..51e35c9d2aa2 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -220,10 +220,8 @@ const u32 *imx8m_get_bootrom_log(void)
 		return (u32 *)rom_log_addr;
 	}
 
-	if (!IN_PBL) {
-		const struct imx_scratch_space *scratch = arm_mem_scratch_get();
-		return scratch->bootrom_log;
-	}
+	if (!IN_PBL)
+		return imx8m_scratch_get_bootrom_log();
 
 	return NULL;
 }
diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index 0828b55ff8e5..fba00955c095 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -8,7 +8,11 @@
 #include <mach/imx/scratch.h>
 #include <memory.h>
 
-struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
+struct imx_scratch_space {
+	u32 bootrom_log[128];
+};
+
+void *__imx8m_scratch_space(int ddr_buswidth)
 {
 	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
 		imx8m_barebox_earlymem_size(ddr_buswidth);
@@ -16,6 +20,12 @@ struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
 	return (void *)arm_mem_scratch(endmem);
 }
 
+const u32 *imx8m_scratch_get_bootrom_log(void)
+{
+	const struct imx_scratch_space *scratch = arm_mem_scratch_get();
+	return scratch->bootrom_log;
+}
+
 static int imx8m_reserve_scratch_area(void)
 {
 	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
index 6dcf35750caf..9b01cf315622 100644
--- a/include/mach/imx/scratch.h
+++ b/include/mach/imx/scratch.h
@@ -3,11 +3,9 @@
 #ifndef __MACH_IMX_SCRATCH_H
 #define __MACH_IMX_SCRATCH_H
 
-struct imx_scratch_space {
-	u32 bootrom_log[128];
-};
+void *__imx8m_scratch_space(int ddr_buswidth);
 
-struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth);
+const u32 *imx8m_scratch_get_bootrom_log(void);
 
 #define imx8mq_scratch_space() __imx8m_scratch_space(32)
 #define imx8mm_scratch_space() __imx8m_scratch_space(32)
-- 
2.39.2



