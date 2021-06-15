Delivery-date: Tue, 15 Jun 2021 18:48:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCEZ-0002SB-75
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 18:48:15 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCEX-0004d6-6K
	for lore@pengutronix.de; Tue, 15 Jun 2021 18:48:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BC051F65rQryNLxEmo+UvnFGYMabQVFWfdBRjF3KBPU=; b=caB+N42yMtPCZV
	jGSE4/fAPKPJjnKCo57O6qx8a0u0nvj9Pb/oXR5sU8fKSS1dKHud3Nrciwa0i5GRGAUzziUYfERJ5
	Pcxh7i7Ltp2GSS5cf0iVfgQCweOQfWXf85PWnlJUvAEeDsqmrw1DOiVEiTHWLKjOuugzAsXFOESFa
	cmaNTgvMYtxsUH5V1xNCZTtOiTfvuEwBGcs9+7IaCIen1VvcqPXVLYoz00YbvPty+jC/qqJqDeqP1
	EHDC2nwY8hs4dj6W0hFr0Bjcz6vljN2zh239VWB3RldBE8MDwkwyWP5vAFuBtoH4sTMEzSAucazC3
	A/rtY7Txqr5/7YZ8Vfow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltC8L-001RJB-2V; Tue, 15 Jun 2021 16:41:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9s1-000WKQ-HD
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ZGRaB1BMH20xm/9SiyogbOCJ/+hAvpqExJnZxa2Ln+s=; b=h/RuJeWhdbByr0JiVahYElLflx
 tP7qp29QQ8LFJEpU/ZQ0Jop87LZ5SvHxjlu28k2YWQsN9QTn3DaCMJ/LmT9dq5i6+BFMrYVtQzVOy
 RH7jpd0Cl8nXTrmJAATv/8QOrf/X/RpF3UW18sIV0Od4G0+hiss44ZPNzGozn/U/9kmmE60xYcS++
 YKumPSbllD8KJoYpFmJw9Ydab2On76uBKtI99JAKRstMWxFjf3DeSy7W7p/8PR50Pu89Fy4rZo6GS
 VJMi1R+gTJD54Mz5f7NCLbyacToVoj+wHUbLa/XLLTtEM2PtfBrL8I5ox2W+1IGD02tPaQ7kkf4zz
 MR0NBhfA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9rp-007zs7-3r
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:16:48 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9rv-0000uI-Ef; Tue, 15 Jun 2021 16:16:43 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0001IA-PL; Tue, 15 Jun 2021 16:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 16:16:38 +0200
Message-Id: <20210615141641.31577-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615141641.31577-1-s.hauer@pengutronix.de>
References: <20210615141641.31577-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_151644_155483_777BEB49 
X-CRM114-Status: GOOD (  28.33  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/11] ARM: Add atf common support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARM trusted firmware has some common data structures passed to bl31.
This patch imports the code supporting this taken from U-Boot.
The defines and data structures are taken directly from U-Boot,
the support code is heavily modified for the sake of readability.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                  |   3 +
 arch/arm/cpu/Makefile             |   1 +
 arch/arm/cpu/atf.c                |  80 +++++++++++++++
 arch/arm/include/asm/atf_common.h | 163 ++++++++++++++++++++++++++++++
 4 files changed, 247 insertions(+)
 create mode 100644 arch/arm/cpu/atf.c
 create mode 100644 arch/arm/include/asm/atf_common.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0740039309..c7ab166888 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -496,4 +496,7 @@ config ARM_MODULE_PLTS
 	  Say y if your memory configuration puts the heap to far away from the
 	  barebox image, causing relocation out of range errors
 
+config ARM_ATF
+	bool
+
 endmenu
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index e7a6e3e6fb..6344ab5066 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -50,6 +50,7 @@ AFLAGS-cache-armv8.pbl.o   :=-Wa,-march=armv8-a
 
 pbl-y += entry.o entry_ll$(S64).o
 pbl-y += uncompress.o
+pbl-$(CONFIG_ARM_ATF) += atf.o
 
 obj-pbl-y += common.o sections.o
 KASAN_SANITIZE_common.o := n
