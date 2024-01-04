Delivery-date: Thu, 04 Jan 2024 15:19:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ1-003cUP-0C
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYz-0005IJ-8F
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IVP7wuTn/zdGpDqlhyN44UlhB0GDI+QBkZdmIKP8uoM=; b=BnZyLuQDmSSG5mddb2yshNLP9+
	I6xfOdfML8P8eVO5Qj31uQiIakh/b/QgjH2dS+Kx/CmIYC7MX72bVu9euA5S8sp9b0qr/Q3i2xzve
	JTVsgHrEU8np/ZYpH2Tioi1XXueQxpCiPyEofWTn/aeQhWa1UA7L1uS9a/GJWNlGz52d0IM5oJBuh
	sAIrJzGGZoL1WXH8I1b+zEGZWAm893z/pTXJ4uYonXse+4KdVZ8JHHwtC2LCByEdwAj/AeZyS6hrE
	7NGOzIbKdEWHwTyFwRyUqvtfttCqPj58kdIi260v/Y7Go1t8IVVOJbgQLBP4Ik57QsOKl6kA47TiC
	hqILVAKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXt-00EJ90-0V;
	Thu, 04 Jan 2024 14:18:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIzG-2M
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004Hu-O1; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000Myc-Sl; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017ze-2Y;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:43 +0100
Message-Id: <20240104141746.165014-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_840127_3AEA667A 
X-CRM114-Status: GOOD (  15.95  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 16/19] ARM: atf: add bl31 v2 calling method
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Newer bl31 binaries require a slightly different parameter structure.
This patch adds support for it. The code is taken from U-Boot and
changed to static initializers for improved readability.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/atf.c                | 94 +++++++++++++++++++++++++++++++
 arch/arm/include/asm/atf_common.h | 40 +++++++++++++
 2 files changed, 134 insertions(+)

diff --git a/arch/arm/cpu/atf.c b/arch/arm/cpu/atf.c
index ccd540d32a..d01e20508c 100644
--- a/arch/arm/cpu/atf.c
+++ b/arch/arm/cpu/atf.c
@@ -80,3 +80,97 @@ void bl31_entry(uintptr_t bl31_entry, uintptr_t bl32_entry,
 
 	atf_entry(&bl31_params, fdt_addr);
 }
