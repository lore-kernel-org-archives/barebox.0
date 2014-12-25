Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4Bux-0006U0-ND
 for barebox@lists.infradead.org; Thu, 25 Dec 2014 17:09:46 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 25 Dec 2014 18:09:01 +0100
Message-Id: <1419527345-9301-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
References: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 4/8] arm: mxs: fix pin voltage register value for EMI
To: barebox@lists.infradead.org

The EMI pins are documented in the reference manual as using value 0 for both
1.8V and 2.5V. Value 1 is reserved.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/iomux.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mxs/include/mach/iomux.h b/arch/arm/mach-mxs/include/mach/iomux.h
index 4361be5..0091dba 100644
--- a/arch/arm/mach-mxs/include/mach/iomux.h
+++ b/arch/arm/mach-mxs/include/mach/iomux.h
@@ -97,7 +97,7 @@
  * .. PORTF(1, 15). So the PORTF macro is more ugly than necessary.
  */
 # define PORTF(bank,bit)	(BANK((bank) / 2) | BANKPIN((((bank) & 1) << 4) | (bit)) | ERROR((bit) & ~15) | ERROR((bank) & ~7))
-# define VE_2_5V		VOLTAGE(1)
+# define VE_2_5V		VOLTAGE(0)
 # include <mach/iomux-imx23.h>
 #endif
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
