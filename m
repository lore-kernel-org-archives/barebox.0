Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgOjC-0002NU-Ss
 for barebox@lists.infradead.org; Tue, 21 Oct 2014 01:59:15 +0000
Message-ID: <5445BD66.5030603@atmel.com>
Date: Tue, 21 Oct 2014 09:56:54 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
 <1413828961-12605-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1413828961-12605-4-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/7] arm: at91: remove unused variable
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

On 10/21/2014 02:15 AM, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Acked-by: Bo Shen <voice.shen@atmel.com>

> ---
>   arch/arm/mach-at91/clock.c | 4 ----
>   1 file changed, 4 deletions(-)
>
> diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
> index 7a4282e..a7051c3 100644
> --- a/arch/arm/mach-at91/clock.c
> +++ b/arch/arm/mach-at91/clock.c
> @@ -347,7 +347,6 @@ EXPORT_SYMBOL(clk_get_rate);
>
>   long clk_round_rate(struct clk *clk, unsigned long rate)
>   {
> -	unsigned long	flags;
>   	unsigned	prescale;
>   	unsigned long	actual;
>   	unsigned long	prev = ULONG_MAX;
> @@ -376,7 +375,6 @@ EXPORT_SYMBOL(clk_round_rate);
>
>   int clk_set_rate(struct clk *clk, unsigned long rate)
>   {
> -	unsigned long	flags;
>   	unsigned	prescale;
>   	unsigned long	prescale_offset, css_mask;
>   	unsigned long	actual;
> @@ -421,8 +419,6 @@ EXPORT_SYMBOL(clk_get_parent);
>
>   int clk_set_parent(struct clk *clk, struct clk *parent)
>   {
> -	unsigned long	flags;
> -
>   	if (clk->users)
>   		return -EBUSY;
>   	if (!clk_is_primary(parent) || !clk_is_programmable(clk))
>

Best Regards,
Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
