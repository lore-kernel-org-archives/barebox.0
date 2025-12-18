Delivery-date: Thu, 18 Dec 2025 12:41:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNu-00Cod1-0Y
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:41:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNN-0002lF-2S
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:41:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XjGMPl6yMmrVi+63VR8h2xWP/RInJ/2MnHqLYY3ZMYA=; b=FCByWIF5LpJopDGU6Pkl1Yi21+
	ArIPt+NiVLjSuQNqCsD18J6GOih2hflwVClsEQMrOtc7Sh67be7vGKpEMFPNQkq9eO/T8u/2FW94e
	xJ0ugfKnov7ZlJw6qNgUT33gvBFC023+WLMGpLE9HFCJ/z6KMzLsUigcoNQlb13xuSyXIf7WBzZZr
	73HdHH8/QZsb3g+L3ZvMY3ZS1JNDjY9DoyKRb9+WsPWxws9FUgHAZLMSwbOLEglPWTpc37K2eHaLT
	U7Umn3iv/VEtt0g9g4gDdqMF00S3adQrXRtPXVTjjfMmGXdbhz78tpJSTWGIauBcmDYo8doI+Mc54
	e7LuDkMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKZ-00000008Lou-410f;
	Thu, 18 Dec 2025 11:38:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJm-00000008Kd2-1DeD
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XjGMPl6yMmrVi+63VR8h2xWP/RInJ/2MnHqLYY3ZMYA=; b=Kd11B2oO5+xqpMgEpMUs0E53Cd
	nMoOvHXKV77RuPXwLpusEgH6NgSyBP4g+YBfdV7AUGs2+hoN/6vATsGiKsGXzmNUOqKVpyooNBVkC
	KY/eOlfVmCSiKdngZgR7TJQnEfpKPiBFzSNEpNBi2gP4jp554FfHPjEBPy7yn9AWY6Si+Hom3/ke4
	gqbb7f1Okkv5Q+PY1Kw3NcP3tSzx2jQCij1G/jgOEG1XEHsmz24mBWvoRFNMqZic0gAioMdJIMKq1
	ReZxHTD5G91w/tckKR2fMIF294gaXbTkwZO9gA/tEuaczy8Z1Ui48sU0v+CFANDbnrozBcPdmPKLa
	Fv5hWbEw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBRz-00000008fRO-2jJJ
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008BC-1v; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006GvS-2l;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-2Mdq;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:32 +0100
Message-ID: <20251218111242.1527495-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104155_609936_C6EBB266 
X-CRM114-Status: GOOD (  17.94  )
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
Subject: [PATCH v1 12/54] efi: loader: add support for tracing calls back into UEFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will be very verbose, but when trying to pinpoint what operation
is bothering an EFI payload, it's very useful to know every entry and
exit into barebox-provided services.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig.debug       |   7 +++
 efi/loader/Makefile        |   1 +
 efi/loader/trace.c         |  44 +++++++++++++++
 include/efi/loader/trace.h | 111 +++++++++++++++++++++++++++++++++++++
 4 files changed, 163 insertions(+)
 create mode 100644 efi/loader/trace.c
 create mode 100644 include/efi/loader/trace.h

diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index 2de885ebb3f8..64127143a5d6 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -77,6 +77,13 @@ config DEBUG_PROBES
 	  Most consoles do not implement a remove callback to remain operable until
 	  the very end. Consoles using DMA, however, must be removed.
 
