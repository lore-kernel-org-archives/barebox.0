Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVqkP-00066N-Nr
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 22:04:07 +0000
Date: Sat, 27 Apr 2013 00:04:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426220403.GB32299@pengutronix.de>
References: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
 <1366968712-17851-7-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366968712-17851-7-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 6/6] MCI/Core: move an ugly ifdef to the header file
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 26, 2013 at 11:31:52AM +0200, Juergen Beisert wrote:
> To avoid the compiler complains about an unused variable when no SPI host is
> enabled, use an inline function instead of a macro.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/mci/mci-core.c |  3 +--
>  include/mci.h          | 15 +++++++++------
>  2 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 42e3d4b..ba7ef55 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -482,9 +482,8 @@ static int sd_change_freq(struct mci *mci)
>  {
>  	struct mci_cmd cmd;
>  	struct mci_data data;
> -#ifdef CONFIG_MCI_SPI
>  	struct mci_host *host = mci->host;
> -#endif
> +
>  	uint32_t *switch_status = sector_buf;
>  	uint32_t *scr = sector_buf;
>  	int timeout;
> diff --git a/include/mci.h b/include/mci.h
> index cf9582d..7f514be 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -54,12 +54,6 @@
>  
>  #define IS_SD(x) (x->version & SD_VERSION_SD)
>  
> -#ifdef CONFIG_MCI_SPI
> -#define mmc_host_is_spi(host)	((host)->host_caps & MMC_CAP_SPI)
> -#else
> -#define mmc_host_is_spi(host)	0
> -#endif
> -
>  #define MMC_DATA_READ		1
>  #define MMC_DATA_WRITE		2
>  
> @@ -330,6 +324,15 @@ struct mci {
>  	char *ext_csd;
>  };
>  
> +static inline bool mmc_host_is_spi(const struct mci_host *host)
> +{
> +#ifdef CONFIG_MCI_SPI
> +	return !!host->host_caps & MMC_CAP_SPI;

negation comes before bitwise and. This always returns 0.

Also you could use IS_ENABLED().

Sascha

> +#else
> +	return false;
> +#endif
> +}
> +
>  int mci_register(struct mci_host*);
>  
>  #endif /* _MCI_H_ */
> -- 
> 1.8.2.rc2
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
