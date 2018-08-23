Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsdIz-0005j6-IG
 for barebox@lists.infradead.org; Thu, 23 Aug 2018 00:16:54 +0000
Received: by mail-it0-x243.google.com with SMTP id s7-v6so5247720itb.4
 for <barebox@lists.infradead.org>; Wed, 22 Aug 2018 17:16:42 -0700 (PDT)
MIME-Version: 1.0
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-19-andrew.smirnov@gmail.com>
 <20180822070108.balrgkhkrurrmxo2@pengutronix.de>
In-Reply-To: <20180822070108.balrgkhkrurrmxo2@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 Aug 2018 17:16:30 -0700
Message-ID: <CAHQ1cqHpfOcOWCjWcRkLyZJOF2o=HBAort22ZJV+QMULy4x-+g@mail.gmail.com>
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
Subject: Re: [PATCH 18/22] ARM: i.MX: bbu: Adjust error code check for pwrite()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 22, 2018 at 12:01 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, Aug 20, 2018 at 11:25:59PM -0700, Andrey Smirnov wrote:
> > Pwrite() will return the amount bytes written or negative error code
> > on success, so we need to do two things with it:
> >
> >     1. Check it against "image_len" to make sure we actually wrote all
> >        of the data
> >
> >     2. Set it to zero in case of success, since that is what code in
> >        barebox_update() expects to happen
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/mach-imx/imx-bbu-internal.c | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
> > index d83eb972c..70af5ef84 100644
> > --- a/arch/arm/mach-imx/imx-bbu-internal.c
> > +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> > @@ -86,6 +86,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
> >               const void *buf, int image_len)
> >  {
> >       int fd, ret, offset = 0;
> > +     bool partial_write;
> >
> >       fd = open(devicefile, O_RDWR | O_CREAT);
> >       if (fd < 0)
> > @@ -117,8 +118,14 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
> >       }
> >
> >       ret = pwrite(fd, buf, image_len, offset);
> > -     if (ret < 0)
> > +     partial_write = ret > 0 && ret != image_len;
> > +     if (ret < 0 || partial_write) {
> > +             ret = partial_write ? -EIO : ret;
> > +
> > +             pr_err("writing to %s failed with %s\n", devicefile,
> > +                    strerror(-ret));
> >               goto err_close;
>
> Do we need a pwrite_full analog to write_full?
>

Sure, why not? Should allow me to drop that partial_write variable.
Will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
