Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5H-00051Y-3s
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:14 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 14337B986E
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:45:01 +0200
Message-Id: <1490496304-30850-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/13] efi: add more security related guid for the efivars
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/efi-guid.c |  6 ++++++
 include/efi.h     | 18 ++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/common/efi-guid.c b/common/efi-guid.c
index 71aa21ddd..01b02bbb1 100644
--- a/common/efi-guid.c
+++ b/common/efi-guid.c
@@ -81,6 +81,12 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING( EFI_TCG_PROTOCOL_GUID, "TcgService", "TCGServices Protocol");
 	/* TPM 2.0 */
 	EFI_GUID_STRING( EFI_TCG2_PROTOCOL_GUID, "Tcg2Service", "TCG2Services Protocol");
+	EFI_GUID_STRING(EFI_VENDOR_KEYS_NV_VARIABLE_NAME_GUID, "VendorKeysNv", "Vendor Keys Non-Volatile");
+	EFI_GUID_STRING(EFI_AUTHENTICATED_VARIABLE_GUID, "AuthVar", "Authenticated Variable");
+	EFI_GUID_STRING(EFI_IMAGE_SECURITY_DATABASE_GUID, "ImageSecurityDB", "Image Security Database");
+	EFI_GUID_STRING(EFI_CERT_DB_GUID, "CertDB", "Certificate Database");
+	EFI_GUID_STRING(EFI_SECURE_BOOT_ENABLE_DISABLE_GUID, "SecureBootEnable", "Secure Boot Enable Disable");
+	EFI_GUID_STRING(EFI_CUSTOM_MODE_ENABLE_GUID, "CustomMode", "CustomMode");
 
 	/* File */
 	EFI_GUID_STRING(EFI_IDEBUSDXE_INF_GUID, "IdeBusDxe.inf", "EFI IdeBusDxe.inf File GUID");
diff --git a/include/efi.h b/include/efi.h
index e1fc134ee..31e7b283e 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -507,6 +507,24 @@ extern efi_runtime_services_t *RT;
 #define EFI_TCG2_PROTOCOL_GUID \
 	EFI_GUID(0x607f766c, 0x7455, 0x42be, 0x93, 0x0b, 0xe4, 0xd7, 0x6d, 0xb2, 0x72, 0x0f)
 
+#define EFI_VENDOR_KEYS_NV_VARIABLE_NAME_GUID \
+	EFI_GUID(0x9073e4e0, 0x60ec, 0x4b6e, 0x99, 0x3, 0x4c, 0x22, 0x3c, 0x26, 0x0f, 0x3c)
+
+#define EFI_AUTHENTICATED_VARIABLE_GUID \
+	EFI_GUID(0xaaf32c78, 0x947b, 0x439a, 0xa1, 0x80, 0x2e, 0x14, 0x4e, 0xc3,0x77, 0x92)
+
+#define EFI_IMAGE_SECURITY_DATABASE_GUID \
+	EFI_GUID(0xd719b2cb, 0x3d3a, 0x4596, 0xa3, 0xbc, 0xda, 0xd0, 0xe, 0x67, 0x65, 0x6f)
+
+#define EFI_CERT_DB_GUID \
+	EFI_GUID(0xd9bee56e, 0x75dc, 0x49d9, 0xb4, 0xd7, 0xb5, 0x34, 0x21, 0xf, 0x63, 0x7a)
+
+#define EFI_SECURE_BOOT_ENABLE_DISABLE_GUID \
+	EFI_GUID(0xf0a30bc7, 0xaf08, 0x4556, 0x99, 0xc4, 0x00, 0x10, 0x9, 0xc9, 0x3a, 0x44)
+
+#define EFI_CUSTOM_MODE_ENABLE_GUID \
+	EFI_GUID(0xc076ec0c, 0x7028, 0x4399, 0xa0, 0x72, 0x71, 0xee, 0x5c, 0x44, 0x8b, 0x9f)
+
 extern efi_guid_t efi_file_info_id;
 extern efi_guid_t efi_simple_file_system_protocol_guid;
 extern efi_guid_t efi_device_path_protocol_guid;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
