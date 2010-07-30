Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OeoDz-0002Wh-Ep
	for barebox@lists.infradead.org; Fri, 30 Jul 2010 11:58:04 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb]
	helo=jupiter.intranet.kreuzholzen.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1OeoDq-0000Nc-83
	for barebox@lists.infradead.org; Fri, 30 Jul 2010 13:57:54 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 30 Jul 2010 13:57:52 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201007301357.52645.jbe@pengutronix.de>
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
Subject: Fix register offsets and width for the WDT on i.MX27
To: barebox@lists.infradead.org

If one uses the WDT in a correct manner like in a fixed reset_cpu() function
the system will end up in an endless data abort:

barebox:/ reset
data abort
pc : [<a7f1edec>]    lr : [<a7f13d04>]
sp : a6effe9c  ip : 00000005  fp : 00000000
r10: a6f5c3b0  r9 : 00000000  r8 : 00000000
r7 : 00000000  r6 : 00000001  r5 : a7f2a6e8  r4 : a6f5c490
r3 : 00005555  r2 : 10002000  r1 : 00000001  r0 : 00000000
Flags: NzCv  IRQs off  FIQs off  Mode SVC_32
Resetting CPU ...

data abort
pc : [<a7f1edec>]    lr : [<a7f13d04>]
sp : a6effe9c  ip : 00000005  fp : 00000000
r10: a6f5c3b0  r9 : 00000000  r8 : 00000000
r7 : 00000000  r6 : 00000001  r5 : a7f2a6e8  r4 : a6f5c490
r3 : 00005555  r2 : 10002000  r1 : 00000001  r0 : 00000000
Flags: NzCv  IRQs off  FIQs off  Mode SVC_32
Resetting CPU ...
[...]

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 8d0bcda..f4354ba 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -83,9 +83,9 @@
 #include "esdctl.h"
 
 /* Watchdog Registers*/
-#define WCR  __REG(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
-#define WSR  __REG(IMX_WDT_BASE + 0x04) /* Watchdog Service Register */
-#define WSTR __REG(IMX_WDT_BASE + 0x08) /* Watchdog Status Register  */
+#define WCR  __REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
+#define WSR  __REG16(IMX_WDT_BASE + 0x02) /* Watchdog Service Register */
+#define WSTR __REG16(IMX_WDT_BASE + 0x04) /* Watchdog Status Register  */
 
 /* important definition of some bits of WCR */
 #define WCR_WDE 0x04

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
