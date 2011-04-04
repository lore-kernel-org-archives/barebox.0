Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6ko7-00038c-N1
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:31:08 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q6ko6-00074O-7k
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 16:31:06 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q6ko6-00089a-6E
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 16:31:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:31:00 +0200
Message-Id: <1301927465-23717-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ARM: cleanup boot commands
To: barebox@lists.infradead.org

The arm linux start code has some common code which can be shared between
functions. Also, the different boot commands are seperated to different
files to easily compile support for them without ifdefs.

Sascha Hauer (5):
      ARM: Add missing parameter name in armlinux_set_serial
      ARM: factor out a start_linux function
      ARM: move bootm code to its own file
      ARM: move bootz code to its own file
      ARM: move bootu code to its own file

 arch/arm/Kconfig                |    5 +
 arch/arm/include/asm/armlinux.h |    6 +-
 arch/arm/lib/Makefile           |    5 +-
 arch/arm/lib/armlinux.c         |  215 +--------------------------------------
 arch/arm/lib/bootm.c            |   92 +++++++++++++++++
 arch/arm/lib/bootu.c            |   38 +++++++
 arch/arm/lib/bootz.c            |  100 ++++++++++++++++++
 7 files changed, 248 insertions(+), 213 deletions(-)
 create mode 100644 arch/arm/lib/bootm.c
 create mode 100644 arch/arm/lib/bootu.c
 create mode 100644 arch/arm/lib/bootz.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
