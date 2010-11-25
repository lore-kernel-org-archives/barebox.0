Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PLf4l-0003M8-Oc
	for barebox@lists.infradead.org; Thu, 25 Nov 2010 16:53:40 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PLf4N-0005H4-0w
	for barebox@lists.infradead.org; Thu, 25 Nov 2010 17:53:15 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 25 Nov 2010 17:52:42 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201011251752.42159.jbe@pengutronix.de>
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
Subject: [PATCH] phyCORE-i.MX27: Keep frequency multiplier enabled to be able
	to do a warmstart
To: barebox@lists.infradead.org

commit 7d25a0552dd3a4b65412ae1cbf8f9ca8a88b5d27
Author: Juergen Beisert <jbe@pengutronix.de>
Date:   Thu Nov 25 17:49:11 2010 +0100

    Keep frequency multiplier enabled to be able to do a warmstart
    
    The wachtdog's reset does only reset the ARM core, not the whole silicon.
    But the PLLs seems to do some strange things: It seems they switch back to
    the low frequency reference when the watchdog barks. But in the case the
    frequency multiplier is off (not used due to 26 MHz reference usage) the
    machine stops, because the PLLs are stopping due to the lack of a reference
    frequency. As the power on reset will set the FPM_EN bit again, a power cycle
    brings the machine back to life.
    By keeping the frequency multiplier enabled, also a warmstart triggered by the
    watchdog can restart the machine now.
    
    Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/boards/pcm038/pll.h b/arch/arm/boards/pcm038/pll.h
index 13a7989..15b94cf 100644
--- a/arch/arm/boards/pcm038/pll.h
+++ b/arch/arm/boards/pcm038/pll.h
@@ -36,6 +36,7 @@
 		CSCR_MCU_SEL | /* 26 MHz reference */ \
 		CSCR_ARM_DIV(0) | /* CPU runs at MPLL/3 clock */ \
 		CSCR_AHB_DIV(1) | /* AHB runs at MPLL/6 clock */ \
+		CSCR_FPM_EN | \
 		CSCR_SPEN |		\
 		CSCR_MPEN)
 
@@ -51,6 +52,7 @@
 		CSCR_ARM_SRC_MPLL | /* use main MPLL clock */ \
 		CSCR_ARM_DIV(0) | /* CPU run at full MPLL clock */ \
 		CSCR_AHB_DIV(1) | /* AHB runs at MPLL/6 clock */ \
+		CSCR_FPM_EN | /* do not disable it! */ \
 		CSCR_SPEN |		\
 		CSCR_MPEN)
 

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
