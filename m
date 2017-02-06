Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadB9-0004gF-Tc
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:53:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cad8d-0003zX-9z
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 07:50:59 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <sha@pengutronix.de>) id 1cad8c-0005Wb-IZ
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 07:50:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:48 +0100
Message-Id: <20170206065057.19483-1-s.hauer@pengutronix.de>
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
Subject: i.MX7 Ethernet clock fixes
To: Barebox List <barebox@lists.infradead.org>

The following patches are encessary to make fec ethernet work on i.MX7.
There are some inaccuracies in the barebox clock support have to be fixed
first, but the real problem was that our clock code derived from the
Kernel controls non existing clock gates whereas the real gates are not
touched at all. It seems this was never noticed in the kernel since U-Boot
has configured the clocks correctly beforehand.

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      clk: Keep enable count consistent over reparent
      clk: implement CLK_OPS_PARENT_ENABLE
      clk: i.MX: clk-gate2: Allow to pass flags
      clk: i.MX: Pass CLK_OPS_PARENT_ENABLE where necessary
      clk: i.MX7: do clock reparenting when all clocks are initialized
      clk: Add support for shared gates
      clk: i.MX7: Fix ethernet clocks
      clk: i.MX7: do not register PLL bypass clocks as separate clocks
      clk: i.MX7: setup ethernet clocks

 drivers/clk/Makefile          |   3 +-
 drivers/clk/clk-gate-shared.c | 123 +++++++++++++++++++++
 drivers/clk/clk.c             |  52 +++++++--
 drivers/clk/imx/clk-gate2.c   |  11 +-
 drivers/clk/imx/clk-imx7.c    | 249 +++++++++++++++++++++---------------------
 drivers/clk/imx/clk.h         |  20 ++--
 include/linux/clk.h           |   5 +
 7 files changed, 315 insertions(+), 148 deletions(-)
 create mode 100644 drivers/clk/clk-gate-shared.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
