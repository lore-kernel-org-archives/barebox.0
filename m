Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNFJ-00042b-Kg
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 09:33:23 +0000
Date: Tue, 28 Jan 2020 10:33:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200128093319.riamlkm6ihgoh7c2@pengutronix.de>
References: <20200127074606.17254-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127074606.17254-1-ceggers@arri.de>
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
Subject: Re: [PATCH] barebox_banner: switch to pr_notice
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Mon, Jan 27, 2020 at 08:46:06AM +0100, Christian Eggers wrote:
> The banner should already be printed, if CONFIG_COMPILE_LOGLEVEL is set
> to 5 (notice). If printing of the banner is not desired, CONFIG_BANNER
> can be disabled.

With that argument you could put it in any loglevel you want to.

> 
> Fixes: 1d60b224e5 ("barebox_banner: switch to pr_info")

I wouldn't consider the current behaviour being broken, just different.

I am fine with the patch, but can we reword to something like "print
important message on higher loglevel?

Sascha



> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  common/version.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/version.c b/common/version.c
> index 8b1fd4dbe..0457b37a7 100644
> --- a/common/version.c
> +++ b/common/version.c
> @@ -14,8 +14,8 @@ EXPORT_SYMBOL(release_string);
>  void barebox_banner (void)
>  {
>  	printf("\n\n");
> -	pr_info("%s", version_string);
> +	pr_notice("%s", version_string);
>  	printf("\n\n");
> -	pr_info("Board: %s\n", barebox_get_model());
> +	pr_notice("Board: %s\n", barebox_get_model());
>  }
>  #endif
> -- 
> Christian Eggers
> Embedded software developer
> 
> Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
> Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
> Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
> Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
> Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
