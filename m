Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL41O-0003W2-9m
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 07:46:55 +0000
Date: Thu, 7 Jul 2016 09:46:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707074630.GF20657@pengutronix.de>
References: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/5] commands: menu: check return pointer properly
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

I applied all patches from this and the other series I haven't commented
on.

Sascha

On Wed, Jul 06, 2016 at 09:32:48PM +0200, Lucas Stach wrote:
> The called functions return error codes encoded in the pointer,
> so the NULL check will never be true.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  commands/menu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/menu.c b/commands/menu.c
> index 9ec2d57..e1079fd 100644
> --- a/commands/menu.c
> +++ b/commands/menu.c
> @@ -83,7 +83,7 @@ static int do_menu_entry_add(struct cmd_menu *cm)
>  	else
>  		me = menu_add_command_entry(m, cm->description, cm->command,
>  					    cm->type);
> -	if (!me)
> +	if (IS_ERR(me))
>  		return PTR_ERR(me);
>  
>  	me->box_state = cm->box_state > 0 ? 1 : 0;
> -- 
> 2.7.4
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
