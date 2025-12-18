Delivery-date: Thu, 18 Dec 2025 12:13:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx1-00Co2y-0z
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx0-0005qs-KW
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AADPMCAhSNDJiLDn9zh31JxrCUZWMJNmgWEComjgujY=; b=nsOWTgoWGyvaMVfhuFXHHIVgc2
	7lqZA0F/dn+q8la8Q7knKnCWwnlD8rresN+CcsaOEQlg6trbmb2cMNv1uncV2vM57pnKG84tIji1i
	fgmPSHJ2JJZBsNLF8+AlUaNU1ar7xWhIwiScjX90eGHWMxP1MvMeM9W/PIP7337kbskDtSLT9+p+t
	Cursd2TESqS+MpqhcPWGRcAAZC3f9nM8BTOI4Pz9imvnqWYjFzACa86gHcdYBexmZYIjijVpC0jiZ
	ADREQuqPoDPlCcUCSaaDDoYkx3SWlp6Y/6JJERWBAYZCgz5+yERKUquaILfPcSV1JChN+q1kF8i0r
	jYnDvDCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwC-00000008IJh-1Hna;
	Thu, 18 Dec 2025 11:12:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IG9-2hXA
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005Nb-LI; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006GgY-1N;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-1NcU;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:27 +0100
Message-ID: <20251218111242.1527495-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_686060_3513D16E 
X-CRM114-Status: GOOD (  10.29  )
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
Subject: [PATCH v1 07/54] efi: types: add EFI_RUNTIME_SECTION
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With barebox acting as EFI loader, parts of it will remain resident in
RAM to provide runtime services. Add the necessary definitions for
annotating runtime data and services.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/attributes.h | 84 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/include/efi/attributes.h b/include/efi/attributes.h
index 49d401b8fab1..fe5e5f823ab9 100644
--- a/include/efi/attributes.h
+++ b/include/efi/attributes.h
@@ -2,6 +2,10 @@
 #ifndef _EFI_ATTRIBUTES_H_
 #define _EFI_ATTRIBUTES_H_
 
+#ifndef __ASSEMBLY__
+
+#include <linux/compiler.h>
+
 #ifdef __x86_64__
 #define EFIAPI __attribute__((ms_abi))
 #define efi_va_list __builtin_ms_va_list
@@ -18,4 +22,84 @@
 #define efi_va_end va_end
 #endif /* __x86_64__ */
 
+#ifdef CONFIG_EFI_RUNTIME
+/**
+ * __efi_runtime_data - declares a non-const variable for EFI runtime section
+ *
+ * This macro indicates that a variable is non-const and should go into the
+ * EFI runtime section, and thus still be available when the OS is running.
+ *
+ * Only use on variables not declared const.
+ *
+ * Example:
+ *
+ * ::
+ *
+ *   static __efi_runtime_data my_computed_table[256];
+ */
+#ifndef __efi_runtime_data
+#define __efi_runtime_data __section(.efi_runtime.data)
+#endif
+
+/**
+ * __efi_runtime_rodata - declares a read-only variable for EFI runtime section
+ *
+ * This macro indicates that a variable is read-only (const) and should go into
+ * the EFI runtime section, and thus still be available when the OS is running.
+ *
+ * Only use on variables also declared const.
+ *
+ * Example:
+ *
+ * ::
+ *
+ *   static const __efi_runtime_rodata my_const_table[] = { 1, 2, 3 };
+ */
+#ifndef __efi_runtime_rodata
+#define __efi_runtime_rodata __section(.efi_runtime.rodata)
+#endif
+
+/**
+ * __efi_runtime - declares a function for EFI runtime section
+ *
+ * This macro indicates that a function should go into the EFI runtime section,
+ * and thus still be available when the OS is running.
+ *
+ * Example:
+ *
+ * ::
+ *
+ *   static __efi_runtime compute_my_table(void);
+ */
+#ifndef __efi_runtime
+#define __efi_runtime __section(.efi_runtime.text) \
+	notrace __no_sanitize_address __no_stack_protector
+#endif
+#endif /* CONFIG_EFI_RUNTIME */
+
+/* We #ifndef beforehand to allow compiler flags to override */
+#ifndef __efi_runtime_data
+#define __efi_runtime_data
+#endif
+
+#ifndef __efi_runtime_rodata
+#define __efi_runtime_rodata
+#endif
+
+#ifndef __efi_runtime
+#define __efi_runtime
+#endif
+
+#else  /* __ASSEMBLY__ */
+
+#if defined(CONFIG_EFI_RUNTIME) && !defined(EFI_RUNTIME_SECTION)
+#define EFI_RUNTIME_SECTION(sect) .efi_runtime##sect
+#endif
+
+#ifndef EFI_RUNTIME_SECTION
+#define EFI_RUNTIME_SECTION(sect) sect
+#endif
+
+#endif
+
 #endif
-- 
2.47.3



