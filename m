Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplt4-0001nJ-6F
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:06 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:27 +0100
Message-Id: <1297880025-7184-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 02/20] MACH-S3C24XX: Fix typo in UART2_SIZE macro
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h b/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
index ab3dc4f..a990d80 100644
--- a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
+++ b/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
@@ -88,7 +88,7 @@
 #define UART1_BASE (S3C24X0_UART_BASE)
 #define UART1_SIZE 0x4000
 #define UART2_BASE (S3C24X0_UART_BASE + 0x4000)
-#define UART3_SIZE 0x4000
+#define UART2_SIZE 0x4000
 #define UART3_BASE (S3C24X0_UART_BASE + 0x8000)
 #define UART3_SIZE 0x4000
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
