Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDK-0001Ar-8g
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 12:57:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 13:56:53 +0100
Message-Id: <20191204125659.22506-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191204125659.22506-1-a.fatoum@pengutronix.de>
References: <20191204125659.22506-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/9] efi: fix off-by-one in mem_malloc_init(..., end)
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The second (end) parameter of mem_malloc_init() denotes the last address
in the malloc region, so we need to subtract one from the current value
to arrive at the correct end. So far this went not noticed, because iomem
doesn't yet display barebox malloc memory region.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/efi/efi.c b/common/efi/efi.c
index 73cea3703695..ed8158355020 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -361,7 +361,7 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 	if (EFI_ERROR(efiret))
 		panic("failed to allocate malloc pool: %s\n",
 		      efi_strerror(efiret));
-	mem_malloc_init((void *)mem, (void *)mem + memsize);
+	mem_malloc_init((void *)mem, (void *)mem + memsize - 1);
 
 	start_barebox();
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
