Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SB1rD-0003AK-PR
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 10:36:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Mar 2012 11:36:16 +0100
Message-Id: <1332498979-13742-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: ARM i.MX51: lowlevel code work
To: barebox@lists.infradead.org

We currently only setup the i.MX5 to full speed on newer tapeouts.
This really is a hack for older babbage boards. This series fixes this.

Sascha

for you to fetch changes up to f762f4bf04ae9f9faf5e422b273079b3f6946e73:

  ARM i.MX51 lowlevel: setup full cpu speed unconditionally (2012-03-23 11:33:03 +0100)

----------------------------------------------------------------
Sascha Hauer (3):
      ARM i.MX51 clk: select uart clk parent based on hardware setting
      ARM i.MX51 babbage: move lowlevel setup after power init
      ARM i.MX51 lowlevel: setup full cpu speed unconditionally

 arch/arm/boards/freescale-mx51-pdk/board.c |    7 +++++--
 arch/arm/mach-imx/imx51.c                  |    7 ++-----
 arch/arm/mach-imx/speed-imx51.c            |   10 +++++++++-
 3 files changed, 16 insertions(+), 8 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
