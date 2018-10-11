Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAWmL-0000MF-VX
 for barebox@lists.infradead.org; Thu, 11 Oct 2018 08:57:12 +0000
Date: Thu, 11 Oct 2018 10:56:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181011085656.vbjx3cnh5v2s5k5m@pengutronix.de>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
 <20181009173805.26181-8-andrew.smirnov@gmail.com>
 <CAHQ1cqFVW-xeRvUbNV0H_iEboNw8coj6zRzWhp_TCeiwiqxXhg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFVW-xeRvUbNV0H_iEboNw8coj6zRzWhp_TCeiwiqxXhg@mail.gmail.com>
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
Subject: Re: [PATCH v2 07/17] drivers: Introduce dev_set_name()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Oct 09, 2018 at 07:57:27PM -0700, Andrey Smirnov wrote:
> On Tue, Oct 9, 2018 at 10:38 AM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> > diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> > index c43a4bde2..c25498bf4 100644
> > --- a/drivers/base/driver.c
> > +++ b/drivers/base/driver.c
> > @@ -468,16 +468,57 @@ EXPORT_SYMBOL(dummy_probe);
> >
> >  const char *dev_id(const struct device_d *dev)
> >  {
> > -       static char buf[MAX_DRIVER_NAME + 16];
> > +       static char *buf;
> > +       int err;
> > +
> > +       if (buf)
> > +               free(buf);
> 
> Ugh, I just realized that original implementation of this function
> didn't work right for constructs like
> 
> https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/mci-core.c#n1826
> 
> because the result of calling dev_name() for one of the arguments
> would get clobbered by the call to dev_name() inside of dev_info().
> Switching to heap allocated memory only makes things worse.
> 
> Sascha, one solution for this that I can see is to just return
> dev->name for the case of dev->id == DEVICE_ID_SINGLE and add a
> "_name" field to struct device_d that can be lazily filled with device
> name + ID string for dev->id != DEVICE_ID_SINGLE and returned as
> result.

Not sure if "name" and "_name" are good names, but generally I think we
can do it that way.
Could you split this patch up into two and in the first one just add a
dev_set_name function which sprintf() into the string array and converts
the users and only in the second patch do the conversion to an allocated
dev->name?

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
