Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x229.google.com ([2607:f8b0:4002:c01::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk90g-0008QN-5B
 for barebox@lists.infradead.org; Tue, 13 May 2014 09:28:30 +0000
Received: by mail-yh0-f41.google.com with SMTP id f73so49618yha.0
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 02:28:07 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 13 May 2014 11:28:07 +0200
Message-ID: <CAOpc7mEpPQRiCd60RK9Mc=DtVLqNVqg2Y+WxXOuJNk+=AMZFPA@mail.gmail.com>
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
Subject: SPI question
To: barebox@lists.infradead.org

Hi,

I have an SPI NOR flash in my device and with the patch below it get's
detected. However, I cannot erase it. The flash is a Micron N25Q512A,
thought the JEDEC ID matches that of a N25Q512 from u-boot's source
code. Any idea on what's going on?

detected i.MX6 Quad revision 1.2
mdio_bus: miibus0: probed
m25p80 spiflash@00: n25q512 (65536 Kbytes)
m25p80 spiflash@00: mtd .name = <NULL>, .size = 0x4000000 (64MiB)
.erasesize = 0x00001000 (4KiB) .numeraseregions = 0
m25p80 spiflash@10: n25q512 (65536 Kbytes)
m25p80 spiflash@10: mtd .name = <NULL>, .size = 0x4000000 (64MiB)
.erasesize = 0x00001000 (4KiB) .numeraseregions = 0
imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
barebox-environment environment.11: setting default environment path
to /dev/m25p0.barebox-environment
wrong crc on env
no valid environment found on /dev/m25p0.barebox-environment. Using
default environment
running /env/bin/init...
barebox:/ unprotect /dev/m25p0
barebox:/ erase /dev/m25p0
m25p80 spiflash@00: m25p80_erase at 0x0, len 67108864
m25p80 spiflash@00: erase_chip 65536KiB
barebox:/ md -s /dev/m25p0
00000000: 798fba79 00000000 6c456c4c 000001e0                y..y....LlEl....
00000010: 00000001 00000000 29438628 67a8c78d                ........(.C)...g
00000020: 000000b1 00000018 74656e2f 6b726f77                ......../network
00000030: 6874652f 00000030 68a8c78d 000001ff                /eth0......h....
00000040: 622f2123 732f6e69 230a0a68 20706920                #!/bin/sh..# ip
00000050: 74746573 20676e69 61747328 2f636974                setting (static/
00000060: 70636864 70690a29 6174733d 0a636974                dhcp).ip=static.
00000070: 7320230a 69746174 65732063 20707574                .# static setup
00000080: 64657375 20666920 733d7069 69746174                used if ip=stati
00000090: 70690a63 72646461 3239313d 3836312e                c.ipaddr=192.168
000000a0: 3333322e 3839312e 74656e0a 6b73616d                .233.198.netmask
000000b0: 3535323d 3535322e 3535322e 730a302e                =255.255.255.0.s
000000c0: 65767265 3d706972 2e323931 2e383631                erverip=192.168.
000000d0: 2e333332 650a3836 64616874 413d7264                233.68.ethaddr=A
000000e0: 42453a32 3a32373a 353a3638 46313a31                2:EB:72:86:51:1F
000000f0: 0000000a 67a8c78d 00000032 ff000014                .......g2.......

However, the fact that actually something is stored there seems that
things are at least partially working, i.e. on of the "saveenv"
commands must have worked).


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
