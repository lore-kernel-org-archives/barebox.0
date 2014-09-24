Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XWeSd-00083X-67
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 04:45:52 +0000
Date: Wed, 24 Sep 2014 06:45:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140924044528.GY4992@pengutronix.de>
References: <CAJfOKBzn+6WKzQtBN62Z8Uxb1U=wnadzJ-BPeQ5v5tEchdJmTg@mail.gmail.com>
 <CAJfOKBySWnQN+RNuZfET12sudUiWhTSV4bVL3xwYTkv-69YwXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBySWnQN+RNuZfET12sudUiWhTSV4bVL3xwYTkv-69YwXQ@mail.gmail.com>
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
Subject: Re: Subject: [PATCH] cfi: print size in human readable format
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Franck,

On Tue, Sep 23, 2014 at 09:03:58AM +0200, Franck Jullien wrote:
> Not sure the patch format is ok. It sent it from my webmail (I'm not
> able to use git send-email here).

The patch has tabs converted to spaces. I applied it manually.

Thanks
 Sascha

> 
> Franck.
> 
> 2014-09-23 9:02 GMT+02:00 Franck Jullien <franck.jullien@gmail.com>:
> > From: Franck Jullien <franck.jullien@gmail.com>
> >
> > The CFI size is now printed in a human readable format.
> > It also adds "0x" prefix to the printed address.
> >
> > Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> > ---
> >  drivers/mtd/nor/cfi_flash.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> > index a494063..0fa41bf 100644
> > --- a/drivers/mtd/nor/cfi_flash.c
> > +++ b/drivers/mtd/nor/cfi_flash.c
> > @@ -1000,8 +1000,8 @@ static int cfi_probe (struct device_d *dev)
> >                 return -ENODEV;
> >         }
> >
> > -       dev_info(dev, "found cfi flash at %p, size %ld\n",
> > -                       info->base, info->size);
> > +       dev_info(dev, "found cfi flash at 0x%p, size %s\n",
> > +                       info->base, size_human_readable(info->size));
> >
> >         dev->info = cfi_info;
> >
> > --
> > 2.1.0
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
