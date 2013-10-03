Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRd93-00028b-KR
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 07:16:22 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4F1251058E8E
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 09:15:58 +0200 (CEST)
Date: Thu, 3 Oct 2013 09:17:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131003071723.GP32444@ns203013.ovh.net>
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
Subject: [PATCH 0/8 v2] more serial cleanup
To: barebox@lists.infradead.org

Hi,

	v2: function rename and rebase over next

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

The following changes since commit 705dbd7c795bbdfb448e1d0ace89d98cbceaaec1:

  Merge branch 'for-next/tegra' into next (2013-10-02 11:07:14 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/serial_more_cleanup

for you to fetch changes up to ded7b8f151d0fc204f46c6ea070eaa8f51858eb3:

  serial: atmel: add start and shutdown support (2013-10-03 15:12:55 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      console: factorise function to get the first enabled console
      console: factorise function to get the console by name
      console: introduce startup and shutdown
      loadxy: use console_open/close
      console: console_get_by_name pass flags
      animeo_ip: update to use console_open/close for rs485 crossed detection
      serial: amba-pl011: add start and shutdown support
      serial: atmel: add start and shutdown support

 arch/arm/boards/animeo_ip/init.c |  7 +++++--
 arch/ppc/mach-mpc85xx/fdt.c      |  4 +---
 commands/loadb.c                 | 22 +---------------------
 commands/loadxy.c                | 75 +++++++++++++++++++++++++++------------------------------------------------
 common/console.c                 |  6 ++++++
 common/console_common.c          | 75 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/console_simple.c          |  3 +++
 drivers/serial/amba-pl011.c      | 39 ++++++++++++++++++++++++++++++---------
 drivers/serial/atmel.c           | 55 +++++++++++++++++++++++++++++++++++++++++--------------
 include/console.h                |  6 ++++++
 10 files changed, 195 insertions(+), 97 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
