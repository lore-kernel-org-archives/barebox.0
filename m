Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwQSz-00042G-LB
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 08:09:18 +0000
Date: Wed, 11 Nov 2015 09:08:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151111080855.GP8526@pengutronix.de>
References: <1447198629.4553.98.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447198629.4553.98.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] socfpga: Initialize emac physels to RGMII correctly
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Nov 10, 2015 at 11:37:07PM +0000, Trent Piepho wrote:
> A comment in the socfpga init said that it was "Clearing emac0 PHY
> interface select to 0", but this was doubly incorrect.  It was setting
> physel for emac1, not emac0, and it was setting physel to 1 (RGMII)
> not 0 (GMII).  All supported socfpga boards use RGMII, and use emac1,
> so fix the comment to reflect the code.  But then extend the code to
> set the physel for both emac0 and emac1, so it can work on boards that
> use either or both emacs (which are called gmac0/1 in the dts).
> 
> The Cyclone V datasheet, page 17-60 "EMAC HPS Interface
> Initialization", says to set physel while the EMAC is in reset.  So
> place the EMAC in reset while changing physel.  The emacs are not in
> reset as code earlier in the boot has already taken most of the
> modules out of reset.  So put them back in reset while the physel is
> changed.  The Linux kernel does it this way too.
> 
> If barebox has no network support, there is not much point in
> configuring the emac physel lines.  This would be the case for the
> xloader pre-bootloader config, which configures physel, doesn't use
> the network, loads the main barebox, which then reconfigures physel
> again.  Make this code depend on CONFIG_NET so it's just done in the
> main barebox.  The Linux kernel does not need barebox to do this
> initialization to use networking.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  arch/arm/mach-socfpga/generic.c | 35 ++++++++++++++++++++++++++++++++---
>  1 file changed, 32 insertions(+), 3 deletions(-)

Applied with a small change.

> -static int socfpga_init(void)
> +#if defined(CONFIG_NET)
> +/* Some initialization for the EMAC */
> +static void socfpga_init_emac(void)
>  {
> -	uint32_t val;
> +	uint32_t rst, val;

Dropped the #ifdef in favour for a:

	if (!IS_ENABLED(CONFIG_NET))
		return;

The binary result will be the same but the code looks nicer and the
compile coverage is better.

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
