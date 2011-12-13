Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaOYh-00020R-Cn
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 09:22:00 +0000
Date: Tue, 13 Dec 2011 10:21:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213092147.GC27267@pengutronix.de>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 0/2] drivers/mtd: add a core
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Mon, Dec 12, 2011 at 06:14:04PM +0100, Robert Jarzmik wrote:
> This patchset aims at bringing a common core to all mtd
> devices. This minimal core provides :
>  - add_mtd_device()
>  - del_mtd_device()
> 
> The add_mtd_device() creates 2 character devices, as
> explained in the second commit.
> 
> This core will be used by drivers/mtd/devices/* (soon to
> come), and hopefully drivers/mtd/nand/* if we agree on
> add_mtd_device() functionality.
> 
> The core should provide read/write/erase capability which
> suits all the devices (ie. nand, nor and bare).
> 
> If no agreement emerges, this core will be moved into
> drivers/mtd/devices.
> 
> The nand devices are left as they were, and not converted to
> the new core. This conversion will only be possible after
> some feedback about the needs of nand legacy drivers.

The mtd core looks mostly looks like a duplicate of
drivers/mtd/nand/nand.c. The differences are:

- nand.c contains a 'all 0xff' check in its write function. This
  is to make sure not to actually write data when it's all 0xff.
  Some nand chips need this because they can't be written twice
  even if we write with all 1.
- The nand_oob device is replaced with a device containing both
  oob and data.

I created the nand_oob device mainly for debugging purposes. It can be
convenient to be able to see the oob data. As this has no practical
use besides debugging it can be easily replaced with an interleaved
data/oob device. The oob device is quite inconvenient to use anyway
since it requires some calculating to get the oob data for a given
page.

So if no protests from other side come we can:

- git mv drivers/mtd/nand/nand.c drivers/mtd/core.c
- replace the oob device with the data+oob device
- apply whatever other fixes you need

I should be able to test the result on raw nand devices.

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
