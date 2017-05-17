Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAxIf-0000RI-2y
 for barebox@lists.infradead.org; Wed, 17 May 2017 11:39:30 +0000
Date: Wed, 17 May 2017 13:39:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517113906.d5zlfbue3qtahqrk@pengutronix.de>
References: <20170517101656.31717-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170517101656.31717-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] globalvar: fix build without CONFIG_GLOBALVAR
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 17, 2017 at 12:16:55PM +0200, Lucas Stach wrote:
> Don't reference global_device if there is no globalvar support build in.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/globalvar.h | 186 ++++++++++++++++++++++++++++++++++------------------
>  1 file changed, 122 insertions(+), 64 deletions(-)
> 
> diff --git a/include/globalvar.h b/include/globalvar.h
> index aea43b193dd1..afe390a96afb 100644
> --- a/include/globalvar.h
> +++ b/include/globalvar.h
> @@ -32,6 +32,80 @@ void globalvar_print(void);
>  
> -#endif
> +static inline int globalvar_add_simple_bool_ro(const char *name, uint32_t *value)
> +{
> +	return 0;
> +}
>  
> -#define DECLARE_GLOBALVAR_INT(intname, inttype, paramtype) \
> -	static inline int globalvar_add_simple_##intname(const char *name,	\
> -						      inttype *value,		\
> -						      const char *format)	\
> -	{									\
> -		return __globalvar_add_simple_int(name, value,			\
> -						  paramtype,			\
> -						  format);			\
> -	}

Wouldn't it be nicer to do a

	if (!IS_ENABLED(CONFIG_GLOBALVAR))
		return 0;

here and elsewhere?

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
