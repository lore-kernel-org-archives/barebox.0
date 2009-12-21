Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMjgY-0008TO-Na
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 14:56:38 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMjgV-0003FL-PK
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:56:31 -0500
Date: Mon, 21 Dec 2009 09:56:07 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210947530.18397@localhost>
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
Subject: can someone explain this CONFIG_COMMANDS, CFG_CMD thing?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  i'm looking at some of the stuff sascha commented on earlier, like:

$ grep -r CONFIG_MII drivers
drivers/net/Makefile:obj-$(CONFIG_MIIPHY)			+= miiphy.o
drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
drivers/net/at91_ether.c:#endif	/* defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII) */
drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
$

and i'd like to clarify what any of that is *supposed* to mean.

  first, what means "CONFIG_COMMANDS"?  that is, in the sense that
you're *bitwise* or'ing it with something else?  is that supposed to
be a test that a command has been selected for inclusion?  surely
there's a cleaner way to do that.

  and what would the difference be between CONFIG_MII and CFG_CMD_MII?
as i read it (and i could be totally out to lunch), something like
CONFIG_MII would be selecting a particular *feature* to build in,
while CFG_CMD_MII would be selecting the actual "mii" command, is that
it?

  but should those two selections be independently selectable?
possibly -- i can imagine an argument that that should be true.  but
in a perfect world, how should all this be done?  personally, i can
imagine selecting *features* one by one and, for each feature,
selecting any of the relevant and associated commands.

  so (as a random example), i might first select MII support with
CONFIG_MII, then separately select to include the "mii" command with
CONFIG_CMD_MII.  and commands should be Kconfig dependent on their
associated feature, so that there would be no need to test

 #if defined(CONFIG_MII) && defined(CONFIG_CMD_MII)

it would be sufficient to test

 #if defined(CONFIG_CMD_MII)

or am i completely misreading what should be happening here?

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
