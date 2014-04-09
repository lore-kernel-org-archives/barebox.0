Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXm5h-0001xC-IL
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 06:34:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 08:34:04 +0200
Message-Id: <1397025244-31641-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1397025244-31641-1-git-send-email-s.hauer@pengutronix.de>
References: <1397025244-31641-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mips: io: include generic io.h
To: barebox@lists.infradead.org

To get definitions for inb/outb and friends.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/io.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 1cc8a51..4832be6 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -78,4 +78,6 @@ static inline void __raw_writel(u32 b, volatile void __iomem *addr)
 #define out_be16(a, v)	__raw_writew(__cpu_to_be16(v), a)
 #define out_be32(a, v)	__raw_writel(__cpu_to_be32(v), a)
 
+#include <asm-generic/io.h>
+
 #endif	/* __ASM_MIPS_IO_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
