Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFIa2-0001zR-It
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 07:25:31 +0000
Date: Mon, 17 Feb 2014 08:25:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140217072508.GL17250@pengutronix.de>
References: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/8] common/kallsyms.c: Fix sparse warning
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Feb 16, 2014 at 11:24:30AM +0400, Alexander Shiyan wrote:
> CHECK   common/kallsyms.c
> common/kallsyms.c:170:12: warning: symbol 'kallsyms_lookup' was not declared. Should it be static?
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied all, although with some of them I'm not sure whether the correct
fix would be to actually add the declaration to a header file instead of
making the symbol static.

Sascha

> ---
>  common/kallsyms.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/common/kallsyms.c b/common/kallsyms.c
> index 94dfcdc..121b77c 100644
> --- a/common/kallsyms.c
> +++ b/common/kallsyms.c
> @@ -167,10 +167,10 @@ static unsigned long get_symbol_pos(unsigned long addr,
>   *   It resides in a module.
>   * - We also guarantee that modname will be valid until rescheduled.
>   */
> -const char *kallsyms_lookup(unsigned long addr,
> -			    unsigned long *symbolsize,
> -			    unsigned long *offset,
> -			    char **modname, char *namebuf)
> +static const char *kallsyms_lookup(unsigned long addr,
> +				   unsigned long *symbolsize,
> +				   unsigned long *offset,
> +				   char **modname, char *namebuf)
>  {
>  	namebuf[KSYM_NAME_LEN - 1] = 0;
>  	namebuf[0] = 0;
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
