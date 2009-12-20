Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMKaL-0000Bi-Kp
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 12:08:33 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMKaI-0002Qw-D9
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 07:08:26 -0500
Date: Sun, 20 Dec 2009 07:08:02 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912200705560.18199@localhost>
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
Subject: more CONFIG oddities in the current barebox tree
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  here's a short list of Makefile CONFIG tests that test for
non-existent CONFIG variables -- not strictly an error, just valueless
and can be removed if there's no compelling reason to keep them.  (as
always, could be trivial false positives).

===== CMD_I2C =====
./commands/Makefile:obj-$(CONFIG_CMD_I2C)		+= i2c.o
===== LOGO =====
./scripts/Makefile:hostprogs-$(CONFIG_LOGO)         += pnmtologo
===== MODULE =====
./common/Makefile:obj-$(CONFIG_MODULE)		+= module.o
./arch/ppc/Makefile:ifndef CONFIG_MODULE
===== MODVERSIONS =====
./Makefile:  KBUILD_BUILTIN := $(if $(CONFIG_MODVERSIONS),1)
./scripts/Makefile:#subdir-$(CONFIG_MODVERSIONS) += genksyms
===== PROM_CONSOLE =====
./scripts/Makefile:hostprogs-$(CONFIG_PROM_CONSOLE) += conmakehash
===== SIMPLE_PARSER =====
./commands/Makefile:obj-$(CONFIG_SIMPLE_PARSER)	+= setenv.o
===== USE_IRQ =====
./arch/ppc/mach-mpc5xxx/Makefile:obj-$(CONFIG_USE_IRQ)	+=
interrupts.o
./arch/ppc/lib/Makefile:obj-$(CONFIG_USE_IRQ) += interrupts.o
===== VT =====
./scripts/Makefile:hostprogs-$(CONFIG_VT)           += conmakehash

  if any of that can be obviously deleted, let me know and i can
submit the appropriate patches.

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
