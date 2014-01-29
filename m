Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8bvn-0000XS-K7
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 20:40:20 +0000
Date: Wed, 29 Jan 2014 21:39:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140129203958.GM16215@pengutronix.de>
References: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/4] MIPS: mach-ar231x: Fix uninitialized variable
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Jan 29, 2014 at 10:21:46PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied all, thanks.

Are you running sparse or how did you find all these?

Sascha

> ---
>  arch/mips/mach-ar231x/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/mips/mach-ar231x/board.c b/arch/mips/mach-ar231x/board.c
> index f1b876f..8bd1787 100644
> --- a/arch/mips/mach-ar231x/board.c
> +++ b/arch/mips/mach-ar231x/board.c
> @@ -111,7 +111,7 @@ static u16
>  ar231x_cksum16(u8 *data, int size)
>  {
>  	int i;
> -	u16 sum;
> +	u16 sum = 0;
>  
>  	for (i = 0; i < size; i++)
>  		sum += data[i];
> -- 
> 1.8.3.2
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
