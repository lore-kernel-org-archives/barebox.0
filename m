Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXm5c-0001x5-Nu
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 06:34:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 08:34:03 +0200
Message-Id: <1397025244-31641-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ppc: io: Add _IO_BASE define
To: barebox@lists.infradead.org

To make inb/outb and friends work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/include/asm/io.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
index d3473e5..98bf513 100644
--- a/arch/ppc/include/asm/io.h
+++ b/arch/ppc/include/asm/io.h
@@ -12,6 +12,7 @@
 #define SIO_CONFIG_RA   0x398
 #define SIO_CONFIG_RD   0x399
 
+#define _IO_BASE	0
 
 #define readb(addr) in_8((volatile u8 *)(addr))
 #define writeb(b,addr) out_8((volatile u8 *)(addr), (b))
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
