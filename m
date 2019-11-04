Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXNe-0000sl-Ix
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 08:06:33 +0000
Date: Mon, 4 Nov 2019 09:06:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191104080629.spcersvnelkrlhn5@pengutronix.de>
References: <20191030094834.29610-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030094834.29610-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] OF: gpio: don't warn if ignored GPIO flag matches the
 behavior
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 30, 2019 at 10:48:34AM +0100, Lucas Stach wrote:
> Port of the upstream accepted change to the Linux kernel.
> 
> Some devicetrees specify the ACTIVE_LOW flag in the fixed regulator GPIO
> handle. While this has always been ignored, it's consistent with the
> behavior of the regulator binding in the absence of the
> "enable-active-high" DT property. It doesn't make much sense to print a
> user visible warning for a configuration which is consistent, so only
> print the warning if the GPIO flag contradicts the behavior dictated by
> by the enable-active-high property.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/of/of_gpio.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

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
