Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEyRD-0001N9-6H
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 08:50:32 +0000
Date: Mon, 11 Mar 2013 09:50:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311085028.GD1906@pengutronix.de>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
 <1362871182-25726-8-git-send-email-vicencb@gmail.com>
 <20130310131655.GB11170@game.jcrosoft.org>
 <CAAMcf8CP+WpwzGhVMNfuOL-gDn-DUPogREntZ9SMV4irQj22Bg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8CP+WpwzGhVMNfuOL-gDn-DUPogREntZ9SMV4irQj22Bg@mail.gmail.com>
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
Subject: Re: [PATCH 7/9] menu: avoid errors when building submenus
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 10, 2013 at 11:29:17PM +0100, vj wrote:
> On Sun, Mar 10, 2013 at 2:16 PM, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> > On 00:19 Sun 10 Mar     , Vicente Bergas wrote:
> >> boot-menu-add-entry should not add menu entries to non-existent menus
> >> to solve the issue a new parameter is passed indicating the current menu
> > how this could happend?
> 
> This happens always a menu with "Boot: " entries is created.
> "Boot: " entries are created calling "boot-menu-add-entry" as
> "boot-template" suggests.
> All boot entries are expected to be editable or deleted, so, when the
> user requests, a new menu is build with all the entries to be edited
> or deleted.
> What happens is that "boot-menu-add-entry" adds all three entries at
> once, one for the boot menu, another for the still non-existent edit
> menu and a third one for the still non-existent delete menu.
> When the user selects the edit menu then "boot-menu-add-entry" adds
> again three entries, this time the non-existent menus are the boot and
> delete ones.
> Idem for the delete menu...
> When an item is added to a non-existent menu an error is reported, but
> it's not critical and the menu being created is shown correctly.
> This patch addresses that.

I see the problem, but I think we should either live with it or find a
better solution to the problem. I don't really want to increase the
complexity of the menu scripts. I had a hard time implementing it with
halfway correct behaviour. If now we have to add more complexity it
IMO shows we should rethink it.

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
