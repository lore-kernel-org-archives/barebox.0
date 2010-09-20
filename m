Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OxaLh-0002or-Jg
	for barebox@lists.infradead.org; Mon, 20 Sep 2010 06:59:38 +0000
Date: Mon, 20 Sep 2010 08:59:33 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20100920065933.GA20946@pengutronix.de>
References: <AANLkTi=pbGJYGCsbqOxtgrkRwJW8up2FKnHzHsgjg-bV@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=pbGJYGCsbqOxtgrkRwJW8up2FKnHzHsgjg-bV@mail.gmail.com>
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
Subject: Re: Using barebox to replace u-boot on OMAPs
To: Anand Gadiyar <gadiyar@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi Anand,

On Sun, Sep 19, 2010 at 06:07:46PM +0530, Anand Gadiyar wrote:
> What I'm trying to do now is to see if barebox can be used
> to replace u-boot on beagleboard, to load uImage directly.

yes, you can do this. We are currently working on a Step-by-Step manual
to explain how load barebox into the beagleboard. The easiest way, with
an preinstalled u-boot, is to do this with a fat formated sd card. You
can try the following steps:

In u-boot:

$ mmcinit
$ fatload mmc 0x0 0x80200000 barebox.bin
$ go 0x80200000

In barebox:

# tell the memory where your barebox image is,
# (we copied it to  0x80200000, so the offset is 0x200000)

$ addpart /dev/ram0 2M(data),1M(barebox)

# erase the old u-boot
$ addpart /dev/nand0 512k(xloader),1M(barebox)
$ nand -a /dev/nand0.barebox
$ erase /dev/nand0.barebox.bb

# write barebox into nand
$ memcpy -s /dev/ram0.barebox -d /dev/nand0.barebox.bb 0x0 0x0

> Specifically, I would like to know if it given barebox.bin and
> uImage are present at particular RAM locations, how to get
> barebox to locate the uImage in RAM?

To load barebox or linux images into ram, you can create partitions on
specified addresses. Just like in the above example you can memcpy from
partition to partition.

Cheers,
Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
