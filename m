Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOhV-0005ez-P2
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:47:09 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 16 Feb 2010 15:46:25 +0100
Message-Id: <1266331586-11253-11-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-10-git-send-email-mkl@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-3-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-4-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-5-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-6-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-7-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-8-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-9-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-10-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 10/11] io.h: update definitions of __raw_{read,write}*
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This patch updates the definitions of the __raw_read and __raw_write
functions so that "sparse" doesn't complain.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/include/asm/io.h |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index c7f4b62..e8e82f6 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -26,13 +26,13 @@
 #ifndef __ASM_ARM_IO_H
 #define __ASM_ARM_IO_H
 
-#define __raw_writeb(v,a)	(*(volatile unsigned char *)(a) = (v))
-#define __raw_writew(v,a)	(*(volatile unsigned short *)(a) = (v))
-#define __raw_writel(v,a)	(*(volatile unsigned int *)(a) = (v))
+#define __raw_writeb(v,a)	(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a) = (v))
+#define __raw_writew(v,a)	(__chk_io_ptr(a), *(volatile unsigned short __force *)(a) = (v))
+#define __raw_writel(v,a)	(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a) = (v))
 
-#define __raw_readb(a)		(*(volatile unsigned char *)(a))
-#define __raw_readw(a)		(*(volatile unsigned short *)(a))
-#define __raw_readl(a)		(*(volatile unsigned int *)(a))
+#define __raw_readb(a)		(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a))
+#define __raw_readw(a)		(__chk_io_ptr(a), *(volatile unsigned short __force *)(a))
+#define __raw_readl(a)		(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a))
 
 #define writeb(v,a) __raw_writeb(v,a)
 #define writew(v,a) __raw_writew(v,a)
-- 
1.6.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
