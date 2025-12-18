Delivery-date: Thu, 18 Dec 2025 12:38:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLK-00CoO8-2x
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKl-0000sH-5L
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D/cGz8XHJw1FfZPUnIkhQ8Rgv4cqPNA30/Np9HR34mc=; b=Hersxv/YQhVcKtOmyHOx1u+mIm
	vIFk3gpoh4wkKIC8po9B0TO+PkFKZC0aYWVSbx1gZcGDhnhcrBGvqBasXsLaZI9zeutCC2vq+IrxR
	z31v6kzJL/AsAONiGBCGX+Zsugsel8y2B/oNl5Mzilmro7gRpNPiwuD4KMBkbL2506r2npgbG0X+y
	uuephGBVhB3qD8D2T135r0JuhBXhRO+HA63l3Y30gUgh7G2H5n+h+MxJ9uRdNmJk66sFV0ySh06xq
	6iIklPslWyG8E+098TDJvgej1fsl/rGraBJehEfG6izET1yrjVzs7CCqUVCbJ+D2AvpCpEdeS7fl1
	kO7B5pwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJc-00000008KTJ-2PB5;
	Thu, 18 Dec 2025 11:37:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJO-00000008KBI-0CEV
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-00089w-Hr; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006Gv4-1A;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-1Bpw;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:07 +0100
Message-ID: <20251218111242.1527495-48-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033650_086091_E0094DC6 
X-CRM114-Status: GOOD (  17.62  )
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
Subject: [PATCH v1 47/54] efi: loader: populate OsIndicationsSupported/PlatformLang variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For consultation by the OS, define some default variables.
We don't do anyting fancy with them yet, like signal capsule support or
allow reboot to barebox shell, so we only supply default values.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Makefile      |   1 +
 efi/loader/defaultvars.c | 122 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 123 insertions(+)
 create mode 100644 efi/loader/defaultvars.c

diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 5fd74a2e0c42..c06d1f7c8c35 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -19,3 +19,4 @@ obj-y += efi_var_common.o
 obj-y += efi_variable.o
 obj-y += efi_var_mem.o
 obj-y += efi_var_file.o
+obj-y += defaultvars.o
diff --git a/efi/loader/defaultvars.c b/efi/loader/defaultvars.c
new file mode 100644
index 000000000000..4d8ec72d9166
--- /dev/null
+++ b/efi/loader/defaultvars.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/e7a85ec651ed5794eb9a837e1073f6b3146af501/lib/efi_loader/efi_setup.c
+
+#define pr_fmt(fmt) "efi-loader: defaultvars: " fmt
+
+#include <efi/types.h>
+#include <efi/runtime.h>
+#include <efi/error.h>
+#include <efi/guid.h>
+#include <efi/loader.h>
+#include <efi/variable.h>
+#include <linux/printk.h>
+#include <linux/string.h>
+#include <init.h>
+#include <param.h>
+#include <magicvar.h>
+#include <xfuncs.h>
+
+
+/**
+ * efi_init_platform_lang() - define supported languages
+ *
+ * Set the PlatformLangCodes and PlatformLang variables.
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_init_platform_lang(void *_efi_lang_codes)
+{
+	efi_status_t ret;
+	efi_uintn_t data_size = 0;
+	char *efi_lang_codes = _efi_lang_codes;
+	char *lang = efi_lang_codes;
+	char *pos;
+
+	/*
+	 * Variable PlatformLangCodes defines the language codes that the
+	 * machine can support.
+	 */
+	ret = efi_set_variable_int(u"PlatformLangCodes",
+				   &efi_global_variable_guid,
+				   EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				   EFI_VARIABLE_RUNTIME_ACCESS |
+				   EFI_VARIABLE_READ_ONLY,
+				   strlen(efi_lang_codes) + 1,
+				   efi_lang_codes, false);
+	if (ret != EFI_SUCCESS)
+		goto out;
+
+	/*
+	 * Variable PlatformLang defines the language that the machine has been
+	 * configured for.
+	 */
+	ret = efi_get_variable_int(u"PlatformLang",
+				   &efi_global_variable_guid,
+				   NULL, &data_size, &pos, NULL);
+	if (ret == EFI_BUFFER_TOO_SMALL) {
+		/* The variable is already set. Do not change it. */
+		ret = EFI_SUCCESS;
+		goto out;
+	}
+
+	/*
+	 * The list of supported languages is semicolon separated. Use the first
+	 * language to initialize PlatformLang.
+	 */
+	pos = strchr(lang, ';');
+	if (pos)
+		*pos = 0;
+
+	ret = efi_set_variable_int(u"PlatformLang",
+				   &efi_global_variable_guid,
+				   EFI_VARIABLE_NON_VOLATILE |
+				   EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				   EFI_VARIABLE_RUNTIME_ACCESS,
+				   1 + strlen(lang), lang, false);
+out:
+	if (ret != EFI_SUCCESS)
+		pr_warn("EFI: cannot initialize platform language settings\n");
+	return ret;
+}
+
+/**
+ * efi_init_os_indications() - indicate supported features for OS requests
+ *
+ * Set the OsIndicationsSupported variable.
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_init_os_indications(void *data)
+{
+	u64 os_indications_supported = 0;
+
+	return efi_set_variable_int(u"OsIndicationsSupported",
+				    &efi_global_variable_guid,
+				    EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				    EFI_VARIABLE_RUNTIME_ACCESS |
+				    EFI_VARIABLE_READ_ONLY,
+				    sizeof(os_indications_supported),
+				    &os_indications_supported, false);
+}
+
+/*
+ * This value is used to initialize the PlatformLangCodes variable. Its
+ * value is a semicolon (;) separated list of language codes in native
+ * RFC 4646 format, e.g. "en-US;de-DE". The first language code is used
+ * to initialize the PlatformLang variable.
+ */
+static char *efi_lang_codes;
+
+static int efi_defaultvars_init(void)
+{
+	efi_lang_codes = xstrdup("en-US");
+	dev_add_param_string(&efidev, "lang.codes", NULL, NULL,
+			     &efi_lang_codes, NULL);
+
+	efi_register_deferred_init(efi_init_platform_lang, efi_lang_codes);
+	efi_register_deferred_init(efi_init_os_indications, NULL);
+	return 0;
+}
+late_initcall(efi_defaultvars_init);
+
+BAREBOX_MAGICVAR(efi.lang.codes, "semicolon-separated list of RFC 4646 formatted languages for PlatformLangCodes");
-- 
2.47.3



