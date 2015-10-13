Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zlv0i-0004fj-M2
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 08:32:41 +0000
Date: Tue, 13 Oct 2015 10:32:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151013083217.GE7858@pengutronix.de>
References: <1444241036-23622-1-git-send-email-pmamonov@gmail.com>
 <20151009080624.GF7858@pengutronix.de>
 <20151009154037.389bb1ab@berta>
 <20151009161143.GG7858@pengutronix.de>
 <20151012132735.5f1a30ff@berta>
 <20151012135105.GW7858@pengutronix.de>
 <20151012172156.526ede520dd2436118ae36f4@gmail.com>
 <CAJfOKBxKz5K865kE-6yo2kb+G-E_9yu3j9J32122w0YXx=+YTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBxKz5K865kE-6yo2kb+G-E_9yu3j9J32122w0YXx=+YTQ@mail.gmail.com>
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
Subject: Re: [RFC] common: filetype: is_fat_or_mbr() considered harmful
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>, Peter Mamonov <pmamonov@gmail.com>

On Mon, Oct 12, 2015 at 04:37:18PM +0200, Franck Jullien wrote:
> >> > > > According to the patch message it was introduced to workaround FAT
> >> > > > detection. However, after deletion of the code I'm still able to
> >> > > > detect and mount FAT-containig partiotions.
> >> > >
> >> > > But can you mount /dev/disk0 if this disk contains a partition table
> >> > > and the FAT is on /dev/disk0.0?
> >> >
> >> > No. This is actually the purpose of my patch, since I don't want
> >> > "mount -a" to mount the same partition (FAT on /dev/disk0.0) twice.
> >>
> >> I know, and this is valid. It just conflicts with what Franck wants. He
> >> just wants to mount a USB device without having to know if the FAT is on
> >> the raw device or on the first partition.
> >>
> >> >
> >> > > This is what the patch is about. The
> >> > > problem the patches solved is that when you plug in a USB drive then
> >> > > you don't know whether a FAT is directly on the device or if the
> >> > > device is partitioned. You want to be able to mount both ways with
> >> > > the same command, so no matter if the FAT is on /dev/disk0
> >> > > or /dev/disk0.0 you can mount both using /dev/disk0.
> >> >
> >> > Ok. So what is the preferred way to prevent "mount -a" from mounting
> >> > /dev/disk0 and /dev/disk0.0 at the same time?
> >>
> >> Sorry, I do not have a solution currently. I'll have a look into it.
> >
> > Can we just add a .config option for disabling "Frank mode"?
> >
> > --
> > Best regards,
> >   Antony Pavlov
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> This is not important for me.
> I faced this situation when I was playing with SD cards controllers.
> 
> However, if I had a problem it may arise for someone else.
> 
> Feel free to remove this detection or, as Antony suggested, add a config option.

The desired behaviour can be reached with a:

mount /dev/disk0 /fat || mount /dev/disk0.0 /fat || echo "Mounting failed"

So I tend to say that we should remove the is_fat_or_mbr detection and
everything around it.

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
