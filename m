Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Om0V2-0006Lr-8p
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 08:29:25 +0000
Date: Thu, 19 Aug 2010 10:29:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100819082922.GE27749@pengutronix.de>
References: <1282190002-6807-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1282190002-6807-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] Add Menu Framework
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 19, 2010 at 05:53:22AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Introduce a menu framework that allow us to create list menu to simplify
> barebox and make it more user-frendly
> 
> This kind of menu is very usefull when you do not have a keyboard or a
> serial console attached to your board to allow you to interract with
> barebox

\o/ Cool! I really like it.

This is simple and still very flexible.

Some things which came up during testing:

- I get a data abort when trying to remove a menu without removing the
  entries first. example:

barebox@Phytec phyCORE-i.MX31:/ menu -a -m boot -d "Boot Menu"
barebox@Phytec phyCORE-i.MX31:/ menu -e -a -m boot -c boot -d "Boot"
barebox@Phytec phyCORE-i.MX31:/ menu -r -m boot
data abort
pc : [<87f05058>]    lr : [<87f05098>]
sp : 87affe20  ip : 87f20794  fp : 00000004
r10: 00000002  r9 : 00000000  r8 : 00200200
r7 : 00100100  r6 : 87b0daf8  r5 : 87b0db18  r4 : 001000f0
r3 : 87b0db18  r2 : 87b0db18  r1 : 003b7fff  r0 : 001000f0
Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
Resetting CPU ...

- do_menu could use a if (!argc) return COMMAND_ERROR_USAGE;

- It would be nice to have an option to directly create a submenu on the
  command line (though this can be added later). So instead of doing

menu -e -a -m boot -c "menu -s -m network" -R -d "Network settings ->"

we could have a

menu -e -a -m boot -u network -R -d "Network settings ->"

We could than automatically add a 'back' entry if a menu is a submenu.

- It shouldn't be possible to add the same menu twice. example:

barebox@Phytec phyCORE-i.MX31:/ menu -a -m boot -d "Boot Menu"
barebox@Phytec phyCORE-i.MX31:/ menu -a -m boot -d "Boot Menu"
barebox@Phytec phyCORE-i.MX31:/ menu -l
boot: Boot Menu
boot: Boot Menu
barebox@Phytec phyCORE-i.MX31:/

- Removing entries does not work as expected. example:

menu -a -m boot -d "Boot Menu"
menu -e -a -m boot -c boot -d "Boot"
menu -e -a -m boot -c reset -d "Reset"
menu -e -a -m boot -c "exit" -d "Command line"
menu -e -r -m boot -n 1
menu -s -m boot

As expected the first entry is missing, but instead an empty line is
printed. When I then try to add an entry after this the menu is corrupt.

- commands should always return positive error codes. A good practice is
  to pass -E* values up to do_menu, use strerror() to print the error
  code and return 1 afterwards.

> +		switch(opt) {
> +		case 'm':
> +			cm.menu = optarg;
> +			break;
> +			break;
> +		case 'l':
> +			cm.action = action_list;
> +			break;
> +		case 's':
> +			cm.action = action_show;
> +			break;
> +#if defined(CONFIG_CMD_MENU_MANAGEMENT)
> +		case 'e':
> +			cm.entry = 1;
> +		case 'a':

There is a 'break' missing here.

> +			cm.action = action_add;
> +			break;
> +		case 'r':
> +			cm.action = action_remove;
> +			break;
> +		case 'c':
> +			cm.command = optarg;
> +			break;

Thank you for this work. I really appreciate it ;)

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
