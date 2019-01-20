Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glAS7-0002U5-GG
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 10:35:47 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 13:35:28 +0300
Message-Id: <20190120103533.7146-5-shc_work@mail.ru>
In-Reply-To: <20190120103533.7146-1-shc_work@mail.ru>
References: <20190120103533.7146-1-shc_work@mail.ru>
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
Subject: [PATCH 05/10] ARM: imx: delete unused mach/clock-imx1.h
To: barebox@lists.infradead.org

This removes the stale mach/clock-imx1.h include as there is no user of it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/clock-imx1.h | 5 -----
 1 file changed, 5 deletions(-)
 delete mode 100644 arch/arm/mach-imx/include/mach/clock-imx1.h

diff --git a/arch/arm/mach-imx/include/mach/clock-imx1.h b/arch/arm/mach-imx/include/mach/clock-imx1.h
deleted file mode 100644
index 8d456b8..0000000
--- a/arch/arm/mach-imx/include/mach/clock-imx1.h
+++ /dev/null
@@ -1,5 +0,0 @@
-#ifndef ASM_ARCH_CLOCK_IMX1_H
-#define ASM_ARCH_CLOCK_IMX1_H
-
-#endif /* ASM_ARCH_CLOCK_IMX1_H */
-
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
