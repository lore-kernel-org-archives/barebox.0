Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTfqT-0001B1-Kq
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 21:29:06 +0000
Date: Wed, 31 Oct 2012 22:29:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121031212902.GQ1641@pengutronix.de>
References: <20121031120122.GF29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121031120122.GF29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] m25p80: re-import it againt mtd_add_host
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 31, 2012 at 01:01:22PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	so we now create the cdev via mtd
> 
> 	This will also simplify sync with linux
> 
> 	to avoid the m25p8000 or m25p00 the cdev is still named name m25p and the
> 	drivers m25p80
> 
> 	sync with linux too
> 
> 	this patch series is agianst mtd_dataflash support
> 
> The following changes since commit 9428c386f876fa3a8871eeea4725a805cea5c367:
> 
>   mtd: add dataflash support (2012-10-31 04:48:39 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/m25p80

Sometimes I get the feeling that you do this only to break other peoples
setup:

barebox@Sabre Lite:/ saveenv
saving environment
prefetch abort
pc : [<00000004>]    lr : [<4fc099eb>]
sp : 4bbff8e0  ip : 00000000  fp : 00000000
r10: 00000000  r9 : 00000000  r8 : 00000000
r7 : 00080000  r6 : 4bbff8e0  r5 : 00080000  r4 : 4bc0bc68
r3 : 00000000  r2 : 00080000  r1 : 00000000  r0 : 4bc0bc68
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<4fc099eb>] (mtd_erase+0x2b/0x60) from [<4fc157cd>] (devfs_erase+0x41/0x54)
[<4fc157cd>] (devfs_erase+0x41/0x54) from [<4fc1716f>] (erase+0x6f/0x8c)
[<4fc1716f>] (erase+0x6f/0x8c) from [<4fc0e307>] (do_saveenv+0x7b/0x100)
[<4fc0e307>] (do_saveenv+0x7b/0x100) from [<4fc0588d>] (execute_command+0x21/0x4c)
[<4fc0588d>] (execute_command+0x21/0x4c) from [<4fc0317d>] (run_list_real+0x629/0x704)
[<4fc0317d>] (run_list_real+0x629/0x704) from [<4fc03339>] (parse_stream_outer+0xe1/0x190)
[<4fc03339>] (parse_stream_outer+0xe1/0x190) from [<4fc0357b>] (run_shell+0x23/0x54)
[<4fc0357b>] (run_shell+0x23/0x54) from [<4fc0588d>] (execute_command+0x21/0x4c)
[<4fc0588d>] (execute_command+0x21/0x4c) from [<4fc0317d>] (run_list_real+0x629/0x704)
[<4fc0317d>] (run_list_real+0x629/0x704) from [<4fc02e1d>] (run_list_real+0x2c9/0x704)

[<4fc1b37d>] (unwind_backtrace+0x1/0x64) from [<4fc0f635>] (panic+0x1d/0x2c)
[<4fc0f635>] (panic+0x1d/0x2c) from [<4fc1b761>] (do_exception+0xd/0x10)
[<4fc1b761>] (do_exception+0xd/0x10) from [<4fc1b7a5>] (do_prefetch_abort+0x11/0x14)
[<4fc1b7a5>] (do_prefetch_abort+0x11/0x14) from [<4fc1b510>] (prefetch_abort+0x50/0x60)

This is because you haven't provided a mtd->block_isbad callback. Instead
we have an empty m25p_oob0 device for a flash which cannot have bad blocks
at all. Have you ever done basic tests with this driver? This really
does not motivate me to take a 40k patch.

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
