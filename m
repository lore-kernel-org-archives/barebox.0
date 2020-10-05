Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPLrJ-000767-Iq
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 08:28:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Oct 2020 10:28:34 +0200
Message-Id: <20201005082835.11413-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] gen-dtb-s: support x86 and other platforms with 16-bit
 .word
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On ARM, .word is 32-bit as expected in the script, but on x86 it's
16-bit, which leads to truncation.

.int on the other hand is 32-bit both on ARM and x86 and very likely
all other platforms we support, so change the .word to .int.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/gen-dtb-s | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 0649247f934d..4f8c62a0b84c 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -62,9 +62,9 @@ echo ".section .dtbz.rodata.${name},\"a\""
 echo ".balign STRUCT_ALIGNMENT"
 echo ".global __dtb_z_${name}_start"
 echo "__dtb_z_${name}_start:"
-printf ".word 0x%08x\n"  0x7b66bcbd
-printf ".word 0x%08x\n"  $compressed
-printf ".word 0x%08x\n"  $uncompressed
+printf ".int 0x%08x\n"  0x7b66bcbd
+printf ".int 0x%08x\n"  $compressed
+printf ".int 0x%08x\n"  $uncompressed
 echo ".incbin \"$dtb.lzo\""
 echo "__dtb_z_${name}_end:"
 echo ".global __dtb_z_${name}_end"
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
