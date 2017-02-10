Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc8VF-0001fT-2z
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 10:32:38 +0000
Received: from player734.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 090B5A30DC
 for <barebox@lists.infradead.org>; Fri, 10 Feb 2017 11:32:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 10 Feb 2017 11:37:45 +0100
Message-Id: <1486723070-32548-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1486723070-32548-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170210095655.GA25859@mail.ovh.net>
 <1486723070-32548-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/9] efi: move debug_ll.h to include/efi
To: barebox@lists.infradead.org

so other arch could include it too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/include/mach/debug_ll.h                  | 21 +--------------------
 {arch/efi/include/mach => include/efi}/debug_ll.h |  0
 2 files changed, 1 insertion(+), 20 deletions(-)
 copy {arch/efi/include/mach => include/efi}/debug_ll.h (100%)

diff --git a/arch/efi/include/mach/debug_ll.h b/arch/efi/include/mach/debug_ll.h
index 4ca72de31..e144d86e0 100644
--- a/arch/efi/include/mach/debug_ll.h
+++ b/arch/efi/include/mach/debug_ll.h
@@ -1,20 +1 @@
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
-
-#define EFI_DEBUG 0
-#define EFI_DEBUG_CLEAR_MEMORY 0
-
-#include <efi.h>
-#include <efi/efi.h>
-
-static inline void PUTC_LL(char c)
-{
-	uint16_t str[2] = {};
-	struct efi_simple_text_output_protocol *con_out = efi_sys_table->con_out;
-
-	str[0] = c;
-
-	con_out->output_string(con_out, str);
-}
-
-#endif
+#include <efi/debug_ll.h>
diff --git a/arch/efi/include/mach/debug_ll.h b/include/efi/debug_ll.h
similarity index 100%
copy from arch/efi/include/mach/debug_ll.h
copy to include/efi/debug_ll.h
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
