Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgXbZ-000403-In
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 10:23:26 +0000
Date: Wed, 13 Nov 2013 11:23:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131113102300.GR24559@pengutronix.de>
References: <1384266701-12608-1-git-send-email-s.hauer@pengutronix.de>
 <1384266701-12608-3-git-send-email-s.hauer@pengutronix.de>
 <20131112160359.GA7965@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131112160359.GA7965@ns203013.ovh.net>
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
Subject: Re: [PATCH 2/4] Firmware: provide a handler to program Altera FPGAs
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Tue, Nov 12, 2013 at 05:03:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +	if (ret != 0) {
> > +		dev_err(dev, "FPGA does not acknowledge the programming initiation\n");
> > +		if (gpio_get_value(this->nstat_gpio))
> > +			dev_err(dev, "STATUS is still high!\n");
> > +		if (gpio_get_value(this->confd_gpio))
> > +			dev_err(dev, "CONFIG DONE is still high!\n");
> > +		return ret;
> > +	}
> > +
> > +	/* arm the FPGA to await its new firmware */
> > +	gpio_set_value(this->nconfig_gpio, 1);
> no one check the return of gpio_set but we need to
> 
> on a i2c-gpio it might fail

I don't think that's necessary here. If setting gpios fails the firmware
programming will fail later anyway.

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
