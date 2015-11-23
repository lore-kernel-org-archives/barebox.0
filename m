Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lOb-0006yq-Kn
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:18:42 +0000
Date: Mon, 23 Nov 2015 08:18:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123071816.GP11966@pengutronix.de>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1448048172-10080-13-git-send-email-sebastian.hesselbarth@gmail.com>
 <1448051909.4553.191.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448051909.4553.191.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH v2 12/19] mtd: nand_mrvl_nfc: Prepare for different HW
 ECC strengths
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On Fri, Nov 20, 2015 at 08:38:28PM +0000, Trent Piepho wrote:
> On Fri, 2015-11-20 at 20:36 +0100, Sebastian Hesselbarth wrote:
> 
> > +
> > +static int pxa_ecc_init(struct mrvl_nand_host *host,
> > +			struct nand_ecc_ctrl *ecc,
> > +			int strength, int ecc_stepsize, int page_size)
> > +{
> > +	int ret = -ENODEV;
> > +
> > +	switch (strength) {
> > +	case 1:
> > +		ret = pxa_ecc_strength1(host, ecc, ecc_stepsize, page_size);
> > +		break;
> > +	}
> 
> It would be a bit more clear to write this as:
> 
> switch (strength) {
> case 1:
>         ret = pxa_ecc_strength1(...);
>         break;
> default:
>         ret = -ENODEV;
>         break;
> }

Indeed. Changed that while applying.

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
