Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cknjv-000118-Vq
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 08:11:34 +0000
Date: Mon, 6 Mar 2017 09:11:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170306081109.d5dltjktxtgp5xtb@pengutronix.de>
References: <20170304071241.GG4120@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170304071241.GG4120@mail.ovh.net>
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
Subject: Re: [RFC PATCH 0/2] use gnuhash to speed up device/driver match
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Mar 04, 2017 at 08:12:41AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	The following patch series use the gnu hash to speedup device/driver
> 	matching.
> 
> 	String compare is slow so we will calculate at runtime a hash that we
> 	can compare quickly to speed up the match
> 
> 	in a second step we could speed up this more by calculating the hash
> 	at compile time

On a i.MX53 quickstart board this patch reduces startup time from 115.9ms
to 115.4ms. On a i.MX35 board the startup time is reduced by 72us. I
don't think this is a valuable gain. Do you have any situation where you
really spend significant time in strcmp?

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
