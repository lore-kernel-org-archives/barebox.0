Delivery-date: Wed, 11 Feb 2026 23:42:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuL-000gBV-2x
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 23:42:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuL-00059B-4d
	for lore@pengutronix.de; Wed, 11 Feb 2026 23:42:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IiYoTV9OST/y1yfY2g6EoBMD/rKaNF78ojH2E+nERwk=; b=ouTHUa7AZjMBstg+BeJnlMBLfo
	5MQmccBose2BTkzhBdnAElv05/db71fhRS+K0C+/RaPSbjM3jLkbIRtPs34sEA6Cigzz8hWLv568Q
	Z5uJUQP/5B7r8Mi012qJnmEQOJpWSeyfYiR4+KpvlWQqabrekwevuauOlpFwbY5qUt02+yzcO01fL
	r/kO7q2hkr5XQNgiV+x7zY7CQ5Kz49uJ9rM4mVhfkiyFWioNeUZVOwwjiBexPBEOUebY6ZuU7aUtv
	tHxlWSz5TxegAsE1csd7/G0P401Yrg6Sr8Yniwop65Qu5G575aSc3soCy2IznP3pKV2JKmK0oeT45
	CDayW8bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIth-000000018qk-1nLH;
	Wed, 11 Feb 2026 22:41:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIte-000000018nc-2Xgq
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 22:41:24 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqItb-0004Xa-17; Wed, 11 Feb 2026 23:41:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Feb 2026 23:41:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-v2025-09-0-topic-optee-of-handling-v3-1-dd83358ae624@pengutronix.de>
References: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
In-Reply-To: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_144122_652394_B62FE21B 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v3 01/14] ARM: i.MX8M: add support to pass DT via lowlevel
 __imx8m*_load_and_start_image_via_tfa()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The internal barebox DTB isn't passed to other BL3x stages albeit it can
be very useful, e.g. OP-TEE (as BL32) could parse the memory
configuration from the DTB.

To avoid unnecessary API breakage, the FDT support is only added to the
lowlevel __imx8m*_load_and_start_image_via_tfa() TF-A load
helpers. This is the first step to be able to pass the board DTB to
other BL3x firmware images.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c  | 16 ++++++++--------
 include/mach/imx/xload.h |  8 ++++----
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 3e1eac66f41456c24e5e0fbfa78c30211db1bcba..a8fc017fb6c86b807aef465226808144514c28f7 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -160,10 +160,10 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
 
 __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 {
-	__imx8mm_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
+	__imx8mm_load_and_start_image_via_tfa(NULL, (void *)MX8M_ATF_BL33_BASE_ADDR);
 }
 
-__noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
+__noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
@@ -235,10 +235,10 @@ void imx8mp_load_bl33(void *bl33)
 
 __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 {
-	__imx8mp_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
+	__imx8mp_load_and_start_image_via_tfa(NULL, (void *)MX8M_ATF_BL33_BASE_ADDR);
 }
 
-__noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
+__noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
@@ -310,10 +310,10 @@ void imx8mn_load_bl33(void *bl33)
 
 __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 {
-	__imx8mn_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
+	__imx8mn_load_and_start_image_via_tfa(NULL, (void *)MX8M_ATF_BL33_BASE_ADDR);
 }
 
-__noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
+__noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
@@ -379,10 +379,10 @@ void imx8mq_load_bl33(void *bl33)
 
 __noreturn void imx8mq_load_and_start_image_via_tfa(void)
 {
-	__imx8mq_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
+	__imx8mq_load_and_start_image_via_tfa(NULL, (void *)MX8M_ATF_BL33_BASE_ADDR);
 }
 
-__noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
+__noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 396c728547614091fc710de50dc1583c6b6e2a68..9a9827156257847411ac34f02c6fe6633f6fb11a 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -33,10 +33,10 @@ void __noreturn imx8mm_load_and_start_image_via_tfa(void);
 void __noreturn imx8mn_load_and_start_image_via_tfa(void);
 void __noreturn imx8mp_load_and_start_image_via_tfa(void);
 void __noreturn imx8mq_load_and_start_image_via_tfa(void);
-void __noreturn __imx8mm_load_and_start_image_via_tfa(void *bl33);
-void __noreturn __imx8mn_load_and_start_image_via_tfa(void *bl33);
-void __noreturn __imx8mp_load_and_start_image_via_tfa(void *bl33);
-void __noreturn __imx8mq_load_and_start_image_via_tfa(void *bl33);
+void __noreturn __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33);
+void __noreturn __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33);
+void __noreturn __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33);
+void __noreturn __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33);
 
 void __noreturn imx93_load_and_start_image_via_tfa(void);
 void __noreturn __imx93_load_and_start_image_via_tfa(void *bl33);

-- 
2.47.3



