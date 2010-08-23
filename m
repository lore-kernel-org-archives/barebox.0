Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnaDc-0004ha-EA
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 16:49:58 +0000
Date: Mon, 23 Aug 2010 18:49:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100823164954.GW27749@pengutronix.de>
References: <1282544653-11508-1-git-send-email-s.hauer@pengutronix.de>
	<1282544653-11508-10-git-send-email-s.hauer@pengutronix.de>
	<20100823151805.GV8693@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100823151805.GV8693@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 23, 2010 at 05:18:05PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:24 Mon 23 Aug     , Sascha Hauer wrote:
> > Clients now only have to call menu_add_submenu or menu_add_command_entry
> > instead of allocating many strings.
> > This also fixes some problems in the menu code. The priv field in struct
> > menu_entry was a pointer to struct menu or a pointer to an allocated string.
> > It was never freed, only had to be freed when it was an allocated string.
> > The reference to a submenu is now kept as a string and not to the menu
> > itself. The code checked the existence of the submenu when creating it, but
> > crashed when the submenu was removed and referenced afterwards. Now the
> > code hapily allows references to nonexistant menus but complains during
> > runtime when the menu is not there.
> ok but no need to check if the pointer is null before freeing and please do
> not remove the priv pointer as I use is in C API for complex menu to pass data
> to the action
> That's why I keep it as void*

So there's data associated to *priv, how do you free it then when...

> > 
> >  #include <errno.h>
> >  #include <readkey.h>
> > +#include <linux/err.h>
> >  
> >  static LIST_HEAD(menus);
> >  
> > @@ -145,10 +146,7 @@ void menu_entry_free(struct menu_entry *me)
> >  	if (!me)
> >  		return;
> >  
> > -	if (me->display)
> > -		free(me->display);
> > -
> > -	free(me);
> > +	me->free(me);
> we must check the pointer first as in the C API we must be able to overwrite
> it or we must check that the C API provice it

... you don't provide a free function?

You can't overwrite menu_entry_free as it is called from menu_free.

> >  }
> >  
> >  static void print_menu_entry(struct menu *m, struct menu_entry *me, int reverse)
> > @@ -277,14 +275,76 @@ int menu_show(struct menu *m)
> >  
> >  void menu_action_exit(struct menu *m, struct menu_entry *me) {}
> >  
> > -void menu_action_run(struct menu *m, struct menu_entry *me)
> > +struct submenu {
> > +	char *submenu;
> > +	struct menu_entry entry;
> > +};

Note how struct menu_entry here is contained in a bigger struct. This
way you can associate private data to a menu_entry using container_of
without the use of a priv pointer.

That said we can keep the priv pointer, but you can't use it for data
which must be freed, at least not without providing a free function.
That was what I was trying to enforce, maybe that went a bit too far.

Ok for the NULL pointer checks before free. I will remove them.

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
