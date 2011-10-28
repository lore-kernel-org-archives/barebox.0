Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RJiqL-0003AI-95
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 09:35:18 +0000
Received: from mail407.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 4A20A1008527
	for <barebox@lists.infradead.org>;
	Fri, 28 Oct 2011 11:38:02 +0200 (CEST)
Date: Fri, 28 Oct 2011 11:34:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111028093456.GA7961@game.jcrosoft.org>
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
Subject: [RFC PATCH 0/2] NEW boot config 
To: barebox@lists.infradead.org

Hi,

	This is a frist attempt to implement a new boot config management
	that will allow us to have more complex config and a boot menu

	so for small boot loader we will be able to drop the shell

Jean-Christophe PLAGNIOL-VILLARD (2):
      add boot_config command support
      add boot_menu command support

 Documentation/bootsec.dtb         |  Bin 0 -> 2198 bytes
 Documentation/bootsec/bootsec.cfg |  104 +++++++++
 commands/Kconfig                  |   16 ++
 commands/Makefile                 |    2 +
 commands/boot_config.c            |  262 ++++++++++++++++++++++
 commands/boot_menu.c              |  234 ++++++++++++++++++++
 common/Kconfig                    |    5 +
 common/Makefile                   |    1 +
 common/boot_config.c              |  438 +++++++++++++++++++++++++++++++++++++
 common/boot_config_dts.c          |  256 ++++++++++++++++++++++
 include/boot_config.h             |  158 +++++++++++++
 11 files changed, 1476 insertions(+), 0 deletions(-)
 create mode 100644 Documentation/bootsec.dtb
 create mode 100644 Documentation/bootsec/bootsec.cfg
 create mode 100644 Documentation/bootsec/splash_installer.bmp
 create mode 100644 Documentation/bootsec/splash_menu.bmp
 create mode 100644 commands/boot_config.c
 create mode 100644 commands/boot_menu.c
 create mode 100644 common/boot_config.c
 create mode 100644 common/boot_config_dts.c
 create mode 100644 include/boot_config.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
