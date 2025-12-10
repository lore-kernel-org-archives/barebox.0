Delivery-date: Wed, 10 Dec 2025 14:17:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTK4A-009vQ5-16
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 14:17:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTK49-0003xG-Lx
	for lore@pengutronix.de; Wed, 10 Dec 2025 14:17:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bwvp/R0c6bFE7jo/VHBMaOAgNo5vLO73c5dGyFjYmfA=; b=MXLhYk3f8YMF3uIBYxR52P0C+z
	StrZ7GVgiOdTF48XtZEaNeRjtnfuL14EIPZRq/eBpzqEQimH23NvOFk8Sk97GY9EEYd3iuyXgp28y
	fjraa2yP70ebnqNgbbxK2p3UTQVv7FPxSZRN6lgGCjO3/2PgM0+NoomQUYzV8Kg0lY67O+OxrQSMY
	e/9cwBQHdiDcgY2Zisfc6o4rawa3TeN7g/9PC3KMFkauVjDg99YO8jALKdv3LC9FiH+hIV7cdV4P8
	6UlRvrXQ01W55Mn3zTVwbUblIJZRS8JgDL6QkmZkB228XI0uHV4M5Q1didJCNe+tmkjkrtJYcRD4h
	RsFBgRdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTK3a-0000000FTMX-0IWK;
	Wed, 10 Dec 2025 13:16:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTK3X-0000000FTLT-01Ou
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 13:16:36 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vTK3U-0003mZ-Oz; Wed, 10 Dec 2025 14:16:32 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 10 Dec 2025 14:16:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-v2025-11-0-topic-optee-imx6-start-v2-1-5328020f7f80@pengutronix.de>
References: <20251210-v2025-11-0-topic-optee-imx6-start-v2-0-5328020f7f80@pengutronix.de>
In-Reply-To: <20251210-v2025-11-0-topic-optee-imx6-start-v2-0-5328020f7f80@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_051635_040558_688592D7 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: i.MX: scratch: add generic init for imx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The zero_init, memset and scratch assignment were the same, and will be
the same for i.MX6. Why not make it generic?

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig   |  2 +-
 arch/arm/mach-imx/scratch.c | 18 +++++++++---------
 include/mach/imx/scratch.h  |  1 +
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 99b6c51333..208e6488bd 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -57,7 +57,7 @@ config ARCH_IMX_ROMAPI
 
 config ARCH_IMX_SCRATCHMEM
 	def_bool y
-	depends on ARCH_IMX8M || ARCH_IMX9
+	depends on ARCH_IMX6 || ARCH_IMX8M || ARCH_IMX9
 
 config ARCH_IMX_TZASC
 	bool
diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index 393d3a976f..f26038b029 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -24,25 +24,25 @@ static_assert(sizeof(struct imx_scratch_space) <= CONFIG_SCRATCH_SIZE);
 
 static struct imx_scratch_space *scratch;
 
-void imx8m_init_scratch_space(int ddr_buswidth, bool zero_init)
+void imx_init_scratch_space(ulong endmem, bool zero_init)
 {
-	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
-		imx8m_barebox_earlymem_size(ddr_buswidth);
-
 	scratch = (void *)arm_mem_scratch(endmem);
 
 	if (zero_init)
 		memset(scratch, 0, sizeof(*scratch));
 }
 
+void imx8m_init_scratch_space(int ddr_buswidth, bool zero_init)
+{
+	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
+		imx8m_barebox_earlymem_size(ddr_buswidth);
+	imx_init_scratch_space(endmem, zero_init);
+}
+
 void imx93_init_scratch_space(bool zero_init)
 {
 	ulong endmem = MX9_DDR_CSD1_BASE_ADDR + imx9_ddrc_sdram_size();
-
-	scratch = (void *)arm_mem_scratch(endmem);
-
-	if (zero_init)
-		memset(scratch, 0, sizeof(*scratch));
+	imx_init_scratch_space(endmem, zero_init);
 }
 
 void imx8m_scratch_save_bootrom_log(const u32 *rom_log)
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
index a9745a9573..a86f5ca38a 100644
--- a/include/mach/imx/scratch.h
+++ b/include/mach/imx/scratch.h
@@ -3,6 +3,7 @@
 #ifndef __MACH_IMX_SCRATCH_H
 #define __MACH_IMX_SCRATCH_H
 
+void imx_init_scratch_space(ulong endmem, bool zero_init);
 void imx8m_init_scratch_space(int ddr_buswidth, bool zero_init);
 void imx93_init_scratch_space(bool zero_init);
 

-- 
2.47.3



