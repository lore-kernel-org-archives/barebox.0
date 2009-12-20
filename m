Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMOQ1-0007De-Mf
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 16:14:09 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMOPz-0002i2-NG
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 11:14:03 -0500
Date: Sun, 20 Dec 2009 11:13:39 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912201108280.22419@localhost>
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
Subject: barebox on beagleboard:  two questions
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  one question almost certainly dumb, the second maybe not so much.

  first, using the current git pull, i:

  $ export ARCH=arm
  $ export CROSS_COMPILE=arm-linux-   (using ELDK toolchain)
  $ make omap3530_beagle_per_uart_defconfig
  $ make

eventually, copy generated "barebox.bin" to MMC/SD as u-boot.bin, and
boot beagle:

Texas Instruments X-Loader 1.4.2 (Feb 19 2009 - 12:01:24)
Reading boot sector
Loading u-boot.bin from mmc


barebox 2.0.0-rc10-dirty (Dec 20 2009 - 03:21:55)

Board: Texas Instrument's Beagle
Malloc space: 0x87bfff10 -> 0x87ffff10 (size  4 MB)
Stack space : 0x87bf7f10 -> 0x87bfff10 (size 32 kB)
running /env/bin/init...
not found
rday>       [different prompt just to prove new image}

  at that point, every single command i type gives me "Unknown
command", which may be because i haven't read all the docs and have
done nothing in terms of an environment.  i figured it was just worth
doing the trivially obvious to see what happened.

  not so trivial -- board/omap/board-beagle.c:

...
/**
 * @brief Do the SDRC initialization for 128Meg Micron DDR for CS0
 *
...
static struct device_d sdram_dev = {
        .name = "mem",
        .map_base = 0x80000000,
        .size = 128 * 1024 * 1024,
        .platform_data = &sram_pdata,
};
...

  all the newer beagles have 256M of RAM, not 128M.  does this mean my
board is being initialized improperly?  or should i be reading the
above differently?

rday
--



========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
