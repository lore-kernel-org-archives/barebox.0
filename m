Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1Ude-0005Jl-2z
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 06:00:28 +0000
Date: Mon, 30 Jun 2014 08:00:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140630060000.GW14257@pengutronix.de>
References: <1403972959-19816-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403972959-19816-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Documentation: add mips boards files
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jun 28, 2014 at 08:29:19PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Documentation/boards/mips.rst               |  9 ++++
>  Documentation/boards/mips/dlink-dir-320.rst | 44 +++++++++++++++++++
>  Documentation/boards/mips/loongson_ls1b.rst | 56 ++++++++++++++++++++++++
>  Documentation/boards/mips/qemu-malta.rst    | 19 ++++++++
>  Documentation/boards/mips/ritmix-rzx50.rst  | 62 ++++++++++++++++++++++++++
>  Documentation/boards/mips/tplink-mr3020.rst | 67 +++++++++++++++++++++++++++++
>  6 files changed, 257 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/mips.rst b/Documentation/boards/mips.rst
> new file mode 100644
> index 0000000..4bac35f
> --- /dev/null
> +++ b/Documentation/boards/mips.rst
> @@ -0,0 +1,9 @@
> +MIPS
> +====
> +
> +.. toctree::
> +  :glob:
> +  :numbered:
> +  :maxdepth: 1
> +
> +  mips/*
> diff --git a/Documentation/boards/mips/dlink-dir-320.rst b/Documentation/boards/mips/dlink-dir-320.rst
> new file mode 100644
> index 0000000..74d11ff
> --- /dev/null
> +++ b/Documentation/boards/mips/dlink-dir-320.rst
> @@ -0,0 +1,44 @@
> +D-Link DIR-320
> +==============
> +
> +The D-Link DIR-320 wireless router has
> +
> +  * BCM5354 SoC;
> +  * 32 MiB SDRAM;
> +  * 4 MiB NOR type Flash Memory;
> +  * RS232 serial interface (LV-TTL levels on board!);
> +  * 1xUSB interface;
> +  * 4 + 1 ethernet interfaces;
> +  * 802.11b/g (WiFi) interface;
> +  * JTAG interface;
> +  * 5 LEDs;
> +  * 2 buttons.
> +
> +The router uses CFE as firmware.
> +
> +Running barebox
> +---------------
> +
> +Barebox can be started from CFE using tftp.
> +You must setup tftp-server on host 192.168.0.1.
> +Put your barebox.bin to tftp-server directory
> +(usual /tftpboot or /srv/tftp).
> +Connect your DIR-320 to your tftp-server network via
> +one of four <LAN> sockets.
> +
> +Next, setup network on DIR-320 and run barebox.bin, e.g.::
> +
> +  CFE> ifconfig eth0 -addr=192.168.0.99
> +  CFE> boot -tftp -addr=a0800000 -raw 192.168.0.1:barebox.bin
> +
> +
> +Links
> +-----
> +
> +  * http://www.dlink.com.au/products/?pid=768
> +  * http://wiki.openwrt.org/toh/d-link/dir-320
> +
> +CFE links:
> +
> +  * http://www.broadcom.com/support/communications_processors/downloads.php#cfe
> +  * http://www.linux-mips.org/wiki/CFE
> diff --git a/Documentation/boards/mips/loongson_ls1b.rst b/Documentation/boards/mips/loongson_ls1b.rst
> new file mode 100644
> index 0000000..a833a86
> --- /dev/null
> +++ b/Documentation/boards/mips/loongson_ls1b.rst
> @@ -0,0 +1,56 @@
> +Loongson LS1B
> +=============
> +
> +The LS1B is a development board made by Loongson Technology Corp. Ltd.
> +
> +The board has
> +
> +  * Loongson LS1B SoC 250 MHz;
> +  * 64 MiB SDRAM;
> +  * 512 KiB SPI boot ROM;
> +  * 128M x 8 Bit NAND Flash Memory;
> +  * 2 x RS232 serial interfaces (DB9 connectors);
> +  * 2 x Ethernet interfaces;
> +  * 4 x USB interfaces;
> +  * microSD card slot;
> +  * LCD display (480x272);
> +  * audio controller;
> +  * beeper;
> +  * buttons;
> +  * EJTAG 10-pin connector.
> +
> +The board uses PMON2000 as bootloader.
> +
> +Running barebox
> +---------------
> +
> +  1. Connect to the boards's UART2;
> +
> +  2. Turn board's power on;
> +
> +  3. Wait ``Press <Enter> to execute loading image`` prompt and press the space key.
> +
> +  4. Build barebox and upload ``zbarebox.bin`` via Ymodem to the board:
> +
> +.. code-block:: none
> +
> +    PMON> ymodem base=0xa0200000
> +
> +..
> +
> +  5. Run barebox
> +
> +.. code-block:: none
> +
> +    PMON> g -e 0xa0200000
> +
> +..
> +
> +Links
> +-----
> +
> +  * http://en.wikipedia.org/wiki/Loongson
> +  * http://www.linux-mips.org/wiki/Loongson
> +  * https://github.com/loongson-gz
> +  * http://www.linux-mips.org/wiki/PMON_2000
> +  * http://www.opsycon.se/PMON2000/Main
> diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
> new file mode 100644
> index 0000000..be89ae3
> --- /dev/null
> +++ b/Documentation/boards/mips/qemu-malta.rst
> @@ -0,0 +1,19 @@
> +QEMU Malta
> +==========
> +
> +QEMU run string::
> +
> +  qemu-system-mips -nodefaults -M malta -m 256 \
> +      -nographic -serial stdio -monitor null \
> +      -bios barebox-flash-image
> +
> +Also you can use GXemul::
> +
> +  gxemul -Q -x -e maltabe -M 256 0xbfc00000:barebox-flash-image
> +
> +Links
> +-----
> +
> +  * http://www.linux-mips.org/wiki/Mips_Malta
> +  * http://www.qemu.org/
> +  * http://gxemul.sourceforge.net/
> diff --git a/Documentation/boards/mips/ritmix-rzx50.rst b/Documentation/boards/mips/ritmix-rzx50.rst
> new file mode 100644
> index 0000000..a51fe3f
> --- /dev/null
> +++ b/Documentation/boards/mips/ritmix-rzx50.rst
> @@ -0,0 +1,62 @@
> +Ritmix RZX-50
> +=============
> +
> +Ritmix RZX-50 is a portable game console for the Russian market.
> +
> +The portable game console has
> +
> +  * Ingenic JZ4755 SoC;
> +  * 64 MiB SDRAM;
> +  * 4 GiB microSDHC card / 4 GiB NAND type Flash Memory (internal boot device);
> +  * RS232 serial interface (LV-TTL levels on the board!);
> +  * LCD display (480x272);
> +  * Video out interface;
> +  * 1xUSB interface;
> +  * buttons.
> +
> +The game console uses U-Boot 1.1.6 as bootloader.
> +
> +Running barebox
> +---------------
> +
> +  1. Connect to the game console's UART
> +     (see. http://a320.emulate.su/2012/01/19/uart-na-ritmix-rzx-50/);
> +
> +  2. Unblock U-Boot console
> +     (see. http://a320.emulate.su/2012/01/25/rzx-50-dostup-k-konsoli-u-boot/);
> +     Please note that U-Boot's Zmodem support does not work;
> +
> +  3. Boot Ritmix linux and login;
> +
> +  4. Build barebox and upload ``barebox.bin`` via Zmodem to the board:
> +
> +.. code-block:: none
> +
> +    # cd /tmp
> +    # rz
> +
> +..
> +
> +  5. Write barebox to onboard flash:
> +
> +.. code-block:: none
> +
> +    # dd if=barebox.bin of=/dev/mmcblk0 seek=1048576 bs=1 count=262144
> +
> +..
> +
> +  6. Reboot RZX-50, next in U-Boot console start barebox:
> +
> +.. code-block:: none
> +
> +  CETUS # msc read 0xa0800000 0x100000 0x40000; g a0800000
> +
> +..
> +
> +
> +Links
> +-----
> +
> +  * http://www.ritmixrussia.ru/products/252/entertainment/game/rzx-50
> +  * ftp://ftp.ingenic.cn/2soc/4755/JZ4755_ds.pdf
> +  * ftp://ftp.ingenic.cn/3sw/01linux/01loader/u-boot/u-boot-1.1.6-jz-20110719-r1728-add-jz4770.patch.bz2
> diff --git a/Documentation/boards/mips/tplink-mr3020.rst b/Documentation/boards/mips/tplink-mr3020.rst
> new file mode 100644
> index 0000000..c9e092c
> --- /dev/null
> +++ b/Documentation/boards/mips/tplink-mr3020.rst
> @@ -0,0 +1,67 @@
> +TP-LINK MR3020
> +==============
> +
> +The TP-LINK MR3020 wireless router has
> +
> +  * Atheros ar9331 SoC;
> +  * 32 MiB SDRAM;
> +  * 4 MiB NOR type SPI Flash Memory;
> +  * RS232 serial interface (LV-TTL levels on board!);
> +  * 1 USB interface;
> +  * 1 Ethernet interfaces;
> +  * 802.11b/g/n (WiFi) interface;
> +  * LEDs & buttons.
> +
> +The router uses U-Boot 1.1.4 as firmware.
> +
> +Running barebox
> +---------------
> +
> +Barebox can be started from U-Boot using tftp.
> +But you have to encode barebox image in a very special way.
> +
> +First obtain ``lzma`` and ``mktplinkfw`` utilities.
> +
> +The ``lzma`` utility can be obtained in Debian/Ubuntu
> +distro by installing lzma package.
> +
> +The ``mktplinkfw`` utility can be obtained from openwrt, e.g.::
> +
> +  $ OWRTPREF=https://raw.githubusercontent.com/mirrors/openwrt/master
> +  $ curl -OL $OWRTPREF/tools/firmware-utils/src/mktplinkfw.c \
> +          -OL $OWRTPREF/tools/firmware-utils/src/md5.c \
> +          -OL $OWRTPREF/tools/firmware-utils/src/md5.h
> +  $ cc -o mktplinkfw mktplinkfw.c md5.c
> +
> +To convert your barebox.bin to U-Boot-loadable image (``6F01A8C0.img``)
> +use this command sequence::
> +
> +  $ lzma -c -k barebox.bin > barebox.lzma
> +  $ ./FW/mktplinkfw -c -H 0x07200103 -W 1 -N TL-WR720N-v3 \
> +      -s -F 4Mlzma -k barebox.lzma -o 6F01A8C0.img
> +
> +You must setup tftp-server on host 192.168.0.1.
> +Put your ``6F01A8C0.img`` to tftp-server directory
> +(usual ``/tftpboot`` or ``/srv/tftp``).
> +
> +Connect your board to your tftp-server network via Ethernet.
> +
> +Next, setup network on MR3020 and run ``6F01A8C0.img``, e.g.::
> +
> +  hornet> set ipaddr 192.168.0.2
> +  hornet> set serverip 192.168.0.1
> +  hornet> tftpboot 0x81000000 6F01A8C0.img
> +  hornet> bootm 0x81000000
> +
> +
> +Links
> +-----
> +
> +  * http://www.tp-link.com/en/products/details/?model=TL-MR3020
> +  * http://wiki.openwrt.org/toh/tp-link/tl-mr3020
> +  * https://wikidevi.com/wiki/TP-LINK_TL-MR3020
> +
> +See also
> +
> +  * http://www.eeboard.com/wp-content/uploads/downloads/2013/08/AR9331.pdf
> +  * http://squonk42.github.io/TL-WR703N/
> -- 
> 1.9.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
