Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvqgD-0001dr-QT
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 13:06:10 +0000
Date: Tue, 23 Aug 2011 15:06:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110823130607.GO31404@pengutronix.de>
References: <201108231430.01322.tim.sander@hbm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201108231430.01322.tim.sander@hbm.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] pcm memory fix
To: Tim Sander <tim.sander@hbm.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 23, 2011 at 02:30:01PM +0200, Tim Sander wrote:
> This patch is inspired by ram_timing.patch from OSELAS.BSP-Phytec-phyCORE-i.MX35-PD10.1.2. 
> PCM043 1315.6 does not boot without it.
> 
> Signed-off-by: Tim Sander <tim.sander@hbm.com>
> 
>     change refresh cycle

This is a duplicate of the patch Teresa recently sent. I just applied
Teresas version.

Sascha

> 
> diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
> index eff96f9..bbe586b 100644
> --- a/arch/arm/boards/pcm043/lowlevel.c
> +++ b/arch/arm/boards/pcm043/lowlevel.c
> @@ -146,7 +146,7 @@ void __bare_init __naked board_init_lowlevel(void)
>         writel(0x00000304, ESDMISC); /* was 0x00000004 */
>  
>         /* set timing paramters */
> -       writel(0x00255417, ESDCFG0);
> +       writel(0x0025541F, ESDCFG0);
>         /* select Precharge-All mode */
>         writel(0x92220000, ESDCTL0);
>         /* Precharge-All */
> 
> Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germany | www.hbm.com 
> 
> Registered as GmbH (German limited liability corporation) in the commercial register at the local court of Darmstadt, HRB 1147  
> Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the board: James Charles Webster
> 
> Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister des Amtsgerichts Darmstadt unter HRB 1147 
> Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst | Aufsichtsratsvorsitzender: James Charles Webster
> 
> The information in this email is confidential. It is intended solely for the addressee. If you are not the intended recipient, please let me know and delete this email.
> 
> Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich fur den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.
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
