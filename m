Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMMQf-0004sP-Nj
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 14:06:41 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMMQd-0001ms-Td
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 09:06:36 -0500
Date: Sun, 20 Dec 2009 09:06:07 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912200859330.20718@localhost>
MIME-Version: 1.0
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
Subject: the "CONFIG_" namespace and what's with "CFG_CMD_" prefixes?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  based on some scanning i just did, i notice the following
occurrences of the "CMD_CFG_" prefix on a number of preprocessor
variables:

$ grep -r CFG_CMD *
arch/ppc/mach-mpc5xxx/interrupts.c:#if (CONFIG_COMMANDS & CFG_CMD_IRQ)
arch/ppc/mach-mpc5xxx/ide.c:#ifdef CFG_CMD_IDE
arch/ppc/mach-mpc5xxx/ide.c:#endif /* CFG_CMD_IDE */
arch/ppc/lib/kgdb.c:#endif /* CFG_CMD_KGDB */
board/pcm030/pcm030.c:#if defined (CFG_CMD_IDE) && defined (CONFIG_IDE_RESET)
board/pcm030/pcm030.c:#endif /* defined (CFG_CMD_IDE) && defined (CONFIG_IDE_RESET) */
commands/loads.c:# if (CONFIG_COMMANDS & CFG_CMD_SAVES)
commands/loads.c:# endif /* CFG_CMD_SAVES */
commands/loads.c:#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
commands/loads.c:# endif /* CFG_CMD_SAVES */
commands/loads.c:#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
commands/loads.c:#endif	/* CFG_CMD_SAVES */
common/Kconfig:	  automatically enabled when you select CFG_CMD_DATE .
drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
drivers/net/at91_ether.c:#endif	/* defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII) */
drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
lib/crc32.c:#include <common.h>	/* to get command definitions like CFG_CMD_JFFS2 */
$

  it's not clear what that prefix is supposed to represent since, in
at least one case, it might be a typo -- "CMD_SAVES":

$ grep -r CMD_SAVES *
commands/loads.c:# if (CONFIG_COMMANDS & CFG_CMD_SAVES)
commands/loads.c:# endif /* CFG_CMD_SAVES */
commands/loads.c:#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
commands/loads.c:# endif /* CFG_CMD_SAVES */
commands/loads.c:#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
commands/loads.c:#endif	/* CFG_CMD_SAVES */
commands/Kconfig:config CMD_SAVES
$

  if those tests are meant to match that Kconfig variable, then
obviously they're misspelled.  if not, then i'm not sure what's going
on.  where *are* CFG_CMD_ variables supposed to be defined?  as in:

$ grep -rw CFG_CMD_MII *
drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
drivers/net/at91_ether.c:#endif	/* defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII) */
drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
$

  as a final point, it's standard practise that the "CONFIG_"-prefixed
variable namespace should be reserved *exclusively* for Kconfig
variables.  at least that's the way it works in the kernel world.

  thoughts?

rday
--


========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
