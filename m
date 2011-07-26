Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-dy0-f49.google.com ([209.85.220.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qlnv8-0003GC-HS
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 20:08:03 +0000
Received: by dye8 with SMTP id 8so35102dye.36
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 13:07:59 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Tue, 26 Jul 2011 22:07:53 +0200
Message-Id: <1311710877-13004-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH v2] Switch nios2 devices to resources
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Switch nios2 devices to resources usage.

Franck Jullien (4):
  nios2/generic.c: Add resources for altera TSE
  nios2/altera_tse: Switch to resources
  nios2/serial_altera: Switch to resources
  nios2/altera_serial_jtag: Switch to resources

 arch/nios2/boards/generic/generic.c |   31 ++++++++++++-----
 drivers/net/altera_tse.c            |   63 ++++++++++++++++------------------
 drivers/net/altera_tse.h            |   15 +++-----
 drivers/serial/serial_altera.c      |   31 ++++++++++++++---
 drivers/serial/serial_altera_jtag.c |   27 +++++++++++++--
 5 files changed, 106 insertions(+), 61 deletions(-)

-- 
1.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
