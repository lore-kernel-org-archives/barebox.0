Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsd9m-0002hI-BS
 for barebox@lists.infradead.org; Thu, 23 Aug 2018 00:07:23 +0000
Received: by mail-it0-x244.google.com with SMTP id p81-v6so5362826itp.1
 for <barebox@lists.infradead.org>; Wed, 22 Aug 2018 17:07:09 -0700 (PDT)
MIME-Version: 1.0
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-5-andrew.smirnov@gmail.com>
 <20180822065223.zsyp77axhvvh6qcn@pengutronix.de>
In-Reply-To: <20180822065223.zsyp77axhvvh6qcn@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 Aug 2018 17:06:55 -0700
Message-ID: <CAHQ1cqGC0xWiv2Abf8e=r=8aCxOJpu7N+o0sWkU3Sh+B249KXw@mail.gmail.com>
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
Subject: Re: [PATCH 04/22] ARM: i.MX: bbu: Move inner-image type check
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Aug 21, 2018 at 11:52 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, Aug 20, 2018 at 11:25:45PM -0700, Andrey Smirnov wrote:
> > Since imx_bbu_check_prereq() already uses file_detect_type() and we've
> > extended it to understand i.MX boot image file type, we can simplify a
> > bunch of repetitive code as follows:
> >
> >     1. Convert all checks from IVT_BARKER to filetype_imx_image_v2
> >        check
> >
> >     2. Move all of the checking to be a part of imx_bbu_check_prereq()
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/mach-imx/imx-bbu-internal.c | 64 +++++++++++++++++-----------
> >  1 file changed, 39 insertions(+), 25 deletions(-)
> >
> > diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
> > index 67ae2961c..ea57b2772 100644
> > --- a/arch/arm/mach-imx/imx-bbu-internal.c
> > +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> > @@ -106,11 +106,39 @@ err_close:
> >       return ret;
> >  }
> >
> > -static int imx_bbu_check_prereq(const char *devicefile, struct bbu_data *data)
> > +static int imx_bbu_check_prereq(struct imx_internal_bbu_handler *imx_handler,
> > +                             const char *devicefile, struct bbu_data *data,
> > +                             enum filetype expected_type)
> >  {
> >       int ret;
> > -
> > -     if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
> > +     const void *blob;
> > +     size_t len;
> > +     enum filetype type;
> > +
> > +     type = file_detect_type(data->image, data->len);
> > +
> > +     switch (type) {
> > +     case filetype_arm_barebox:
> > +             /*
> > +              * Specifying expected_type as unknow will disable the
> > +              * inner image type check
> > +              */
> > +             if (expected_type == filetype_unknown)
> > +                     break;
> > +
> > +             blob = data->image + imx_handler->flash_header_offset;
> > +             len  = data->len   - imx_handler->flash_header_offset;
> > +             type = file_detect_type(blob, len);
> > +
> > +             if (type != expected_type) {
> > +                     pr_err("Expected image type: %s, "
> > +                            "detected image type: %s\n",
> > +                            file_type_to_string(expected_type),
> > +                            file_type_to_string(type));
> > +                     return -EINVAL;
> > +             }
> > +             break;
> > +     default:
> >               if (!bbu_force(data, "Not an ARM barebox image"))
> >                       return -EINVAL;
> >       }
> > @@ -137,7 +165,8 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
> >               container_of(handler, struct imx_internal_bbu_handler, handler);
> >       int ret;
> >
> > -     ret = imx_bbu_check_prereq(data->devicefile, data);
> > +     ret = imx_bbu_check_prereq(imx_handler, data->devicefile, data,
> > +                                filetype_unknown);
>
> Why filetype_unknown here? in the v2 version we have
> filetype_imx_image_v2. I would expect filetype_imx_image_v1 here.
>

Purely because original code didn't do any type checking of "inner"
image, so I specified filetype_unknown and and added special handling
for it to preserve the status quo. It sounds like you think that it
would be better to change the original behavior such that there _is_
an "inner" image type check for v1 one header. That would be my
preference as well, since that'll allow me to get rid of special
filetype_unknown case, so that's what I'll do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
