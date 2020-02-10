Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14cD-0003Ms-1S
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 08:40:26 +0000
Date: Mon, 10 Feb 2020 09:40:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200210084023.fqwqzwge5nceaq6v@pengutronix.de>
References: <20200205091201.15248-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205091201.15248-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2] fs: jffs2: add initial support for reading jffs2
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 05, 2020 at 10:12:01AM +0100, Steffen Trumtrar wrote:
> Import the jffs2 filesystem code from Linux v5.5-rc1 and convert it
> to work with barebox.
> 
> Writing is *not* supported.
> 
> Testing was done with a n25q256a-compatible QuadSPI chip on a
> SoCFPGA-based Socrates board.
> 
> Testing was done with a combination of:
> 	user@somelinuxhost: mkfs.jffs2 --eraseblock=4 -d fs/jffs2/ -o jffs2.img
> 	root@target:~ flash_erase -j /dev/mtd5 0 0
> 	root@target:~ dd if=jffs2.img of=/dev/mtd5
> 	barebox@EBV SOCrates:/ mount /dev/mtd0.data
> 	(...)
> 	mounted /dev/mtd0.data on /mnt/mtd0.data
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> 
> Notes:
>     Changes in v2:
>       - add some missing pr_fmt
>       - fix multiple mount/umount cycles by moving compressor_init and
>         create_slab_caches to jffs2_probe instead of init_jffs2_fs.
>         jffs2_remove calls compressor_exit and destroy_slab_caches which
>         in turn is called by umount. This lead to being unable to umount
>         twice.
>       - fix memory leaks
>       - fix jffs2_get_block function

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
