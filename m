Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9P1q-00025g-CW
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 21:52:15 +0000
Received: by wyb28 with SMTP id 28so6435305wyb.36
	for <barebox@lists.infradead.org>; Mon, 11 Apr 2011 14:52:12 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 11 Apr 2011 23:52:06 +0200
Message-Id: <1302558729-3298-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 0/3] Add Altera TSE driver
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

In this version I removed the PHY address auto-detect functions.
Thus, the address has to be passed via platform_data.

Franck JULLIEN (3):
  Fix coding style in driver/net/Makefile
  [v3] Nios2: Add Altera TSE driver
  Add platform data to the mac device

 arch/nios2/boards/generic/generic.c |   11 +-
 drivers/net/Kconfig                 |   16 +
 drivers/net/Makefile                |    5 +-
 drivers/net/altera_tse.c            |  579 +++++++++++++++++++++++++++++++++++
 drivers/net/altera_tse.h            |  303 ++++++++++++++++++
 5 files changed, 908 insertions(+), 6 deletions(-)
 create mode 100644 drivers/net/altera_tse.c
 create mode 100644 drivers/net/altera_tse.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
