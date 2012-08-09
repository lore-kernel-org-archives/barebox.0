Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzMPp-0001nY-Tb
 for barebox@lists.infradead.org; Thu, 09 Aug 2012 06:40:18 +0000
Date: Thu, 9 Aug 2012 08:40:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120809064016.GP1451@pengutronix.de>
References: <1344143160-14103-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344143160-14103-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] menu: add number key support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 05, 2012 at 07:06:00AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Allow to use the number key to jump to entry.
> if already on a entry % number_key jump to the next +10 one if exit
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  common/menu.c |   17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/common/menu.c b/common/menu.c
> index 9f536d6..97c6b18 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -314,6 +314,23 @@ int menu_show(struct menu *m)
>  		m->auto_select = -1;
>  
>  		switch (ch) {
> +		case '0' ... '9': {
> +			struct menu_entry *me;
> +			int num = ch - '0';
> +			int next_num = m->selected->num + 10;
> +			if (!num)
> +				num = 10;
> +
> +			if (ch_previous == ch && next_num <= m->nb_entries)
> +				num = next_num;
> +
> +			me = menu_entry_get_by_num(m, num);
> +			if (me) {
> +				m->selected = me;
> +				repaint = 1;
> +			}
> +			break;
> +		}
>  		case KEY_UP:
>  			m->selected = list_entry(m->selected->list.prev, struct menu_entry,
>  						 list);
> -- 
> 1.7.10.4
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
