Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrSQ-0002nR-MK
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 17:08:31 +0000
Message-ID: <c77a628a5dd966772a21e8a634e9aa9f3bc35662.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Oct 2019 18:08:27 +0100
In-Reply-To: <20191030165321.6779-1-andrew.smirnov@gmail.com>
References: <20191030165321.6779-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH] ARM: zii-commmon: Fix NULL pointer dereference in
 do_rdu1_switch_reset()
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Mi, 2019-10-30 at 09:53 -0700, Andrey Smirnov wrote:
> We need to go to parent's private data to get a pointer to struct
> rave_sp. Fix that.
> 
> Fixes: 493e2ee38f ("ARM: zii-common: add support for switch reset on RDU1")
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Urgh, I remember that I fixed the very same bug some time ago. Seems I
lost that fixup before upstreaming...

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
>  arch/arm/boards/zii-common/switch-cmd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/zii-common/switch-cmd.c b/arch/arm/boards/zii-common/switch-cmd.c
> index 30438053a1..2b9c34bfac 100644
> --- a/arch/arm/boards/zii-common/switch-cmd.c
> +++ b/arch/arm/boards/zii-common/switch-cmd.c
> @@ -42,7 +42,7 @@ static int do_rdu2_switch_reset(void)
>  static int do_rdu1_switch_reset(void)
>  {
>  	struct device_d *sp_dev = get_device_by_name("sp");
> -	struct rave_sp *sp = sp_dev->priv;
> +	struct rave_sp *sp = sp_dev->parent->priv;
>  	u8 cmd[] = {
>  		[0] = RAVE_SP_CMD_RESET_ETH_SWITCH,
>  		[1] = 0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
