Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OmLFB-0008KC-Od
	for barebox@lists.infradead.org; Fri, 20 Aug 2010 06:38:27 +0000
Date: Fri, 20 Aug 2010 08:38:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100820063822.GH27749@pengutronix.de>
References: <1282190002-6807-1-git-send-email-plagnioj@jcrosoft.com>
	<20100819082922.GE27749@pengutronix.de>
	<20100820032101.GA8693@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100820032101.GA8693@game.jcrosoft.org>
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

On Fri, Aug 20, 2010 at 05:21:01AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > menu -e -a -m boot -c "menu -s -m network" -R -d "Network settings ->"
> > 
> > we could have a
> > 
> > menu -e -a -m boot -u network -R -d "Network settings ->"
> > 
> > We could than automatically add a 'back' entry if a menu is a submenu.
> I disagree here about the automatic adding of a 'back" entry
> as you may want to put at the top or the bottom or where ever you want and you
> may not write the menu in English or the text "Back"
> so I will prefer to let it done manually as this
> 
> menu -a -m boot -d "Boot Menu"
> menu -a -m network -d "Network settings"
> menu -e -a -m network -c "echo ok" -R -d "test"
> menu -e -a -m network -u boot -d "Back"
> menu -e -a -m boot -u network -d "Network settings ->"
> menu -e -a -m boot -c reset -R -d "Exit"

That's better, agreed.

> 
> > 
> > - It shouldn't be possible to add the same menu twice. example:
> > 
> > barebox@Phytec phyCORE-i.MX31:/ menu -a -m boot -d "Boot Menu"
> > barebox@Phytec phyCORE-i.MX31:/ menu -a -m boot -d "Boot Menu"
> > barebox@Phytec phyCORE-i.MX31:/ menu -l
> > boot: Boot Menu
> > boot: Boot Menu
> > barebox@Phytec phyCORE-i.MX31:/
> fix
> > 
> > - Removing entries does not work as expected. example:
> > 
> > menu -a -m boot -d "Boot Menu"
> > menu -e -a -m boot -c boot -d "Boot"
> > menu -e -a -m boot -c reset -d "Reset"
> > menu -e -a -m boot -c "exit" -d "Command line"
> > menu -e -r -m boot -n 1
> > menu -s -m boot
> fix
> > 
> > - commands should always return positive error codes. A good practice is
> >   to pass -E* values up to do_menu, use strerror() to print the error
> >   code and return 1 afterwards.
> I agree but but of the time there is no -E* related to this Framework
> 
> so do u want to create them?

No. The use of strerror might not be appropriate here, but all functions
used should return some error value instead of -1, with -EINVAL as
fallback when no better value can be found.

> > 
> > There is a 'break' missing here.
> > 
> fix
> > > +			cm.action = action_add;
> > > +			break;
> > > +		case 'r':
> > > +			cm.action = action_remove;
> > > +			break;
> > > +		case 'c':
> > > +			cm.command = optarg;
> > > +			break;
> > 
> > Thank you for this work. I really appreciate it ;)
> Your welcome
> My goal was to make the bootloader more easy to use for end user and
> device without keyboard

Do you know openmoko? They also have a menu in U-Boot, but it's more or
less hardcoded to their exact needs.

> 
> and keep 2 API
> commands as it's easy to manage at run time
> 
> and C for very complex menu
> 
> I plan to have this also via FrameBuffer and with a background image
> so maybe barebox could replace grub & co aneday :)

A long way to go ;)

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
