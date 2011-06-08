Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gateway.hbm.com ([213.157.30.2] helo=hbmntx5.hbm.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUFNK-00081g-AL
	for barebox@lists.infradead.org; Wed, 08 Jun 2011 09:48:35 +0000
Content-Class: urn:content-classes:message
From: "Tim Sander" <tim.sander@hbm.com>
Date: Wed, 8 Jun 2011 11:48:15 +0200
MIME-Version: 1.0
Message-ID: <201106081148.15658.tim.sander@hbm.com>
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
Subject: [PATCH] fix: typo missing comma
To: barebox@lists.infradead.org

Hi

There is a typo in the iomuxer tables. Deja vu error...

Should be fixed by the patch below.

Best regards
Tim
---
 arch/arm/mach-imx/include/mach/iomux-mx35.h |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx35.h b/arch/arm/mach-imx/include/mach/iomux-mx35.h
index 9a5962b..46eabbb 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx35.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx35.h
@@ -667,11 +667,11 @@
 #define MX35_PAD_LD7__SDMA_SDMA_DEBUG_PC_7                     IOMUX_PAD(0x630, 0x1cc, 6, 0x0,   0, NO_PAD_CTRL)
 
 #define MX35_PAD_LD8__IPU_DISPB_DAT_8                          IOMUX_PAD(0x634, 0x1d0, 0, 0x0,   0, NO_PAD_CTRL)
-#define MX35_PAD_LD8__GPIO2_8                                  IOMUX_PAD(0x634, 0x1d0, 5, 0x8e0, 0, NO_PAD_CTRL)
+#define MX35_PAD_LD8__GPIO2_8                                      IOMUX_PAD(0x634, 0x1d0, 5, 0x8e0, 0, NO_PAD_CTRL)
 #define MX35_PAD_LD8__SDMA_SDMA_DEBUG_PC_8                     IOMUX_PAD(0x634, 0x1d0, 6, 0x0,   0, NO_PAD_CTRL)
 
 #define MX35_PAD_LD9__IPU_DISPB_DAT_9                          IOMUX_PAD(0x638, 0x1d4, 0, 0x0,   0, NO_PAD_CTRL)
-#define MX35_PAD_LD9__GPIO2_9                                  IOMUX_PAD(0x638, 0x1d4, 5, 0x8e4  0, NO_PAD_CTRL)
+#define MX35_PAD_LD9__GPIO2_9                             IOMUX_PAD(0x638, 0x1d4, 5, 0x8e4, 0, NO_PAD_CTRL)
 #define MX35_PAD_LD9__SDMA_SDMA_DEBUG_PC_9                     IOMUX_PAD(0x638, 0x1d4, 6, 0x0,   0, NO_PAD_CTRL)
 
 #define MX35_PAD_LD10__IPU_DISPB_DAT_10                                IOMUX_PAD(0x63c, 0x1d8, 0, 0x0,   0, NO_PAD_CTRL)
-- 
1.7.0.4

Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germany | www.hbm.com 

Registered as GmbH (German limited liability corporation) in the commercial register at the local court of Darmstadt, HRB 1147  
Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the board: James Charles Webster

Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister des Amtsgerichts Darmstadt unter HRB 1147 
Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst | Aufsichtsratsvorsitzender: James Charles Webster

The information in this email is confidential. It is intended solely for the addressee. If you are not the intended recipient, please let me know and delete this email.

Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich fur den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
