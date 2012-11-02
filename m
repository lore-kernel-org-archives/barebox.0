Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUJnz-0003T1-SI
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 16:09:13 +0000
Received: from mail183.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 9C1B1FFB051
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2012 17:16:23 +0100 (CET)
Date: Fri, 2 Nov 2012 17:06:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121102160659.GS29599@game.jcrosoft.org>
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
Subject: [PATCH 0/2] add spi command
To: barebox@lists.infradead.org

HI,

	while debugging a spi issue I found we have a i2c commands but no spi
	command

	So introduce one

The following changes since commit 56371f4e8446d04d2a5608dd5890fd87a50f888e:

  iomux-imx35: add missing comma in pad definition (2012-11-01 16:32:12 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/command_spi

for you to fetch changes up to 3d6660a40aa5a51215a1909fd2fb5702f0e6558b:

  introduce spi command (2012-11-02 08:55:11 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      spi: introduce spi_get_master
      introduce spi command

 commands/Kconfig  |    6 ++++++
 commands/Makefile |    1 +
 commands/spi.c    |  126 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/spi/spi.c |   12 ++++++++++++
 include/spi/spi.h |    2 ++
 5 files changed, 147 insertions(+)
 create mode 100644 commands/spi.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
