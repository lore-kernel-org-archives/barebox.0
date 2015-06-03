Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x22d.google.com ([2607:f8b0:4003:c06::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z09Lh-0001Fw-RC
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 14:08:54 +0000
Received: by oiww2 with SMTP id w2so7997359oiw.0
 for <barebox@lists.infradead.org>; Wed, 03 Jun 2015 07:08:32 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 3 Jun 2015 17:08:31 +0300
Message-ID: <CAKOK1G0iK=kZJPHGV6mtCbwdNpwdZOXEfnCTeozC+8Nkehxe1A@mail.gmail.com>
From: =?UTF-8?B?0JLQsNC70LXRgNC40Lkg0J3Ri9GA0L7Qsg==?= <nvg.dev@gmail.com>
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
Subject: BeagleBoard-Xm: memtest return error
To: barebox@lists.infradead.org

Hello everyone! I am a newbie and trying to run the barebox on
BeagleBoard-Xm rev.C with 512MB DDR on board.

To support 512MB I did the following:

1) file: arm/boards/beagle/board.c, func: beagle_mem_init(), change line 85:

beagle_mem_init(void)
{
    //omap_add_ram0(SZ_128M);
    omap_add_ram0(SZ_512M);
}

2) file: arm/boards/beagle/lowlevel.c, func: sdrc_init(), change line 127:

//writel(0x02584099, OMAP3_SDRC_REG(MCFG_0));
writel(0x02590099, OMAP3_SDRC_REG(MCFG_0)); // to add 512MB support on CS0

Then launch barebox and send command - memtest, which return error:
"FAILURE: Address bit stuck high @ 0x90000000: expected 0xaaaaaaaa,
actual 0x7fffffff",
but commands "memset" writes data to the address 0x90000000 correct,
what I did not so?

Best Regards,
Valeriy Nyrov.

Here is the log:

Board: Texas Instruments beagle
netconsole: registered as netconsole-1
i2c-omap i2c-omap30: bus 0 rev4.4 at 100 kHz
ehci ehci0: USB EHCI 1.00
nand: No NAND device found
gpmc_nand gpmc_nand0: probe failed: No such device or address
omap-hsmmc omap3-hsmmc0: registered as omap3-hsmmc0
mci0: detected SD card version 2.0
mci0: registered disk0
malloc space: 0x85e00000 -> 0x87dfffff (size 32 MiB)
environment load /boot/barebox.env: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...
set parameter: No such device
Failed to add partitions
128k(nand0.xload),256k(nand0.barebox)ro,128k(nand0.bareboxenv),128k(nand0.oftree),4M(nand0.kernel),1200

Hit any key to stop autoboot:  1
barebox@Texas Instruments beagle:/ memtest
Start iteration 1 of 1.
Do memtest with caching enabled.
Testing memory space: 0x80000000 -> 0x85dfffff:
Starting data line test.
Check for address bits stuck high.
Check for address bits stuck low or shorted.
Starting integrity check of physicaly ram.
Filling ram with patterns...
        [#################################################################]
Compare written patterns...
        [#################################################################]
Filling ram with inverted pattern and compare it...
        [#################################################################]
done.

Testing memory space: 0x87e48000 -> 0x87ff3fff:
Starting data line test.
Check for address bits stuck high.
Check for address bits stuck low or shorted.
Starting integrity check of physicaly ram.
Filling ram with patterns...
        [#################################################################]
Compare written patterns...
        [#################################################################]
Filling ram with inverted pattern and compare it...
        [#################################################################]
done.

Testing memory space: 0x88000000 -> 0x9fffffff:
Starting data line test.
Check for address bits stuck high.
FAILURE: Address bit stuck high @ 0x90000000: expected 0xaaaaaaaa,
actual 0x7fffffff.
Memtest failed. Error: -5

barebox@Texas Instruments beagle:/ memset -b 0x90000000 0xaa 4
barebox@Texas Instruments beagle:/ md -b 0x90000000
90000000: aa aa aa aa aa aa aa aa aa aa aa aa 00 00 00 00    ................
90000010: aa aa aa aa 00 00 00 00 00 00 00 00 00 00 00 00

barebox@Texas Instruments beagle:/ memset -b 0x90000000 0x55 4
barebox@Texas Instruments beagle:/ md -b 0x90000000
90000000: 55 55 55 55 aa aa aa aa aa aa aa aa 00 00 00 00    UUUU............
90000010: aa aa aa aa 00 00 00 00 00 00 00 00 00 00 00 00    ................

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
