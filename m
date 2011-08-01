Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QnpL3-0008Ro-Fs
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 10:03:10 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QnpL0-0007ON-Lo
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 12:03:06 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QnpL0-0000Sf-K4
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 12:03:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  1 Aug 2011 12:03:01 +0200
Message-Id: <1312192983-1423-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: remove some U-Boot leftovers
To: barebox@lists.infradead.org


Sascha Hauer (2):
      remove unused DECLARE_GLOBAL_DATA_PTR
      remove unused global_data.h

 arch/arm/include/asm/global_data.h     |   30 -------
 arch/arm/lib/armlinux.c                |    1 -
 arch/arm/lib/bootm.c                   |    1 -
 arch/arm/mach-netx/netx-cm.c           |    1 -
 arch/ppc/include/asm/global_data.h     |  140 --------------------------------
 arch/ppc/lib/ppclinux.c                |    1 -
 arch/sandbox/include/asm/global_data.h |   30 -------
 commands/loads.c                       |    2 -
 8 files changed, 0 insertions(+), 206 deletions(-)
 delete mode 100644 arch/arm/include/asm/global_data.h
 delete mode 100644 arch/ppc/include/asm/global_data.h
 delete mode 100644 arch/sandbox/include/asm/global_data.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
