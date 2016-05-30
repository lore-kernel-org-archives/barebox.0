Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7FO4-0006Et-W8
 for barebox@lists.infradead.org; Mon, 30 May 2016 05:05:14 +0000
Date: Mon, 30 May 2016 07:04:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160530050449.GR31666@pengutronix.de>
References: <1464257353-5640-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464257353-5640-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] globalvar: add missing static inline stubs
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 26, 2016 at 12:09:11PM +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/globalvar.h | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/globalvar.h b/include/globalvar.h
> index d0c79c07a818..e94e9ed6ee88 100644
> --- a/include/globalvar.h
> +++ b/include/globalvar.h
> @@ -137,6 +137,10 @@ static inline int globalvar_add(const char *name,
>  	return 0;
>  }
>  
> +static inline void globalvar_remove(const char *name) {}
> +
> +static inline void globalvar_print(void) {}
> +
>  static inline char *globalvar_get_match(const char *match, const char *separator)
>  {
>  	return NULL;
> -- 
> 2.8.1
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
