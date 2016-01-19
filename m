Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLRYJ-0001mz-Ev
 for barebox@lists.infradead.org; Tue, 19 Jan 2016 08:22:11 +0000
Date: Tue, 19 Jan 2016 09:21:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160119082149.GJ13058@pengutronix.de>
References: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
 <1453089161-6697-16-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453089161-6697-16-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 16/20] e1000: Add functions for register polling
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 17, 2016 at 07:52:37PM -0800, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/net/e1000/e1000.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> index 291e64d..5e24758 100644
> --- a/drivers/net/e1000/e1000.h
> +++ b/drivers/net/e1000/e1000.h
> @@ -2176,5 +2176,24 @@ static inline uint32_t e1000_read_reg(struct e1000_hw *hw, uint32_t reg)
>  }
> 
> 
> +static inline int e1000_poll_reg(struct e1000_hw *hw, uint32_t reg,
> +				 uint32_t mask, uint32_t value,
> +				 uint64_t timeout)

We should let the compiler decide whether to inline this or not. Can we
remove the inline?

> +{
> +	const uint64_t start = get_time_ns();
> +
> +	do {
> +		const uint32_t v = e1000_read_reg(hw, reg);
> +
> +		if ((v & mask) == value)
> +			return 0;
> +
> +	} while (!is_timeout(start, timeout));
> +
> +	return -ETIMEDOUT;
> +}
> +
> +#define E1000_POLL_REG(a, reg, mask, value, timeout)	\
> +	e1000_poll_reg((a), E1000_##reg, (mask), (value), (timeout))

Can we drop this define? All it does is to put E1000_ in front of the
register name which could also be done by the caller.

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
