Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SheB0-0003jc-4V
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:59:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:59:42 +0200
Message-Id: <1340272782-17016-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] blackfin: Fix build due to missing __raw_* io accessors
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/include/asm/io.h |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/blackfin/include/asm/io.h b/arch/blackfin/include/asm/io.h
index 8a24dd6..fc6a691 100644
--- a/arch/blackfin/include/asm/io.h
+++ b/arch/blackfin/include/asm/io.h
@@ -51,6 +51,13 @@ extern void cf_outb(unsigned char val, volatile unsigned char* addr);
 #define writew(b,addr)		{((*(volatile unsigned short *) (addr)) = (b)); asm("ssync;");}
 #define writel(b,addr)		{((*(volatile unsigned int *) (addr)) = (b)); asm("ssync;");}
 
+#define __raw_readb readb
+#define __raw_readw readw
+#define __raw_readl readl
+#define __raw_writeb writeb
+#define __raw_writew writew
+#define __raw_writel writel
+
 #define memset_io(a,b,c)	memset((void *)(a),(b),(c))
 #define memcpy_fromio(a,b,c)	memcpy((a),(void *)(b),(c))
 #define memcpy_toio(a,b,c)	memcpy((void *)(a),(b),(c))
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
