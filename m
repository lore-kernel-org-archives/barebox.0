Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo68.mail-out.ovh.net ([46.105.74.219])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciIJT-0006Ab-UU
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 10:13:55 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id C06A33F75E
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2017 11:13:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Feb 2017 11:19:25 +0100
Message-Id: <1488190770-4034-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] efi: move LoaderTimeInitUSec and LoaderDevicePartUUID to
 postcore initcall
To: barebox@lists.infradead.org

so we can use device/driver for the timer

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/efi/efi.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/common/efi/efi.c b/common/efi/efi.c
index 217a6bea8..1c7aee872 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -314,7 +314,6 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 	efi_physical_addr_t mem;
 	size_t memsize;
 	efi_status_t efiret;
-	char *uuid;
 
 #ifdef DEBUG
 	sys_table->con_out->output_string(sys_table->con_out, L"barebox\n");
@@ -350,6 +349,15 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 	mem_malloc_init((void *)mem, (void *)mem + memsize);
 
 	efi_clocksource_init();
+	start_barebox();
+
+	return EFI_SUCCESS;
+}
+
+static int efi_postcore_init(void)
+{
+	char *uuid;
+
 	efi_set_variable_usec("LoaderTimeInitUSec", &efi_systemd_vendor_guid,
 			      get_time_ns()/1000);
 
@@ -366,10 +374,9 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 		free(uuid16);
 	}
 
-	start_barebox();
-
-	return EFI_SUCCESS;
+	return 0;
 }
+postcore_initcall(efi_postcore_init);
 
 static int do_efiexit(int argc, char *argv[])
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
