Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RR4Dh-00012k-Bx
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 15:49:46 +0000
Date: Thu, 17 Nov 2011 16:49:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111117154923.GJ27267@pengutronix.de>
References: <15dd21bf-86c1-4ca8-a830-caef28d617ee@zimbra1-e1.priv.proxad.net>
 <6cf41d5b-a894-46f5-90e3-23f2b615b104@zimbra1-e1.priv.proxad.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6cf41d5b-a894-46f5-90e3-23f2b615b104@zimbra1-e1.priv.proxad.net>
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
Subject: Re: Envfs embedded in barebox.bin
To: robert.jarzmik@free.fr
Cc: barebox@lists.infradead.org

On Thu, Nov 17, 2011 at 04:05:19PM +0100, robert.jarzmik@free.fr wrote:
> Hi,
> 
> I'm working on a very specific board, where I lack :
>  - a serial console (all UARTs are wired to GSM/Bluetooth/GPS chips)
>  - a JTAG adapter
>  - internal MTD access (I have not ported the MTD driver from linux kernel yet)
>  - a USB ethernet / console access (put I didn't port the pxa27x_udc yet)
> 
> What I have is :
>  - a smartphone screen (framebuffer of PXA270)
> 
> I launch barebox.bin using a tool which does it well : disable MMU, flush cache, copy barebox.bin to start of RAM, and transfer control to it.
> 
> My issue is that while I'm developping my board code, I have no feedback (because no console available).

So you are doing LED debugging? That's brave ;)

> I'd like to run some hush scripts, and the only available way (so far) is to embed the envfs into barebox.bin.
> 
> What I'm attempting is basically to :
>  (1) ld -b binary barebox_default_env -o barebox_default_env.o
>  (2) add barebox_default_env.o in Makefile, target barebox-common
>  (3) add in my board code (board.c) the creation of env0 device:
>      devfs_add_partition("ram0", _binary_barebox_default_env_start,
>                          _binary_barebox_default_env_size,
>                          PARTITION_FIXED, "env0")

Most boards have this in the config:

CONFIG_DEFAULT_ENVIRONMENT=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/guf-vincell/env"

This means that the content of defaultenv/ and arch/arm/boards/guf-vincell/env
is embedded into the binary (common/Makefile) and gets mounted during
startup (common/startup.c line 113)

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
