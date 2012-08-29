Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6peN-0006gt-7P
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 21:18:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1T6peK-0004hJ-4a
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 23:18:08 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 29 Aug 2012 23:17:03 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201208292317.03322.jbe@pengutronix.de>
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
Subject: SD card experts wanted
To: barebox@lists.infradead.org

Hi there,

any SD/MMC card experts here? I have trouble with the current SD/MMC detection 
code in Barebox.
The function sd_change_freq() in the file 'drivers/mci/mci-core.c' tries to 
detect the max. transfer frequency the attached card can handle. Nothing 
special here, but the following line in this routine fails on my system:

  if ((__be32_to_cpu(switch_status[4]) & 0x0f000000) == 0x01000000)

It checks the clock speed capabilities returned from the card. As far as I 
understand the "simplified SD card spec" the "0x01000000" means SDR25 speed, 
which means still "single transfer per clock at 25 MHz clock rate". But the 
sd_change_freq() routine sets the MMC_MODE_HS bit for this case in the card's 
capabilities variable. The remaining routines in 'drivers/mci/mci-core.c' 
then use 50 MHz for the transfer speed.

This behaviour became an issue here, as my SDHC supports 50 MHz, but the 
attached card only up to 25 MHz. After switching to 50 MHz, the card wasn't 
able to respond anymore.
For SDHCs which supports only up to 25 MHz this misinterpretation is no issue, 
as the routines still use the 25 MHz, and the SD card can still respond.

"simplified SD card spec" talks about the bit's meaning: seems the regular 
speed was SDR12 which means 12.5 MHz. Then SDR25 cards appear, which are also 
called "high speed card". Could the MMC_MODE_HS just mean this "high speed" 
and using it at 50 MHz is just some kind of typo? Or do MMCs act differently 
and the code mixes SD and MMC features?

Any pointers would help.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
