Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WL8YD-000270-Na
 for barebox@lists.infradead.org; Wed, 05 Mar 2014 09:55:46 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Wed, 5 Mar 2014 10:55:16 +0100
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D2DF@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: at91sam9260-ek ...
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

Is the setup for a at91sam9260-ek still functioning?
I have troubles with my nand flash. At first it boots and writes BBT-tables.
However, next boot, it won't read the BBT, and has errors with the magic on the environment variables.
Erase /dev/env0 and saveenv do not make a difference.
Nandtest does not give me errors...

I'm just using the latest barebox 2014.2 and loading it on a at91sam9260-ek through usb (sam-ba). I'm just using the plain at91sam9260ek_defconfig

My output:

First boot:
barebox 2014.02.0 #4 Wed Mar 5 10:39:35 CET 2014

Board: Atmel at91sam9260-ek
AT91: Detected soc type: at91sam9260
AT91: Detected soc subtype: Unknown
Clocks: CPU 198 MHz, master 99 MHz, main 18.432 MHz
netconsole: registered as cs1
atmel_nand: Use On Flash BBT
nand: NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB 3,3                                                      V 8-bit), 256MiB, page size: 2048, OOB size: 64
Bad block table not found for chip 0
Bad block table not found for chip 0
Scanning device for bad blocks
Bad block table written to 0x00000ffe0000, version 0x01
Bad block table written to 0x00000ffc0000, version 0x01
mdio_bus: miibus0: probed
macb macb0: Cadence MACB at 0xfffc4000
at91_udc at91_udc0: at91_udc version 3 May 2006
atmel_mci atmel_mci0: version: 0x210
atmel_mci atmel_mci0: registered as atmel_mci0
atmel_mci atmel_mci0: command/data timeout
atmel_mci atmel_mci0: command/data timeout
atmel_mci atmel_mci0: command/data timeout
malloc space: 0x23b00000 -> 0x23efffff (size 4 MiB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
enable tty over USB Device, increase the boot delay to 16s

Hit any key to stop autoboot

Second boot:
barebox 2014.02.0 #4 Wed Mar 5 10:39:35 CET 2014

Board: Atmel at91sam9260-ek
AT91: Detected soc type: at91sam9260
AT91: Detected soc subtype: Unknown
Clocks: CPU 198 MHz, master 99 MHz, main 18.432 MHz
netconsole: registered as cs1
atmel_nand: Use On Flash BBT
nand: NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB 3,3                                                      V 8-bit), 256MiB, page size: 2048, OOB size: 64
Bad block table found at page 131008, version 0x01
Bad block table found at page 130944, version 0x01
nand_bbt: error reading BBT
mdio_bus: miibus0: probed
macb macb0: Cadence MACB at 0xfffc4000
at91_udc at91_udc0: at91_udc version 3 May 2006
atmel_mci atmel_mci0: version: 0x210
atmel_mci atmel_mci0: registered as atmel_mci0
atmel_mci atmel_mci0: command/data timeout
atmel_mci atmel_mci0: command/data timeout
atmel_mci atmel_mci0: command/data timeout
malloc space: 0x23b00000 -> 0x23efffff (size 4 MiB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
enable tty over USB Device, increase the boot delay to 16s

Hit any key to stop autoboot

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
