Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g53jk-0003g0-Rr
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 06:55:54 +0000
Date: Wed, 26 Sep 2018 08:55:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180926065520.GO4097@pengutronix.de>
References: <20180921122955.9513-1-s.hauer@pengutronix.de>
 <20180921122955.9513-2-s.hauer@pengutronix.de>
 <CAHQ1cqG6fuum4RKKXhLKZu+1CWMVTaU7cU9xyjSwLAO_eaKBGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqG6fuum4RKKXhLKZu+1CWMVTaU7cU9xyjSwLAO_eaKBGw@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] environment: Do not use environment when overlapping
 with other partitions
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Sep 24, 2018 at 06:23:02AM -0700, Andrey Smirnov wrote:
> On Fri, Sep 21, 2018 at 5:44 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Environment partitions are usually specified with their hardcoded offset
> > and size, either in the device tree or the board file. These partitions
> > potentially overlap with other partitions read from the partition table.
> > Overlapping partitions for sure have bad effects. Be more friendly to our
> > users and warn them when such a situation occurs and stop using that
> > partition for storing the environment.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/startup.c | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
> >  include/common.h | 10 ++++++++++
> >  2 files changed, 57 insertions(+), 1 deletion(-)
> >
> > diff --git a/common/startup.c b/common/startup.c
> > index 8553849cb3..f6bb1f1947 100644
> > --- a/common/startup.c
> > +++ b/common/startup.c
> > @@ -73,16 +73,62 @@ fs_initcall(mount_root);
> >  #endif
> >
> >  #ifdef CONFIG_ENV_HANDLING
> > +static int check_overlap(const char *path)
> > +{
> > +       struct cdev *cenv, *cdisk, *cpart;
> > +
> > +       if (strncmp(path, "/dev/", 5))
> > +               return 0;
> > +
> > +       path = devpath_to_name(path);
> 
> Minor suggestions: you can drop the strcmp above by relying on the
> fact that, if argument given to devpath_to_name() does not have
> "/dev/" in front of it, the return value would be that same as the
> argument. IOW, replace the above with:
> 
> name = devpath_to_name(path);
> 
> if (name == path) /* No "/dev" in front */
>     return 0;

Did that, thanks

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
