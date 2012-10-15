Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNlk0-0005AM-OX
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 14:34:01 +0000
Date: Mon, 15 Oct 2012 16:33:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015143358.GO27665@pengutronix.de>
References: <CA+pW49qskve7wDMqJe6gZrVX9O1UCOK4cdQXehwK3oLdamsyYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+pW49qskve7wDMqJe6gZrVX9O1UCOK4cdQXehwK3oLdamsyYQ@mail.gmail.com>
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
Subject: Re: malloc Out of memory after ubiattach operation
To: Madhu koriginja <madhava.koriginja@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Oct 15, 2012 at 07:57:09PM +0530, Madhu koriginja wrote:
> After barebox up, I erased the /dev/nand0.rootfs.bb using erase command.
> kernel is already present in the /dev/nand0.kernel.
> After ubiattach command, if I try the boot I am getting the below error.
> Actually my aim is to boot the kernel and it should mount to ubifs, to
> simplify the problem and reproduce the same I am just trying the boot after
> ubiattach instead of preparing the ubi0 device.
> Barebox >/ubiattach /dev/nand0.rootfs
> UBI: attaching mtd0 to ubi0
> UBI: physical eraseblock size:   1048576 bytes (1024 KiB)
> UBI: logical eraseblock size:    1044480 bytes
> UBI: smallest flash I/O unit:    4096
> UBI: sub-page size:              1024
> UBI: VID header offset:          1024 (aligned 1024)
> UBI: data offset:                4096
> UBI: empty MTD device detected
> UBI: create volume table (copy #1)
> UBI: create volume table (copy #2)
> registering /dev/ubi0
> UBI: attached mtd0 to ubi0
> UBI: MTD device name:            "nand0.rootfs"
> UBI: MTD device size:            16 MiB
> UBI: number of good PEBs:        16
> UBI: number of bad PEBs:         0
> UBI: max. allowed volumes:       128
> UBI: wear-leveling threshold:    4096
> UBI: number of internal volumes: 1
> UBI: number of user volumes:     0
> UBI: available PEBs:             10
> UBI: total number of reserved PEBs: 6
> UBI: number of PEBs reserved for bad PEB handling: 2
> UBI: max/mean erase counter: 1/0
> 
> Barebox >/ boot
> booting kernel of type uimage from /dev/nand0.kernel.bb
> bootm /dev/nand0.kernel.bb
> requesting xmalloc size: 2456544
> ERROR: out of memory

Try a make menuconfig and increase CONFIG_MALLOC_SIZE to whatever you
can spare.

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
