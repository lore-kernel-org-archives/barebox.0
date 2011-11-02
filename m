Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLXsS-0005cC-N3
	for barebox@lists.infradead.org; Wed, 02 Nov 2011 10:17:01 +0000
Date: Wed, 2 Nov 2011 11:16:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111102101652.GK23421@pengutronix.de>
References: <4EAEDE2C.5010904@crane-soft.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EAEDE2C.5010904@crane-soft.de>
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
Subject: Re: Failed to launch barebox from flash memory on i.MX35
To: Peter <sailingsmoky@googlemail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Mon, Oct 31, 2011 at 06:43:08PM +0100, Peter wrote:
> Hi all,
> I just managed to compile the latest barebox source (http://barebox.org/download/barebox-2011.10.0.tar.bz2 <http://barebox.org/download/>) for the pcm043 board.
> I configured and compiled it:
> $ make pcm043_defconfig
> $ make xconfig # nothing changed there
> $ make
> 
> I used the following CROSS environment settings:
> export PATH="$PATH:/opt/OSELAS.Toolchain-1.99.3/arm-1136jfs-linux-gnueabi/gcc-4.3.2-glibc-2.8-binutils-2.19-kernel-2.6.27-sanitized/bin"
> export ARCH=arm
> export CROSS_COMPILE=arm-1136jfs-linux-gnueabi-
> 
> The make went well without any problems.
> I flashed the barebox.bin at address 0xa000_0000 and rebootet.
> The program then trapped while trying to relocate the code to SDRAM.
> The SDRAM is propperly initialized but the call to memcpy takes adress
> 0x9FFFE000 as source and 0x87F00000 as destination.
> 0x9FFFE000 is definitely not correct, it is 0x2000 below the start of the
> flash memory, obviously the same size as symbol  _stext in the map
> when subtracting the base address.
> 
> Map:
> 00038e50 A _barebox_image_size
> 87f02000 T _stext
> 87f02000 T _text
> 
> The source is in arch/arm/copu/start.c at line 122.
> 
> I am completly stuck. What went wrong?
> Any help will be very much appreciated.

There seems to be a bug in the pcm043_defconfig. It is configured for
internal bootmode, which means that the board has to specify a header
of size 0x2000 before the actual image. The pcm043 does not specify this
header as it uses the external bootmode.
Please disable CONFIG_ARCH_IMX_INTERNAL_BOOT in your config, that should
do it. If it works I'll commit a corresponding patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
