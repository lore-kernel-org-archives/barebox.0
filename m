Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPNTc-0006nI-Ch
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 08:03:14 +0000
Date: Wed, 21 Nov 2018 09:03:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181121080300.hutupwph3j66m5kw@pengutronix.de>
References: <1542721630-8082-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1542721630-8082-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] arm: boards: phytec-som-am335x: Fix mac overwrite from
 state
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 20, 2018 at 02:47:10PM +0100, Teresa Remmet wrote:
> state_read_mac() returns 0 on success so mac never was overwritten.
> Fix this and add check for valid mac address.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm/boards/phytec-som-am335x/board.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
> index 8c24f2b33249..441d56348cc7 100644
> --- a/arch/arm/boards/phytec-som-am335x/board.c
> +++ b/arch/arm/boards/phytec-som-am335x/board.c
> @@ -73,7 +73,7 @@ static const char *eth_names[ETH_COUNT] = {"mac0", "mac1"};
>  static int physom_devices_init(void)
>  {
>  	struct state *state;
> -	u8 mac[6];
> +	uint8_t mac[6];
>  	int state_ret;
>  	int state_i;
>  
> @@ -130,7 +130,7 @@ static int physom_devices_init(void)
>  			for (state_i = 0; state_i < 2; state_i++) {
>  				state_ret = state_read_mac(state,
>  						      eth_names[state_i], &mac[0]);
> -				if (state_ret == 6)
> +				if (!state_ret && is_valid_ether_addr(&mac[0]))
>  					eth_register_ethaddr(state_i, mac);
>  			}
>  	}
> -- 
> 2.7.4
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
