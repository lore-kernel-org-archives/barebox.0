Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002SK-TD
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:29 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:36 +0200
Message-Id: <1437160969-31517-4-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 03/16] efi: improve malloc pool allocation
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Use allocate_pages() instead of allocate_pool(). With allocate_pages() we
can specify the address. This way, any address passed to the kernel will
never exceed the lower 32 bit.
If possible, try to allocate a larger pool.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index d351775a2868..c05d183c02fa 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -310,7 +310,8 @@ device_initcall(efi_init);
  */
 efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 {
-	void *mem;
+	efi_physical_addr_t mem;
+	size_t memsize;
 	efi_status_t efiret;
 
 #ifdef DEBUG
@@ -332,8 +333,21 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 
 	fixup_tables();
 
-	BS->allocate_pool(efi_loaded_image->image_data_type, SZ_16M, &mem);
-	mem_malloc_init(mem, mem + SZ_16M);
+	mem = 0x3fffffff;
+	for (memsize = SZ_256M; memsize >= SZ_8M; memsize /= 2) {
+		efiret  = BS->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
+					     EFI_LOADER_DATA,
+					     memsize/PAGE_SIZE, &mem);
+		if (!EFI_ERROR(efiret))
+			break;
+		if (efiret != EFI_OUT_OF_RESOURCES)
+			panic("failed to allocate malloc pool: %s\n",
+			      efi_strerror(efiret));
+	}
+	if (EFI_ERROR(efiret))
+		panic("failed to allocate malloc pool: %s\n",
+		      efi_strerror(efiret));
+	mem_malloc_init((void *)mem, (void *)mem + memsize);
 
 	efi_clocksource_init();
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
