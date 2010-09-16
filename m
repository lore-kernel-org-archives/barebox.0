Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OwC5l-0002xI-35
	for barebox@lists.infradead.org; Thu, 16 Sep 2010 10:53:26 +0000
Date: Thu, 16 Sep 2010 12:53:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100916105322.GS1473@pengutronix.de>
References: <1283700222-19388-1-git-send-email-plagnioj@jcrosoft.com>
	<1283702627-23167-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1283702627-23167-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH V2] Menu: add box style entry
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 05, 2010 at 06:03:47PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow you to create a box style entry
> 
> via C API by specifying the type as
> 
> struct menu_entry me = {
> 	.display "test",
> 	.box_state = MENU_ENTRY_BOX,
> 	.box_action = action_to_run,
> }
> 
> and via shell
> menu -e -a -m <menu> -c <command> [-R] [-b 0|1 -B <select action>] -d <description>
> menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>
> 
> -b with 0 for not selected and 1 for selected
> and -B for the command to run when changing state
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> v2:
> 
> 	fix subject
> 
> 	fix shell doc as submenu does not need select action as the they will
> 	simply do nothing if not selected
> 
> Best Regards,
> J.
>  commands/menu.c |   34 +++++++++++++++++++++++++------
>  common/menu.c   |   59 ++++++++++++++++++++++++++++++++++++++++++++++++++----
>  include/menu.h  |   14 ++++++++++++-
>  3 files changed, 94 insertions(+), 13 deletions(-)
> 
> diff --git a/commands/menu.c b/commands/menu.c
> index f734db3..0d49232 100644
> --- a/commands/menu.c
> +++ b/commands/menu.c
> @@ -48,11 +48,14 @@ struct cmd_menu {
>  	char		*command;
>  	char		*submenu;
>  	int		num;
> +	menu_entry_type	type;
> +	int		box_state;
> +	char		*box_command;
>  #endif
>  };
>  
>  #if defined(CONFIG_CMD_MENU_MANAGEMENT)
> -#define OPTS		"m:earlc:d:RsSn:u:"
> +#define OPTS		"m:earlc:d:RsSn:u:b:B:"
>  #define	is_entry(x)	((x)->entry)
>  #else
>  #define OPTS		"m:ls"
> @@ -61,8 +64,8 @@ struct cmd_menu {
>  
>  #if defined(CONFIG_CMD_MENU_MANAGEMENT)
>  /*
> - * menu -e -a -m <menu> -c <command> [-R] -d <description>
> - * menu -e -a -m <menu> -u submenu -d <description>
> + * menu -e -a -m <menu> -c <command> [-R] [-b 0|1 -B <select action>] -d <description>
> + * menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>
>   */
>  static int do_menu_entry_add(struct cmd_menu *cm)
>  {
> @@ -82,11 +85,17 @@ static int do_menu_entry_add(struct cmd_menu *cm)
>  	if (cm->submenu)
>  		me = menu_add_submenu(m, cm->submenu, cm->description);
>  	else
> -		me = menu_add_command_entry(m, cm->description, cm->command);
> +		me = menu_add_command_entry(m, cm->description, cm->command,
> +					    cm->box_command);
>  	if (!me)
>  		return PTR_ERR(me);
>  
> -	me->non_re_ent = !cm->re_entrant;
> +	me->type = cm->type;
> +
> +	me->box_state = cm->box_state > 0 ? 1 : 0;
> +
> +	if (!cm->submenu)
> +		me->non_re_ent = !cm->re_entrant;
>  
>  	return 0;
>  }
> @@ -343,6 +352,13 @@ static int do_menu(struct command *cmdtp, int argc, char *argv[])
>  		case 'n':
>  			cm.num = simple_strtoul(optarg, NULL, 10);
>  			break;
> +		case 'b':
> +			cm.type = MENU_ENTRY_BOX;
> +			cm.box_state = simple_strtoul(optarg, NULL, 10);
> +			break;
> +		case 'B':
> +			cm.command = optarg;
> +			break;
>  #endif
>  		default:
>  			return 1;
> @@ -412,11 +428,15 @@ static const __maybe_unused char cmd_menu_help[] =
>  "\n"
>  "Add an entry\n"
>  "  (-R for do no exit the menu after executing the command)\n"
> -"  menu -e -a -m <menu> -c <command> [-R] -d <description>\n"
> +"  (-b for box style 1 for selected)\n"
> +"  (and -B for the command to run when we change the state)\n"
> +"  menu -e -a -m <menu> -c <command> [-R] [-b 0|1 -B <select action>] -d <description>\n"
>  
>  "Add a submenu entry\n"
>  "  (-R is not needed)\n"
> -"  menu -e -a -m <menu> -u <menu> -d <description>\n"
> +"  (-b for box style 1 for selected)\n"
> +"  (and -B is not needed)\n"
> +"  menu -e -a -m <menu> -u submenu -d [-b 0|1 -B <select action>] <description>\n"
>  "\n"
>  "Remove an entry\n"
>  "  menu -e -r -m <name> -n <num>\n"
> diff --git a/common/menu.c b/common/menu.c
> index 7620d9e..82fea1d 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -150,10 +150,27 @@ void menu_entry_free(struct menu_entry *me)
>  static void print_menu_entry(struct menu *m, struct menu_entry *me, int reverse)
>  {
>  	gotoXY(me->num + 1, 3);
> -	if (reverse)
> -		printf_reverse("%d: %-*s", me->num, m->width, me->display);
> -	else
> -		printf("%d: %-*s", me->num, m->width, me->display);
> +	if (reverse) {
> +		if (me->type == MENU_ENTRY_BOX) {
> +			if (me->box_state)
> +				puts_reverse("[*]");
> +			else
> +				puts_reverse("[ ]");
> +		} else {
> +			printf_reverse("   ");
> +		}
> +		printf_reverse(" %d: %-*s", me->num, m->width, me->display);
> +	} else {
> +		if (me->type == MENU_ENTRY_BOX) {
> +			if (me->box_state)
> +				puts("[*]");
> +			else
> +				puts("[ ]");
> +		} else {
> +			puts("   ");
> +		}
> +		printf(" %d: %-*s", me->num, m->width, me->display);
> +	}

I think this could look a bit simpler if we had a
static int printf_menu(int selected, const char *fmt, ...) function.
'selected' is a better name for the argument. with 'reverse' my first
thought was that it prints backwards...

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
