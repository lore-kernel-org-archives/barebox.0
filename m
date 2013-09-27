Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSDb-0000gr-KS
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:12:04 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 22F29DC1F6C
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 09:11:38 +0200 (CEST)
Date: Fri, 27 Sep 2013 09:12:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130927071255.GB32444@ns203013.ovh.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/8] more serial cleanup
To: barebox@lists.infradead.org

Hi,

	Today we have a wired implemntation of the console which mix serial
	and others. Today on serial we init and start the port at probe time.

	Which is wrong as we need to start the port only if used by barebox.
	So linux (on at91 as example) may use for uncompress or debug ll the
	wrong usart.

	This patch series fix it by introducing startup and shutdown callback
	to the console_device.

	This also drop the exposition of for_each_console and the list
	outside of the console implemetaiton

	This is an other step to the full rework of the console API to split
	tty implementation form console.

The following changes since commit 2d1f2c109baf23e85927363b33df549438422e19:

  Merge branch 'for-next/rs485' into next (2013-09-24 09:21:47 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/serial_more_cleanup

for you to fetch changes up to fdbe3feeb840d9f372ee0914902658c38deabc72:

  serial: atmel: add start and shutdown support (2013-09-27 15:01:30 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      console_simple: fix: set f_active
      console: factorise function to get the first enabled console
      console: factorise function to get the console by name
      console: introduce startup and shutdown
      loadbxy: use console_open/close
      animeo_ip: update to use console_open/close for rs485 crossed detection
      serial: amba-pl011: add start and shutdown support
      serial: atmel: add start and shutdown support

 arch/arm/boards/animeo_ip/init.c |  7 +++++--
 arch/ppc/mach-mpc85xx/fdt.c      |  4 +---
 commands/loadb.c                 | 22 +---------------------
 commands/loadxy.c                | 75 +++++++++++++++++++++++++++------------------------------------------------
 common/console.c                 |  6 ++++++
 common/console_common.c          | 74 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/console_simple.c          |  5 +++++
 drivers/serial/amba-pl011.c      | 45 +++++++++++++++++++++++++++++++++------------
 drivers/serial/atmel.c           | 42 +++++++++++++++++++++++++++++++++---------
 include/console.h                |  7 +++++++
 10 files changed, 192 insertions(+), 95 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
