Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNco9-0004Af-6D
 for barebox@lists.infradead.org; Mon, 25 Jan 2016 08:47:33 +0000
Date: Mon, 25 Jan 2016 09:47:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160125084711.GX13058@pengutronix.de>
References: <1453663456-5168-1-git-send-email-yegorslists@googlemail.com>
 <CAGm1_ksoy5BweOmR1FYaTG4=C4jZnxtvaBgukpbasJv6tDGSkA@mail.gmail.com>
 <20160125082015.GW13058@pengutronix.de>
 <CAGm1_kv7Suu7kEv=DgRW_vB6dL+Uew851AJCp72sFmdtJy6B4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_kv7Suu7kEv=DgRW_vB6dL+Uew851AJCp72sFmdtJy6B4w@mail.gmail.com>
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
Subject: Re: [RFC] fs: move super_block and inode definitions to central fs.h
 header
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Jan 25, 2016 at 09:40:26AM +0100, Yegor Yefremov wrote:
> On Mon, Jan 25, 2016 at 9:20 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Sun, Jan 24, 2016 at 08:55:22PM +0100, Yegor Yefremov wrote:
> >> On Sun, Jan 24, 2016 at 8:24 PM, Yegor Yefremov
> >> <yegorslists@googlemail.com> wrote:
> >> > Both super_block and inode are common to various file systems, so
> >> > move them to the central place.
> >> >
> >> > Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> >> > ---
> >> >  fs/ubifs/ubifs.h | 134 +------------------------------------------------------
> >> >  include/fs.h     | 134 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >> >  2 files changed, 135 insertions(+), 133 deletions(-)
> >>
> >> I'm trying to port SquashFS to Barebox. SquashFS uses at least both
> >> super_block structure as also inode structure. Does it make sense to
> >> introduce include/linux/fs.h?
> >
> > I think not. Using include/linux/ for header files is good for stuff
> > directly taken from the kernel, but I think the fs related structures in
> > barebox are quite different from the ones in the kernel.
> 
> So you're OK about moving super_block and inode to inculde/fs?

Sorry, I should have read the patch before replying to your followup.
You were talking about the struct inode/superblock in ubifs which indeed
are taken from the kernel and not actively used by barebox. These should
indeed go to include/linux/.

> 
> >> What to do with struct timespec? It is defined in uapi part. Should it
> >> go to include/linux/barebox-wrapper.h?
> >
> > barebox-wrapper.h contains no-op wrappers for stuff from the kernel that
> > we want to keep around just to be able to compile kernel code with less
> > modifications. struct timespec doesn't really fall into that category, I
> > rather suggest its original place: include/linux/time.h
> 
> OK. Then I'll move it there. Should I also add timeval and related
> marcos as well?

I would rather take the lazy approach and add them as needed.

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
