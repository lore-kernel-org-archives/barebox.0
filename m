Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OnYmv-00079w-4S
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 15:18:18 +0000
Date: Mon, 23 Aug 2010 17:18:05 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100823151805.GV8693@game.jcrosoft.org>
References: <1282544653-11508-1-git-send-email-s.hauer@pengutronix.de>
	<1282544653-11508-10-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1282544653-11508-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 9/9] menu: simplify usage for clients
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:24 Mon 23 Aug     , Sascha Hauer wrote:
> Clients now only have to call menu_add_submenu or menu_add_command_entry
> instead of allocating many strings.
> This also fixes some problems in the menu code. The priv field in struct
> menu_entry was a pointer to struct menu or a pointer to an allocated string.
> It was never freed, only had to be freed when it was an allocated string.
> The reference to a submenu is now kept as a string and not to the menu
> itself. The code checked the existence of the submenu when creating it, but
> crashed when the submenu was removed and referenced afterwards. Now the
> code hapily allows references to nonexistant menus but complains during
> runtime when the menu is not there.
ok but no need to check if the pointer is null before freeing and please do
not remove the priv pointer as I use is in C API for complex menu to pass data
to the action
That's why I keep it as void*
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/menu.c |   48 +++--------------------
>  common/menu.c   |  114 ++++++++++++++++++++++++++++++++++++++++++++++++++-----
>  include/menu.h  |    6 +-
>  3 files changed, 114 insertions(+), 54 deletions(-)
> 
> diff --git a/commands/menu.c b/commands/menu.c
> index f3bd78d..f734db3 100644
> --- a/commands/menu.c
> +++ b/commands/menu.c
> @@ -26,6 +26,7 @@
>  #include <menu.h>
>  #include <getopt.h>
>  #include <errno.h>
> +#include <linux/err.h>
>  
>  typedef enum {
>  #if defined(CONFIG_CMD_MENU_MANAGEMENT)
> @@ -66,8 +67,7 @@ struct cmd_menu {
.... 
>  /*
> diff --git a/common/menu.c b/common/menu.c
> index 294e372..24c7b35 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -29,6 +29,7 @@
>  #include <xfuncs.h>
>  #include <errno.h>
>  #include <readkey.h>
> +#include <linux/err.h>
>  
>  static LIST_HEAD(menus);
>  
> @@ -145,10 +146,7 @@ void menu_entry_free(struct menu_entry *me)
>  	if (!me)
>  		return;
>  
> -	if (me->display)
> -		free(me->display);
> -
> -	free(me);
> +	me->free(me);
we must check the pointer first as in the C API we must be able to overwrite
it or we must check that the C API provice it
>  }
>  
>  static void print_menu_entry(struct menu *m, struct menu_entry *me, int reverse)
> @@ -277,14 +275,76 @@ int menu_show(struct menu *m)
>  
>  void menu_action_exit(struct menu *m, struct menu_entry *me) {}
>  
> -void menu_action_run(struct menu *m, struct menu_entry *me)
> +struct submenu {
> +	char *submenu;
> +	struct menu_entry entry;
> +};
> +
> +static void menu_action_show(struct menu *m, struct menu_entry *me)
> +{
> +	struct submenu *s = container_of(me, struct submenu, entry);
> +	struct menu *sm;
> +
> +	sm = menu_get_by_name(s->submenu);
> +	if (sm)
> +		menu_show(sm);
> +	else
> +		eprintf("no such menu: %s\n", s->submenu);
> +}
> +
> +static void submenu_free(struct menu_entry *me)
> +{
> +	struct submenu *s = container_of(me, struct submenu, entry);
> +
> +	if (s->entry.display)
no need
> +		free(s->entry.display);
> +	if (s->submenu)
no need
etc...
> +		free(s->submenu);
> +	free(s);
> +}
> +
> diff --git a/include/menu.h b/include/menu.h
> index 4f85ed6..22bfc23 100644
> --- a/include/menu.h
> +++ b/include/menu.h
> @@ -32,10 +32,10 @@ struct menu_entry {
>  	int num;
>  	char *display;
>  	void (*action)(struct menu *m, struct menu_entry *me);
> +	void (*free)(struct menu_entry *me);
>  	int non_re_ent;
>  
>  	struct list_head list;
> -	void *priv;
please keep
>  };
>  
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
