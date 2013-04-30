Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UX5AV-0004H4-8Z
 for barebox@lists.infradead.org; Tue, 30 Apr 2013 07:40:08 +0000
Date: Tue, 30 Apr 2013 09:39:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130430073942.GL20989@pengutronix.de>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
 <1366994474-21325-8-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366994474-21325-8-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 8/9] Serial: mpc5xxx: Fix setup mode at port initialization
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Apr 26, 2013 at 08:41:13PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/serial/serial_mpc5xxx.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
> index 532eea3..ed77807 100644
> --- a/drivers/serial/serial_mpc5xxx.c
> +++ b/drivers/serial/serial_mpc5xxx.c
> @@ -82,12 +82,10 @@ static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
>  	psc->sicr = 0;
>  
>  	/* configure parity, bit length and so on */
> +	psc->mode = PSC_MODE_8_BITS | PSC_MODE_PARNONE | PSC_MODE_ONE_STOP;
>  #if defined(CONFIG_MGT5100)
> -	psc->mode = PSC_MODE_ERR | PSC_MODE_8_BITS | PSC_MODE_PARNONE;
> -#elif defined(CONFIG_MPC5200)
> -	psc->mode = PSC_MODE_8_BITS | PSC_MODE_PARNONE;
> +	psc->mode |= PSC_MODE_ERR;
>  #endif
> -	psc->mode = PSC_MODE_ONE_STOP;

Without this patch psc->mode gets configured differently on mpc5200 and
on mgt5100, then afterwards overwritten on both. This surely was not
intended, but nevertheless the driver works as expected. Was this patch
tested?

BTW CONFIG_MGT5100 could be removed, we do not have support for this
SoC.

Meanwhile I applied most patches of this series.

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
