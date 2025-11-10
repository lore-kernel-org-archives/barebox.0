Delivery-date: Mon, 10 Nov 2025 21:35:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcB-00HVRd-31
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc6-0002Kc-Bu
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bOthgLzlPjSPXM8pJCejLBpfXSEGX9u6DjRhg+6wVKM=; b=i2dfVoRBXGv6MYGtBVUiKmy+e8
	E+VrHz35aUMvV8wFuQwsHEcib4I4aGrMAV6UbTsQ5BnY35g3MBKdmRNQCCHoTBR0U1yxf7TBXtRHs
	9wcAeYSV7n48+YuZwOcvvP0Hkks/lyiAs5OyJ6zHYcjY+UuzaRb6OK+ZeA7/imEUen+sxq5QGntXf
	+Erwz2kkI+hfwgf4N/tcSTCruNeqmm267JCctjtLSr04TdjWqjGJLVqwdYUMGMEdEU1pbg6BCQrad
	JOL9t5yvFs862frULcsizxs0Iz2S6VQJ5SUOldkN0UgNB7XpNE10IgllEx6Up2YmgVce/EdNLgYtM
	ujvpuA0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbN-000000065hk-2Egi;
	Mon, 10 Nov 2025 20:35:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbC-000000065SL-3Wfl
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-Ql; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-14-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123450_903613_3A554657 
X-CRM114-Status: GOOD (  12.42  )
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
Subject: [PATCH 14/23] ARM: i.MX: scratch: add OP-TEE FDTO support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OP-TEE has the support to write DTB overlay fragments if enabled via
OP-TEE config switch CFG_EXTERNAL_DTB_OVERLAY.

The overlay fragments are added to the exisiting DTB if OP-TEE was
started with a DTB provided via arg2 or written to a stand-alone DTB
overlay.

This adds a dedicated storage slot which can be passed to OP-TEE or be
used by barebox to extract the added overlay fragment into it.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/scratch.c | 14 ++++++++++++++
 common/Kconfig              | 10 ++++++++++
 include/mach/imx/scratch.h  |  1 +
 3 files changed, 25 insertions(+)

diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index 9c0f1c09c4e0b863d8c95888db7cf0518f698d53..393d3a976fec28a94e4515c82d309eb7338cdd4c 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -18,6 +18,7 @@ struct imx_scratch_space {
 	struct optee_header optee_hdr;
 	/* FDT needs an 8 byte alignment */
 	u8 fdt[CONFIG_SCRATCH_FDT_SIZE] __aligned(8);
+	u8 optee_fdto[CONFIG_SCRATCH_FDTO_SIZE] __aligned(8);
 };
 static_assert(sizeof(struct imx_scratch_space) <= CONFIG_SCRATCH_SIZE);
 
@@ -108,3 +109,16 @@ void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz)
 	*fdt = scratch->fdt;
 	*fdt_sz = sizeof(scratch->fdt);
 }
+
+void imx_scratch_get_optee_fdto(void **fdto, unsigned int *fdto_sz)
+{
+	if (!scratch) {
+		if (IN_PBL)
+			return;
+		else
+			scratch = (void *)arm_mem_scratch_get();
+	}
+
+	*fdto = scratch->optee_fdto;
+	*fdto_sz = sizeof(scratch->optee_fdto);
+}
diff --git a/common/Kconfig b/common/Kconfig
index 3f394416c3c376d1cf842472803a47462bb012ed..2e4f4d6713575dbdabf24da8953978b40ddf5604 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -318,6 +318,16 @@ config SCRATCH_FDT_SIZE
 	  This option should match the OP-TEE's CFG_DTB_MAX_SIZE configuration
 	  if used by OP-TEE.
 
+config SCRATCH_FDTO_SIZE
+	hex
+	default 0x0
+	default 0x4000 if PBL_EARLY_FDT_LOAD
+	prompt "Scratch FDTO size"
+	help
+	  The size of possible FDT overlay areas used by BL3x binaries to store
+	  runtime generated overlays. Can be 0x0 if early FDT support is not
+	  requied e.g. during BL31 and BL32 stage.
+
 config MALLOC_ALIGNMENT
 	hex
 	default 8
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
index 43bf55de48099f1662cd4331620a93303d4dd710..a9745a95732dd961dcae83ec46c3eaa078d62a16 100644
--- a/include/mach/imx/scratch.h
+++ b/include/mach/imx/scratch.h
@@ -15,6 +15,7 @@ const struct optee_header *imx_scratch_get_optee_hdr(void);
 void imx_scratch_save_optee_hdr(const struct optee_header *hdr);
 
 void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz);
+void imx_scratch_get_optee_fdto(void **fdto, unsigned int *fdto_sz);
 
 #define imx8mq_init_scratch_space() imx8m_init_scratch_space(32, true)
 #define imx8mm_init_scratch_space() imx8m_init_scratch_space(32, true)

-- 
2.47.3



