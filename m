Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f89.mail.ru ([128.140.169.161])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpBUc-0001at-3n
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 06:03:43 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 19 Jun 2013 10:03:13 +0400
Message-ID: <1371621793.699357681@f89.mail.ru>
In-Reply-To: <20130619053827.GF32299@pengutronix.de>
References: <1371559850-21867-1-git-send-email-jlu@pengutronix.de>
 <20130619053827.GF32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gZGV2ZnMtY29yZTogaW50cm9kdWNlIGRldmZzX2Fw?=
 =?UTF-8?B?cGVuZF9wYXJ0aXRpb24=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Tue, Jun 18, 2013 at 02:50:50PM +0200, Jan Luebbe wrote:
> > This simplifies board code for partition setup by keeping track of the
> > offset.
> > 
> > Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> 
> Good idea. There seem to be some bugs in this area. I'm fine with the
> patch when some users are converted to this.

But lets make static variable "offset", setup it in devfs_add_partition and
just add "size" in the devfs_append_partition.
Otherwise I do not see any difference between "add" and "append".

> > ---
> >  fs/devfs-core.c  | 9 +++++++++
> >  include/driver.h | 2 ++
> >  2 files changed, 11 insertions(+)
> > 
> > diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> > index 262e0a2..f7d79ff 100644
> > --- a/fs/devfs-core.c
> > +++ b/fs/devfs-core.c
> > @@ -267,6 +267,15 @@ int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
> >  	return 0;
> >  }
> >  
> > +int devfs_append_partition(const char *devname, loff_t *offset, loff_t size,
> > +		int flags, const char *name)
> > +{
> > +	int ret;
> > +	ret = devfs_add_partition(devname, *offset, size, flags, name);
> > +	*offset += size;
> > +	return ret;
> > +}
> > +
> >  int devfs_del_partition(const char *name)
> >  {
> >  	struct cdev *cdev;
> > diff --git a/include/driver.h b/include/driver.h
> > index 716f792..3f4f7b9 100644
> > --- a/include/driver.h
> > +++ b/include/driver.h
> > @@ -463,6 +463,8 @@ int cdev_erase(struct cdev *cdev, size_t count, loff_t offset);
> >  
> >  int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
> >  		int flags, const char *name);
> > +int devfs_append_partition(const char *devname, loff_t *offset, loff_t size,
> > +		int flags, const char *name);
> >  int devfs_del_partition(const char *name);
> >  
> >  #define DRV_OF_COMPAT(compat) \

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
