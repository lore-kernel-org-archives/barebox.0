Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlRAY-0003u5-SV
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 19:50:27 +0000
Received: by wwf22 with SMTP id 22so3211555wwf.18
	for <barebox@lists.infradead.org>; Mon, 25 Jul 2011 12:50:22 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 25 Jul 2011 21:50:16 +0200
Message-Id: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] Switch Nios2 devices to ressource usage
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

This series switches nios2 drivers to ressources

Franck Jullien (4):
  nios2/generic.c: use add_generic_device helper
  nios2/altera_tse.c: switch to ressources
  nios2/serial_altera.c: switch to ressources
  nios2/serial_altera_jtag.c: switch to ressources

 arch/nios2/boards/generic/generic.c |   20 ++++----------------
 drivers/net/altera_tse.c            |    4 ++--
 drivers/serial/serial_altera.c      |    8 ++++----
 drivers/serial/serial_altera_jtag.c |    6 +++---
 4 files changed, 13 insertions(+), 25 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
