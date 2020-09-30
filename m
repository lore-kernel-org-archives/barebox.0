Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWiK-0003Ko-LS
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:39:49 +0000
Date: Wed, 30 Sep 2020 09:39:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200930073946.GG11648@pengutronix.de>
References: <af59b1cfcfbb69990ddc84d9d454f44e@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af59b1cfcfbb69990ddc84d9d454f44e@protonic.nl>
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
Subject: Re: Using bootspec with RAUC and redundant partitions
To: robin <robin@protonic.nl>
Cc: barebox@lists.infradead.org, ejo@pengutronix.de, david@protonic.nl

Hi Robin,

On Tue, Sep 29, 2020 at 03:02:15PM +0200, robin wrote:
> Hi All,
> 
> Can anyone help me determine where to place the bootspec data in a system
> with redundant partitions for kernel and rootfs?
> 
> We're migrating from scripts in env/boot for 'system0' and 'system1', to
> bootspec. We're using bootchooser combined with the state framework to
> determine
> which target needs to be booted.
> 
> Our partition table (relevant partitions):
>  mmc2.0: kernel.0
>  mmc2.1: kernel.1
>  ...
>  mmc2.4: rootfs.0
>  mmc2.5: rootfs.1
> 
> Looking into the bootspec, we could add an additional 'boot' partition but
> this breaks redundancy, and feels trivial since we have the kernel partitions.

Yes, I wouldn't add an additional boot partition.

> 
> But adding the loader/entries to the kernel partitions probably requires us
> to generate them runtime (Rauc post-install?). Since Rauc determines which
> kernel partition will be written with the contents of 'kernel' image in a bundle
> the bootspec can't be determined at build time.
> 
> Is there a door number 3 or am I missing something here?

What's the reason for additional kernel partitions? Things would be
easier if you put the kernel images into the rootfs partitions along
with the bootspec entries.

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
