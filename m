Delivery-date: Wed, 11 Feb 2026 23:42:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuL-000gBX-3C
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 23:42:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuK-00058s-Pi
	for lore@pengutronix.de; Wed, 11 Feb 2026 23:42:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AjKeIBmr8MlVXLRdt1yU2om8UezBeD6XtEqChZHcm+0=; b=LbYXJmjegxQ+SmRRClrg9aoLbC
	GNAaE5sv7Vz2T+gpatYGKUtOpjrxGSQYaLkQQF77A8HkTL8lT7i2Y9I7p720SfjOg1WwWfT0b2Bat
	7QKVBtKKJDvVxEaGni0zaTwKmWq15VrwHLayEMcpW3Mp2t2/S9v9ZFIGtDV0HG9ypxoOPHH07772P
	XzVLt0ny4glAUX99r2ZBuTy+Nth90lObt6nGN6p/vKo+R2kYmBiuCV/gpfxYmhADS04xUfixQo+mA
	+fVKJo55HEgtjhdGzvliKULkgUlGgWVk8nJSrmXnXm5KNnoKj+dsj6rpsahzNooUqag1p8jzQWMmA
	pWyWf1Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqItl-000000018u2-2r11;
	Wed, 11 Feb 2026 22:41:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIte-000000018nf-2x38
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 22:41:27 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqItb-0004Xa-6H; Wed, 11 Feb 2026 23:41:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Feb 2026 23:41:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-v2025-09-0-topic-optee-of-handling-v3-6-dd83358ae624@pengutronix.de>
References: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
In-Reply-To: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_144122_795166_43654794 
X-CRM114-Status: GOOD (  18.90  )
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
Subject: [PATCH v3 06/14] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to store a FDT within the scratch area. The user needs to
query the location and size via imx_scratch_get_fdt() which can be used
afterwards to write the actual FDT into it.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/scratch.c         | 44 ++++++++++++++++++++++++++++++++++---
 include/asm-generic/memory_layout.h |  6 +++++
 include/mach/imx/scratch.h          |  2 ++
 security/Kconfig                    | 15 +++++++++++++
 4 files changed, 64 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index e4e2d25969f061c9fcdfd7c3d87701b715eb2805..fba4b41040a500e31dc4afae2cdcafed0763af6b 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -13,10 +13,22 @@
 #include <pbl.h>
 
 struct imx_scratch_space {
-	u32 bootrom_log[128];
-	u32 reserved[128];		/* reserve for bootrom log */
-	struct optee_header optee_hdr;
+	union {
+		/* Internal buffer, never use directly! */
+		u8 __buf[CONFIG_SCRATCH_SIZE];
+		struct {
+			u32 bootrom_log[128];
+			/* reserve for bootrom log */
+			u32 reserved[128];
+			struct optee_header optee_hdr;
+			/* FDT needs an 8 byte alignment, always last element! */
+			u8 fdt[] __aligned(8);
+		};
+	};
 };
+/* Ensure that 'fdt' size fits into OP-TEE DTB_MAX_SIZE size */
+static_assert(sizeof(struct imx_scratch_space) -
+	      offsetof(struct imx_scratch_space, fdt) >= PBL_OPTEE_DTB_MAX_SIZE);
 
 static struct imx_scratch_space *scratch;
 
@@ -92,3 +104,29 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
 
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
+	if (PBL_OPTEE_DTB_MAX_SIZE == 0)
+		return NULL;
+
+	sz = sizeof(struct imx_scratch_space) -
+	     offsetof(struct imx_scratch_space, fdt);
+
+	if (sz > PBL_OPTEE_DTB_MAX_SIZE)
+		sz = PBL_OPTEE_DTB_MAX_SIZE;
+
+	if (fdt_sz)
+		*fdt_sz = sz;
+
+	return scratch->fdt;
+}
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 39af73849796fd1954521f0b53bf38fcb0984cef..d477f7bbdbf769a61392da06f2a7b665ce86f5ca 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -25,6 +25,12 @@
 #define OPTEE_SHM_SIZE 0
 #endif
 
+#ifdef CONFIG_PBL_OPTEE_DTB_MAX_SIZE
+#define PBL_OPTEE_DTB_MAX_SIZE CONFIG_PBL_OPTEE_DTB_MAX_SIZE
+#else
+#define PBL_OPTEE_DTB_MAX_SIZE 0
+#endif
+
 #define HEAD_TEXT_BASE MALLOC_BASE
 #define MALLOC_SIZE CONFIG_MALLOC_SIZE
 #define STACK_SIZE  CONFIG_STACK_SIZE
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
diff --git a/security/Kconfig b/security/Kconfig
index 40d468ae07d2b1d4357542df88a0a92eeb3d365f..338bc1e5a72d91bc1617865cacd9d2d8941ca8f5 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -178,6 +178,21 @@ config PBL_OPTEE
 	  to barebox in THUMB2 mode. Make sure you do not compile barebox in THUMB2
 	  mode for OP-TEE versions older than this.
 
+config PBL_OPTEE_DTB_MAX_SIZE
+	hex
+	default 0x0
+	prompt "OP-TEE FDT Size"
+	help
+	  The size of the DTB which is passed by the PBL to OP-TEE. This option
+	  can be left unchanged if OP-TEE DTB support isn't required. If OP-TEE
+	  DTB support is used, this option must match OP-TEE's CFG_DTB_MAX_SIZE
+	  configuration.
+
+	  Note: passing the DTB from the PBL to OP-TEE requires platform
+	  support. Currently only the i.MX8MMini/Nano/Plus SoCs support this.
+	  Furthermore your board code must be modified to pass the FDT
+	  accordingly.
+
 endmenu
 
 source "lib/Kconfig.hardening"

-- 
2.47.3



