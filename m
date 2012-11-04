Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUw0t-000325-SJ
 for barebox@lists.infradead.org; Sun, 04 Nov 2012 08:57:05 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2B430FFBA1F
 for <barebox@lists.infradead.org>; Sun,  4 Nov 2012 10:07:16 +0100 (CET)
Date: Sun, 4 Nov 2012 09:54:53 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121104085453.GB29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 0/2 v2] add spi command
To: barebox@lists.infradead.org

HI,

	v2:
	add default return usage
	use memory_display

	while debugging a spi issue I found we have a i2c commands but no spi
	command

	So introduce one

The following changes since commit 8f839b51047593bdd63d485006237111cd3a0547:

  spi: introduce spi_get_master (2012-11-02 08:55:10 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/command_spi

for you to fetch changes up to 2bfe0a6d58edae296b384b14e86e9efad148bfb7:

  introduce spi command (2012-11-04 01:45:34 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (1):
      introduce spi command

 commands/Kconfig  |    6 ++++++
 commands/Makefile |    1 +
 commands/spi.c    |  126 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 133 insertions(+)
 create mode 100644 commands/spi.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
