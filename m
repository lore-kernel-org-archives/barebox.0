Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkV5c-00024g-OV
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 11:44:26 +0000
Date: Thu, 15 Sep 2016 13:44:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160915114401.z5tdaxcb6eesv3qn@pengutronix.de>
References: <247915608.359799.1473937994666.JavaMail.ngmail@webmail18.arcor-online.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <247915608.359799.1473937994666.JavaMail.ngmail@webmail18.arcor-online.net>
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
Subject: Re: Re: errors copying UBI volumes
To: iw3gtf@arcor.de
Cc: barebox@lists.infradead.org

On Thu, Sep 15, 2016 at 01:13:14PM +0200, iw3gtf@arcor.de wrote:
> Hi Sascha,
> 
> thanks for the answer,
> 
> > Hi Giorgio,
> > 
> > On Wed, Sep 14, 2016 at 05:52:32PM +0200, iw3gtf@arcor.de wrote:
> > > Hi,
> > > 
> > > I'm working on an embedded board with an iMX25 arm CPU and a nand flash.
> > > 
> > > The board runs a linux kernel/userland.
> > > 
> > > When the user updates the firmware, the running userland/kernel creates
> > some
> > > new ubi volumes on the nand, let's say 'kernel_next' and 'userland_next'.
> > > On the next system reboot barebox looks if it finds, lets say, the
> > 'kernel_next' volume
> > > and, in this case, it removes the old one ('kernel'), creates a new, empty
> > one ('kernel'),
> > > copies 'kernel_next' to the just created 'kernel' and finally removes the
> > 'kernel_next'
> > > to complete the update.
> > 
> > While this should work, why so complicated? Since this commit:
> > 
> > | commit 892abde56c1c5a62d49d8b70c73e5d388e74345d
> > | Author: Richard Weinberger <richard@nod.at>
> > | Date:   Mon Nov 24 22:30:10 2014 +0100
> > |
> > |    UBI: rename_volumes: Use UBI_METAONLY
> > |    
> > |    By using UBI_METAONLY in rename_volumes() it is now possible to rename
> > |    an UBI volume atomically while it is open for writing.
> > |    This is useful for firmware upgrades.
> > 
> > It should be possible to just remove 'kernel' and rename 'kernel_next' to
> > 'kernel'
> > without bootloader intervention.
> 
> This is a very good news for me, I already wanted to ask for a UBI rename feature.
> Could you please elaborate a bit on this point: I looked for a shell command like the
> 'ubirename', present in the 'mtd-utils' package, but could not find it. Maybe we just
> need a new command implemented in '<barebox_root>/commands/ubi.c'.

You can add a ubirename command, patches welcome. Anyway, I suggested to
rename it under Linux since you write your new Kernel/rootfs under Linux
aswell.

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
