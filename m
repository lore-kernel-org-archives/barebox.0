Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIZKt-0006Et-1t
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 08:59:55 +0000
Date: Tue, 3 Feb 2015 09:59:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150203085931.GI12209@pengutronix.de>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
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
Subject: Re: Passing kernel arguments - SAMA5D4EK
To: Doug Brainard <dbrainard@brainardinsight.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 02, 2015 at 09:58:33AM -0700, Doug Brainard wrote:
> Hello all,
> 
> I've been following barebox for a few months and working with the
> SAMA5D4EK and barebox for about a week now.  I'm trying to
> successfully boot into Android with it.  I am able to do so with
> u-boot, and so I'm trying to figure out how to match the bootargs, so
> that I can transfer over to barebox.
> 
> u-boot sends the following:
> Kernel command line: console=ttyS0,115200
> mtdparts=atmel_nand:8M(Bootstrap),176M(system),304M(userdata),-(cache)
> ubi.mtd=2 ubi.mtd=3 ubi.mtd=4 rw root=ubi0:system systemtype=ubifs
> init=/init androidboot.hardware=sama5-pda androidboot.lcd=wvga
> androidboot.console=ttyS0
> 
> barebox sends the following:
> Kernel command line: console=ttyS0,115200 init=/init
> androidboot.hardware=sama5-pda androidboot.lcd=wvga
> androidboot.console=ttyS0 ip=dhcp root=ubi0:system ubi.mtd=8
> rootfstype=ubifs noinitrd
> mtdparts=atmel_nand:256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),8M(recovery),176M(system),304M(userdata),-(cache)
> 
> The problem has to do with "ubi.mtd=2 ubi.mtd=3 ubi.mtd=4".  Without 3
> sections mounted, Android is missing pieces.  I've figured out that
> rootfs_mtdblock_nand sets the ubi.mtd, and I changed it to 8, because
> I broke up the first 8M that u-boot didn't.  If I just add "ubi.mtd=9
> ubi.mtd=10" to the bootargs, they are out order, and that also messes
> things up.  Commenting out rootfs_mtdblock_nand leaves a "ubi.mtd=" in
> the command line.  Frankly, I'm confused where rootfs_mtdblock_nand is
> defined.  I'd love to just define userdata_mtdblock_nand, etc. and
> have the information filled in, but I'm not seeing where that is done,
> and the documentation (that I've found) doesn't mention anything like
> that.

So if I understand you correctly you tried adding "ubi.mtd=9 ubi.mtd=10"
and have rootfs_mtdblock_nand=8. You then end up with:

ubi.mtd=9 ubi.mtd=10 .. ubi.mtd=8

which gives you the wrong order of ubi devices.

Couldn't you add "ubi.mtd=8 ubi.mtd=9" and rootfs_mtdblock_nand=10
instead?

Note that we started with trying to build a generic default environment
which at some point grew into a monster. We now have the 2nd version of
the generic default environment which is much better. Unfortunately
usage of this new default environment is board specific and your board
isn't converted yet. If you are interested I can show you the steps to
convert it.

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
