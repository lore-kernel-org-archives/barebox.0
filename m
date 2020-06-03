Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgMj7-0002mg-AS
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 06:18:14 +0000
Date: Wed, 3 Jun 2020 08:18:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200603061811.GN11869@pengutronix.de>
References: <20200529125112.8360-1-m.grzeschik@pengutronix.de>
 <48c08116-532d-56b6-40f5-558507c71eed@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <48c08116-532d-56b6-40f5-558507c71eed@pengutronix.de>
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
Subject: Re: [PATCH] serial: stm: set linux_console_name
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 29, 2020 at 03:57:30PM +0200, Ahmad Fatoum wrote:
> Hello Michael,
> 
> On 5/29/20 2:51 PM, Michael Grzeschik wrote:
> > We set the linux_console_name so for this uart the
> > linux.bootargs.console will be properly set.
> > 
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> >  drivers/serial/stm-serial.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
> > index ea482415ce..a2c3dcf56e 100644
> > --- a/drivers/serial/stm-serial.c
> > +++ b/drivers/serial/stm-serial.c
> > @@ -159,6 +159,7 @@ static int stm_serial_probe(struct device_d *dev)
> >  	cdev->flush = stm_serial_flush;
> >  	cdev->setbrg = stm_serial_setbaudrate;
> >  	cdev->dev = dev;
> > +	cdev->linux_console_name = "ttyAMA";
> 
> Couldn't we just combine the two drivers? On a cursory look, only
> difference is how they're probed?

Yes, that sounds good. Until this is done I applied this patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
