Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x234.google.com ([2607:f8b0:4002:c01::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk8V8-0004lr-HX
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:55:55 +0000
Received: by mail-yh0-f52.google.com with SMTP id z6so19626yhz.39
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:55:33 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 13 May 2014 10:55:33 +0200
Message-ID: <CAOpc7mEUPrZtvd6uVApfcs4Wap42EhxLzGiD=8GaJWW8an8wkQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Question about SPI NOR flash
To: barebox@lists.infradead.org

Hi,

my device has an SPI NOR flash Micron N25Q512A13G124F. With the patch
below it get's detected by barebox and I can at least dump it ("md -s
/dev/m25p0).

Before submitting that patch with signed-off, I want however first
test SPI. It works a but, but only so far:

barebox:/ unprotect /dev/m25p0
barebox:/ erase /dev/m25p0
barebox:/ erase /dev/m25p0.barebox-environment
barebox:/ saveenv
saving environment
could not open /dev/env0: Read-only file system
saveenv: Read-only file system

So, what am I missing to connect /dev/env0 by default?

And, when I do this:

barebox:/ saveenv /dev/m25p0.barebox-environment
saving environment

it seems that it just wrote 00's (before it was FF's, because of the erase):

barebox:/ md -s /dev/m25p0.barebox-environment
00000000: 00000000 00000000 00000000 00000000                ................
00000010: 00000000 00000000 00000000 00000000                ................
00000020: 00000000 00000000 00000000 00000000                ................
00000030: 00000000 00000000 00000000 00000000                ................
00000040: 00000000 00000000 00000000 00000000                ................
00000050: 00000000 00000000 00000000 00000000                ................
00000060: 00000000 00000000 00000000 00000000                ................
00000070: 00000000 00000000 00000000 00000000                ................
00000080: 00000000 00000000 00000000 00000000                ................
00000090: 00000000 00000000 00000000 00000000                ................
000000a0: 00000000 00000000 00000000 00000000                ................
000000b0: 00000000 00000000 00000000 00000000                ................
000000c0: 00000000 00000000 00000000 00000000                ................
000000d0: 00000000 00000000 00000000 00000000                ................
000000e0: 00000000 00000000 00000000 00000000                ................
000000f0: 00000000 00000000 00000000 00000000                ................

Now, perhaps I must add something to the device tree? When I do ...

chosen {
   # ...
   environment@0 {
      compatible = "barebox,environment";
      device-path = &flash, "partname:barebox-environment";
    };
};

&ecspi3 {
  flash: spiflash@0 {
    #address-cells = <1>;
    #size-cells = <1>;
    compatible = "m25p80";
    spi-max-frequency = <20000000>;
    reg = <0>;

    partition@0 {
      label = "barebox-environment";
      reg = <0x0 0x40000>;
    };
  };
};

then I get a backtrace at boot:

detected i.MX6 Quad revision 1.2
mdio_bus: miibus0: probed
m25p80 spiflash@00: mr25h256 (32 Kbytes)
partition m25p0.barebox-environment not completely inside device m25p0
unable to handle paging request at address 0xfffffff2
pc : [<4fe0f0b0>]    lr : [<4fe1fea7>]
sp : 4ffffe58  ip : 4ffff9bc  fp : 00000002
r10: 00000000  r9 : 00040000  r8 : 00000000
r7 : 4be22ea4  r6 : 4be22c58  r5 : ffffffea  r4 : 4be053d8
r3 : 4ffffe20  r2 : 4ffffe28  r1 : 4be22c58  r0 : ffffffea
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<4fe0f0b0>] (of_parse_partition+0x8c/0xb0) from [<4fe0f0eb>]
(of_parse_partitions+0x17/0x2c)
[<4fe0f0eb>] (of_parse_partitions+0x17/0x2c) from [<4fe095fb>]
(add_mtd_device+0xc7/0x110)
[<4fe095fb>] (add_mtd_device+0xc7/0x110) from [<4fe090cd>]
(m25p_probe+0x2a9/0x31c)
[<4fe090cd>] (m25p_probe+0x2a9/0x31c) from [<4fe099dd>] (spi_probe+0x9/0xa)
[<4fe099dd>] (spi_probe+0x9/0xa) from [<4fe07141>] (device_probe+0x11/0x44)
[<4fe07141>] (device_probe+0x11/0x44) from [<4fe07199>] (match.part.2+0x25/0x2c)
[<4fe07199>] (match.part.2+0x25/0x2c) from [<4fe071ed>]
(register_driver+0x4d/0x74)
[<4fe071ed>] (register_driver+0x4d/0x74) from [<4fe0071b>]
(start_barebox+0x17/0xd4)
[<4fe0071b>] (start_barebox+0x17/0xd4) from [<4fe25aff>] (__start+0xa3/0xb8)
[<4fe25aff>] (__start+0xa3/0xb8) from [<4fe00005>] (__bare_init_start+0x1/0xc)

[<4fe25529>] (unwind_backtrace+0x1/0x58) from [<4fe16a99>] (panic+0x1d/0x2c)
[<4fe16a99>] (panic+0x1d/0x2c) from [<4fe259c1>] (do_exception+0xd/0x10)
[<4fe259c1>] (do_exception+0xd/0x10) from [<4fe25a29>] (do_data_abort+0x21/0x2c)
[<4fe25a29>] (do_data_abort+0x21/0x2c) from [<4fe256e8>] (data_abort+0x48/0x60)
### ERROR ### Please RESET the board ###


Index: barebox/drivers/mtd/devices/m25p80.c
===================================================================
--- barebox.orig/drivers/mtd/devices/m25p80.c   2014-05-06
19:28:24.735953323 +0200
+++ barebox/drivers/mtd/devices/m25p80.c        2014-05-06
19:29:01.907954021 +0200
@@ -661,6 +661,7 @@ static const struct platform_device_id m
        /* Micron */
        { "n25q128",  INFO(0x20ba18, 0, 64 * 1024, 256, 0) },
        { "n25q256a", INFO(0x20ba19, 0, 64 * 1024, 512, SECT_4K) },
+       { "n25q512",  INFO(0x20ba20, 0, 64 * 1024,1024, SECT_4K) },

        /* Spansion -- single (large) sector size only, at least
         * for the chips listed here (without boot sectors).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
