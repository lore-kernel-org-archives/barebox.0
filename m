Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAL9A-00066V-2d
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 14:04:44 +0000
Date: Tue, 26 Feb 2013 15:04:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130226140442.GW1906@pengutronix.de>
References: <1361810808-6288-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361810808-6288-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH v2] menu: fix remove superfluous newline: change puts()
 -> printf("%s", )
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>

On Mon, Feb 25, 2013 at 05:46:48PM +0100, Fabio Porcedda wrote:
> Fix previous commit:
> 638f91b "fix compiler warnings: use puts() instead of printf()".
> 
> Because puts() function add a newline, use instead printf("%s", ).
> 
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Vicente Bergas <vicencb@gmail.com>

Applied, thanks

Sascha

> ---
> 
> Notes:
>     v2:
>      - corrected two typos in the description
> 
>  common/menu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/menu.c b/common/menu.c
> index 30dced7..a672e59 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -274,7 +274,7 @@ int menu_show(struct menu *m)
>  			printf("Auto Select in");
>  		} else {
>  			auto_display_len = strlen(m->auto_display);
> -			puts(m->auto_display);
> +			printf("%s", m->auto_display);
>  		}
>  		printf(" %2d", countdown--);
>  	}
> -- 
> 1.8.1.1
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
