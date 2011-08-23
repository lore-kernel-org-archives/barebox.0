Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvkU8-0002ih-Nc
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 06:29:18 +0000
Date: Tue, 23 Aug 2011 08:29:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110823062912.GD31404@pengutronix.de>
References: <CAK8HZO+gSazgxyNQ1eDCWXEg820mXTZwdAZ7CricBN4SjDkj_A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8HZO+gSazgxyNQ1eDCWXEg820mXTZwdAZ7CricBN4SjDkj_A@mail.gmail.com>
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
Subject: Re: ubifs: u-boot vs barebox
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 23, 2011 at 06:06:37AM +0000, Nataraj S Narayan wrote:
> Hi Sascha
> 
> I am able to boot a ubifs filesystem in barebox, after writing the
> file system in u-boot. But the reverse doesn't work.
> 
> After a
> 
> ubiattach /dev/nand0.data;
> ubimkvol /dev/ubi0 data 0
> tftp rootfs.ubifs.nat /dev/ubi0.data
> 
> in barebox,  I replaced barebox with u-boot, keeping the same kernel
> and FS, which of course didn't  boot giving me:-
> 
>  corrupted PEBs are: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
> 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 43
> UBIFS error (pid 1): ubifs_get_sb: cannot open "ubi0:data", error -19

I really suspect your nand driver is broken. Sorry, I have no idea what
is going wrong here, but the ubi code is derived from the kernel, I
don't expect these kinds of bugs here.

You should first make sure that you have a working kernel. You have ubi
errors there aswell, right? I would expect that the kernel driver and
ubi layer is in better shape, also the audience will be bigger if
something is going wrong in the kernel.

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
