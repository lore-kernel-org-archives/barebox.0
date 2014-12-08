Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xxyae-0008Jr-83
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 13:43:05 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XxyaG-0004d9-2c
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 14:42:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  8 Dec 2014 14:42:29 +0100
Message-Id: <1418046159-29843-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
References: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 02/12] efi: add proper reset hook
To: barebox@lists.infradead.org

This allows to actually reset the system from barebox
instead of dropping back into the EFI firmware.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/efi/efi/efi.c |  2 +-
 include/efi.h      | 11 +++++++----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index 7991cddc4bd6..bdb992fb9f15 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -248,7 +248,7 @@ console_initcall(efi_console_init);
 
 void reset_cpu(unsigned long addr)
 {
-	BS->exit(efi_parent_image, EFI_SUCCESS, 0, NULL);
+	RT->reset_system(EFI_RESET_WARM, EFI_SUCCESS, 0, NULL);
 
 	while(1);
 }
diff --git a/include/efi.h b/include/efi.h
index de51e1a3c9b6..49b8bd44bc1e 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -255,9 +255,11 @@ extern efi_boot_services_t *BS;
 /*
  * Types and defines for EFI ResetSystem
  */
-#define EFI_RESET_COLD 0
-#define EFI_RESET_WARM 1
-#define EFI_RESET_SHUTDOWN 2
+typedef enum {
+	EFI_RESET_COLD = 0,
+	EFI_RESET_WARM = 1,
+	EFI_RESET_SHUTDOWN = 2
+} efi_reset_type_t;
 
 /*
  * EFI Runtime Services table
@@ -279,7 +281,8 @@ typedef struct {
 			s16 *variable_name, efi_guid_t *vendor);
 	void *set_variable;
 	void *get_next_high_mono_count;
-	void *reset_system;
+	void (EFIAPI *reset_system)(efi_reset_type_t reset_type, efi_status_t reset_status,
+			unsigned long data_size, void *reset_data);
 	void *update_capsule;
 	void *query_capsule_caps;
 	void *query_variable_info;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
