Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bq0IR-0002dq-Jb
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 16:04:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bq0I5-0000bj-C1
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 18:04:01 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Sep 2016 18:03:59 +0200
Message-Id: <20160930160401.21147-1-l.stach@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] H100 support
To: barebox@lists.infradead.org

This adds support for the H100 baseboard. Series is on top of -next
as the base DT for this board is only in Linux 4.8.

Lucas Stach (2):
  ARM: microsom: use imx6q_barebox_entry
  ARM: imx6: add support for Auvidea H100

 arch/arm/boards/solidrun-microsom/board.c    | 16 ++++++-
 arch/arm/boards/solidrun-microsom/lowlevel.c | 24 +++++++---
 arch/arm/dts/Makefile                        |  2 +-
 arch/arm/dts/imx6q-h100.dts                  | 70 ++++++++++++++++++++++++++++
 images/Makefile.imx                          |  5 ++
 5 files changed, 108 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-h100.dts

-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
