Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrUeQ-0005kj-16
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 12:46:19 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1QrUeL-0003nQ-KV
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 14:46:13 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 11 Aug 2011 14:45:05 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201108111445.05457.jbe@pengutronix.de>
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
Subject: [barebox-next] Enabling SPI support for the PCM043 platform
To: barebox@lists.infradead.org

Hi,

when I enable the SPI support for the "pcm043_defconfig" the build ends with:

  CC      drivers/spi/imx_spi.o
drivers/spi/imx_spi.c:111:1: error: expected identifier before '}' token

This is because the enum list is empty. Can someone tell me, what I have to 
add in the "/drivers/spi/Kconfig" to make it work in i.MX35?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
