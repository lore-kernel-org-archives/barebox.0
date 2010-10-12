Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5aDR-0007WN-P6
	for barebox@lists.infradead.org; Tue, 12 Oct 2010 08:28:11 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P5aDO-00060k-BV
	for barebox@lists.infradead.org; Tue, 12 Oct 2010 10:28:06 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 12 Oct 2010 10:28:04 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010121028.04871.jbe@pengutronix.de>
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
Subject: Where to store a header file
To: barebox@lists.infradead.org

Hi,

currently I'm adding the i.MX28 architecture to barebox. This new CPU is the 
successor of the i.MX23. So, it shares the most parts with it. But it also 
shares the fact, its not a real i.MX like the i.MX27 is (STM378x-SigmaTel -> 
i.MX23-Freescale).

But new to the i.MX28 is the FEC known from the i.MX family. To be able to 
reuse the i.MX FEC driver (fec_imx.c) on the i.MX28 I need the "mach/iim.h" 
from the "mach-imx" tree. As the i.MX23/28 itself is "mach-stm" this files 
must be shared between these architectures. But where to store this 
headerfile? In "arch/arm/include/asm/"? In "include/" (perhaps 
as "include/imx_iim.h")? Or in "drivers/net/" as a local header file? Any 
ideas?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
