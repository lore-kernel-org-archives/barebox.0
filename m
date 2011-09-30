Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9dVF-0005Ci-L1
	for barebox@lists.infradead.org; Fri, 30 Sep 2011 13:51:50 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1R9dVA-0007U8-OA
	for barebox@lists.infradead.org; Fri, 30 Sep 2011 15:51:44 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 30 Sep 2011 15:51:42 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201109301551.43165.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] x86: Define byteorder
To: barebox@lists.infradead.org

This is required to avoid warnings like this:

In file included from <some file>:
include/io.h:7:5: warning: "__BYTE_ORDER" is not defined
include/io.h:7:21: warning: "__BIG_ENDIAN" is not defined

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/x86/include/asm/io.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index 27ea642..9cb78e4 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -10,6 +10,8 @@
 #ifndef __ASM_X86_IO_H
 #define __ASM_X86_IO_H
 
+#include <asm/byteorder.h>
+
 static inline void outb(unsigned char value, int port)
 {
 	asm volatile("outb %b0, %w1" : : "a"(value), "Nd"(port));

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