+
+struct bl2_to_bl31_params_mem_v2 *bl2_plat_get_bl31_params_v2(uintptr_t bl32_entry,
+					uintptr_t bl33_entry, uintptr_t fdt_addr)
+{
+	static struct bl2_to_bl31_params_mem_v2 p = {
+		.bl_params = {
+			.h = {
+				.type = ATF_PARAM_BL_PARAMS,
+				.version = ATF_VERSION_2,
+				.size = sizeof(struct bl_params),
+				.attr = 0,
+			},
+			.head = &p.bl31_params_node,
+		},
+		.bl31_params_node = {
+			.image_id = ATF_BL31_IMAGE_ID,
+			.image_info = &p.bl31_image_info,
+			.ep_info = &p.bl31_ep_info,
+			.next_params_info = &p.bl32_params_node,
+		},
+		.bl32_params_node = {
+			.image_id = ATF_BL32_IMAGE_ID,
+			.image_info = &p.bl32_image_info,
+			.ep_info = &p.bl32_ep_info,
+			.next_params_info = &p.bl33_params_node,
+		},
+		.bl33_params_node = {
+			.image_id = ATF_BL33_IMAGE_ID,
+			.image_info = &p.bl33_image_info,
+			.ep_info = &p.bl33_ep_info,
+			.next_params_info = NULL,
+		},
+		.bl32_ep_info = {
+			.h = {
+				.type = ATF_PARAM_EP,
+				.version = ATF_VERSION_2,
+				.size = sizeof(struct entry_point_info),
+				.attr = ATF_EP_SECURE,
+			},
+			.spsr = SPSR_64(MODE_EL1, MODE_SP_ELX, DISABLE_ALL_EXECPTIONS),
+		},
+		.bl33_ep_info = {
+			.h = {
+				.type = ATF_PARAM_EP,
+				.version = ATF_VERSION_2,
+				.size = sizeof(struct entry_point_info),
+				.attr = ATF_EP_NON_SECURE,
+			},
+			.spsr = SPSR_64(MODE_EL2, MODE_SP_ELX, DISABLE_ALL_EXECPTIONS),
+		},
+		.bl33_image_info = {
+			.h = {
+				.type = ATF_PARAM_IMAGE_BINARY,
+				.version = ATF_VERSION_2,
+				.size = sizeof(struct atf_image_info),
+				.attr = 0,
+			},
+		},
+		.bl32_image_info = {
+			.h = {
+				.type = ATF_PARAM_IMAGE_BINARY,
+				.version = ATF_VERSION_2,
+				.size = sizeof(struct atf_image_info),
+				.attr = ATF_EP_SECURE,
+			},
+		},
+		.bl31_image_info = {
+			.h = {
+				.type = ATF_PARAM_IMAGE_BINARY,
+				.version = ATF_VERSION_2,
+				.size = sizeof(struct atf_image_info),
+				.attr = 0,
+			},
+		},
+	};
+
+	p.bl33_ep_info.args.arg0 = 0xffff & read_mpidr();
+	p.bl33_ep_info.pc = bl33_entry;
+	p.bl32_ep_info.args.arg3 = fdt_addr;
+	p.bl32_ep_info.pc = bl32_entry;
+
+	return &p;
+}
+
+void bl31_entry_v2(uintptr_t bl31_entry, struct bl_params *params, void *fdt_addr)
+{
+	void (*atf_entry)(struct bl_params *params, uintptr_t plat_params);
+
+	raw_write_daif(SPSR_EXCEPTION_MASK);
+
+	atf_entry = (void *)bl31_entry;
+
+	atf_entry(params, (uintptr_t)fdt_addr);
+}
diff --git a/arch/arm/include/asm/atf_common.h b/arch/arm/include/asm/atf_common.h
index 56e2d3ffaa..ab99cd3ac1 100644
--- a/arch/arm/include/asm/atf_common.h
+++ b/arch/arm/include/asm/atf_common.h
@@ -14,8 +14,14 @@
 #define ATF_PARAM_EP		0x01
 #define ATF_PARAM_IMAGE_BINARY	0x02
 #define ATF_PARAM_BL31		0x03
+#define ATF_PARAM_BL_PARAMS	0x05
 
 #define ATF_VERSION_1	0x01
+#define ATF_VERSION_2	0x02
+
+#define ATF_BL31_IMAGE_ID	0x03
+#define ATF_BL32_IMAGE_ID	0x04
+#define ATF_BL33_IMAGE_ID	0x05
 
 #define ATF_EP_SECURE	0x0
 #define ATF_EP_NON_SECURE	0x1
@@ -158,6 +164,40 @@ struct bl31_params {
 void bl31_entry(uintptr_t bl31_entry, uintptr_t bl32_entry,
 		uintptr_t bl33_entry, uintptr_t fdt_addr);
 
+/* BL image node in the BL image execution sequence */
+struct bl_params_node {
+	unsigned int image_id;
+	struct atf_image_info *image_info;
+	struct entry_point_info *ep_info;
+	struct bl_params_node *next_params_info;
+};
+
+/*
+ * BL image head node in the BL image execution sequence
+ * It is also used to pass information to next BL image.
+ */
+struct bl_params {
+	struct param_header h;
+	struct bl_params_node *head;
+};
+
+struct bl2_to_bl31_params_mem_v2 {
+	struct bl_params bl_params;
+	struct bl_params_node bl31_params_node;
+	struct bl_params_node bl32_params_node;
+	struct bl_params_node bl33_params_node;
+	struct atf_image_info bl31_image_info;
+	struct atf_image_info bl32_image_info;
+	struct atf_image_info bl33_image_info;
+	struct entry_point_info bl31_ep_info;
+	struct entry_point_info bl32_ep_info;
+	struct entry_point_info bl33_ep_info;
+};
+
+struct bl2_to_bl31_params_mem_v2 *bl2_plat_get_bl31_params_v2(uintptr_t bl32_entry,
+					uintptr_t bl33_entry, uintptr_t fdt_addr);
+void bl31_entry_v2(uintptr_t bl31_entry, struct bl_params *params, void *fdt_addr);
+
 #endif /*__ASSEMBLY__ */
 
 #endif /* __BL_COMMON_H__ */
-- 
2.39.2



