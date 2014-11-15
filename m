Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XphYZ-0005kT-48
 for barebox@lists.infradead.org; Sat, 15 Nov 2014 17:54:44 +0000
Date: Sat, 15 Nov 2014 18:54:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141115175417.GX30369@pengutronix.de>
References: <4C598A31AEBE214FB619D7F2DC3BD8AB013B08B107@MSI0E01.MSI.Local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C598A31AEBE214FB619D7F2DC3BD8AB013B08B107@MSI0E01.MSI.Local>
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
Subject: Re: bareboxenv-target
To: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Nov 14, 2014 at 06:44:30PM +0000, Balasa, Bogdan wrote:
> Hi,
> 
> I'm using barebox 2014.11.0, kernel 3.14 on phyFlex imx6 and when loading barebox environment from userspace I get a wrong magic:
> -------
> ./bareboxenv-target -l /mnt/bbox /dev/mtd1
> envfs: wrong magic
> -------
> root@imx6q-pbab01:~# cat /proc/mtd
> dev:    size   erasesize  name
> mtd0: 00400000 00020000 "barebox"
> mtd1: 00020000 00020000 "barebox-environment"
> mtd2: 00800000 00020000 "kernel"
> mtd3: 3f3e0000 00020000 "root"

This seems to be your Nand flash, so if you have your environment in NOR
FLash,

> mtd4: 01000000 00010000 "spi2.0"

it should be here. However, the NOR Flash is not partitioned, so the
partitions get lost somewhere between barebox and the kernel.

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
