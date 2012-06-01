Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaLRV-0001n4-Vj
 for barebox@lists.infradead.org; Fri, 01 Jun 2012 06:34:38 +0000
Date: Fri, 1 Jun 2012 08:34:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120601063436.GG30400@pengutronix.de>
References: <1338127033-10348-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338127033-10348-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] menu: add support to do not display the entry number
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, May 27, 2012 at 03:57:12PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> @@ -416,6 +421,7 @@ static const __maybe_unused char cmd_menu_help[] =
>  "  -m  menu\n"
>  "  -l  list\n"
>  "  -s  show\n"
> +"  -N  do not display number\n"

'do not number menu entries'?

Sascha

>  #if defined(CONFIG_CMD_MENU_MANAGEMENT)
>  "Advanced\n"
>  "  -e  menu entry\n"
> diff --git a/common/menu.c b/common/menu.c
> index 070170e..12812a5 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -178,7 +178,8 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
>  		process_escape_sequence(me->display, m->display_buffer,
>  					m->display_buffer_size);
>  
> -	printf(" %d: ", me->num);
> +	if (m->display_num)
> +		printf(" %d: ", me->num);
>  	if (selected)
>  		puts("\e[7m");
>  	if (IS_ENABLED(CONFIG_SHELL_HUSH))
> diff --git a/include/menu.h b/include/menu.h
> index 74abcfb..5a7e8ca 100644
> --- a/include/menu.h
> +++ b/include/menu.h
> @@ -56,6 +56,8 @@ struct menu {
>  	int auto_select;
>  	char *auto_display;
>  
> +	int display_num;
> +
>  	struct list_head list;
>  	struct list_head entries;
>  
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
