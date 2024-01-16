Delivery-date: Tue, 16 Jan 2024 18:09:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvy-002FQS-2u
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvz-0007Xl-Fh
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9IwrPJSAfyaRfOIBEt6MpA6ZSOHotOrckNCxJl/VDZg=; b=zjJUCo6PGOTzk6EdSo8i4JD395
	BbiDumCVWxuqDGHNpG5Cy/c+MoVr7lWLNWci5/NgZDLoKHdKRmiGKplrCohdJhXkWw89n64mK1xLc
	s+1fjwwzeqWR6f6mKTC7dI4uNAhAo0k6amUFVvHpLfKYHbajU+Q2xpXTfkGrer7hYvUfonjYDiNuT
	sV1Kx1NG6WRrKJSbxomEeQQdwp8w6LdiK5iiUCuinDfc8uJgZB/inarIM+qjpEo8077GbUoaCCa/S
	QykfykRgiULbgHgO+zSckG2P7vFH13Da7v6gdYQPrLibIGdD6FfDe99wvc3VRa8xI+PrkOdvIe007
	4uSM5I9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmv4-00CiBL-1S;
	Tue, 16 Jan 2024 17:08:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmuu-00Ci1Q-0E
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:08:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=9IwrPJSAfyaRfOIBEt6MpA6ZSOHotOrckNCxJl/VDZg=; b=eKnsBY//WEeUzPmmCr14vMBwEX
	psSwV4SaYsVIz9xVM5DYx8wqjzOef0yU23pV/NAggbzlzl+XyIs4FWtw9rbLj/zNZfmw9PKqXnBxl
	l5XIh1sQXcBJtCcCDAmlId+0M6tclQ3w1a6HBMtA5p5b6oGCe9Qo+JEGBDyoFxLjWNM8kNRwOQUyz
	ogig2TAXC3qsgzEtsGqz5eQbCrPux6Z/3vJMbIthSwE6QAJSCEwoRQ4gHct2KYGYoE2FKn3TDyZVN
	PeorABcvAig6KUGoWxePvAqS2RV+l9eadyInRclAuKwU45dThPYIODNXogIKFMskqiQgrtAGSNXB2
	DMpurcmw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmuo-00Ddwt-W1
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:07:58 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-Dg
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:35 +0100
Message-Id: <20240116170738.209954-16-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170755_094924_C3733E24 
X-CRM114-Status: GOOD (  10.93  )
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
Subject: [PATCH v2 15/18] ARM: i.MX8M: atf: add support for optee hdr parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The OP-TEE binary can contain a header with useful information like
loadaddr and size. This commit adds the support to take the header
loadaddr into account. If the header is not found the common builtin
loadaddr is used.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 3f796249061d..d7698b397f47 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -13,6 +13,7 @@
 #include <mach/imx/imx8m-regs.h>
 #include <soc/fsl/fsl_udc.h>
 #include <soc/fsl/caam.h>
+#include <tee/optee.h>
 
 /**
  * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
@@ -116,6 +117,24 @@ void imx8mm_load_bl33(void *bl33)
 	memcpy(bl33, __image_start, barebox_pbl_size);
 }
 
+static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32_size)
+{
+	struct optee_header *hdr = *bl32_image;
+	u64 membase;
+
+	if (optee_verify_header(hdr))
+		return;
+
+	imx8m_scratch_save_optee_hdr(hdr);
+
+	membase = (u64)hdr->init_load_addr_hi << 32;
+	membase |= hdr->init_load_addr_lo;
+
+	*bl32 = (void *)membase;
+	*bl32_size -= sizeof(*hdr);
+	*bl32_image += sizeof(*hdr);
+}
+
 __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 {
 	const void *bl31;
@@ -137,6 +156,8 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 				bl33, &bl32_image,
 				&bl32_size);
 
+		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
+
 		memcpy(bl32, bl32_image, bl32_size);
 
 		get_builtin_firmware(imx8mm_bl31_bin_optee, &bl31, &bl31_size);
@@ -201,6 +222,8 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 				bl33, &bl32_image,
 				&bl32_size);
 
+		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
+
 		memcpy(bl32, bl32_image, bl32_size);
 
 		get_builtin_firmware(imx8mp_bl31_bin_optee, &bl31, &bl31_size);
@@ -266,6 +289,8 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 				bl33, &bl32_image,
 				&bl32_size);
 
+		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
+
 		memcpy(bl32, bl32_image, bl32_size);
 
 		get_builtin_firmware(imx8mn_bl31_bin_optee, &bl31, &bl31_size);
@@ -324,6 +349,8 @@ __noreturn void imx8mq_load_and_start_image_via_tfa(void)
 				bl33, &bl32_image,
 				&bl32_size);
 
+		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
+
 		memcpy(bl32, bl32_image, bl32_size);
 
 		get_builtin_firmware(imx8mq_bl31_bin_optee, &bl31, &bl31_size);
-- 
2.39.2



