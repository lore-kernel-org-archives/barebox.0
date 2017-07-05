Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dShzT-0005xB-94
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 10:57:07 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  5 Jul 2017 12:56:37 +0200
Message-Id: <20170705105637.4484-8-s.trumtrar@pengutronix.de>
In-Reply-To: <20170705105637.4484-1-s.trumtrar@pengutronix.de>
References: <20170705105637.4484-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 8/8] efi: efi: register barebox-update handler
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/efi/efi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/efi/efi.c b/common/efi/efi.c
index cc3051dedae9..2c3ad33976c4 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -42,6 +42,7 @@
 #include <efi/efi-device.h>
 #include <libfile.h>
 #include <state.h>
+#include <bbu.h>
 
 efi_runtime_services_t *RT;
 efi_boot_services_t *BS;
@@ -382,6 +383,9 @@ static int efi_postcore_init(void)
 		free(uuid16);
 	}
 
+	bbu_register_std_file_update("fat", 0,	"/boot/EFI/BOOT/BOOTx64.EFI",
+				     filetype_exe);
+
 	return 0;
 }
 postcore_initcall(efi_postcore_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
