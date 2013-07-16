Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz2Rm-0007hJ-V1
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 10:25:32 +0000
Message-ID: <1373970153.4271.1.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 16 Jul 2013 12:22:33 +0200
In-Reply-To: <9960508.My00bIQGLy@probook>
References: <2655265.6QViDogYJX@n56v> <9960508.My00bIQGLy@probook>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mini2440 (256MB NAND)
To: Cristiano Rodrigues <microcris@aeiou.pt>
Cc: barebox@lists.infradead.org

Am Dienstag, den 16.07.2013, 11:19 +0100 schrieb Cristiano Rodrigues:
> Hi again :)
> 
> It seems that there is nothing wrong with the mini2440 code.
> I tested almost every monthly builds and all builds until the June build are 
> able to boot from NAND with out any problem.
> 
> In fact I'm very happy with the barebox-2013.05.1, it works very well on the 
> mini2440 platform (thank you for your hard work :) ).
> 
> Nevertheless, after the barebox-2013.05.1 build, the boot from NAND on 
> mini2440 is broken and since I don't see any mini2440 code change in the mail 
> archive for May, June and July, it is possible that some change in the barebox 
> core broke the boot from NAND in mini2440.
> 
Could you bisect the issue? If you know 2013.06 is broken and 2013.05 is
still good it should be just a few steps.

Knowing the offending commit highly increases the chance to get this
fixed in a timely manner.

> On Monday 08 July 2013 22:42:43 Cristiano Rodrigues wrote:
> > Hi there :)
> > 
> > I'm trying to run the barebox (trunk version or any other recent version) in
> > my mini2440 board but until now, I can't boot from nand.
> > 
> > I'm able to run it from RAM but I'm unable to boot it from NAND
> > 
> > Here it is what I did:
> > ********************************
> > Compiling the barebox:
> > 
> > made some changes in the arch/arm/boards/friendlyarm-mini2440/env/config
> > file
> > 
> > make friendlyarm_mini2440_defconfig
> > 
> > make menuconfig
> > 
> > make
> > *******************************
> > Lodad the barebox.bin to the mini2440:
> > 
> > put the S2 connector in NOR position
> > RESET
> > pushed the "x" option on vivi
> > 
> > Enter your selection: x
> > Found block size = 0x00020000
> > Erasing...    ... done
> > Writing...    ... done
> > Written 49152 bytes
> > Saved vivi private data
> > 
> > 
> > RESET again
> > pushed the "q" option on vivi
> > 
> > Supervivi> load ram 0x32000000 206420 u
> > USB host is connected. Waiting a download.
> > 
> > Now, Downloading [ADDRESS:32000000h,TOTAL:206430]
> > RECEIVED FILE SIZE:  206430 (201KB/S, 1S)
> > Downloaded file at 0x32000000, size = 206420 bytes
> > 
> > Supervivi> go 0x32000000
> > go to 0x32000000
> >   argument 0 = 0x00000000
> >   argument 1 = 0x00000000
> >   argument 2 = 0x00000000
> >   argument 3 = 0x00000000
> > 
> > barebox 2013.07.0-00228-gf457f68-dirty #13 Mon Jul 8 12:19:15 WEST 2013
> > 
> > Board: Mini 2440
> > 
> > nand: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB 3,3V
> > 8-bit), page size: 2048, OOB size: 64
> > nand: Bad block table not found for chip 0
> > nand: Bad block table not found for chip 0
> > nand: Scanning device for bad blocks
> > nand: Bad eraseblock 205 at 0x019a0000
> > nand: Bad eraseblock 570 at 0x04740000
> > nand: Bad eraseblock 2013 at 0x0fba0000
> > dm9000 dm90000: Found DM9000E at i/o: 0x20000300
> > mdio_bus: miibus0: probed
> > s3c_mci s3c_mci0: registered as s3c_mci0
> > malloc space: 0x31bf8000 -> 0x31ff7fff (size 4 MiB)
> > refclk:    12000 kHz
> > mpll:     405000 kHz
> > upll:      48000 kHz
> > fclk:     405000 kHz
> > hclk:     101250 kHz
> > pclk:      50625 kHz
> > SDRAM1:   CL4@101MHz
> > SDRAM2:   CL4@101MHz
> > envfs: wrong magic on /dev/env0
> > no valid environment found on /dev/env0. Using default environment
> > running /env/bin/init...
> > set parameter: Invalid argument
> > Hit any key to stop autoboot:  2
> > mini2440:/
> > mini2440:/ saveenv
> > saving environment
> > mini2440:/ update -t barebox -d nand
> > set parameter: Invalid argument
> > warning: No MAC address set. Using random address F2:14:71:AE:1E:F0
> > 100Mbps full duplex link detected
> > DHCP client bound to address 10.42.0.73
> > host 10.42.0.1 is alive
> > 
> > erasing partition /dev/nand0.barebox.bb
> > 
> > flashing barebox.bin to /dev/nand0.barebox.bb
> >   [                                                                 ]
> >   [#################################################################
> > mini2440:/
> > mini2440:/ nand_boot_test 0x31000000 0x40000
> > mini2440:/ go 0x31000000
> > ## Starting application at 0x31000000 ...
> > 
> > barebox 2013.07.0-00228-gf457f68-dirty #13 Mon Jul 8 12:19:15 WEST 2013
> > 
> > Board: Mini 2440
> > 
> > nand: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB 3,3V
> > 8-bit), page size: 2048, OOB size: 64
> > dm9000 dm90000: Found DM9000E at i/o: 0x20000300
> > mdio_bus: miibus0: probed
> > s3c_mci s3c_mci0: registered as s3c_mci0
> > malloc space: 0x31bf8000 -> 0x31ff7fff (size 4 MiB)
> > refclk:    12000 kHz
> > mpll:     405000 kHz
> > upll:      48000 kHz
> > fclk:     405000 kHz
> > hclk:     101250 kHz
> > pclk:      50625 kHz
> > SDRAM1:   CL4@101MHz
> > SDRAM2:   CL4@101MHz
> > running /env/bin/init...
> > set parameter: Invalid argument
> > Hit any key to stop autoboot:  2
> > mini2440:/
> > 
> > that step
> > mini2440:/ nand_boot_test 0x31000000 0x40000
> > mini2440:/ go 0x31000000
> > is to check if the downloaded image is alright... and as we can see,
> > it is alright.
> > 
> > Now, I put the S2 in NAND position, RESET and nothing happens :(
> > 
> > What am I doing wrong?
> > 
> > Thank you for any help that you can provide.
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
