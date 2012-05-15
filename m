Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SUPBQ-0003op-3J
 for barebox@lists.infradead.org; Tue, 15 May 2012 21:21:29 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 15 May 2012 23:21:12 +0200
Message-Id: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 0/5] arch/arm: mioa701 linux booting
To: barebox@lists.infradead.org

This patch serie makes linux autobooting and barebox flashing
and reflashing much more automated.
This serie serves as the first fully working barebox setup,
fully replacing the existing legacy boot code on the mioa701.

--
Robert

Robert Jarzmik (5):
  arm/board: mioa701 align kernel options with kernel mtd
  arch/arm: mioa701 make autoboot of Linux work
  arch/arm: mioa701 add IPL and DPS1 updater
  arch/arm: mioa701 use maximum CPU frequency
  arch/arm: mioa701 improve barebox_update script

 arch/arm/boards/mioa701/board.c                |   13 +++++++++++--
 arch/arm/boards/mioa701/env/bin/barebox_update |    5 +++++
 arch/arm/boards/mioa701/env/bin/dps1_unlock    |   12 ++++++++++++
 arch/arm/boards/mioa701/env/bin/dps1_update    |   12 ++++++++++++
 arch/arm/boards/mioa701/env/bin/init           |   19 ++++++++++++-------
 arch/arm/boards/mioa701/env/data/dps1.raw.gz   |  Bin 0 -> 1239 bytes
 6 files changed, 52 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/boards/mioa701/env/bin/dps1_unlock
 create mode 100644 arch/arm/boards/mioa701/env/bin/dps1_update
 create mode 100644 arch/arm/boards/mioa701/env/data/dps1.raw.gz

-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
