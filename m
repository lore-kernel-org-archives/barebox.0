Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZTHn-0005Ka-8H
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 21:17:16 +0000
Received: by mail-ea0-f177.google.com with SMTP id n13so1241945eaa.36
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 13:17:13 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 16 Nov 2012 22:16:46 +0100
Message-ID: <1353100606.3647.40.camel@mars>
Mime-Version: 1.0
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
Subject: [PATCH] i.MX25 & 35 usb config bits : fix host power bit
To: Sascha Hauer <kernel@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Burkey <mdburkey@gmail.com>

This patch sets HPM (Host power mask bit) to bit 16 according to i.MX
Reference Manual. Falsely it was set to bit 8, but this controls pull-up
Impedance.

Reported-by: Michael Burkey <mdburkey@gmail.com>
Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/mach-imx/include/mach/usb.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/usb.h b/arch/arm/mach-imx/include/mach/usb.h
index 9244989..0a88e7f 100644
--- a/arch/arm/mach-imx/include/mach/usb.h
+++ b/arch/arm/mach-imx/include/mach/usb.h
@@ -4,7 +4,7 @@
 /* configuration bits for i.MX25 and i.MX35 */
 #define MX35_H1_SIC_SHIFT	21
 #define MX35_H1_SIC_MASK	(0x3 << MX35_H1_SIC_SHIFT)
-#define MX35_H1_PM_BIT		(1 << 8)
+#define MX35_H1_PM_BIT		(1 << 16)
 #define MX35_H1_IPPUE_UP_BIT	(1 << 7)
 #define MX35_H1_IPPUE_DOWN_BIT	(1 << 6)
 #define MX35_H1_TLL_BIT		(1 << 5)
-- 
1.7.10.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
