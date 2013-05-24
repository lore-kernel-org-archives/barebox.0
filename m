Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UflaZ-0006bi-3S
 for barebox@lists.infradead.org; Fri, 24 May 2013 06:34:56 +0000
Date: Fri, 24 May 2013 08:34:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130524063432.GV32299@pengutronix.de>
References: <1369320787-29172-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369320787-29172-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCH] ARM: cfa10036: Add more board ID for boot time detection
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

On Thu, May 23, 2013 at 04:53:07PM +0200, Maxime Ripard wrote:
> From: Brian Lilly <brian@crystalfontz.com>
> 
> As new breakout boards are being developped, we need to add their IDs in
> the device detection code, otherwise they will be treated as regular
> CFA-10036.
> 
> Signed-off-by: Brian Lilly <brian@crystalfontz.com>
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>

Applied, thanks

sascha

> ---
>  arch/arm/boards/crystalfontz-cfa10036/hwdetect.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
> index 5eb3ca4..21199d6 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
> @@ -29,6 +29,10 @@ enum board_type {
>  	BOARD_ID_CFA10036 = 0,
>  	BOARD_ID_CFA10037 = 1,
>  	BOARD_ID_CFA10049 = 2,
> +	BOARD_ID_CFA10055 = 3,
> +	BOARD_ID_CFA10056 = 4,
> +	BOARD_ID_CFA10057 = 5,
> +	BOARD_ID_CFA10058 = 6,
>  };
>  
>  struct cfa_eeprom_info {
> @@ -83,6 +87,18 @@ void cfa10036_detect_hw(void)
>  	case BOARD_ID_CFA10049:
>  		board_name = "cfa10049";
>  		break;
> +	case BOARD_ID_CFA10055:
> +		board_name = "cfa10055";
> +		break;
> +	case BOARD_ID_CFA10056:
> +		board_name = "cfa10056";
> +		break;
> +	case BOARD_ID_CFA10057:
> +		board_name = "cfa10057";
> +		break;
> +	case BOARD_ID_CFA10058:
> +		board_name = "cfa10058";
> +		break;
>  	default:
>  		pr_err("Board ID not supported\n");
>  		return;
> -- 
> 1.8.1.2
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
