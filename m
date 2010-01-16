Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NW6s8-0007K4-JB
	for barebox@lists.infradead.org; Sat, 16 Jan 2010 11:31:17 +0000
Date: Sat, 16 Jan 2010 12:31:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100116113110.GR23110@pengutronix.de>
References: <1263551973-14588-1-git-send-email-jacmet@sunsite.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1263551973-14588-1-git-send-email-jacmet@sunsite.dk>
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
Subject: Re: [PATCH] documentation: It's U-Boot that doesn't have getopt,
	not Barebox
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Fri, Jan 15, 2010 at 11:39:33AM +0100, Peter Korsgaard wrote:
> Commit a3ffa97f (rename U-Boot-v2 project to barebox) also changed the
> U-Boot references to Barebox in the getopt description, which doesn't
> make much sense.

Ok, applied.

Sascha

> 
> Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
> ---
>  Documentation/barebox-main.dox |    2 +-
>  README                         |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/barebox-main.dox b/Documentation/barebox-main.dox
> index 42d1256..743add8 100644
> --- a/Documentation/barebox-main.dox
> +++ b/Documentation/barebox-main.dox
> @@ -64,7 +64,7 @@ things right - without caring about losing support for old boards.
>  
>  - getopt
>    - There is a small getopt implementation. Some commands got really
> -    complicated (both in code and in usage) due to the fact that @a barebox only
> +    complicated (both in code and in usage) due to the fact that @a U-Boot only
>      allowed positional parameters.
>  
>  - editor
> diff --git a/README b/README
> index 6f5fb26..9b5317d 100644
> --- a/README
> +++ b/README
> @@ -61,7 +61,7 @@ Features
>  
>  - getopt
>    There is a small getopt implementation. Some commands got really
> -  complicated (both in code and in usage) due to the fact that barebox only
> +  complicated (both in code and in usage) due to the fact that U-Boot only
>    allowed positional parameters.
>  
>  - editor
> -- 
> 1.6.5
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
