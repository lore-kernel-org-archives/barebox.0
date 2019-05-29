Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVr60-0006z4-He
 for barebox@lists.infradead.org; Wed, 29 May 2019 05:25:54 +0000
Date: Wed, 29 May 2019 07:25:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190529052546.o3wk5plv6gykyjou@pengutronix.de>
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
 <20190527201853.18853-5-andrew.smirnov@gmail.com>
 <20190528093429.5lsf74vvrkngia2x@pengutronix.de>
 <CAHQ1cqE+ghjtyvBGzORzKXTerQbEQ1c-r0yrSAu3-JwEcz4c8A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqE+ghjtyvBGzORzKXTerQbEQ1c-r0yrSAu3-JwEcz4c8A@mail.gmail.com>
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
Subject: Re: [PATCH 4/7] misc: Add a driver to expose U-Boot environment
 variable data
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>, Barebox List <barebox@lists.infradead.org>

On Tue, May 28, 2019 at 06:19:51PM -0700, Andrey Smirnov wrote:
> On Tue, May 28, 2019 at 2:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Mon, May 27, 2019 at 01:18:50PM -0700, Andrey Smirnov wrote:
> > > Add a driver to expose U-Boot environment variable data as a single
> > > mmap-able device. Not very useful on its own, it is a crucial
> > > low-level plumbing needed by filesystem driver introduced in the
> > > following commit.
> >
> > It wasn't clear to me why we need this driver at all, so it might be
> > worth adding a comment that this is for handling redundant env.
> >
> 
> Was it before of after you read the Kconfig help that talks about it?
> Asking to see if copying that text into commit would be enough, or if
> should write a more detailed explanation.

It was before I had read the Kconfig text. Indeed the Kconfig text makes
it clear.

> > > +      */
> > > +     ubdata->current = !ubdata->current;
> > > +
> > > +close_fd:
> > > +     close(fd);
> > > +     return ret;
> > > +}
> > > +
> > > +static struct cdev_operations ubootvar_ops = {
> > > +     .read = mem_read,
> > > +     .write = mem_write,
> > > +     .memmap = generic_memmap_rw,
> >
> > Ok, now I understand this struct resource thingy, you want to reuse
> > mem_read and friends. Given that these functions are oneliners to
> > implement I still suggest implementing them.
> >
> 
> OK, I'll have to make mem_copy() visible globally for them to remain
> one-liners, but that should be doable.

You won't need mem_copy(), plain memcpy() is enough. mem_copy() is only for
accessing registers in with the correct width, but that doesn't matter
here.

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
