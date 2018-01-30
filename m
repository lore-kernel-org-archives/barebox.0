Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egPys-0000fw-26
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 07:05:23 +0000
Date: Tue, 30 Jan 2018 08:05:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180130070509.33fle5vsktlkkoqx@pengutronix.de>
References: <1517231051-12129-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1517231051-12129-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/3] commands: ubi: ubiupdatevol: Reduce error code to 0
 or 1
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 29, 2018 at 02:04:09PM +0100, Daniel Schultz wrote:
> do_ubiupdatevol can either return 0 or the ioctl return value. This is
> not in conformity with the other ubi comannds return values.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  commands/ubi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/ubi.c b/commands/ubi.c
> index 5e27584..de5633c 100644
> --- a/commands/ubi.c
> +++ b/commands/ubi.c
> @@ -82,7 +82,7 @@ error:
>  	close(fd_vol);
>  error_img:
>  	close(fd_img);
> -	return ret;
> +	return ret ? 1 : 0;
>  }
>  
>  
> -- 
> 2.7.4
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
