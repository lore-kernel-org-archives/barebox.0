Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUm-0004Xz-NU
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:17 +0000
Received: by mail-pf1-x42c.google.com with SMTP id b19so1765929pfo.2
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:42 -0800
Message-Id: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/12] Share i.MX ESDHC PBL and PIO code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is an attempt to share as much functionality between PBL
ESDHC code and PIO case of regular ESDHC driver as possible, since
both implementations are identical in a lot of ways.

Tested on RDU2 (i.MX6) and RDU3 (i.MX8MQ)

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (12):
  mci: imx-esdhc: Drop unnecessary type conversion
  mci: imx-esdhc: Drop unused type definition
  mci: imx-esdhc: Drop extra helper varaible
  mci: imx-esdhc-pbl: Don't setup DMA registers
  mci: imx-esdhc-pbl: Share initialization code
  mci: imx-esdhc-pbl: Drop 'wrap_wml' flag
  mci: imx-esdhc-pbl: Share IO accessors with regular driver
  mci: imx-esdhc-pbl: Use sdhci_transfer_data()
  mci: imx-esdhc-pbl: Use sdhci_set_cmd_xfer_mode()
  mci: imx-esdhc: Share code for esdhc_(setup|do)_data operations
  mci: imx-esdhc: Introduce esdhc_poll()
  mci: imx-esdhc: Share code for esdhc_send_cmd()

 drivers/mci/Kconfig            |   1 +
 drivers/mci/Makefile           |   6 +-
 drivers/mci/imx-esdhc-common.c | 275 +++++++++++++++++++++++++++
 drivers/mci/imx-esdhc-pbl.c    | 330 ++++++++-------------------------
 drivers/mci/imx-esdhc.c        | 326 ++------------------------------
 drivers/mci/imx-esdhc.h        | 104 ++++++++++-
 drivers/mci/sdhci.c            |  13 ++
 7 files changed, 487 insertions(+), 568 deletions(-)
 create mode 100644 drivers/mci/imx-esdhc-common.c

-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
