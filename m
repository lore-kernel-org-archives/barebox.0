Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1co3La-000452-IB
 for barebox@lists.infradead.org; Wed, 15 Mar 2017 07:27:54 +0000
Date: Wed, 15 Mar 2017 08:27:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170315072726.hyiabusdgl4jludz@pengutronix.de>
References: <20170314093729.27803-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170314093729.27803-1-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] efi: clocksoure: make sure the meassured frequency is
 valid
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 14, 2017 at 10:37:29AM +0100, Michael Olbrich wrote:
> Some EFI implementations have a even slower tick rate and the meassured
> frequency may be zero.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/clocksource/efi.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
> index 89906c452eb7..fb5b7ca63de9 100644
> --- a/drivers/clocksource/efi.c
> +++ b/drivers/clocksource/efi.c
> @@ -71,6 +71,10 @@ static int efi_cs_init(struct clocksource *cs)
>  		uint64_t nb_100ns;
>  
>  		freq = ticks_freq_x86();
> +		if (freq == 0) {
> +			BS->close_event(efi_cs_evt);
> +			return -ENODEV;
> +		}
>  		nb_100ns = 10 * 1000 * 1000 / freq;
>  		pr_warn("EFI Event timer too slow freq = %llu Hz\n", freq);
>  		efiret = BS->set_timer(efi_cs_evt, EFI_TIMER_PERIODIC, nb_100ns);
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
