Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002KG-PB
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:28 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:49 +0200
Message-Id: <1437160969-31517-17-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 16/16] efi: use an EFI variable to save the environment
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi.c | 5 +++++
 common/efi-guid.c  | 1 +
 include/efi.h      | 1 +
 3 files changed, 7 insertions(+)

diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index 07a4d9d0fc57..d3f520f60f14 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -326,8 +326,13 @@ static void fixup_tables(void)
 
 static int efi_init(void)
 {
+	char *env;
+
 	defaultenv_append_directory(env_efi);
 
+	env = xasprintf("/efivars/barebox-env-%pUl", &efi_barebox_vendor_guid);
+	default_environment_path_set(env);
+
 	return 0;
 }
 device_initcall(efi_init);
diff --git a/common/efi-guid.c b/common/efi-guid.c
index f4ff7feadfe4..64f3b1f65fd3 100644
--- a/common/efi-guid.c
+++ b/common/efi-guid.c
@@ -9,6 +9,7 @@ efi_guid_t efi_unknown_device_guid = EFI_UNKNOWN_DEVICE_GUID;
 efi_guid_t efi_null_guid = EFI_NULL_GUID;
 efi_guid_t efi_global_variable_guid = EFI_GLOBAL_VARIABLE_GUID;
 efi_guid_t efi_block_io_protocol_guid = EFI_BLOCK_IO_PROTOCOL_GUID;
+efi_guid_t efi_barebox_vendor_guid = EFI_BAREBOX_VENDOR_GUID;
 efi_guid_t efi_systemd_vendor_guid = EFI_SYSTEMD_VENDOR_GUID;
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
diff --git a/include/efi.h b/include/efi.h
index 5b0de119fb74..b2e965bae1d4 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -485,6 +485,7 @@ extern efi_guid_t efi_unknown_device_guid;
 extern efi_guid_t efi_null_guid;
 extern efi_guid_t efi_global_variable_guid;
 extern efi_guid_t efi_block_io_protocol_guid;
+extern efi_guid_t efi_barebox_vendor_guid;
 extern efi_guid_t efi_systemd_vendor_guid;
 
 #define EFI_SYSTEM_TABLE_SIGNATURE ((u64)0x5453595320494249ULL)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
