Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from la-in-x0232.1e100.net ([2a00:1450:4010:c03::232]
 helo=mail-la0-x232.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2S1i-0005gr-Df
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 19:48:27 +0000
Received: by mail-la0-f50.google.com with SMTP id ec20so5003891lab.37
 for <barebox@lists.infradead.org>; Mon, 04 Feb 2013 11:48:23 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Feb 2013 00:00:30 +0400
Message-Id: <1360008030-4169-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] MIPS: pbl: fix none compression support
To: barebox@lists.infradead.org

Here's the error message:

  AS      arch/mips/pbl/piggy.shipped.o
  arch/mips/pbl/piggy.shipped.S: Assembler messages:
  arch/mips/pbl/piggy.shipped.S:1: Error: unrecognized opcode `globl input_data'
  make[1]: *** [arch/mips/pbl/piggy.shipped.o] Error 1
  make: *** [zbarebox.bin] Error 2

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/pbl/piggy.shipped.S |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/mips/pbl/piggy.shipped.S b/arch/mips/pbl/piggy.shipped.S
index 963262d..8a35f6b 100644
--- a/arch/mips/pbl/piggy.shipped.S
+++ b/arch/mips/pbl/piggy.shipped.S
@@ -1,6 +1,6 @@
-	.section .piggydata,#alloc
-	.globl  input_data
-input_data:
-	.incbin "arch/mips/pbl/piggy.shipped"
-	.globl  input_data_end
-input_data_end:
+#include <asm/asm.h>
+
+	.section .data
+EXPORT(input_data)
+	.incbin	"arch/mips/pbl/piggy.shipped"
+EXPORT(input_data_end)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
