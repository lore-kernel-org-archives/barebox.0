Delivery-date: Wed, 04 Feb 2026 21:02:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4o-008rn6-0M
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:02:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4k-0005tf-Ai
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:02:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3AdeB4vEYDgEEXCesK0If1/+QQDfwqvIOpvE37Dp6ZU=; b=VtQFT0MyGXilr85aI08HSnH4dR
	KlbZJo9xXmL7Ekfsv9HKqsyg5smNq2H0Qab6JZNE4NbZWZtP3IxLrKAAI7ystUUf9MKUign3N9QX8
	6qFuGyiPPfWPLrHNNMswbe2vrB9SzJBFNyAEr0AuhF0Xwl+Og8z2kRFsVzSfpklkrk9QIExGjyfuy
	SlMjMOB/Ohnl7CDESbqag/RoKPJjgJoOP0/cZ4Ei66MxIQTXRaexQYTduDNYL0RNFhYpnSS9/FPnn
	ajlBq9u2UwxYc0t29O0k8t25WYSLPrwkonD4vfhqRuP28vxT7W7XlcHAIXhO0O4f/6Cm2TNlM9AqR
	3pjfjyzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4F-000000091DT-2oiW;
	Wed, 04 Feb 2026 20:01:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4D-0000000919B-3yeW
	for barebox@bombadil.infradead.org;
	Wed, 04 Feb 2026 20:01:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=3AdeB4vEYDgEEXCesK0If1/+QQDfwqvIOpvE37Dp6ZU=; b=hYYtCigttCmG/EKIWuF8Z4w4XP
	9UtpXOqBUgBa+F5Ko2t1ITTnO6lDYb5nKJYvItmDJssC2unGo89IL15vwnsvoslgZUJr211Xg/cmY
	U69NR7Vh6GIJALd4RDONPiPOGF0DmQQwYPQFzJfQN9Mfu3RySuz2UsR3+YJTDAE7j5FTsZnzMkPkf
	MYayFcRSHpjgZw+m2tDz/LnKxetcY+3krPUUm0MQpz9XldG2AMhCvxEdRl5mfoEFZPHFLYqZ2qUNF
	31hpOK8yzGd+opS7xscpUtYqLi8jmEttPVTQnjzK5GqwIhOPvVRBdLP6njjRvTiTOy3S5Mv170JKJ
	jmRaBaog==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj44-00000001BQJ-0OO0
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:01:35 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnj40-0005Eh-Pf; Wed, 04 Feb 2026 21:01:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 04 Feb 2026 21:01:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-v2025-09-0-topic-optee-of-handling-v2-3-da075e6818e0@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_200132_707808_701D929B 
X-CRM114-Status: GOOD (  11.21  )
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
Subject: [PATCH v2 03/15] ARM: i.MX8M: imx8m_tfa_start_bl31() add support
 for bl33 and fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the support to pass the bl33 entry and the fdt to
imx8m_tfa_start_bl31() which is required to pass it later on the the
bl31 via the bl_params.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index a7ec09ea7e9a90e3af7c01126bb6da9626d2d09d..11d26607bc2ea449402d9cb8e20fbb44f425989c 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -45,6 +45,9 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
  * @tfa_dest:	Place where the BL31 is copied to and executed
  * @tee:	Pointer to the optional BL32 blob
  * @tee_size:	Size of the optional BL32 blob
+ * @bl33:	Pointer to the already loaded BL33 blob
+ * @fdt:	Pointer to the barebox internal DT (either compressed or not
+ *		compressed)
  *
  * This function:
  *
@@ -64,7 +67,7 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
 
 static __noreturn void
 imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
-		     void *tee_bin, size_t tee_size)
+		     void *tee_bin, size_t tee_size, void *bl33, void *fdt)
 {
 	void __noreturn (*bl31)(void) = tfa_dest;
 	unsigned long endmem;
@@ -211,7 +214,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	}
 
 	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size);
+			     bl32, bl32_size, bl33, fdt);
 }
 
 void imx8mp_load_bl33(void *bl33)
@@ -276,7 +279,7 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	}
 
 	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size);
+			     bl32, bl32_size, bl33, fdt);
 }
 
 void imx8mn_load_bl33(void *bl33)
@@ -341,7 +344,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	}
 
 	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size);
+			     bl32, bl32_size, bl33, fdt);
 }
 
 void imx8mq_load_bl33(void *bl33)
@@ -400,7 +403,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	}
 
 	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size);
+			     bl32, bl32_size, bl33, fdt);
 }
 
 void __noreturn imx93_load_and_start_image_via_tfa(void)

-- 
2.47.3



