Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c41Fc-0004XQ-PR
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 07:55:25 +0000
Date: Tue, 8 Nov 2016 08:55:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161108075503.pm7xnm6zvkjl5hcf@pengutronix.de>
References: <20161107090425.22615-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161107090425.22615-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] command.h: drop unused Struct_Section attribute
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 07, 2016 at 12:04:25PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/command.h | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/command.h b/include/command.h
> index 2e72780..43ee454 100644
> --- a/include/command.h
> +++ b/include/command.h
> @@ -89,8 +89,6 @@ int run_command(const char *cmd);
>  
>  #endif	/* __ASSEMBLY__ */
>  
> -#define Struct_Section  __attribute__ ((unused,section (".barebox_cmd")))
> -
>  #define BAREBOX_CMD_START(_name)							\
>  extern const struct command __barebox_cmd_##_name;					\
>  const struct command __barebox_cmd_##_name						\
> -- 
> 2.9.3
> 
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
