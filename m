Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UegOh-0001hx-32
 for barebox@lists.infradead.org; Tue, 21 May 2013 06:50:11 +0000
Date: Tue, 21 May 2013 08:49:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130521064949.GJ32299@pengutronix.de>
References: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
 <1369080684-11138-4-git-send-email-s.hauer@pengutronix.de>
 <20130520222747.GB27130@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130520222747.GB27130@game.jcrosoft.org>
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
Subject: Re: [SPAM] [PATCH 3/5] i2c: Add support for dynamic i2c bus numbers
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, May 21, 2013 at 12:27:47AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:11 Mon 20 May     , Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/i2c/i2c.c | 13 +++++++++++--
> >  1 file changed, 11 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> > index 53a11fe..ddf0082 100644
> > --- a/drivers/i2c/i2c.c
> > +++ b/drivers/i2c/i2c.c
> > @@ -384,8 +384,17 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
> >  {
> >  	int ret;
> >  
> > -	if (i2c_get_adapter(adapter->nr))
> > -		return -EBUSY;
> > +	if (adapter->nr < 0) {
> > +		int nr;
> > +
> > +		for (nr = 0;; nr++)
> > +			if (!i2c_get_adapter(nr))
> > +				break;
> > +		adapter->nr = nr;
> > +	} else {
> > +		if (i2c_get_adapter(adapter->nr))
> > +			return -EBUSY;
> > +	}
> 
> I send a patch exactly the same on spi and you refuse it

The time you sent it we talked about platform devices and I still think
that it's not a good idea to register the SPI masters with dynamic bus
numbers and to have statically assigned numbers in the spi_board_info.

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
