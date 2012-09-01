Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7lHZ-00054K-IP
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 10:50:30 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EA87EDC6794
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 12:55:41 +0200 (CEST)
Date: Sat, 1 Sep 2012 12:50:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901105045.GN18708@game.jcrosoft.org>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <20120827132515.GE26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120827132515.GE26594@pengutronix.de>
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
Subject: Re: [PATCH 01/18] fs: add readlink support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:25 Mon 27 Aug     , Sascha Hauer wrote:
> On Fri, Aug 24, 2012 at 06:50:01AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  fs/fs.c      |   59 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  include/fs.h |    5 +++++
> >  2 files changed, 64 insertions(+)
> > 
> > diff --git a/fs/fs.c b/fs/fs.c
> > index 8ab1a3a..64a0d94 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -890,6 +890,65 @@ int close(int fd)
> >  }
> >  EXPORT_SYMBOL(close);
> >  
> > +ssize_t readlink(const char *pathname, char *buf, size_t bufsiz)
> 
> man 2 readlink says:
> 
> > On  success,  readlink()  returns  the number of bytes placed in buf.
> > On error, -1 is returned and errno is set to indicate the error.
> 
> This function instead returns 0 for success and a negative error value.
> This is ok, but if the meaning of the return value is different, then it
> does not make sense to try to match the function prototype with the libc
> function.
> Make the return type int.
> 
> > +{
> > +	struct fs_driver_d *fsdrv;
> > +	struct fs_device_d *fsdev;
> > +	char *p = normalise_path(pathname);
> > +	char *freep = p;
> > +	int ret;
> > +	size_t len = 0;
> > +	char tmp[PATH_MAX];
> > +
> > +	tmp[0] = 0;
> > +	buf[0] = 0;
> > +
> > +	ret = path_check_prereq(pathname, S_IFLNK);
> > +	if (ret)
> > +		goto out;
> > +
> > +	fsdev = get_fs_device_and_root_path(&p);
> > +	if (!fsdev) {
> > +		ret = -ENODEV;
> > +		goto out;
> > +	}
> > +	fsdrv = fsdev->driver;
> > +
> > +	len = min(bufsiz, (size_t)PATH_MAX);
> > +	if (fsdrv->readlink) {
> > +		ret = fsdrv->readlink(&fsdev->dev, p, tmp, len);
> > +	} else {
> > +		ret = -EROFS;
> 
> EROFS is a strange error code here.
ENOSYS maybe better
> 
> > +		goto out;
> 
> This is not needed
> 
> > +	}
> > +
> > +	if (ret)
> > +		goto out;
> > +
> > +	if (tmp[0] == '/') {
> > +		int l = strlen(fsdev->path);
> > +
> > +		if (fsdev->path[l - 1] == '/')
> > +			l--;
> > +
> > +		if (l) {
> > +			len -= l;
> > +			strncat(buf, fsdev->path, l);
> > +		}
> > +	}
> 
> I don't understand why you manipulate the link target when the link target
> is an absolute path. This means that if mount a fatfs to fat and put a
> link there:
> 
> /fat/somelink -> /env/bla
this is not how linux work

an absolute path is related to the mounted path that why I did so
> 
> Then readlink will return /fat/env/bla, which is not what you want.
it's in fact

I try on nfs

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