diff --git a/arch/arm/cpu/atf.c b/arch/arm/cpu/atf.c
new file mode 100644
index 0000000000..4753a8a559
--- /dev/null
+++ b/arch/arm/cpu/atf.c
@@ -0,0 +1,80 @@
+#include <common.h>
+#include <asm/atf_common.h>
+#include <asm/system.h>
+
+static inline void raw_write_daif(unsigned int daif)
+{
+	__asm__ __volatile__("msr DAIF, %0\n\t" : : "r" (daif) : "memory");
+}
+
+void bl31_entry(uintptr_t bl31_entry, uintptr_t bl32_entry,
+		uintptr_t bl33_entry, uintptr_t fdt_addr)
+{
+	struct atf_image_info bl31_image_info = {
+		.h = {
+			.type = ATF_PARAM_IMAGE_BINARY,
+			.version = ATF_VERSION_1,
+			.size = sizeof(bl31_image_info),
+		},
+	};
+	struct atf_image_info bl32_image_info = {
+		.h = {
+			.type = ATF_PARAM_IMAGE_BINARY,
+			.version = ATF_VERSION_1,
+			.size = sizeof(bl32_image_info),
+		},
+	};
+	struct entry_point_info bl32_ep_info = {
+		.h = {
+			.type = ATF_PARAM_EP,
+			.version = ATF_VERSION_1,
+			.attr = ATF_EP_SECURE,
+			.size = sizeof(bl32_ep_info),
+		},
+		.pc = bl32_entry,
+		.spsr = SPSR_64(MODE_EL1, MODE_SP_ELX, DISABLE_ALL_EXECPTIONS),
+		.args = {
+			.arg3 = fdt_addr,
+		},
+	};
+	struct atf_image_info bl33_image_info = {
+		.h = {
+			.type = ATF_PARAM_IMAGE_BINARY,
+			.version = ATF_VERSION_1,
+			.size = sizeof(bl33_image_info),
+		},
+	};
+	struct entry_point_info bl33_ep_info = {
+		.h = {
+			.type = ATF_PARAM_EP,
+			.version = ATF_VERSION_1,
+			.attr = ATF_EP_NON_SECURE,
+			.size = sizeof(bl33_ep_info),
+		},
+		.pc = bl33_entry,
+		.spsr = SPSR_64(MODE_EL2, MODE_SP_ELX, DISABLE_ALL_EXECPTIONS),
+		.args = {
+			/* BL33 expects to receive the primary CPU MPID (through x0) */
+			.arg0 = 0xffff & read_mpidr(),
+		},
+	};
+	struct bl31_params bl31_params = {
+		.h = {
+			.type = ATF_PARAM_BL31,
+			.version = ATF_VERSION_1,
+			.size = sizeof(bl31_params),
+		},
+		.bl31_image_info = &bl31_image_info,
+		.bl32_ep_info = &bl32_ep_info,
+		.bl32_image_info = &bl32_image_info,
+		.bl33_ep_info = &bl33_ep_info,
+		.bl33_image_info = &bl33_image_info,
+	};
+	void (*atf_entry)(struct bl31_params *params, uintptr_t plat_params);
+
+	raw_write_daif(SPSR_EXCEPTION_MASK);
+
+	atf_entry = (void *)bl31_entry;
+
+	atf_entry(&bl31_params, fdt_addr);
+}
diff --git a/arch/arm/include/asm/atf_common.h b/arch/arm/include/asm/atf_common.h
new file mode 100644
index 0000000000..56e2d3ffaa
--- /dev/null
+++ b/arch/arm/include/asm/atf_common.h
@@ -0,0 +1,163 @@
+/* SPDX-License-Identifier: BSD-3-Clause */
+/*
+ * This is from the ARM TF Project,
+ * Repository: https://github.com/ARM-software/arm-trusted-firmware.git
+ * File: include/common/bl_common.h
+ * Portions copyright (c) 2013-2016, ARM Limited and Contributors. All rights
+ * reserved.
+ * Copyright (C) 2016-2017 Rockchip Electronic Co.,Ltd
+ */
+
+#ifndef __BL_COMMON_H__
+#define __BL_COMMON_H__
+
+#define ATF_PARAM_EP		0x01
+#define ATF_PARAM_IMAGE_BINARY	0x02
+#define ATF_PARAM_BL31		0x03
+
+#define ATF_VERSION_1	0x01
+
+#define ATF_EP_SECURE	0x0
+#define ATF_EP_NON_SECURE	0x1
+
+#define MODE_RW_SHIFT	0x4
+#define MODE_RW_MASK	0x1
+#define MODE_RW_64	0x0
+#define MODE_RW_32	0x1
+
+#define MODE_EL_SHIFT	0x2
+#define MODE_EL_MASK	0x3
+#define MODE_EL3	0x3
+#define MODE_EL2	0x2
+#define MODE_EL1	0x1
+#define MODE_EL0	0x0
+
+#define MODE_SP_SHIFT	0x0
+#define MODE_SP_MASK	0x1
+#define MODE_SP_EL0	0x0
+#define MODE_SP_ELX	0x1
+
+#define SPSR_DAIF_SHIFT	6
+#define SPSR_DAIF_MASK	0x0f
+
+#define SPSR_64(el, sp, daif)		\
+	(MODE_RW_64 << MODE_RW_SHIFT |	\
+	 ((el) & MODE_EL_MASK) << MODE_EL_SHIFT |	\
+	 ((sp) & MODE_SP_MASK) << MODE_SP_SHIFT |	\
+	 ((daif) & SPSR_DAIF_MASK) << SPSR_DAIF_SHIFT)
+
+#define SPSR_FIQ             (1 << 6)
+#define SPSR_IRQ             (1 << 7)
+#define SPSR_SERROR          (1 << 8)
+#define SPSR_DEBUG           (1 << 9)
+#define SPSR_EXCEPTION_MASK  (SPSR_FIQ | SPSR_IRQ | SPSR_SERROR | SPSR_DEBUG)
+
+#define DAIF_FIQ_BIT (1<<0)
+#define DAIF_IRQ_BIT (1<<1)
+#define DAIF_ABT_BIT (1<<2)
+#define DAIF_DBG_BIT (1<<3)
+#define DISABLE_ALL_EXECPTIONS	\
+	(DAIF_FIQ_BIT | DAIF_IRQ_BIT | DAIF_ABT_BIT | DAIF_DBG_BIT)
+
+#ifndef __ASSEMBLY__
+
+/*******************************************************************************
+ * Structure used for telling the next BL how much of a particular type of
+ * memory is available for its use and how much is already used.
+ ******************************************************************************/
+struct aapcs64_params {
+	unsigned long arg0;
+	unsigned long arg1;
+	unsigned long arg2;
+	unsigned long arg3;
+	unsigned long arg4;
+	unsigned long arg5;
+	unsigned long arg6;
+	unsigned long arg7;
+};
+
+/***************************************************************************
+ * This structure provides version information and the size of the
+ * structure, attributes for the structure it represents
+ ***************************************************************************/
+struct param_header {
+	uint8_t type;		/* type of the structure */
+	uint8_t version;    /* version of this structure */
+	uint16_t size;      /* size of this structure in bytes */
+	uint32_t attr;      /* attributes: unused bits SBZ */
+};
+
+/*****************************************************************************
+ * This structure represents the superset of information needed while
+ * switching exception levels. The only two mechanisms to do so are
+ * ERET & SMC. Security state is indicated using bit zero of header
+ * attribute
+ * NOTE: BL1 expects entrypoint followed by spsr at an offset from the start
+ * of this structure defined by the macro `ENTRY_POINT_INFO_PC_OFFSET` while
+ * processing SMC to jump to BL31.
+ *****************************************************************************/
+struct entry_point_info {
+	struct param_header h;
+	uintptr_t pc;
+	uint32_t spsr;
+	struct aapcs64_params args;
+};
+
+/*****************************************************************************
+ * Image info binary provides information from the image loader that
+ * can be used by the firmware to manage available trusted RAM.
+ * More advanced firmware image formats can provide additional
+ * information that enables optimization or greater flexibility in the
+ * common firmware code
+ *****************************************************************************/
+struct atf_image_info {
+	struct param_header h;
+	uintptr_t image_base;   /* physical address of base of image */
+	uint32_t image_size;    /* bytes read from image file */
+};
+
+/*****************************************************************************
+ * The image descriptor struct definition.
+ *****************************************************************************/
+struct image_desc {
+	/* Contains unique image id for the image. */
+	unsigned int image_id;
+	/*
+	 * This member contains Image state information.
+	 * Refer IMAGE_STATE_XXX defined above.
+	 */
+	unsigned int state;
+	uint32_t copied_size;	/* image size copied in blocks */
+	struct atf_image_info atf_image_info;
+	struct entry_point_info ep_info;
+};
+
+/*******************************************************************************
+ * This structure represents the superset of information that can be passed to
+ * BL31 e.g. while passing control to it from BL2. The BL32 parameters will be
+ * populated only if BL2 detects its presence. A pointer to a structure of this
+ * type should be passed in X0 to BL31's cold boot entrypoint.
+ *
+ * Use of this structure and the X0 parameter is not mandatory: the BL31
+ * platform code can use other mechanisms to provide the necessary information
+ * about BL32 and BL33 to the common and SPD code.
+ *
+ * BL31 image information is mandatory if this structure is used. If either of
+ * the optional BL32 and BL33 image information is not provided, this is
+ * indicated by the respective image_info pointers being zero.
+ ******************************************************************************/
+struct bl31_params {
+	struct param_header h;
+	struct atf_image_info *bl31_image_info;
+	struct entry_point_info *bl32_ep_info;
+	struct atf_image_info *bl32_image_info;
+	struct entry_point_info *bl33_ep_info;
+	struct atf_image_info *bl33_image_info;
+};
+
+void bl31_entry(uintptr_t bl31_entry, uintptr_t bl32_entry,
+		uintptr_t bl33_entry, uintptr_t fdt_addr);
+
+#endif /*__ASSEMBLY__ */
+
+#endif /* __BL_COMMON_H__ */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