+config DEBUG_EFI_LOADER_ENTRY
+	bool "Debug EFI loader entry/exit"
+	depends on EFI_LOADER
+	help
+	  If enabled, this will print whenever an EFI payload/app calls
+	  into barebox or is returned to before ExitBootServices.
+
 config DMA_API_DEBUG
 	bool "Enable debugging of DMA-API usage"
 	depends on HAS_DMA
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 0475cfc7452f..1f07cf6005b9 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-y += memory.o pool_alloc.o
+obj-y += trace.o
diff --git a/efi/loader/trace.c b/efi/loader/trace.c
new file mode 100644
index 000000000000..9eb22805e12e
--- /dev/null
+++ b/efi/loader/trace.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <efi/loader/trace.h>
+#include <linux/minmax.h>
+
+/* 1 if inside barebox code, 0 if inside EFI payload code */
+static int nesting_level = 1;
+
+/**
+ * indent_string() - returns a string for indenting with two spaces per level
+ * @level: indent level
+ *
+ * A maximum of ten indent levels is supported. Higher indent levels will be
+ * truncated.
+ *
+ * Return: A string for indenting with two spaces per level is
+ *         returned.
+ */
+static const char *indent_string(int level)
+{
+	const char *indent = "                    ";
+	const int max = strlen(indent);
+
+	if (level < 0)
+		return "!!EFI_EXIT called without matching EFI_ENTRY!! ";
+
+	level = min(max, level * 2);
+	return &indent[max - level];
+}
+
+const char *__efi_nesting(void)
+{
+	return indent_string(nesting_level);
+}
+
+const char *__efi_nesting_inc(void)
+{
+	return indent_string(nesting_level++);
+}
+
+const char *__efi_nesting_dec(void)
+{
+	return indent_string(--nesting_level);
+}
diff --git a/include/efi/loader/trace.h b/include/efi/loader/trace.h
new file mode 100644
index 000000000000..93bba7bb88c7
--- /dev/null
+++ b/include/efi/loader/trace.h
@@ -0,0 +1,111 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+#ifndef __EFI_LOADER_TRACE_H__
+#define __EFI_LOADER_TRACE_H__
+
+#include <efi/error.h>
+#include <linux/printk.h>
+
+#ifndef __EFI_PRINT
+#ifdef CONFIG_DEBUG_EFI_LOADER_ENTRY
+#define __EFI_PRINT(...)	pr_info(__VA_ARGS__)
+#define __EFI_WARN(...)		pr_warning(__VA_ARGS__)
+#else
+#define __EFI_PRINT(...)	pr_debug(__VA_ARGS__)
+#define __EFI_WARN(...)		pr_debug(__VA_ARGS__)
+#endif
+#endif
+
+const char *__efi_nesting(void);
+const char *__efi_nesting_inc(void);
+const char *__efi_nesting_dec(void);
+
+/*
+ * Enter the barebox world from UEFI:
+ */
+#ifndef EFI_ENTRY
+#define EFI_ENTRY(format, ...) do { \
+	__EFI_PRINT("%sEFI: Entry %s(" format ")\n", __efi_nesting_inc(), \
+		__func__, ##__VA_ARGS__); \
+	} while(0)
+#endif
+
+/*
+ * Exit the barebox world back to UEFI:
+ */
+#ifndef EFI_EXIT
+#define EFI_EXIT(ret) ({ \
+	typeof(ret) _r = ret; \
+	__EFI_PRINT("%sEFI: Exit: %s: %s (%u)\n", __efi_nesting_dec(), \
+		__func__, efi_strerror((uintptr_t)_r), (u32)((uintptr_t) _r & ~EFI_ERROR_MASK)); \
+	_r; \
+	})
+#endif
+
+#ifndef EFI_EXIT2
+#define EFI_EXIT2(ret, val) ({ \
+	typeof(ret) _r = ret; \
+	__EFI_PRINT("%sEFI: Exit: %s: %s (%u) = 0x%llx\n", __efi_nesting_dec(), \
+		__func__, efi_strerror((uintptr_t)_r), (u32)((uintptr_t) _r & ~EFI_ERROR_MASK), \
+		(u64)(uintptr_t)(val)); \
+	_r; \
+	})
+#endif
+
+/*
+ * Call non-void UEFI function from barebox and retrieve return value:
+ */
+#ifndef EFI_CALL
+#define EFI_CALL(exp) ({ \
+	__EFI_PRINT("%sEFI: Call: %s\n", __efi_nesting_inc(), #exp); \
+	typeof(exp) _r = exp; \
+	__EFI_PRINT("%sEFI: %lu returned by %s\n", __efi_nesting_dec(), \
+	      (unsigned long)((uintptr_t)_r & ~EFI_ERROR_MASK), #exp); \
+	_r; \
+})
+#endif
+
+/**
+ * define EFI_RETURN() - return from EFI_CALL in efi_start_image()
+ *
+ * @ret:	status code
+ */
+#ifndef EFI_RETURN
+#define EFI_RETURN(ret) ({ \
+	typeof(ret) _r = ret; \
+	__EFI_PRINT("%sEFI: %lu returned by started image", __efi_nesting_dec(), \
+		    (unsigned long)((uintptr_t)_r & ~EFI_ERROR_MASK)); \
+})
+#endif
+
+/*
+ * Call void UEFI function from barebox:
+ */
+#ifndef EFI_CALL_VOID
+#define EFI_CALL_VOID(exp) do { \
+	__EFI_PRINT("%sEFI: Call: %s\n", __efi_nesting_inc(), #exp); \
+	exp; \
+	__EFI_PRINT("%sEFI: Return From: %s\n", __efi_nesting_dec(), #exp); \
+	} while(0)
+#endif
+
+/*
+ * Write an indented message with EFI prefix
+ */
+#ifndef EFI_PRINT
+#define EFI_PRINT(format, ...) ({ \
+	__EFI_PRINT("%sEFI: " format, __efi_nesting(), \
+		##__VA_ARGS__); \
+	})
+#endif
+
+/*
+ * Write an indented warning with EFI prefix
+ */
+#ifndef EFI_WARN
+#define EFI_WARN(format, ...) ({ \
+	__EFI_WARN("%sEFI: " format, __efi_nesting(), \
+		##__VA_ARGS__); \
+	})
+#endif
+
+#endif
-- 
2.47.3



