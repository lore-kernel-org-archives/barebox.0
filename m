Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclo-0003FH-E5
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:30 +0200
Message-Id: <1376731537-12102-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
References: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] ARM: AT91: Add missing include
To: barebox@lists.infradead.org

mach/io.h uses AT91_BASE_SYS, hence it needs mach/hardware.h.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/io.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-at91/include/mach/io.h b/arch/arm/mach-at91/include/mach/io.h
index bffa8f2..a1d970f 100644
--- a/arch/arm/mach-at91/include/mach/io.h
+++ b/arch/arm/mach-at91/include/mach/io.h
@@ -19,6 +19,7 @@
 #define __ASM_ARCH_IO_H
 
 #include <io.h>
+#include <mach/hardware.h>
 
 static inline unsigned int at91_sys_read(unsigned int reg_offset)
 {
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
