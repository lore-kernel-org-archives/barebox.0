Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l71Xy-0004S6-BZ
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:41:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Feb 2021 20:40:56 +0100
Message-Id: <20210202194059.9466-4-a.fatoum@pengutronix.de>
In-Reply-To: <20210202194059.9466-1-a.fatoum@pengutronix.de>
References: <20210202194059.9466-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/7] ppc: <asm/io.h>: remove duplicate definition
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This implementation is equivalent to the one now provided by
<asm-generic/io.h>, so it can be dropped.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
 - no change
---
 arch/powerpc/include/asm/io.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/powerpc/include/asm/io.h b/arch/powerpc/include/asm/io.h
index 025c06f3b735..8488c36f6558 100644
--- a/arch/powerpc/include/asm/io.h
+++ b/arch/powerpc/include/asm/io.h
@@ -86,10 +86,6 @@ extern void _outsl_ns(volatile u32 *port, const void *buf, int nl);
 
 #define IO_SPACE_LIMIT ~0
 
-#define memset_io(a,b,c)       memset((void *)(a),(b),(c))
-#define memcpy_fromio(a,b,c)   memcpy((a),(void *)(b),(c))
-#define memcpy_toio(a,b,c)  memcpy((void *)(a),(b),(c))
-
 /*
  * Enforce In-order Execution of I/O:
  * Acts as a barrier to ensure all previous I/O accesses have
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
