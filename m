Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RurjU-0000PR-R7
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 20:33:51 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RurjQ-0004bQ-Ha
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 15:33:40 -0500
Date: Tue, 7 Feb 2012 15:33:32 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202071525420.28853@oneiric>
MIME-Version: 1.0
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
Subject: why would beagle and panda boards not have CONFIG_MCI_STARTUP set?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  slowly working my way thru how to create an appropriate environment
for my beagle xM and when i boot with the default beagle-configured
MLO and barebox.bin, there are no disk devices defined as described
here:

http://wiki.barebox.org/doku.php?id=user:mmc-sd

  that's obviously a problem since the xM and pandaboards have no
NAND and must boot off of SD card.

  now, as i understand it, the MLO loader needs access to the MMC/SD
card just to read barebox.bin, so i'm not at all surprised to see, in
omap3530_beagle_xload_defconfig, the settings:

CONFIG_MCI=y
CONFIG_MCI_STARTUP=y
# CONFIG_MCI_WRITE is not set
CONFIG_MCI_OMAP_HSMMC=y

  but in omap3530_beagle_defconfig, you have only:

CONFIG_MCI=y
CONFIG_MCI_OMAP_HSMMC=y

  if i read it correctly, you can add the line:

mci0.probe=1

to your environment.  but with boards like beagles and pandas, why
would you *not* configure with:

CONFIG_MCI_STARTUP=y

it would seem to make no sense to not have that.  wouldn't that config
setting be a no-brainer on any board that boots *only* off of SD?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
