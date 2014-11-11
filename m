Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoIAo-0002Qy-R8
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 20:36:23 +0000
Date: Tue, 11 Nov 2014 21:35:59 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141111203559.GJ27002@pengutronix.de>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de>
 <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
 <54621C64.5070004@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54621C64.5070004@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Hi Ezequiel,

On Tue, Nov 11, 2014 at 11:25:40AM -0300, Ezequiel Garcia wrote:
> On 11/11/2014 06:06 AM, Uwe Kleine-K=F6nig wrote:
> >>>
> >>> Do you have a command line for me? I used
> >>>
> >>> 	scripts/kwboot -b images/barebox-netgear-rn104-uart.img /dev/ttyUSB0
> >>>
> >>> which took much longer than I expected (didn't time it, but I'd say in
> >>> the several minutes range). And I didn't know what to do then. Ctrl-C
> >>> and then connecting microcom was wrong. Adding -t to the command line
> >>> above, too.
> > Any hints on how kwboot is used? It loads the binary into RAM and runs
> > it from there, right? I timed my above command and it took 38m28.225s
> > for my image (341304 bytes).
> > =

> =

> This is how I use kwboot:
> =

> 1. Boot your board (with stock U-Boot and Linux) and extract the bootload=
er.
>    According to my notes, I just grabbed a couple megabytes:
> =

>    $ dd if=3D/dev/mtd0 of=3D/mtd0.dump bs=3D1M count=3D2
> =

>    I guess you can grab the entire bootloader partition (if you have one).
> =

> 2. Run kwbimage tool and dump the output to the appropriate board directo=
ry:
> =

>   $ ./scripts/kwbimage -x -i /srv/nfs/mtd0.dump -o arch/arm/boards/platho=
me-openblocks-ax3/
> =

>   Fix the produced kwbimage.cfg to boot from UART (actually, I think it's=
 not needed):
> =

>   diff --git a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg b/arc=
h/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
>   index 219c2ec..fd6c0df 100644
>   --- a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
>   +++ b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
>   @@ -1,5 +1,5 @@
>    VERSION 1
>   -BOOT_FROM spi
>   +BOOT_FROM uart
>    DESTADDR 00600000
>    EXECADDR 006b0000
>    NAND_BLKSZ 00000000
My kwbimage looks similar:

	VERSION 1
	BOOT_FROM nand
	DESTADDR 00600000
	EXECADDR 006a0000
	NAND_BLKSZ 00020000
	NAND_BADBLK_LOCATION 01
	BINARY arch/arm/boards/netgear-rn104/binary.0 0000005b 00000068
	PAYLOAD ./payload

The other kwbimage.cfg files don't have a "PAYLOAD" line though, but if
I read the source correctly this shouldn't a problem.

BTW, is this binary.0 expected to be located in the source or the build
directory for oot-building? I would expect to provide it in the source
tree, but it's not picked up from there.
 =

> 3. Make your barebox
> =

>   $ make
> =

> 4. Run kwboot and have fun!
> =

>   $ ./scripts/kwboot -b images/barebox-plathome-openblocks-ax3.img -t -B =
115200 /dev/ttyUSB0
With the patch I just sent, kwboot doesn't take 30+ minutes anymore, but
dies when an error occurs. (Unfortunately this happens 100% reproducibly
with two different USB-to-RS232 adapters.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
