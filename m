Delivery-date: Mon, 15 Aug 2022 14:57:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNZf9-006RNV-2K
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 14:57:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNZf8-0002Bu-V8
	for lore@pengutronix.de; Mon, 15 Aug 2022 14:57:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QlOl34IR/tBBEFCtUSk+ZmBrdeQqx8R/ifiZFI9ciXU=; b=qUAmfw4BcqfCYQ63sO20vBF0y3
	SVgYE4O5riMSgd5swv5Mt0pk6umvy1aBfDL/6rlOoWFH4OSF8qOxMJEZA8QVX1w7VrtAa6gnTauF8
	vIVNoCv3EH7ad57dARTvQElwAJ2RrfiHpFO8FcNbj5hVCt6c8W+S87kfzFOhHIj17LlfbNWJJ3xWo
	IjmfxbQOYbFoC+TJ+R0aixBL1Z+9Q0bJvMKQ/uPpLAvsksAEdHKhrGdimT7Ujxtd7vcD2xTJ6DjP9
	QUtMy7A2bdBly/JsM7bi0WpnnLdkyryNVGuYIm9dDibuVOtJU4hzQHW0Z/wVUPJIRpTw65IIWlmVK
	0NiI7oHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZdV-00GPtZ-Pe; Mon, 15 Aug 2022 12:56:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZdN-00GPml-HO
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 12:55:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZdJ-0001ty-LH; Mon, 15 Aug 2022 14:55:53 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZdG-003vIx-Ls; Mon, 15 Aug 2022 14:55:52 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZdH-009m8K-Vd; Mon, 15 Aug 2022 14:55:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 14:55:49 +0200
Message-Id: <20220815125551.2329928-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_055557_826252_C0E639B3 
X-CRM114-Status: GOOD (  11.81  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] ARM: i.MX8M: atf: mark ATF start functions as __noreturn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The early exit in imx8m_atf_load_bl31 doesn't serve any real purpose.
If a too big TF-A ends up being loaded we shouldn't return, but
just panic outright, so the user fixes their barebox build.

Change the WARN_ON to a BUG_ON() and then mark all callers of this
function as __noreturn to document their purpose and to guide
optimization.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/atf.c                | 26 ++++++++++----------------
 arch/arm/mach-imx/include/mach/atf.h   | 10 ++++++----
 arch/arm/mach-imx/include/mach/xload.h |  9 ++++++---
 3 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index a4c658283006..df23dbfc0e5a 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -35,12 +35,11 @@
  *
  */
 
-static void imx8m_atf_load_bl31(const void *fw, size_t fw_size, void *atf_dest)
+static __noreturn void imx8m_atf_load_bl31(const void *fw, size_t fw_size, void *atf_dest)
 {
 	void __noreturn (*bl31)(void) = atf_dest;
 
-	if (WARN_ON(fw_size > MX8M_ATF_BL31_SIZE_LIMIT))
-		return;
+	BUG_ON(fw_size > MX8M_ATF_BL31_SIZE_LIMIT);
 
 	memcpy(bl31, fw, fw_size);
 
@@ -48,29 +47,30 @@ static void imx8m_atf_load_bl31(const void *fw, size_t fw_size, void *atf_dest)
 		     "r" (atf_dest - 16) :
 		     "cc");
 	bl31();
+	__builtin_unreachable();
 }
 
-void imx8mm_atf_load_bl31(const void *fw, size_t fw_size)
+__noreturn void imx8mm_atf_load_bl31(const void *fw, size_t fw_size)
 {
 	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
 }
 
-void imx8mn_atf_load_bl31(const void *fw, size_t fw_size)
+__noreturn void imx8mn_atf_load_bl31(const void *fw, size_t fw_size)
 {
 	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
 }
 
-void imx8mp_atf_load_bl31(const void *fw, size_t fw_size)
+__noreturn void imx8mp_atf_load_bl31(const void *fw, size_t fw_size)
 {
 	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
 }
 
-void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
+__noreturn void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
 {
 	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
 }
 
-void imx8mm_load_and_start_image_via_tfa(void)
+__noreturn void imx8mm_load_and_start_image_via_tfa(void)
 {
 	size_t bl31_size;
 	const u8 *bl31;
@@ -126,11 +126,9 @@ void imx8mm_load_and_start_image_via_tfa(void)
 	get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
 
 	imx8mm_atf_load_bl31(bl31, bl31_size);
-
-	/* not reached */
 }
 
-void imx8mp_load_and_start_image_via_tfa(void)
+__noreturn void imx8mp_load_and_start_image_via_tfa(void)
 {
 	size_t bl31_size;
 	const u8 *bl31;
@@ -165,11 +163,9 @@ void imx8mp_load_and_start_image_via_tfa(void)
 	get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
 
 	imx8mp_atf_load_bl31(bl31, bl31_size);
-
-	/* not reached */
 }
 
-void imx8mn_load_and_start_image_via_tfa(void)
+__noreturn void imx8mn_load_and_start_image_via_tfa(void)
 {
 	size_t bl31_size;
 	const u8 *bl31;
@@ -204,6 +200,4 @@ void imx8mn_load_and_start_image_via_tfa(void)
 	get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
 
 	imx8mn_atf_load_bl31(bl31, bl31_size);
-
-	/* not reached */
 }
diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
index bc400ddbad4c..ca54bb5fbf82 100644
--- a/arch/arm/mach-imx/include/mach/atf.h
+++ b/arch/arm/mach-imx/include/mach/atf.h
@@ -4,6 +4,8 @@
 #define __IMX_ATF_H__
 
 #include <linux/sizes.h>
+#include <linux/compiler.h>
+#include <linux/types.h>
 #include <asm/system.h>
 
 #define MX8M_ATF_BL31_SIZE_LIMIT	SZ_64K
@@ -16,9 +18,9 @@
 #define MX8MM_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
 #define MX8MQ_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
 
-void imx8mm_atf_load_bl31(const void *fw, size_t fw_size);
-void imx8mn_atf_load_bl31(const void *fw, size_t fw_size);
-void imx8mp_atf_load_bl31(const void *fw, size_t fw_size);
-void imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
+void __noreturn imx8mm_atf_load_bl31(const void *fw, size_t fw_size);
+void __noreturn imx8mn_atf_load_bl31(const void *fw, size_t fw_size);
+void __noreturn imx8mp_atf_load_bl31(const void *fw, size_t fw_size);
+void __noreturn imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
 
 #endif
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 3090c9c83bd7..fe43d2502632 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -3,6 +3,9 @@
 #ifndef __MACH_XLOAD_H
 #define __MACH_XLOAD_H
 
+#include <linux/compiler.h>
+#include <linux/types.h>
+
 int imx53_nand_start_image(void);
 int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
 int imx6_spi_start_image(int instance);
@@ -13,9 +16,9 @@ int imx8m_esdhc_load_image(int instance, bool start);
 int imx8mn_esdhc_load_image(int instance, bool start);
 int imx8mp_esdhc_load_image(int instance, bool start);
 
-void imx8mm_load_and_start_image_via_tfa(void);
-void imx8mn_load_and_start_image_via_tfa(void);
-void imx8mp_load_and_start_image_via_tfa(void);
+void __noreturn imx8mm_load_and_start_image_via_tfa(void);
+void __noreturn imx8mn_load_and_start_image_via_tfa(void);
+void __noreturn imx8mp_load_and_start_image_via_tfa(void);
 
 int imx_image_size(void);
 int piggydata_size(void);
-- 
2.30.2



