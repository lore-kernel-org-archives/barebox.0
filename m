Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPNBk-0005ds-Ex
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 09:53:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Oct 2020 11:53:39 +0200
Message-Id: <20201005095346.27957-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/7] remoteproc: Add i.MX8M Cortex-M[47] support
To: Barebox List <barebox@lists.infradead.org>

The i.MX8M SoCs have a Cortex-M4 or a Cortex-M7 coprocessor equipped.
This series adds support for them to the existing i.MX remoteproc
driver.

Sascha Hauer (7):
  remoteproc: imx: Fix off-by-one error
  remoteproc: imx: Change SoC order in code
  remoteproc: imx: use function hooks in SoC data
  remoteproc: imx: Add i.MX8M support
  clk: i.MX8MQ: Add Cortex-M4 clk
  ARM: dts: i.MX8MQ: Add Cortex-M4 Coprocessor node
  ARM: dts: i.MX8MP: Add Cortex-M7 Coprocessor node

 arch/arm/dts/imx8mp-evk.dts    |   1 +
 arch/arm/dts/imx8mp.dtsi       |   9 ++
 arch/arm/dts/imx8mq.dtsi       |   8 ++
 drivers/clk/imx/clk-imx8mq.c   |   5 +
 drivers/remoteproc/imx_rproc.c | 251 ++++++++++++++++++++++++++-------
 5 files changed, 220 insertions(+), 54 deletions(-)
 create mode 100644 arch/arm/dts/imx8mp.dtsi

-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
