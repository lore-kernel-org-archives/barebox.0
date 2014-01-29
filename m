Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8RX5-0004GQ-5W
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 09:34:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 10:33:37 +0100
Message-Id: <1390988019-31405-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390988019-31405-1-git-send-email-s.hauer@pengutronix.de>
References: <1390988019-31405-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: Pass armv7-a AFLAGS to cache-v7
To: barebox@lists.infradead.org

The cache-v7 code uses assembler instructions which do not
exist on before v7, so explicitely pass armv7-a to this file
to make the compiler happy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index c29d030..fb3929c 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -17,7 +17,9 @@ obj-$(CONFIG_CPU_32v5) += cache-armv5.o
 pbl-$(CONFIG_CPU_32v5) += cache-armv5.o
 obj-$(CONFIG_CPU_32v6) += cache-armv6.o
 pbl-$(CONFIG_CPU_32v6) += cache-armv6.o
+AFLAGS_cache-armv7.o       :=-Wa,-march=armv7-a
 obj-$(CONFIG_CPU_32v7) += cache-armv7.o
+AFLAGS_pbl-cache-armv7.o       :=-Wa,-march=armv7-a
 pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
