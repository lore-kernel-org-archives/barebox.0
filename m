Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsjMc-0006WV-7R
 for barebox@lists.infradead.org; Thu, 23 Aug 2018 06:45:04 +0000
Date: Thu, 23 Aug 2018 08:44:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180823064450.pl5faddshhdxyr36@pengutronix.de>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-5-andrew.smirnov@gmail.com>
 <20180822065223.zsyp77axhvvh6qcn@pengutronix.de>
 <CAHQ1cqGC0xWiv2Abf8e=r=8aCxOJpu7N+o0sWkU3Sh+B249KXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGC0xWiv2Abf8e=r=8aCxOJpu7N+o0sWkU3Sh+B249KXw@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 22, 2018 at 05:06:55PM -0700, Andrey Smirnov wrote:
> On Tue, Aug 21, 2018 at 11:52 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > @@ -137,7 +165,8 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
> > >               container_of(handler, struct imx_internal_bbu_handler, handler);
> > >       int ret;
> > >
> > > -     ret = imx_bbu_check_prereq(data->devicefile, data);
> > > +     ret = imx_bbu_check_prereq(imx_handler, data->devicefile, data,
> > > +                                filetype_unknown);
> >
> > Why filetype_unknown here? in the v2 version we have
> > filetype_imx_image_v2. I would expect filetype_imx_image_v1 here.
> >
> 
> Purely because original code didn't do any type checking of "inner"
> image, so I specified filetype_unknown and and added special handling
> for it to preserve the status quo. It sounds like you think that it
> would be better to change the original behavior such that there _is_
> an "inner" image type check for v1 one header. That would be my
> preference as well, since that'll allow me to get rid of special
> filetype_unknown case, so that's what I'll do in v2.

Not sure why the v1 code is different here, it probably just grew like
that and I never noticed.

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
