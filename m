Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc6Jk-00088W-2g
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 08:12:38 +0000
Date: Fri, 10 Feb 2017 09:12:10 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170210081210.anhoasldrlhqtork@pengutronix.de>
References: <CACmkAZEcG-VJCJt6va7fBamCV7BexSrQn3S8hBudyasyk97npA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACmkAZEcG-VJCJt6va7fBamCV7BexSrQn3S8hBudyasyk97npA@mail.gmail.com>
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
Subject: Re: Multiple root file systems
To: Haris Papadopoulos <haris@amberbox.com>
Cc: barebox@lists.infradead.org

Hello,

On Fri, Feb 03, 2017 at 01:44:43PM +0000, Haris Papadopoulos wrote:
> I am trying to create a system with one bootloader, one kernel and
> multiple filesystems. I am going to use barebox bootchooser
> (http://www.barebox.org/doc/latest/user/bootchooser.html)
> =

> My current /boot/nand file is as follows:
> =

> =

>    #!/bin/sh
> =

>    [ -e /env/config-expansions ] && /env/config-expansions
> =

>    [ ! -e /dev/nand0.root.ubi ] && ubiattach /dev/nand0.root
> =

>    global.bootm.image=3D"/dev/nand0.root.ubi.kernel"
>    global.bootm.oftree=3D"/dev/nand0.root.ubi.oftree"
> =

>    global.linux.bootargs.dyn.root=3D"root=3Dubi0:root ubi.mtd=3Droot
> rootfstype=3Dubifs rw"
> =

> I would like to use two filesysyems with names root1 and root2. How
> should I modify the above?

What is the reason to stick to one kernel for both root filesystems?

If you drop that, you can put the kernel into the rootfses and use
blspec for booting. This way you get rid of the bootscript and just
mount the rootfs and then call

	boot /mnt/rootfs1

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
