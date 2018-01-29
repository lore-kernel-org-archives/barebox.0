Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eg3oZ-0004sh-SG
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 07:25:18 +0000
Date: Mon, 29 Jan 2018 08:24:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180129072459.gnpmuyowbnzdebwo@pengutronix.de>
References: <20180126194227.32088-1-s.hauer@pengutronix.de>
 <20180126211025.GB3317@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180126211025.GB3317@ravnborg.org>
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
Subject: Re: [PATCH] fs: Fix memory leak in mount()
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Fri, Jan 26, 2018 at 10:10:25PM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> On Fri, Jan 26, 2018 at 08:42:27PM +0100, Sascha Hauer wrote:
> > "path" is allocated by normalise_path() and thus must be
> > freed. This was done in the error path, but not in the success
> > path.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  fs/fs.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/fs/fs.c b/fs/fs.c
> > index 6f15e93ba9..7d0d97906d 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -1392,6 +1392,8 @@ int mount(const char *device, const char *fsname, const char *_path,
> >  		fsdev_set_linux_rootarg(fsdev, str);
> >  	}
> >  
> > +	free(path);
> > +
> >  	return 0;
> >  
> >  err_no_driver:
> An out: label so we only called free once was also an option.
> Both patterns are used in this file - so either should be OK.
> 
> 
> While browsing this file I think there is a few similar
> cases involving normalise_path():
> 
> automount_remove()
> path is assigned, but never freed.
> 
> automount_add()
> am is allocated, but not freed if we return -ENOTDIR. And thus all of path, cmd, and am is leaked
> 
> 
> I also noticed:
> opendir()
> No check for PTR_ERR after calling canonalize_path()
> 
> unlink()
> No check for PTR_ERR after call to canonalize_dir()
> 
> readlink()
> No check for PTR_ERR after call to canonalize_dir()

Yes, the result should be checked.

> 
> I can create patch for these - but I cannot do any thrustworthy testing.
> And for the canonalize() I am uncertain if the check is requied.
> Let me know your preference and I will take care.

Patches would be very welcomed. Thanks Sam.

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
