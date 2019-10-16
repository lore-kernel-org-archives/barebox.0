Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdd2-0007lv-5H
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 07:21:53 +0000
Received: from geraet.fritz.box (i538755FA.versanet.de [83.135.85.250])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 4BA981C0013
 for <barebox@lists.infradead.org>; Wed, 16 Oct 2019 07:21:46 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 16 Oct 2019 09:21:39 +0200
Message-Id: <20191016072139.2323-5-ahmad@a3f.at>
In-Reply-To: <20191016072139.2323-1-ahmad@a3f.at>
References: <20191016072139.2323-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] efi: silence warning about un-prototyped assembly-called
 functions
To: barebox@lists.infradead.org

Both _relocate and efi_main are only called from assembly, but
-Wmissing-prototypes doesn't know that and warns about them.
Pre-declare prototypes to silence the warnings.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/mach-efi/reloc_x86_64.c | 3 +++
 common/efi/efi.c                 | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/x86/mach-efi/reloc_x86_64.c b/arch/x86/mach-efi/reloc_x86_64.c
index 1db72f5dbc52..e83bacb302ca 100644
--- a/arch/x86/mach-efi/reloc_x86_64.c
+++ b/arch/x86/mach-efi/reloc_x86_64.c
@@ -35,11 +35,14 @@
     SUCH DAMAGE.
 */
 
+#include <linux/linkage.h>
 #include <common.h>
 #include <efi.h>
 
 #include <elf.h>
 
+asmlinkage efi_status_t _relocate (long, Elf64_Dyn *, efi_handle_t, efi_system_table_t *);
+
 efi_status_t _relocate (long ldbase, Elf64_Dyn *dyn, efi_handle_t image, efi_system_table_t *systab)
 {
 	long relsz = 0, relent = 0;
diff --git a/common/efi/efi.c b/common/efi/efi.c
index a7b25cbbe251..73cea3703695 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -17,6 +17,7 @@
  *
  */
 
+#include <linux/linkage.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <memory.h>
@@ -318,6 +319,8 @@ static int efi_init(void)
 }
 device_initcall(efi_init);
 
+asmlinkage efi_status_t efi_main(efi_handle_t, efi_system_table_t *);
+
 /**
  * efi-main - Entry point for EFI images
  */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
