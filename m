Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wumkj-0003KA-1r
 for barebox@lists.infradead.org; Wed, 11 Jun 2014 17:56:01 +0000
Date: Wed, 11 Jun 2014 19:55:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140611175537.GB15686@pengutronix.de>
References: <53983ED3.7070401@celad.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53983ED3.7070401@celad.com>
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
Subject: Re: dev_param_int_ro
To: Herve Codina <herve.codina@celad.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 11, 2014 at 01:34:43PM +0200, Herve Codina wrote:
> Hi,
> 
> We can have parameters based on long long int.
> For instance :
> dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%llu");
> 
> This is not working because dev_add_param_int_ro expect int as value and
> calling asprintf using "%llu" format and int parameter does not give
> expected result.
> 
> We need to add a specific dev_add_param_int_ro function for long long.
> What function name should be used ?
> - dev_add_param_intll_ro
> - dev_add_param_llint_ro
> - dev_add_param_ll_ro
> 
> I can do this small patch according to choosen function name.

So many options ;)

dev_add_param_llint_ro sounds best to me.

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
