Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHW06-0006PF-SF
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 08:00:31 +0000
Date: Tue, 10 Apr 2012 10:00:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120410080023.GU3852@pengutronix.de>
References: <1333767615-21555-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333767615-21555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] menu: fix double action when "\n\r" or "\r\n" is
 received
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 07, 2012 at 05:00:14AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  common/menu.c |    3 +--
>  1 files changed, 1 insertions(+), 2 deletions(-)
> 
> diff --git a/common/menu.c b/common/menu.c
> index fd21e52..e85a320 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -296,7 +296,7 @@ int menu_show(struct menu *m)
>  
>  	do {
>  		if (m->auto_select >= 0)
> -			ch = KEY_ENTER;
> +			ch = KEY_RETURN;
>  		else
>  			ch = getc();
>  
> @@ -339,7 +339,6 @@ int menu_show(struct menu *m)
>  				m->selected->action(m, m->selected);
>  			print_menu_entry(m, m->selected, 1);
>  			break;
> -		case KEY_ENTER:
>  		case KEY_RETURN:
>  			clear();
>  			gotoXY(1,1);
> -- 
> 1.7.9.1
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
