Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmkX9-0006V3-EE
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 19:19:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id u4so7757123wrp.3
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2019 11:19:26 -0800 (PST)
MIME-Version: 1.0
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
 <20190123011338.32517-5-andrew.smirnov@gmail.com>
 <20190124074450.f3wykwn42qqqcfrz@pengutronix.de>
In-Reply-To: <20190124074450.f3wykwn42qqqcfrz@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 24 Jan 2019 11:19:12 -0800
Message-ID: <CAHQ1cqEnoOgLZsMXM7U7X7h55G0nHy5o3dZUn8HZ31fESK3hfQ@mail.gmail.com>
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
Subject: Re: [PATCH 4/7] fs: Change error checking logic for fsdrv->lseek()
 call
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 23, 2019 at 11:44 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Jan 22, 2019 at 05:13:35PM -0800, Andrey Smirnov wrote:
> > On 32-bit systems, cheking for IS_ERR_VALUE(pos) is not
> > correct. Expanding that code we get (loff_t cast is added for clarity):
> >
> >  (loff_t)pos >= (unsigned long)-MAX_ERRNO
> >
> > given that loff_t is a 64-bit signed value, any perfectly valid seek
> > offset that is greater than 0xffffc000 will result in false
> > positive. Change the logic to check if position returned by
> > fsdrv->lseek() is what's been requested. If it is, we can assume that
> > operation was succesfull. If not, that's likely means failure and
> > return value is a negative error code.
> >
> > This should accomodate both 32-bit systems, where we /dev/mem doesn't
> > present any range problems, as well as 64-bit systems where both file
> > offset and size of /dev/mem couldn't really be correctly captured by
> > loff_t and we have to rely on 2's complement and overflow.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  fs/fs.c | 13 +++++--------
> >  1 file changed, 5 insertions(+), 8 deletions(-)
> >
> > diff --git a/fs/fs.c b/fs/fs.c
> > index a304bf186..6a62fb98b 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -405,8 +405,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
> >  {
> >       struct fs_driver_d *fsdrv;
> >       FILE *f;
> > -     loff_t pos;
> > -     int ret;
> > +     loff_t pos, ret;
> >
> >       if (check_fd(fildes))
> >               return -1;
> > @@ -442,13 +441,11 @@ loff_t lseek(int fildes, loff_t offset, int whence)
> >               goto out;
> >       }
> >
> > -     pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
> > -     if (IS_ERR_VALUE(pos)) {
> > -             errno = -pos;
> > -             return -1;
> > -     }
> > +     ret = fsdrv->lseek(&f->fsdev->dev, f, pos);
> > +     if (ret != pos)
> > +             goto out;
>
> There's no point in returning the current position from fsdrv->lseek
> when the desired position is already an input parameter. I think we
> should change the prototype of fsdrv->lseek to just return an error code.
>

OK, sure, will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
