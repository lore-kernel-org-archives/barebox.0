Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYDll-00076C-V7
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 16:58:23 +0000
Received: by mail-it0-x244.google.com with SMTP id 128-v6so8573072itf.1
 for <barebox@lists.infradead.org>; Wed, 27 Jun 2018 09:58:03 -0700 (PDT)
MIME-Version: 1.0
References: <20180627035842.17858-1-andrew.smirnov@gmail.com>
 <1530090334.22468.15.camel@pengutronix.de>
In-Reply-To: <1530090334.22468.15.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Jun 2018 09:57:51 -0700
Message-ID: <CAHQ1cqFQJiLezTDhmDfGmNqF4NkY5uQgs6ODaA5-vEjP1KN-wA@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] nvmem: Introduce nvmem_cell_get_and_read()
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jun 27, 2018 at 2:05 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Dienstag, den 26.06.2018, 20:58 -0700 schrieb Andrey Smirnov:
> > Introduce nvmem_cell_get_and_read() that combines getting a NVMEM cell
> > by name and reading its contents.
> >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/nvmem/core.c           | 23 +++++++++++++++++++++++
> >  include/linux/nvmem-consumer.h | 10 ++++++++++
> >  2 files changed, 33 insertions(+)
> >
> > diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> > index 53b934bb3..c785de125 100644
> > --- a/drivers/nvmem/core.c
> > +++ b/drivers/nvmem/core.c
> > @@ -750,3 +750,26 @@ int nvmem_device_write(struct nvmem_device *nvmem,
> > >     return bytes;
> >  }
> >  EXPORT_SYMBOL_GPL(nvmem_device_write);
> > +
> > +void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
> > > +                         size_t bytes)
> > +{
> > > +   struct nvmem_cell *cell;
> > > +   void *value;
> > > +   size_t len;
> > +
> > > +   cell = of_nvmem_cell_get(np, cell_name);
> > > +   if (IS_ERR(cell))
> > > +           return cell;
> > +
> > > +   value = nvmem_cell_read(cell, &len);
> > > +   if (!IS_ERR(value) && len != bytes) {
> > > +           kfree(value);
> > > +           value = ERR_PTR(-EINVAL);
> > > +   }
> > +
> > > +   nvmem_cell_put(cell);
> > +
> > > +   return value;
> > +}
> > +EXPORT_SYMBOL_GPL(nvmem_cell_get_and_read);
> > \ No newline at end of file
>
> I'm sure you are tired by me nitpicking on this. ;)

Oh I totally left it there on purpose to know if you've read my patch or not ;-)

In all seriousness, will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
