Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo68.mail-out.ovh.net ([46.105.52.162])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciIJW-0006Aq-Tv
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 10:13:57 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id A43533DBFC
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2017 11:13:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Feb 2017 11:19:26 +0100
Message-Id: <1488190770-4034-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170227101416.GB12475@mail.ovh.net>
 <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] efi: move x86 clocksource init at core initcall level
To: barebox@lists.infradead.org

so we can use device/driver model

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/efi/efi.c          | 1 -
 drivers/clocksource/efi.c | 5 ++++-
 include/efi/efi.h         | 2 --
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/efi/efi.c b/common/efi/efi.c
index 1c7aee872..4b589b600 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -348,7 +348,6 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 		      efi_strerror(efiret));
 	mem_malloc_init((void *)mem, (void *)mem + memsize);
 
-	efi_clocksource_init();
 	start_barebox();
 
 	return EFI_SUCCESS;
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 59fd9918a..6d2fee8eb 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <init.h>
 #include <efi.h>
 #include <efi/efi.h>
 #include <clock.h>
@@ -48,7 +49,7 @@ static struct clocksource cs = {
 	.shift  = 0,
 };
 
-int efi_clocksource_init(void)
+static int efi_clocksource_init(void)
 {
 	cs.mult = clocksource_hz2mult(1000 * 1000, cs.shift);
 
@@ -56,3 +57,5 @@ int efi_clocksource_init(void)
 
 	return init_clock(&cs);
 }
+/* for efi the time must be init at core initcall level */
+core_initcall(efi_clocksource_init);
diff --git a/include/efi/efi.h b/include/efi/efi.h
index 2b25cf186..648afb9ec 100644
--- a/include/efi/efi.h
+++ b/include/efi/efi.h
@@ -12,8 +12,6 @@ extern efi_loaded_image_t *efi_loaded_image;
 
 int efi_errno(efi_status_t err);
 
-int efi_clocksource_init(void);
-
 void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size);
 
 static inline void *efi_get_global_var(char *name, int *var_size)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
