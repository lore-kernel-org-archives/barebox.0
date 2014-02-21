Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGssB-0000W7-LR
 for barebox@lists.infradead.org; Fri, 21 Feb 2014 16:22:48 +0000
Received: from e6520eb (unknown [88.170.243.169])
 (Authenticated sender: eukrea)
 by smtp6-g21.free.fr (Postfix) with ESMTPSA id 02CE282313
 for <barebox@lists.infradead.org>; Fri, 21 Feb 2014 17:22:10 +0100 (CET)
Date: Fri, 21 Feb 2014 17:22:09 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140221172209.41962f85@e6520eb>
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
Subject: i.MX25 : Ethernet link detection blocking console
To: barebox@lists.infradead.org

Hi,

while testing 2014.02 on eukrea-cpuimx25 board, I meet this problem :
- I get "Hit any key to stop autoboot:  1"
- whatever I press on the keyboard, the autoboot continues
- if I send characters through the serial port before barebox reach
  the autoboot line, then I'll get the command line but only when the
  link detection will have finished (check log below).

Any idea what could be wrong here ?

Thanks
Eric

barebox 2014.02.0-dirty #5 Fri Feb 21 16:52:37 CET 2014


Board: Eukrea CPUIMX25
netconsole: registered as cs1
mdio_bus: miibus0: probed
nand: ONFI param page 0 valid
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0x38 (Micron
MT29F8G08ABABAWP), 1024MiB, page size: 4096, OOB size: 224
Bad block table found at page 262016, version 0x01
Bad block table found at page 261888, version 0x01
imxfb imxfb: i.MX Framebuffer driver
imx-esdhc imx-esdhc0: registered as imx-esdhc0
ehci ehci0: USB EHCI 1.00
malloc space: 0x83700000 -> 0x83efffff (size 8 MiB)
running /env/bin/init...

Hit any key to stop autoboot:  1100Mbps full duplex link detected
                                ^ it waits here until the link is
                                detected then I get the prompt (only if
                                the key was pressed before reaching the
                                autoboot line)

barebox@Eukrea CPUIMX25:/ <INTERRUPT>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
