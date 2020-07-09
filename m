Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jtXJO-0000Tr-NH
 for barebox@lists.infradead.org; Thu, 09 Jul 2020 14:14:07 +0000
Date: Thu, 9 Jul 2020 16:14:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200709141400.GC15485@pengutronix.de>
References: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 0/4] Introduce global.bootm.root env var for booting
 via PARTUUID
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 30, 2020 at 03:48:30PM +0200, Robert Karszniewicz wrote:
> This patch introduces a new env var which specifies which device
> is the rootfs device to be used in Linux, passed to Linux via bootargs,
> identified by the rootfs partition's PARTUUID.
> =

> global.bootm.root supplements global.bootm.appendroot, in that it overrid=
es
> appendroot's na=EFve default, which picks the partition that the kernel r=
esides
> on (global.bootm.image).
> =

> I don't know if it is the right way, or a good way, but this is the short=
est
> and simplest way that I've found.
> =

> What do you think of this? And is it generally something that would be
> accepted, or is this out of scope for barebox?
> =

> Example:
> detect mmc2
> global.bootm.image=3D'/mnt/mmc2.0/zImage'
> global.bootm.appendroot=3D1
> global.bootm.root=3D'/mnt/mmc2.1/'

Why do you pass the standard mount path here? I would expect /dev/mmc2.1.

In 4/4 you mount the root device. I think this should be avoided as it
only works when barebox has support for the rootfs, i.e. it doesn't work
for XFS or the like.

Ok, fsdev_set_linux_rootarg() is tied to a filesystem, so maybe we need
something similar for a cdev.

Generally I think barebox should support this usecase, but I am not
convinced the approach you took is the right API.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
