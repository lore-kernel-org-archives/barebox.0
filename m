Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gomHk-0002hG-3K
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 09:35:57 +0000
Date: Wed, 30 Jan 2019 10:35:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190130093554.znyd74hzu3mucxwk@pengutronix.de>
References: <1548322649.666663534@f388.i.mail.ru>
 <1548835382.499237981@f484.i.mail.ru>
 <20190130091441.b6tnhtk5ppob7qju@pengutronix.de>
 <1548840038.556794175@f490.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1548840038.556794175@f490.i.mail.ru>
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
Subject: Re: initrd problem
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Jan 30, 2019 at 12:20:38PM +0300, Alexander Shiyan wrote:
> >> >On Thu, Jan 24, 2019 at 12:37:29PM +0300, Alexander Shiyan wrote:
> >> >> I decided to change the size of the UBI volume for the root file system to 60 MB.
> >> >> Now I get a weird OOM error. Turning on debug information shows a conflict,
> >> >> but I do not quite understand where to look for the problem.
> >> >> Where is the starting point to try to solve this problem?
> >> >> 
> >> >> malloc space: 0x95df8d40 -> 0x97df8d3f (size 32 MiB)
> >> >> 
> >> >> Loading ARM Linux zImage '/dev/nand0.system.ubi.kernel'
> >> >> __request_region ok: 0x92000000:0x922a244f
> >> >The Kernel documentation recommends putting the Kernel 32MiB into SDRAM
> >> >to avoid relocation. This is what we see here.
> >> >
> >> >> __request_region: 0x923a3000:0x95e02fff conflicts with 0x95df8d40:0x97df8d3f
> >> >
> >> >Now we try allocate space for the initrd above it which is 60MiB. This
> >> >conflicts with the malloc space.
> >> >
> >> >So yes, you're out of memory.
> >> Memory should be enough (256 Mb). I think the problem is that the memory is
> >> divided into two banks of 128 Mb each.
> >> 
> >> Just look for a next line:
> >> __request_region: 0x923a3000:0x95e02fff outside parent resource 0x98000000:0x9fffffff
> >> 
> >> Maybe we need some kind of option to merge nearby banks?
> >
> >If I'm not mistaken the banks are not really nearby. You should have two
> >banks, one from 0x90000000 to 0x97ffffff and one from 0xa0000000 to
> >0xa7ffffff.
> >I don't know where the resource 0x98000000:0x9fffffff comes from. Could
> >you paste the output of the iomem command? Are you using the code from
> >arch/arm/mach-imx/esdctl.c or are you bypassing it?
> 
> It is not an error. CCMX51 not using ESDCTL.
> The first bank is minimal size 128M. The second is a chain to first, its size
> depends on module variant.

I see. Similar to what is done in arch/arm/boards/ccxmx51/ccxmx51.c,
right?

In that case merging the two banks won't give you much since barebox
will already be placed in the middle of the available RAM.

Can't you shuffle the code so that you can detect the board variant and
thus the amount of SDRAM before even calling barebox_arm_entry? You
would need some early variant of imx_iim_read(), but in the end this
goes down to a register read, so shouldn't be hard to implement.
Then you could drop the splitting into separate SDRAM regions entirely.

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
