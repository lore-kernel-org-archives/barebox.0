Delivery-date: Mon, 10 Nov 2025 21:35:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc9-00HVPQ-2h
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc5-0002Jd-Fw
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ubrgmoXpgn7dsPL+AWgiDFVG5uFaQ5AaRUioSGRTjVI=; b=3fJOqFUKv1aGcCGe/TSnxw8iY8
	bxX2pw2XfQQmZtgYMnOVr5jzmAxE9IbFi+EyhFAIkdpKMvyfwolTdE7cZCp5INNOBr+lPhrMnbdRv
	vkrMhCDNfKNZO50j1WuaRXx42VHMNeOipsI3Je6ntGLwXxdw+qkDz9QaKrs7slh7VZ8HAr9GkBO2L
	/F0uBtwIJwsURxWVsYFseRVKiW5oTm8dSEGttrzt6LlKAzQlJficAF/Yb+OZBsVKpbVwCtsKZJUa9
	v4sgzkMnjP1D8oEiQdHHGeZryivdY51w5NmNvSvtLzoN/XAN5Zvh4yEPY/s6Y9MvekffHxaVuRKBI
	YioBupQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbH-000000065ZG-2wVO;
	Mon, 10 Nov 2025 20:34:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbB-000000065SI-29io
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:52 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-NC; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-10-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123449_559478_A1C76BD3 
X-CRM114-Status: GOOD (  14.26  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/23] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to store a FDT within the scratch area. The user needs to
query the location and size via imx_scratch_get_fdt() which can be used
afterwards to write the actual FDT into it.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/scratch.c | 16 ++++++++++++++++
 common/Kconfig              | 14 ++++++++++++++
 include/mach/imx/scratch.h  |  2 ++
 3 files changed, 32 insertions(+)

diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index e4e2d25969f061c9fcdfd7c3d87701b715eb2805..9c0f1c09c4e0b863d8c95888db7cf0518f698d53 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -16,7 +16,10 @@ struct imx_scratch_space {
 	u32 bootrom_log[128];
 	u32 reserved[128];		/* reserve for bootrom log */
 	struct optee_header optee_hdr;
+	/* FDT needs an 8 byte alignment */
+	u8 fdt[CONFIG_SCRATCH_FDT_SIZE] __aligned(8);
 };
+static_assert(sizeof(struct imx_scratch_space) <= CONFIG_SCRATCH_SIZE);
 
 static struct imx_scratch_space *scratch;
 
@@ -92,3 +95,16 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
 
 	return &scratch->optee_hdr;
 }
+
+void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz)
+{
+	if (!scratch) {
+		if (IN_PBL)
+			return;
+		else
+			scratch = (void *)arm_mem_scratch_get();
+	}
+
+	*fdt = scratch->fdt;
+	*fdt_sz = sizeof(scratch->fdt);
+}
diff --git a/common/Kconfig b/common/Kconfig
index eb2fb1da1e0919b6e7d5e868c48ad2e195cd8aa8..3f394416c3c376d1cf842472803a47462bb012ed 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -302,8 +302,22 @@ config MALLOC_SIZE
 config SCRATCH_SIZE
 	hex
 	default 0x8000
+	default 0x48000 if PBL_EARLY_FDT_LOAD
 	prompt "Scratch size"
 
+config SCRATCH_FDT_SIZE
+	hex
+	default 0x0
+	default 0x40000 if PBL_EARLY_FDT_LOAD
+	prompt "Scratch FDT size"
+	help
+	  The size of the scratch area used as destination to load and optional
+	  decompress the barebox builtin DTB into it. Can be 0x0 if early FDT
+	  support is not requied e.g. during BL31 and BL32 stage else
+	  SCRATCH_FDT_SIZE <= SCRATCH_SIZE must be ensured.
+	  This option should match the OP-TEE's CFG_DTB_MAX_SIZE configuration
+	  if used by OP-TEE.
+
 config MALLOC_ALIGNMENT
 	hex
 	default 8
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
index 6c2cecabcd80f71aa754736322151d63f2711745..43bf55de48099f1662cd4331620a93303d4dd710 100644
--- a/include/mach/imx/scratch.h
+++ b/include/mach/imx/scratch.h
@@ -14,6 +14,8 @@ struct optee_header;
 const struct optee_header *imx_scratch_get_optee_hdr(void);
 void imx_scratch_save_optee_hdr(const struct optee_header *hdr);
 
+void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz);
+
 #define imx8mq_init_scratch_space() imx8m_init_scratch_space(32, true)
 #define imx8mm_init_scratch_space() imx8m_init_scratch_space(32, true)
 #define imx8mn_init_scratch_space() imx8m_init_scratch_space(16, true)

-- 
2.47.3



