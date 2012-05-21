Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWYrw-0008Cz-KF
 for barebox@lists.infradead.org; Mon, 21 May 2012 20:06:17 +0000
Date: Mon, 21 May 2012 22:06:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120521200614.GG30400@pengutronix.de>
References: <1337615616-7209-1-git-send-email-alan@signal11.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337615616-7209-1-git-send-email-alan@signal11.us>
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
Subject: Re: [PATCH] common: Make MENU depend on PROCESS_ESCAPE_SEQUENCE
To: Alan Ott <alan@signal11.us>
Cc: barebox@lists.infradead.org

Hi Alan,

On Mon, May 21, 2012 at 11:53:36AM -0400, Alan Ott wrote:
> print_menu_entry() in common/menu.c depeneds on process_escape_sequence().
> 
> Signed-off-by: Alan Ott <alan@signal11.us>

Applied, thanks

Sascha

> ---
>  common/Kconfig |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 73d620a..ebb9400 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -342,6 +342,7 @@ config AUTO_COMPLETE
>  config MENU
>  	bool
>  	prompt "Menu Framework"
> +	depends on PROCESS_ESCAPE_SEQUENCE
>  	help
>  	   a menu framework that allow us to create list menu to simplify
>  	   barebox and make it more user-frendly
> -- 
> 1.7.0.4
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
