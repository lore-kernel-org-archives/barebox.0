Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnghc-0000Ue-QC
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 07:17:06 +0000
Date: Tue, 14 Mar 2017 08:16:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170314071643.jdsoe4mdiopqta6h@pengutronix.de>
References: <B918A2C9-9BD1-41C2-B996-98A0B775327F@jcrosoft.com>
 <20170313131606.8089-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170313131606.8089-1-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] fixup! efi: clocksoure: add EFI event timer
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 13, 2017 at 02:16:06PM +0100, Michael Olbrich wrote:
> ---
> 
> I played with the numbers a bit. This hardware has a 18 Hz tick :-/.
> That's not really useful so just skipping the clocksource is probably the
> best solution.
> 
> Michael
> 
>  drivers/clocksource/efi.c | 4 ++++
>  1 file changed, 4 insertions(+)
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

Since the patch this fixup is for is already in master: Can you provide
a proper, non-fixup patch?

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
