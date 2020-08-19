Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8HqI-0003m2-0j
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 06:45:02 +0000
Date: Wed, 19 Aug 2020 08:45:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200819064500.GO13023@pengutronix.de>
References: <20200817110346.118450-1-lapeddk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817110346.118450-1-lapeddk@gmail.com>
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
Subject: Re: [PATCH] arm: imx: RELOCATABLE default yes on IMX_MULTI_BOARDS
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

Hi Lars,

On Mon, Aug 17, 2020 at 01:03:46PM +0200, Lars Pedersen wrote:
> Set relocatable to default yes when compiling for multiple i.MX boards,
> since setting a suitable TEXT_BASE value across multiple boards is impossible.
> 
> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 658437f01..c37339793 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -349,6 +349,7 @@ config KALLSYMS
>  config RELOCATABLE
>  	depends on PPC || ARM
>  	bool "generate relocatable barebox binary"
> +	default y if IMX_MULTI_BOARDS

I would rather just select RELOCATABLE from IMX_MULTI_BOARDS. This makes
it impossible to deselect RELOCATABLE for many boards, but I can't think
of any valid case where this is really needed, at least not in mainline.

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
