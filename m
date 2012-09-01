Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7l9a-0004t6-AD
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 10:42:15 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A8C0EDC6D70
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 12:47:26 +0200 (CEST)
Date: Sat, 1 Sep 2012 12:42:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901104230.GM18708@game.jcrosoft.org>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <1345783818-28784-3-git-send-email-plagnioj@jcrosoft.com>
 <20120827133556.GF26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120827133556.GF26594@pengutronix.de>
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
Subject: Re: [PATCH 03/18] fs: add symlink support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:35 Mon 27 Aug     , Sascha Hauer wrote:
> On Fri, Aug 24, 2012 at 06:50:03AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Limit it's support to existing file only
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  fs/fs.c      |   43 +++++++++++++++++++++++++++++++++++++++++++
> >  include/fs.h |    4 ++++
> >  2 files changed, 47 insertions(+)
> > 
> > diff --git a/fs/fs.c b/fs/fs.c
> > index c950054..a19e1f4 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -949,6 +949,49 @@ out:
> >  }
> >  EXPORT_SYMBOL(readlink);
> >  
> > +int symlink(const char *pathname, const char *newpath)
> > +{
> > +	struct fs_driver_d *fsdrv;
> > +	struct fs_device_d *fsdev;
> > +	char *p = normalise_path(pathname);
> > +	int ret;
> > +	struct stat s;
> > +
> > +	if (!stat(p, &s) && S_ISDIR(s.st_mode)) {
> > +		ret = -ENOSYS;
> > +		goto out;
> 
> You lose the memory allocated in normalise_path here.
yeap forget to put the free in out
> 
> > +	}
> > +
> > +	free(p);
> > +	p = normalise_path(newpath);
> 
> p is never freed again.
> 
> > +
> > +	ret = stat(p, &s);
> > +	if (!ret) {
> > +		ret = -EEXIST;
> > +		goto out;
> > +	}
> > +
> > +	fsdev = get_fs_device_and_root_path(&p);
> > +	if (!fsdev) {
> > +		ret = -ENODEV;
> > +		goto out;
> > +	}
> > +	fsdrv = fsdev->driver;
> > +
> > +	if (fsdrv->symlink) {
> > +		ret = fsdrv->symlink(&fsdev->dev, pathname, p);
> > +	} else {
> > +		ret = -EROFS;
> 
> Better:
> 
> EPERM  The file system containing newpath does not support the creation of symbolic links.
ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
