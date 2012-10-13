Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN0rK-0004J6-1F
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 12:30:26 +0000
Date: Sat, 13 Oct 2012 14:30:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013123024.GX27665@pengutronix.de>
References: <1350068157-601-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350068157-601-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] documentation: add sandbox malloc argument
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 12, 2012 at 08:55:57PM +0200, Alexander Aring wrote:
> Add malloc argument in doxygen comment.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/sandbox/os/common.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
> index db347e2..36c8d62 100644
> --- a/arch/sandbox/os/common.c
> +++ b/arch/sandbox/os/common.c
> @@ -436,6 +436,10 @@ static void print_usage(const char *prgname)
>   *
>   * Options can be:
>   *
> + * -m, --malloc=\<size\>
> + *
> + * Start sandbox with a specified malloc-space \<size\> in bytes.
> + *
>   * -i \<file\>
>   *
>   * Map a \<file\> to barebox. This option can be given multiple times. The \<file\>s
> -- 
> 1.7.12.2
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
