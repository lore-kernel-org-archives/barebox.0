Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f175.google.com ([209.85.192.175])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Udexp-0006cW-J1
 for barebox@lists.infradead.org; Sat, 18 May 2013 11:06:14 +0000
Received: by mail-pd0-f175.google.com with SMTP id y14so4041096pdi.6
 for <barebox@lists.infradead.org>; Sat, 18 May 2013 04:05:52 -0700 (PDT)
Message-ID: <5197608A.40707@gmail.com>
Date: Sat, 18 May 2013 16:35:46 +0530
From: Vikram Narayanan <vikram186@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Unable to Boot from NAND on Mini2440
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Juergen Beisert <jbe@pengutronix.de>

Hello,

I followed the instructions here
<http://barebox.org/documentation/barebox-2011.04.0/mini2440.html>

After writing to NAND, I switched the boot mode to NAND and did a reset. 
Nothing comes up on the prompt. I tried to verify the 'write', by a 
'nand_boot_test'. That works. Please find the log below. I'm on the 
latest master.

--- start log ---
Supervivi> go 0x31000000
go to 0x31000000
   argument 0 = 0x00000000
   argument 1 = 0x00000000
   argument 2 = 0x00000000
   argument 3 = 0x00000000


barebox 2013.05.0-00126-g19bc427 #4 Sat May 18 15:53:01 IST 2013


Board: Mini 2440
nand: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND 1GiB 3,3V 
8-bit), page size: 2048, OOB size: 64
dm9000 dm90000: Found DM9000E at i/o: 0x20000300
mdio_bus: miibus0: probed
s3c_mci s3c_mci0: registered as s3c_mci0
malloc space: 0x31bf8000 -> 0x31ff7fff (size 4 MiB)
refclk:    12000 kHz
mpll:     405000 kHz
upll:      48000 kHz
fclk:     405000 kHz
hclk:     101250 kHz
pclk:      50625 kHz
SDRAM1:   CL4@101MHz
SDRAM2:   CL4@101MHz
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
set parameter: Invalid argument

Hit any key to stop autoboot:  3
mini2440:/ eth0.ipaddr=192.168.1.240 

mini2440:/ eth0.netmask=255.255.255.0
mini2440:/ eth0.serverip=192.168.1.14
mini2440:/ erase /dev/nand0.barebox.bb
mini2440:/ tftp barebox.bin /dev/nand0.barebox.bb
warning: No MAC address set. Using random address F2:08:F4:9F:14:99
100Mbps full duplex link detected
         ###############
mini2440:/ nand_boot_test 0x32000000 0x40000
mini2440:/ go 0x32000000
## Starting application at 0x32000000 ...


barebox 2013.05.0-00126-g19bc427 #4 Sat May 18 15:53:01 IST 2013


Board: Mini 2440
nand: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND 1GiB 3,3V 
8-bit), page size: 2048, OOB size: 64
dm9000 dm90000: Found DM9000E at i/o: 0x20000300
mdio_bus: miibus0: probed
s3c_mci s3c_mci0: registered as s3c_mci0
malloc space: 0x31bf8000 -> 0x31ff7fff (size 4 MiB)
refclk:    12000 kHz
mpll:     405000 kHz
upll:      48000 kHz
fclk:     405000 kHz
hclk:     101250 kHz
pclk:      50625 kHz
SDRAM1:   CL4@101MHz
SDRAM2:   CL4@101MHz
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
set parameter: Invalid argument

Hit any key to stop autoboot:  3
mini2440:/

--- end log ----

Any idea on what goes wrong?

Thanks,
Vikram

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
