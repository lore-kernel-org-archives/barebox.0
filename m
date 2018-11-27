Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRXw2-0002U0-ON
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 07:37:39 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 27 Nov 2018 08:37:11 +0100
Message-Id: <20181127073714.16472-8-o.rempel@pengutronix.de>
In-Reply-To: <20181127073714.16472-1-o.rempel@pengutronix.de>
References: <20181127073714.16472-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 07/10] MIPS: put main_entry to __bare_init section
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

To make disassambly easier to read.
With this patch main_entry will be at the start of the text section
and not in the middle.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/boot/main_entry.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index e51e1b2f96..e33ae64e72 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -16,6 +16,7 @@
  *
  */
 
+#include <init.h>
 #include <common.h>
 #include <string.h>
 #include <memory.h>
@@ -79,7 +80,7 @@ extern u32 glob_fdt_size;
  *
  * @note The C environment isn't initialized yet
  */
-void main_entry(void *fdt, u32 fdt_size)
+void __bare_init main_entry(void *fdt, u32 fdt_size)
 {
 	/* clear the BSS first */
 	memset(__bss_start, 0x00, __bss_stop - __bss_start);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
