Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVwOD-0002S2-Ag
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 07:19:10 +0000
Date: Wed, 17 Feb 2016 08:18:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160217071847.GK19372@pengutronix.de>
References: <1455610997-7608-1-git-send-email-yegorslists@googlemail.com>
 <1455610997-7608-3-git-send-email-yegorslists@googlemail.com>
 <CAGm1_ksKCs70eR+rmw-iWfzZO7SdGA1T6JEmkuwwhXzA=eqNWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ksKCs70eR+rmw-iWfzZO7SdGA1T6JEmkuwwhXzA=eqNWw@mail.gmail.com>
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
Subject: Re: [PATCH v2 3/3] fs: add support for SquashFS 4.0
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Feb 16, 2016 at 09:38:03AM +0100, Yegor Yefremov wrote:
> On Tue, Feb 16, 2016 at 9:23 AM,  <yegorslists@googlemail.com> wrote:
> > From: Yegor Yefremov <yegorslists@googlemail.com>
> >
> > The driver was imported from Linux 4.4.
> >
> > Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> > ---
> > Changes:
> >         v2: - fix checkpatch errors
> >             - remove spinlock/wait code from cache implementation
> >             - fix directory listing
> >             - add documentation entry about SquashFS
> >             - fix compiling without XZ enabled
> >             - fix some memory leaks
> 
> Memory leaks:
> 
> 1. mount still produces 20 bytes, that I still haven't identified

Does this accumulate if you repeat mount/unmount? Usually when
allocating/freeing bunches of memory you don't have the exact amount of
memory free afterwards.

> 2. ls -l has about 300 bytes, how do I best handle qstr duplicating?
> Its name is *const char **. If I'm doing alloc() I'm breaking this
> qualifier.

Why do you alloc? In squashfs_readdir() you can do a
nm.name = dentry->d_name.name instead of doing an extra allocation for
the string.

> 3. reading a file, i.e. cat has no memory leak so far according to meminfo

\o/

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
