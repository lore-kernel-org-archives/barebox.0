Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002Sd-T6
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:27 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:41 +0200
Message-Id: <1437160969-31517-9-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 08/16] efi: add helper functions to write EFI variables
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi.c          | 27 +++++++++++++++++++++++++++
 arch/efi/include/mach/efi.h |  4 ++++
 2 files changed, 31 insertions(+)

diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index c05d183c02fa..b0e98f95b02b 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -83,6 +83,33 @@ out:
 	return buf;
 }
 
+int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
+		     void *buf, unsigned long size)
+{
+	efi_status_t efiret = EFI_SUCCESS;
+	s16 *name16 = strdup_char_to_wchar(name);
+
+	efiret = RT->set_variable(name16, vendor, attributes, size, buf);
+
+	free(name16);
+
+	return -efi_errno(efiret);
+}
+
+int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec)
+{
+	char buf[20];
+	wchar_t buf16[40];
+
+	snprintf(buf, sizeof(buf), "%lld", usec);
+	strcpy_char_to_wchar(buf16, buf);
+
+	return efi_set_variable(name, vendor,
+				EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				EFI_VARIABLE_RUNTIME_ACCESS, buf16,
+				(strlen(buf)+1) * sizeof(wchar_t));
+}
+
 struct efi_boot {
 	u32 attributes;
 	u16 file_path_len;
diff --git a/arch/efi/include/mach/efi.h b/arch/efi/include/mach/efi.h
index 1e9782a136c2..2b25cf1868ad 100644
--- a/arch/efi/include/mach/efi.h
+++ b/arch/efi/include/mach/efi.h
@@ -21,4 +21,8 @@ static inline void *efi_get_global_var(char *name, int *var_size)
 	return efi_get_variable(name, &efi_global_variable_guid, var_size);
 }
 
+int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
+		     void *buf, unsigned long size);
+int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
+
 #endif /* __MACH_EFI_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
