Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vq0wO-0005Yl-KD
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 13:32:05 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 105D6FFA560
 for <barebox@lists.infradead.org>; Mon,  9 Dec 2013 14:31:43 +0100 (CET)
Date: Mon, 9 Dec 2013 14:31:50 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131209133150.GK27628@ns203013.ovh.net>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <20131209083657.GM24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131209083657.GM24559@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] atmel_nand: check gpio validity before using it
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:36 Mon 09 Dec     , Sascha Hauer wrote:
> =

> The series looks fine for me. Jean-Christophe?

small issues
> =

> Sascha
> =

> On Sat, Dec 07, 2013 at 10:36:54AM +0100, Eric B=E9nard wrote:
> > else we get : "invalid GPIO -22"
> > (as enable_pin is EINVAL)
> > =

> > tested on SAMA5D35
> > =

> > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > ---
> >  drivers/mtd/nand/atmel_nand.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nan=
d.c
> > index a0f0966..658ae52 100644
> > --- a/drivers/mtd/nand/atmel_nand.c
> > +++ b/drivers/mtd/nand/atmel_nand.c
> > @@ -107,7 +107,7 @@ static struct nand_ecclayout atmel_pmecc_oobinfo;
> >   */
> >  static void atmel_nand_enable(struct atmel_nand_host *host)
> >  {
> > -	if (host->board->enable_pin)
> > +	if (gpio_is_valid(host->board->enable_pin))
> >  		gpio_set_value(host->board->enable_pin, 0);
> >  }
> >  =

> > @@ -116,7 +116,7 @@ static void atmel_nand_enable(struct atmel_nand_hos=
t *host)
> >   */
> >  static void atmel_nand_disable(struct atmel_nand_host *host)
> >  {
> > -	if (host->board->enable_pin)
> > +	if (gpio_is_valid(host->board->enable_pin))
> >  		gpio_set_value(host->board->enable_pin, 1);
> >  }
> >  =

> > -- =

> > 1.8.3.1
> > =

> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
