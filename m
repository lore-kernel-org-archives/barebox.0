Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZqf9-0004wN-Ex
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 04:42:22 +0000
Date: Mon, 2 Jul 2018 06:41:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180702044155.gbcgkr6zv4tjqjsj@pengutronix.de>
References: <20180629064914.518-1-s.hauer@pengutronix.de>
 <CAHQ1cqH7FE-Qna7w3URGNz_+UqCgKByeR3fbSz-suOyjSpWmRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqH7FE-Qna7w3URGNz_+UqCgKByeR3fbSz-suOyjSpWmRw@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: i.MX bbu: reimplement
 IMX_INTERNAL_FLAG_KEEP_DOSPART flag
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jun 29, 2018 at 11:28:14AM -0700, Andrey Smirnov wrote:
> On Thu, Jun 28, 2018 at 11:49 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > This patch reimplements the IMX_INTERNAL_FLAG_KEEP_DOSPART flag
> > and makes it more generic. Until now we only kept a dos partition
> > table over the update. Beginning with i.MX8 we may also want to
> > preserve a GPT, so we have to extend the preserved area.
> >
> > It might also be the case that not (only) a partition table is
> > stored in the initial area of a device, but also other unrelated
> > data, so it's better to just keep the initial area that is unused
> > by the i.MX ROM. It's also good to export the flag to allow boards
> > to specify the initial area shall be preserved.
> >
> > When a board wants to set the flag for a mtd like device then it
> > has to check for suitable erase sizes beforehand. We do not check
> > this (yet).
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/imx-bbu-internal.c | 70 +++++++++-------------------
> >  arch/arm/mach-imx/include/mach/bbu.h | 15 ++++++
> >  2 files changed, 38 insertions(+), 47 deletions(-)
> >
> > diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
> > index 84810f18a9..5422235b1b 100644
> > --- a/arch/arm/mach-imx/imx-bbu-internal.c
> > +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> > @@ -35,7 +35,6 @@
> >  #define FLASH_HEADER_OFFSET_MMC                0x400
> >
> >  #define IMX_INTERNAL_FLAG_NAND         (1 << 0)
> > -#define IMX_INTERNAL_FLAG_KEEP_DOSPART (1 << 1)
> >  #define IMX_INTERNAL_FLAG_ERASE                (1 << 2)
> >
> >  struct imx_internal_bbu_handler {
> > @@ -53,26 +52,31 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
> >                 const char *devicefile, struct bbu_data *data,
> >                 const void *buf, int image_len)
> >  {
> > -       int fd, ret;
> > -       int written = 0;
> > +       int fd, ret, offset = 0;
> >
> >         fd = open(devicefile, O_RDWR | O_CREAT);
> >         if (fd < 0)
> >                 return fd;
> >
> > +       if (imx_handler->handler.flags & IMX_BBU_FLAG_KEEP_HEAD) {
> > +               image_len -= imx_handler->flash_header_offset;
> > +               offset += imx_handler->flash_header_offset;
> > +               buf += imx_handler->flash_header_offset;
> > +       }
> > +
> >         if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
> > -               pr_debug("%s: unprotecting %s from 0 to 0x%08x\n", __func__,
> > -                               devicefile, image_len);
> > -               ret = protect(fd, image_len, 0, 0);
> > +               pr_debug("%s: unprotecting %s from 0x%08x to 0x%08x\n", __func__,
> > +                               devicefile, offset, image_len);
> > +               ret = protect(fd, image_len, offset, 0);
> >                 if (ret && ret != -ENOSYS) {
> >                         pr_err("unprotecting %s failed with %s\n", devicefile,
> >                                         strerror(-ret));
> >                         goto err_close;
> >                 }
> >
> > -               pr_debug("%s: erasing %s from 0 to 0x%08x\n", __func__,
> > -                               devicefile, image_len);
> > -               ret = erase(fd, image_len, 0);
> > +               pr_debug("%s: erasing %s from 0x%08x to 0x%08x\n", __func__,
> > +                               devicefile, offset, image_len);
> > +               ret = erase(fd, image_len, offset);
> >                 if (ret) {
> >                         pr_err("erasing %s failed with %s\n", devicefile,
> >                                         strerror(-ret));
> > @@ -80,43 +84,14 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
> >                 }
> >         }
> >
> > -       if (imx_handler->flags & IMX_INTERNAL_FLAG_KEEP_DOSPART) {
> > -               void *mbr = xzalloc(512);
> > -
> > -               pr_debug("%s: reading DOS partition table in order to keep it\n", __func__);
> > -
> > -               ret = read(fd, mbr, 512);
> > -               if (ret < 0) {
> > -                       free(mbr);
> > -                       goto err_close;
> > -               }
> > -
> > -               memcpy(mbr, buf, 0x1b8);
> > -
> > -               ret = lseek(fd, 0, SEEK_SET);
> > -               if (ret) {
> > -                       free(mbr);
> > -                       goto err_close;
> > -               }
> > -
> > -               ret = write(fd, mbr, 512);
> > -
> > -               free(mbr);
> > -
> > -               if (ret < 0)
> > -                       goto err_close;
> > -
> > -               written = 512;
> > -       }
> > -
> > -       ret = write(fd, buf + written, image_len - written);
> > +       ret = pwrite(fd, buf, image_len, offset);
> >         if (ret < 0)
> >                 goto err_close;
> >
> >         if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
> > -               pr_debug("%s: protecting %s from 0 to 0x%08x\n", __func__,
> > -                               devicefile, image_len);
> > -               ret = protect(fd, image_len, 0, 1);
> > +               pr_debug("%s: protecting %s from 0x%08x to 0x%08x\n", __func__,
> > +                               devicefile, offset, image_len);
> > +               ret = protect(fd, image_len, offset, 1);
> >                 if (ret && ret != -ENOSYS) {
> >                         pr_err("protecting %s failed with %s\n", devicefile,
> >                                         strerror(-ret));
> > @@ -454,6 +429,7 @@ static struct imx_internal_bbu_handler *__init_handler(const char *name, char *d
> >         struct bbu_handler *handler;
> >
> >         imx_handler = xzalloc(sizeof(*imx_handler));
> > +       imx_handler->flags = flags & IMX_BBU_FLAG_MASK;
> 
> I am not sure I understand why this is necessary. You can already
> access all of the IMX_BBU flags via imx_handler->handler.flags (which
> is exactly what some of your code above does) and this forces all of
> those "=" -> "|=" replacements below. Do we really need to copy one
> set of flags into another?
> 
> Taking a step back, if we are reserving some of the BBU flags for
> internal usage, can't we just drop the notion of internal flags
> altogether and just use imx_handler->handler.flags for everything
> including IMX_INTERNAL_FLAG_ERASE and IMX_INTERNAL_FLAG_NAND?

You are right. I implemented this, see v2 of this series.

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
