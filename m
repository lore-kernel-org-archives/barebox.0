Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaLQ7-0001ki-85
 for barebox@lists.infradead.org; Fri, 01 Jun 2012 06:33:13 +0000
Date: Fri, 1 Jun 2012 08:33:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120601063307.GF30400@pengutronix.de>
References: <1338114992-13130-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338114992-13130-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] menu: export box state to menu_box_state when using
 a command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, May 27, 2012 at 12:36:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to have different action based on the box state in shell
> 
> as example
> menu -e -a -m boot -c 'export test=${menu_box_state}' -R -b 1 -d "yes/no"
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/menu.c |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/common/menu.c b/common/menu.c
> index 6c530b6..070170e 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -483,6 +483,11 @@ static void menu_action_command(struct menu *m, struct menu_entry *me)
>  	int ret;
>  	const char *s = getenv(e->command);
>  
> +	if (me->type == MENU_ENTRY_BOX)
> +		export_env_ull("menu_box_state", me->box_state);
> +	else
> +		setenv("menu_box_state", "");
> +
>  	/* can be a command as boot */
>  	if (!s)
>  		s = e->command;

I suggest the following instead. It will cleanup the menu box state
right after executing the command and also it will call the box action
only when it actually has changed.

8<-----------------------------------------------------

menu: export menu box entry state to shell

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menu.c |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/menu.c b/common/menu.c
index 6c530b6..68c16ee 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -384,14 +384,19 @@ int menu_show(struct menu *m)
 			if (m->selected->type != MENU_ENTRY_BOX)
 				break;
 			m->selected->box_state = !m->selected->box_state;
-			if (m->selected->action)
+			if (m->selected->action) {
+				export_env_ull("menu_box_state", me->box_state);
 				m->selected->action(m, m->selected);
+				setenv("menu_box_state", "");
+			}
 			print_menu_entry(m, m->selected, 1);
 			break;
 		case KEY_ENTER:
 			if (ch_previous == KEY_RETURN)
 				break;
 		case KEY_RETURN:
+			if (m->selected->type == MENU_ENTRY_BOX)
+				break;
 			if (ch_previous == KEY_ENTER)
 				break;
 			clear();
-- 
1.7.10

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
