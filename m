Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDP-0001Gh-Fd
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 12:57:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 13:56:57 +0100
Message-Id: <20191204125659.22506-8-a.fatoum@pengutronix.de>
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
Subject: [PATCH 7/9] efi: turn set of defines into enumerations
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This allows us to use enum types instead of plain integers ttypes to
hold the values, which is done in a follow up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 42 +++++++++++++++++++++++-------------------
 1 file changed, 23 insertions(+), 19 deletions(-)

diff --git a/include/efi.h b/include/efi.h
index 166803a58f39..43c05939513d 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -91,21 +91,23 @@ typedef	struct {
  */
 
 /* Memory types: */
-#define EFI_RESERVED_TYPE		 0
-#define EFI_LOADER_CODE			 1
-#define EFI_LOADER_DATA			 2
-#define EFI_BOOT_SERVICES_CODE		 3
-#define EFI_BOOT_SERVICES_DATA		 4
-#define EFI_RUNTIME_SERVICES_CODE	 5
-#define EFI_RUNTIME_SERVICES_DATA	 6
-#define EFI_CONVENTIONAL_MEMORY		 7
-#define EFI_UNUSABLE_MEMORY		 8
-#define EFI_ACPI_RECLAIM_MEMORY		 9
-#define EFI_ACPI_MEMORY_NVS		10
-#define EFI_MEMORY_MAPPED_IO		11
-#define EFI_MEMORY_MAPPED_IO_PORT_SPACE	12
-#define EFI_PAL_CODE			13
-#define EFI_MAX_MEMORY_TYPE		14
+enum efi_memory_type {
+	EFI_RESERVED_TYPE,
+	EFI_LOADER_CODE,
+	EFI_LOADER_DATA,
+	EFI_BOOT_SERVICES_CODE,
+	EFI_BOOT_SERVICES_DATA,
+	EFI_RUNTIME_SERVICES_CODE,
+	EFI_RUNTIME_SERVICES_DATA,
+	EFI_CONVENTIONAL_MEMORY,
+	EFI_UNUSABLE_MEMORY,
+	EFI_ACPI_RECLAIM_MEMORY,
+	EFI_ACPI_MEMORY_NVS,
+	EFI_MEMORY_MAPPED_IO,
+	EFI_MEMORY_MAPPED_IO_PORT_SPACE,
+	EFI_PAL_CODE,
+	EFI_MAX_MEMORY_TYPE
+};
 
 /* Attribute values: */
 #define EFI_MEMORY_UC		((u64)0x0000000000000001ULL)	/* uncached */
@@ -124,10 +126,12 @@ typedef	struct {
 /*
  * Allocation types for calls to boottime->allocate_pages.
  */
-#define EFI_ALLOCATE_ANY_PAGES		0
-#define EFI_ALLOCATE_MAX_ADDRESS	1
-#define EFI_ALLOCATE_ADDRESS		2
-#define EFI_MAX_ALLOCATE_TYPE		3
+enum efi_allocate_type {
+	EFI_ALLOCATE_ANY_PAGES,
+	EFI_ALLOCATE_MAX_ADDRESS,
+	EFI_ALLOCATE_ADDRESS,
+	EFI_MAX_ALLOCATE_TYPE
+};
 
 typedef int (*efi_freemem_callback_t) (u64 start, u64 end, void *arg);
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
