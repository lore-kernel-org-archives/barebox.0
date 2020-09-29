Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kN9dd-0007ws-Pf
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 07:01:26 +0000
Date: Tue, 29 Sep 2020 09:01:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200929070124.GR11648@pengutronix.de>
References: <20200928100809.25868-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928100809.25868-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] ARM: at91: support sama5 low level clock setup with
 oscillator
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On Mon, Sep 28, 2020 at 12:08:09PM +0200, Ahmad Fatoum wrote:
> AT91Bootstrap has a CONFIG_MCK_BYPASS option with following help text:
> 
>   "Use external 8 to 24 Mhz clock signal as source of main clock
>   instead of an external crystal oscillator.
>   This option disables the internal driving on the XOUT pin.
>   The external source has to provide a stable clock on the XIN pin.
>   If this option is disabled, the SoC expects a crystal oscillator
>   that needs driving on both XIN and XOUT lines."
> 
> When the low level clock setup was ported over from AT91Bootstrap,
> this config option was dropped. It wasn't necessary for the xplained
> boards that have a crystal, but for ones with an oscillator, it's
> required. Add the bit flag back.
> 
> Suggested-by: Michael Grzeschik <mgr@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/at91_pmc_ll.c              | 2 ++
>  arch/arm/mach-at91/include/mach/at91_pmc_ll.h | 5 +++++
>  2 files changed, 7 insertions(+)

Applied, thanks

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
