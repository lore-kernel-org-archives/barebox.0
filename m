Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwGr9-0000Qz-V4
	for barebox@lists.infradead.org; Thu, 16 Sep 2010 15:58:41 +0000
Date: Thu, 16 Sep 2010 17:57:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100916155729.GC5762@game.jcrosoft.org>
References: <1283774869-6086-1-git-send-email-plagnioj@jcrosoft.com>
	<1283774869-6086-2-git-send-email-plagnioj@jcrosoft.com>
	<20100916150605.GX1473@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100916150605.GX1473@pengutronix.de>
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
Subject: Re: [PATCH 2/2] menu: add auto select support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > +	if (cm->auto_select != -EINVAL) {
> > +		menu_set_auto_select(m, cm->auto_select);
> > +
> > +		if (m->auto_display)
> > +			free(m->auto_display);
> 
> I was told free(NULL) is safe...
good catch :p
> 
> > +
> > +		m->auto_display = strdup(cm->description);
> > +	}
> > +
> >  	return menu_show(m);
> >  }
> >  
> > @@ -300,6 +313,7 @@ static int do_menu(struct command *cmdtp, int argc, char *argv[])
> >  	memset(&cm, 0, sizeof(struct cmd_menu));
> >  #if defined(CONFIG_CMD_MENU_MANAGEMENT)
> >  	cm.num = -EINVAL;
> > +	cm.auto_select = -EINVAL;
> >  #endif
> >  
> >  	cm.action = action_show;
> > @@ -343,6 +357,9 @@ static int do_menu(struct command *cmdtp, int argc, char *argv[])
> >  		case 'n':
> >  			cm.num = simple_strtoul(optarg, NULL, 10);
> >  			break;
> > +		case 'A':
> > +			cm.auto_select = simple_strtoul(optarg, NULL, 10);
> > +			break;
> >  #endif
> >  		default:
> >  			return 1;
> > @@ -398,7 +415,9 @@ static const __maybe_unused char cmd_menu_help[] =
> >  "How to\n"
> >  "\n"
> >  "Show menu\n"
> > -"  menu -s -m <menu>\n"
> > +"  (-A auto select delay)\n"
> > +"  (-d auto select description)\n"
> > +"  menu -s -m <menu> [-A delay] [-d auto_display]\n"
> >  "\n"
> >  "List menu\n"
> >  "  menu -l\n"
> > diff --git a/common/menu.c b/common/menu.c
> > index 7620d9e..339bb3d 100644
> > --- a/common/menu.c
> > +++ b/common/menu.c
> > @@ -29,6 +29,7 @@
> >  #include <xfuncs.h>
> >  #include <errno.h>
> >  #include <readkey.h>
> > +#include <clock.h>
> >  #include <linux/err.h>
> >  
> >  static LIST_HEAD(menus);
> > @@ -49,6 +50,7 @@ void menu_free(struct menu *m)
> >  		return;
> >  	free(m->name);
> >  	free(m->display);
> > +	free(m->auto_display);
> >  
> >  	list_for_each_entry_safe(me, tmp, &m->entries, list)
> >  		menu_entry_free(me);
> > @@ -187,6 +189,16 @@ int menu_set_selected(struct menu *m, int num)
> >  	return 0;
> >  }
> >  
> > +int menu_set_auto_select(struct menu *m, int delay)
> > +{
> > +	if (!m)
> > +		return -EINVAL;
> > +
> > +	m->auto_select = delay;
> > +
> > +	return 0;
> > +}
> 
> I think this function only makes sense when struct menu is opaque to its
> users, but in our case you can simply do a m->auto_select = delay
> instead of calling this function.
as we can call it from the C API I prefer to make it safe
> 
> > +
> >  static void print_menu(struct menu *m)
> >  {
> >  	struct menu_entry *me;
> > @@ -217,14 +229,54 @@ int menu_show(struct menu *m)
> >  {
> >  	int ch;
> >  	int escape = 0;
> > +	int countdown;
> > +	int auto_display_len = 16;
> > +	uint64_t start, second;
> >  
> >  	if(!m || list_empty(&m->entries))
> >  		return -EINVAL;
> >  
> >  	print_menu(m);
> >  
> > +	countdown = m->auto_select;
> > +	if (m->auto_select >= 0) {
> 
> m->auto_select should be initialized to -EINVAL. Otherwise this
> condition is true even when we do not want to autoselect an item.
> Also, I think m->auto_select shouldn't be modified in this function.
> Otherwise the behaviour of this function changes if called again.
I o;ut cm.auto_select = -EINVAL by default
yeah it's the idea as you go back in the menu from a sub-menu we do not want
to retart the auto_select so we disable it
> 
> > +		gotoXY(m->nb_entries + 2, 3);
> > +		if (!m->auto_display) {
> > +			printf("Auto Select in");
> > +		} else {
> > +			auto_display_len = strlen(m->auto_display);
> > +			printf(m->auto_display);
> > +		}
> > +		printf(" %2d", countdown--);
> > +	}
> > +
> > +	start = get_time_ns();
> > +	second = start;
> > +	while (m->auto_select > 0 && !is_timeout(start, m->auto_select * SECOND)) {
> > +		if (tstc()) {
> > +			ch = getc();
> 
> You should remove this line. It only makes that the first character the
> user types is lost.
I drop it in the v2 IIRC
> 
> > +			m->auto_select = -1;
> > +			break;
> > +		}
> > +
> > +		if (is_timeout(second, SECOND)) {
> > +			printf("\b\b%2d", countdown--);
> > +			second += SECOND;
> > +		}
> > +	}
> > +
> > +	gotoXY(m->nb_entries + 2, 3);
> > +	for (start = 0; start < auto_display_len + 4; start++)
> > +		putchar(' ');
> 
> This can be done without a loop:
> 
> 	printf("%*c", auto_display_len + 4, ' ');
ok
> 
> > +
> >  	do {
> > -		ch = getc();
> > +		if (m->auto_select >= 0)
> > +			ch = '\n';
> > +		else
> > +			ch = getc();
btw I work no a input box to specify IP

like this

xxx.xxx.xxx.xxx which will be manage by 2 key only

and I'm also working on a selection choice as

choice

endchoice

in Kconfig

I some one have I idea of other type that we may need for creating a bios like
menu they are welcome

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
