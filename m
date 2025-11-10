Delivery-date: Mon, 10 Nov 2025 21:35:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc4-00HVMV-2L
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc3-0002Gr-0G
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vG/VrXJDXS3Fua0wQStOMGDOPyaHMVfHq1OZkTk0xb4=; b=XJOVd4Ny3G8rnSt9adZAM8fK/o
	doLd3HRzlzfL0zsRfAxyIS1L6THkEI7KTjqj/ibnLN51jI/HJ3CLa5d899VZdEQFRDmo5s5q68vHd
	INRd66j2Ny08CsbSs14eq2C3yNnCA+Wm4IreMtUha2iqSoDetsTc4TQzs1GCLy9jsoFzSrlGOtyzQ
	8qs+mQlzVWpTzcWRzueEWiRMz4ccamBRZcbSEFlY6tF0QDTqcNRhPnRDzgv2fQg0xZgy2lG/js+jy
	/PMYjAq84WDlTe/cKIc9HmDZQZtn+iNOgOVONY19OIJXqjQcDoUKAYne5t3jVfmuDxO0isFaH2CS/
	/JDiFEEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbG-000000065Y8-174w;
	Mon, 10 Nov 2025 20:34:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbB-000000065SF-1uoo
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:51 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-Kb; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-7-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123449_504403_B350D4D8 
X-CRM114-Status: GOOD (  11.69  )
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
Subject: [PATCH 07/23] ARM: i.MX8M: imx8m_tfa_start_bl31() add support for
 bl33 and fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the support to pass the bl33 entry and the fdt to
imx8m_tfa_start_bl31() which is required to pass it later on the the
bl31 via the bl_params.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 531ded2c57b1f194a2f209161ea086f41fccf58f..f4d4774b9eec798dd69042560d83f7313c0cb74f 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -44,6 +44,9 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
  * @tfa_dest:	Place where the BL31 is copied to and executed
  * @tee:	Pointer to the optional BL32 blob
  * @tee_size:	Size of the optional BL32 blob
+ * @bl33:	Pointer to the already loaded BL33 blob
+ * @fdt:	Pointer to the barebox internal DT (either compressed or not
+ *		compressed)
  *
  * This function:
  *
@@ -63,7 +66,7 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
 
 static __noreturn void
 imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
-		     void *tee_bin, size_t tee_size)
+		     void *tee_bin, size_t tee_size, void *bl33, void *fdt)
 {
 	void __noreturn (*bl31)(void) = tfa_dest;
 	unsigned long endmem;
@@ -196,7 +199,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	}
 
 	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size);
+			     bl32, bl32_size, bl33, fdt);
 }
 
 void imx8mp_load_bl33(void *bl33)
@@ -260,7 +263,7 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	}
 
 	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size);
+			     bl32, bl32_size, bl33, fdt);
 }
 
 void imx8mn_load_bl33(void *bl33)
@@ -324,7 +327,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	}
 
 	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size);
+			     bl32, bl32_size, bl33, fdt);
 }
 
 void imx8mq_load_bl33(void *bl33)
@@ -382,7 +385,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	}
 
 	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size);
+			     bl32, bl32_size, bl33, fdt);
 }
 
 void __noreturn imx93_load_and_start_image_via_tfa(void)

-- 
2.47.3



