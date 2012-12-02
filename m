Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tf5mr-0007S2-QX
 for barebox@lists.infradead.org; Sun, 02 Dec 2012 09:24:35 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([174.115.5.73]:55757 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1Tf5mk-0007JK-SC
 for barebox@lists.infradead.org; Sun, 02 Dec 2012 04:24:27 -0500
Date: Sun, 2 Dec 2012 04:24:22 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1212011733350.24134@oneiric>
Message-ID: <alpine.DEB.2.02.1212020418020.6898@oneiric>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
 <alpine.DEB.2.02.1212011733350.24134@oneiric>
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
Subject: Re: suddenly, i can't boot barebox on my beagle xM anymore [ISOLATED]
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  i've isolated the commit that introduces the apparent booting
problem on my xM:

$ git show 154496f
commit 154496f736db54123c3f6daaba18809fab54ed9b
Merge: 05d251f bd6d12b
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Fri Nov 16 14:02:49 2012 +0100

    Merge branch 'for-next/omap'

$

  if i build MLO and barebox.bin with that commit, booting produces:

barebox 2012.11.0-00237-g154496f #1 Sat Dec 1 18:43:27 EST 2012


Board: Texas Instrument's Beagle
NAND type unknown: ff,ff
No NAND device found (-19)!
gpmc_nand gpmc_nand0: probe failed: error 6
omap-hsmmc omap-hsmmc0: registered as omap-hsmmc0
mci mci0: registered disk0
malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
stack space:  0x4020f000 -> 0x4020fc00 (size  3 kB)
booting from MMC1
87ffff0f (size  4 MB)
stack space:  0x4020f000 -> 0x4020fc00 (size  3 kB)
booting from MMC1

... and hangs ...

  if, however, i build from the parent commit 05d251f, then i'm back
to a full boot to barebox:

barebox 2012.11.0-00230-g05d251f #2 Sun Dec 2 04:04:37 EST 2012


Board: Texas Instrument's Beagle
I2C probe
i2c-omap i2c-omap0: bus 0 rev4.0 at 100 kHz
ehci ehci0: USB EHCI 1.00
NAND type unknown: ff,ff
No NAND device found (-19)!
gpmc_nand gpmc_nand0: probe failed: No such device or address
omap-hsmmc omap-hsmmc0: registered as omap-hsmmc0
mci mci0: registered disk0
malloc space: 0x80c00000 -> 0x80ffffff (size  4 MB)
stack space:  0x80bf8000 -> 0x80c00000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  0
dhcp failed: Network is down
dhcp: Network is down
do_tftpb: /.tftp_tmp_path/zImage- -> /image
could not open /.tftp_tmp_path/zImage-: Network is down

barebox@Texas Instrument's Beagle:/

  so something in that omap merge is causing this.

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
