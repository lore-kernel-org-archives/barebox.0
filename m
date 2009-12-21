Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMf5l-0000J1-SN
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:02:19 +0000
Date: Mon, 21 Dec 2009 11:01:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221100115.GU15126@pengutronix.de>
References: <alpine.LFD.2.00.0912200859330.20718@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912200859330.20718@localhost>
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
Subject: Re: the "CONFIG_" namespace and what's with "CFG_CMD_" prefixes?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, Dec 20, 2009 at 09:06:07AM -0500, Robert P. J. Day wrote:
> 
>   based on some scanning i just did, i notice the following
> occurrences of the "CMD_CFG_" prefix on a number of preprocessor
> variables:
> 
> $ grep -r CFG_CMD *
> arch/ppc/mach-mpc5xxx/interrupts.c:#if (CONFIG_COMMANDS & CFG_CMD_IRQ)
> arch/ppc/mach-mpc5xxx/ide.c:#ifdef CFG_CMD_IDE
> arch/ppc/mach-mpc5xxx/ide.c:#endif /* CFG_CMD_IDE */

This file can be removed (and taken again from U-Boot if we want to add
ide support for barebox)

> arch/ppc/lib/kgdb.c:#endif /* CFG_CMD_KGDB */
> board/pcm030/pcm030.c:#if defined (CFG_CMD_IDE) && defined (CONFIG_IDE_RESET)
> board/pcm030/pcm030.c:#endif /* defined (CFG_CMD_IDE) && defined (CONFIG_IDE_RESET) */

unused code. I just created a patch to remove it.

> commands/loads.c:# if (CONFIG_COMMANDS & CFG_CMD_SAVES)
> commands/loads.c:# endif /* CFG_CMD_SAVES */
> commands/loads.c:#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
> commands/loads.c:# endif /* CFG_CMD_SAVES */
> commands/loads.c:#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
> commands/loads.c:#endif	/* CFG_CMD_SAVES */

commands/loads.c hasn't been touched for ages and won't even compile. If
somebody wants to add loads support he should start from scratch or with
original U-Boot code. When I started with U-Boot-V2 or now barebox there
was much old code and some of it is still there. I think we can safely
remove code which obviously wasn't touched for long time and still looks
like U-Boot. The original U-Boot code is still there for reference and
as a base to do a fresh start.

> common/Kconfig:	  automatically enabled when you select CFG_CMD_DATE .
> drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
> drivers/net/at91_ether.c:#endif	/* defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII) */
> drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)

The CFG_CMD_MII part can be removed here.

> lib/crc32.c:#include <common.h>	/* to get command definitions like CFG_CMD_JFFS2 */

This comment is obsolete

> $
> 
>   it's not clear what that prefix is supposed to represent since, in
> at least one case, it might be a typo -- "CMD_SAVES":
> 
> $ grep -r CMD_SAVES *
> commands/loads.c:# if (CONFIG_COMMANDS & CFG_CMD_SAVES)
> commands/loads.c:# endif /* CFG_CMD_SAVES */
> commands/loads.c:#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
> commands/loads.c:# endif /* CFG_CMD_SAVES */
> commands/loads.c:#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
> commands/loads.c:#endif	/* CFG_CMD_SAVES */
> commands/Kconfig:config CMD_SAVES
> $
> 
>   if those tests are meant to match that Kconfig variable, then
> obviously they're misspelled.  if not, then i'm not sure what's going
> on.  where *are* CFG_CMD_ variables supposed to be defined?  as in:
> 
> $ grep -rw CFG_CMD_MII *
> drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
> drivers/net/at91_ether.c:#endif	/* defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII) */
> drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
> $
> 
>   as a final point, it's standard practise that the "CONFIG_"-prefixed
> variable namespace should be reserved *exclusively* for Kconfig
> variables.  at least that's the way it works in the kernel world.

Ack.

As a general note all CFG_CMD_ variables are leftovers from original
U-Boot code and should be either converted to Kconfig variables or
removed if not needed.

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
