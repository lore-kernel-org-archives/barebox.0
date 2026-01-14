Delivery-date: Wed, 14 Jan 2026 13:03:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzag-001Dny-2n
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:03:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzaf-0008Qo-8j
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:03:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NA6kwzbK3JsRtrf8J5C8EPu4wec7lIlrCSid/m+O3q8=; b=HLljp7k+4bCOqsiB8Q/CKz569I
	5zMMhyT9i9OCgh2hLkVT9SsQmUbL/pNRaQurMjX3dBQ1G6qKq5KDfuFk9KmlthldjbwtAhl+UM/I9
	TQrzpgLdjHIdqnvRPC0HEg3ZRs7MJEQK0CoQLDWpaVxtclVRibmAoSs9rBEBTH/yS0n3AkPHE6Pqf
	kd0uoIlVQKcsXV1Fn7GcNt33HuPyYNTfSp5f9tvJ6hlzN9BDPAxit7mZ2SyRBFvCGgvS8Zj+pgl0Q
	onsoa+ujmAjArU4CWqRd5/3KJFknvUr0LRkSNTrFiSAIIN0YIJMa1rdkklaLXq7S3DZL3x/4oSPAX
	3VeHH66g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfza6-000000094WO-1Y5U;
	Wed, 14 Jan 2026 12:02:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzZx-000000094TL-1No2
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:02:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-00084d-2G; Wed, 14 Jan 2026 13:02:23 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-000a7U-1i;
	Wed, 14 Jan 2026 13:02:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-00000003xZ4-1pvE;
	Wed, 14 Jan 2026 13:02:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 14 Jan 2026 13:00:58 +0100
Message-ID: <20260114120221.941836-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260114120221.941836-1-a.fatoum@pengutronix.de>
References: <20260114120221.941836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040225_368926_9C7A02D3 
X-CRM114-Status: GOOD (  11.99  )
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
Subject: [PATCH v2 4/5] ARM: i.MX8M: cosmetic cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Rename the local imx8m_atf_start_bl31() to imx8m_tfa_start_bl31() since
the official naming is Trusted-Firmware A (TF-A) and not ARM Trusted
Firmware which was the former name.

While on it rename the parameters to make it clear what firmware
component is passed and align the function documentation with the
reality.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v1 - > v2:
  - split off preparatory patch from
    https://lore.barebox.org/barebox/20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de/T/#t
---
 arch/arm/mach-imx/atf.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 11fe0334059d..df2991f47827 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -19,11 +19,11 @@
 #include <mach/imx/xload.h>
 
 /**
- * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
+ * imx8m_tfa_start_bl31 - Load TF-A BL31 blob and transfer control to it
  *
- * @fw:		Pointer to the BL31 blob
- * @fw_size:	Size of the BL31 blob
- * @atf_dest:	Place where the BL31 is copied to and executed
+ * @tfa:	Pointer to the BL31 blob
+ * @tfa_size:	Size of the BL31 blob
+ * @tfa_dest:	Place where the BL31 is copied to and executed
  *
  * This function:
  *
@@ -37,12 +37,12 @@
  *     3. Transfers control to BL31
  */
 
-static __noreturn void imx8m_atf_start_bl31(const void *fw, size_t fw_size, void *atf_dest)
+static __noreturn void imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest)
 {
-	void __noreturn (*bl31)(void) = atf_dest;
+	void __noreturn (*bl31)(void) = tfa_dest;
 	int ret;
 
-	BUG_ON(fw_size > MX8M_ATF_BL31_SIZE_LIMIT);
+	BUG_ON(tfa_size > MX8M_ATF_BL31_SIZE_LIMIT);
 
 	if (IS_ENABLED(CONFIG_FSL_CAAM_RNG_PBL_INIT)) {
 		ret = imx_early_caam_init(MX8M_CAAM_BASE_ADDR);
@@ -52,10 +52,10 @@ static __noreturn void imx8m_atf_start_bl31(const void *fw, size_t fw_size, void
 			pr_debug("CAAM early init successful\n");
 	}
 
-	memcpy(bl31, fw, fw_size);
+	memcpy(bl31, tfa_bin, tfa_size);
 
 	asm volatile("msr sp_el2, %0" : :
-		     "r" (atf_dest - 16) :
+		     "r" (tfa_dest - 16) :
 		     "cc");
 	bl31();
 	__builtin_unreachable();
@@ -176,7 +176,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
 		get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
 	}
 
-	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
+	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
 }
 
 void imx8mp_load_bl33(void *bl33)
@@ -250,10 +250,9 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
 		get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
 	}
 
-	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
+	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
 }
 
-
 void imx8mn_load_bl33(void *bl33)
 {
 	enum bootsource src;
@@ -325,7 +324,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
 		get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
 	}
 
-	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
+	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
 }
 
 void imx8mq_load_bl33(void *bl33)
@@ -393,7 +392,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
 		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
 	}
 
-	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
+	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
 }
 
 void __noreturn imx93_load_and_start_image_via_tfa(void)
-- 
2.47.3



