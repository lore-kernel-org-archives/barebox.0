Delivery-date: Wed, 04 Feb 2026 21:02:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4n-008rmt-2F
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:02:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4k-0005te-AS
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:02:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bvOOycgPLfa/uh6WfCn9NeOhuSHKNbIehm8lECm4JIA=; b=Wx+G/Dt3lz0VU+c+NmO1QreY8i
	p4VPMcC5uPsqPo6T6LQ45wcPLWOvo8Z3laa8YZ4Pr8mr18FU8rgrv7PVFbUKiY2xUFIzBa7CIbo5T
	F/CNmq4cbUDNVVwT+ROUd5bhMJaFI25LneYTiIAQhT7d34dlLwZpVknSUxzlR1BwmdQnyYWtHYo7O
	SHbGUgBkfrpQR4GcVyOM1zOldtLpjDXp5j6dXWMtW8q28glQ9Qs8QTyoOyWO8aF4+6SgHdbloFHT6
	EEUDXq+8jlsHEVnN62jbwJ8sKzYOnFr5tVpUCv/PxE8MEl8zqImaEdvrl/XqhI9djNFl2L9FHExkP
	5rXYOHAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4A-0000000914b-03kR;
	Wed, 04 Feb 2026 20:01:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj42-000000090yt-3rtN
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:01:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnj40-0005Eh-Sp; Wed, 04 Feb 2026 21:01:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 04 Feb 2026 21:01:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-v2025-09-0-topic-optee-of-handling-v2-6-da075e6818e0@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_120126_997142_8DF8DF1E 
X-CRM114-Status: GOOD (  14.68  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/15] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to store a FDT within the scratch area. The user needs to
query the location and size via imx_scratch_get_fdt() which can be used
afterwards to write the actual FDT into it.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/scratch.c | 24 ++++++++++++++++++++++++
 common/Kconfig              | 14 ++++++++++++++
 include/mach/imx/scratch.h  |  2 ++
 3 files changed, 40 insertions(+)

diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index e4e2d25969f061c9fcdfd7c3d87701b715eb2805..da138445dfb352f2f3497be77004aefc7d46f188 100644
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
 
@@ -92,3 +95,24 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
 
 	return &scratch->optee_hdr;
 }
+
+u8 *imx_scratch_get_fdt(unsigned int *fdt_sz)
+{
+	unsigned int sz;
+
+	if (!scratch) {
+		if (IN_PBL)
+			return ERR_PTR(-EINVAL);
+		else
+			scratch = (void *)arm_mem_scratch_get();
+	}
+
+	sz = sizeof(scratch->fdt);
+	if (sz == 0)
+		return NULL;
+
+	if (fdt_sz)
+		*fdt_sz = sz;
+
+	return scratch->fdt;
+}
diff --git a/common/Kconfig b/common/Kconfig
index 50c26695b2b56a943edfd00a7e0cb1067ad269a9..265652900a5632177d36efa84d590be6db2e7015 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -304,6 +304,20 @@ config SCRATCH_SIZE
 	default 0x8000
 	prompt "Scratch size"
 
+config SCRATCH_FDT_SIZE
+	hex
+	default 0x0
+	prompt "Scratch FDT size"
+	help
+	  The size of the scratch area used as destination to load and optional
+	  decompress the barebox builtin DTB into it. Can be 0x0 if early FDT
+	  support is not requied.
+
+	  If specified, SCRATCH_FDT_SIZE <= SCRATCH_SIZE must be ensured.
+
+	  This option should match the OP-TEE's CFG_DTB_MAX_SIZE configuration
+	  if used by OP-TEE.
+
 config MALLOC_ALIGNMENT
 	hex
 	default 8
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
index 6c2cecabcd80f71aa754736322151d63f2711745..b74d19a560f33da0a11621af7e11abdce6d1c295 100644
--- a/include/mach/imx/scratch.h
+++ b/include/mach/imx/scratch.h
@@ -14,6 +14,8 @@ struct optee_header;
 const struct optee_header *imx_scratch_get_optee_hdr(void);
 void imx_scratch_save_optee_hdr(const struct optee_header *hdr);
 
+u8 *imx_scratch_get_fdt(unsigned int *fdt_sz);
+
 #define imx8mq_init_scratch_space() imx8m_init_scratch_space(32, true)
 #define imx8mm_init_scratch_space() imx8m_init_scratch_space(32, true)
 #define imx8mn_init_scratch_space() imx8m_init_scratch_space(16, true)

-- 
2.47.3



