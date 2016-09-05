Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgnOF-0006n3-Uy
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 06:28:21 +0000
Date: Mon, 5 Sep 2016 08:27:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160905062758.p7d5a4d3do4x44ar@pengutronix.de>
References: <1472760003-5357-1-git-send-email-sam.van.den.berge@telenet.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1472760003-5357-1-git-send-email-sam.van.den.berge@telenet.be>
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
Subject: Re: [PATCH] Fix small typo in common/Kconfig
To: Sam Van Den Berge <sam.van.den.berge@telenet.be>
Cc: barebox@lists.infradead.org

On Thu, Sep 01, 2016 at 10:00:03PM +0200, Sam Van Den Berge wrote:
> Fix small typo frendly -> friendly
> 
> Signed-off-by: Sam Van Den Berge <sam.van.den.berge@telenet.be>
> ---
>  common/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 38225eb..636a55a 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -471,7 +471,7 @@ config MENU
>  	select PROCESS_ESCAPE_SEQUENCE
>  	help
>  	  a menu framework that allow us to create list menu to simplify
> -	  barebox and make it more user-frendly
> +	  barebox and make it more user-friendly
>  
>  config PASSWORD
>  	bool
> -- 
> 1.9.1
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
