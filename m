Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XydD8-0006QT-JV
 for barebox@lists.infradead.org; Wed, 10 Dec 2014 09:05:31 +0000
Received: from weser.hi.pengutronix.de ([2001:67c:670:100:fa0f:41ff:fe58:4010])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XydCl-0003TT-2N
 for barebox@lists.infradead.org; Wed, 10 Dec 2014 10:05:07 +0100
Message-ID: <1418202307.7616.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 10 Dec 2014 10:05:07 +0100
In-Reply-To: <1418123146-13235-3-git-send-email-l.stach@pengutronix.de>
References: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
 <1418123146-13235-3-git-send-email-l.stach@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/5] imd: provide dummy imd_command_setenv
To: barebox@lists.infradead.org

Am Dienstag, den 09.12.2014, 12:05 +0100 schrieb Lucas Stach:
> If CONFIG_CMD_IMD is not set there is no imd_command_setenv in the
> barebox binary that can be linked to. Although the whole imd infrastructure
> will be removed by the linker later in the build process as soon as it
> figures out that nothing inside barebox is using it, we still have to
> provide a dummy function to keep the build going.
> 
> Fixes:
> In function `imd_command': undefined reference to `imd_command_setenv'

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Please don't apply this patch, it seems to cause some breakage.

Regards,
Lucas
> ---
>  include/image-metadata.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/include/image-metadata.h b/include/image-metadata.h
> index 34dae5ce3454..00aae6c98449 100644
> --- a/include/image-metadata.h
> +++ b/include/image-metadata.h
> @@ -112,6 +112,13 @@ static inline void imd_used(const void *unused)
>  #define IMD_USED(_name) \
>  	imd_used(&__barebox_imd_##_name)
>  
> +#ifndef CONFIG_CMD_IMD
> +int imd_command_setenv(const char *variable_name, const char *value)
> +{
> +	return -ENOSYS;
> +}
> +#endif
> +
>  #endif /* __BAREBOX__ */
>  
>  #endif /* __INCLUDE_IMAGE_METADTA_H */

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
