Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnL7G-0008Cl-W3
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 08:14:08 +0000
Date: Mon, 13 Mar 2017 09:13:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170313081340.33flyplysuwgytb4@pengutronix.de>
References: <1489137325-5214-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1489137325-5214-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] arm: baltos: define baltos_sram_init() return type as void
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, Mar 10, 2017 at 10:15:25AM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> As stated in the routine's description this routine is to return void,
> hence fix its declaration to remove compiler warning.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/boards/vscom-baltos/lowlevel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
> index 9f829b9..c4e2341 100644
> --- a/arch/arm/boards/vscom-baltos/lowlevel.c
> +++ b/arch/arm/boards/vscom-baltos/lowlevel.c
> @@ -77,7 +77,7 @@ extern char __dtb_am335x_baltos_minimal_start[];
>   *
>   * @return void
>   */
> -static noinline int baltos_sram_init(void)
> +static noinline void baltos_sram_init(void)
>  {
>  	uint32_t sdram_size;
>  	void *fdt;
> -- 
> 2.1.4
> 
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
