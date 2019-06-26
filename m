Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg1xV-0001Ej-Tu
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 07:03:11 +0000
Date: Wed, 26 Jun 2019 09:03:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190626070308.kyetzg53yrptt4t7@pengutronix.de>
References: <20190625073146.26639-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625073146.26639-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 1/2] i.MX: HABv4: use min_t instead of min
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 25, 2019 at 09:31:45AM +0200, Rouven Czerwinski wrote:
> This fixes a compiler warning because len is size_t and
> RNG_FAIL_EVENT_SIZE was cast to uint32_t.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/hab/habv4.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index 496fbe3ccd..2e3e349b0b 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -419,7 +419,7 @@ static bool is_known_rng_fail_event(const uint8_t *data, size_t len)
>  	int i;
>  	for (i = 0; i < ARRAY_SIZE(habv4_known_rng_fail_events); i++) {
>  		if (memcmp(data, habv4_known_rng_fail_events[i],
> -			   min(len, (uint32_t)RNG_FAIL_EVENT_SIZE)) == 0) {
> +			   min_t(size_t, len, RNG_FAIL_EVENT_SIZE)) == 0) {
>  			return true;
>  		}
>  	}
> -- 
> 2.22.0
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
