Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHE4N-0000wr-TM
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 17:09:52 +0000
Message-ID: <1452186568.2915.52.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 07 Jan 2016 18:09:28 +0100
In-Reply-To: <568BCA39.6010208@pengutronix.de>
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-4-git-send-email-mkl@pengutronix.de>
 <CAGm1_kunZqatbVbE3AgS-wQdx-gUqeShE2PrHYwxgLX74DRRLw@mail.gmail.com>
 <568B9BCD.9070509@pengutronix.de>
 <CAGm1_ktRkoqmP4j3AWch1KJqwWzvCqix8c7EUEiZmRd+vh8qKQ@mail.gmail.com>
 <568BAF11.4090009@pengutronix.de>
 <CAGm1_kuAijx2ZqpJ7aSyLZvSoYDv306QyvtsSA8pRCpFrWM+3Q@mail.gmail.com>
 <568BCA39.6010208@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] bootm: add initial FIT support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>, Sascha Hauer <sha@pengutronix.de>, kernel@pengutronix.de

On Di, 2016-01-05 at 14:50 +0100, Marc Kleine-Budde wrote:
> >> > +static int fit_open_configuration(struct fit_handle *handle, int
> num)
> >> > +{
> >> > +       struct device_node *conf_node = NULL, *sig_node;
> >> > +       char unit_name[10];
> >> > +       const char *unit, *desc;
> >> > +       int ret, level;
> >> > +
> >> > +       conf_node = of_get_child_by_name(handle->root,
> "configurations");
> >> > +       if (!conf_node)
> >> > +               return -ENOENT;
> >> > +
> >> > +       if (num) {
> >> > +               snprintf(unit_name, sizeof(unit_name), "conf@%d",
> num);
> > 
> > This is not working for my *.its file:
> >
> https://github.com/visionsystemsgmbh/onrisc_br_bsp/blob/master/board/vscom/baltos/kernel-fit.its
> > U-Boot is working with bootm ${loadaddr}#conf${board_name}
> > 
> > For Barebox I've changed this line to
> > 
> > snprintf(unit_name, sizeof(unit_name), "conf%d@1", num)
> > 
> > This is how I start Linux: bootm /boot/kernel-fit.itb@
> $global.board.id
> > 
> > What is the standard for providing FIT configuration?
> 
> Don't know. Is there a spec in the u-boot sources, otherwise use the
> code.

I used the u-boot example ITS for reference (doc/uImage.FIT/multi.its).
The have the number after the @, so I used the same. Barebox's bootm
currently only supports a number to select between different "subimages"
as a legacy from uImages.

Your ITS has a @1 for every config/fdt. Why?

For selecting between different configurations depending on the board,
it would be nice to be able to reuse the DT board compatibles.

Regards,
Jan

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
