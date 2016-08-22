Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbi7p-0003rU-Gh
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 05:50:23 +0000
Date: Mon, 22 Aug 2016 07:49:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822054958.GY20657@pengutronix.de>
References: <1471637380-19119-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471637380-19119-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] Kconfig: defaultenv-2 select CMD_TEST
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 19, 2016 at 10:09:40PM +0200, Alexander Kurz wrote:
> CMD_TEST is required for scripts in defaultenv-2, e.g. automount.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 38225eb..397bcbe 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -844,6 +844,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	select CMD_BASENAME
>  	select CMD_READLINK
>  	select CMD_DIRNAME
> +	select CMD_TEST
>  	select NVVAR
>  	select CMD_NV
>  	select FLEXIBLE_BOOTARGS
> -- 
> 2.1.4
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
