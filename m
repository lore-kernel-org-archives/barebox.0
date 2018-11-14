Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMr0J-0001gr-L1
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 08:58:33 +0000
Date: Wed, 14 Nov 2018 09:58:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181114085819.h5gv4kjhjxzyopx6@pengutronix.de>
References: <20180824123800.4927-1-m.grzeschik@pengutronix.de>
 <1542039628.4011.7.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1542039628.4011.7.camel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX5 clock: add clock provider support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 12, 2018 at 05:20:28PM +0100, Lucas Stach wrote:
> Am Freitag, den 24.08.2018, 14:38 +0200 schrieb Michael Grzeschik:
> > Currently it is impossible to get clks with clk_get(&clk, "name");
> > on the mx5 platform. Change that by adding clk-imx5 as clk_provider.
> 
> It seems this patch has been forgotten. As Sascha didn't apply the
> patch reworking the while MX51 clock stuff to the kernel
> implementation, I think it would be good to at least pull this patch
> in.

Just did that.

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
