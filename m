Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxrc-0003DF-0G
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:41:14 +0000
Received: by mail-pg0-x241.google.com with SMTP id j186so16322562pge.1
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:40:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:40:36 -0700
Message-Id: <20170619144039.20552-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/3] Fix "i.MX: vf610: Ramp CPU clock to maximum frequency"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

Everyone,

It looks like my test setup was somehow contaminated -- possibly by
using JTAG to initalize SoC and upload Barebox binary -- so
21921f7f419dfaabcd385595ada24f0352310f1a ("i.MX: vf610: Ramp CPU clock
to maximum frequency") didn't actually work as I thought it was and
instead it made Barebox not boot on Vybrid.

This patch series contains all of the changes I had to make in order
to make CPU clock switching work/"unbreak" Barebox on Vybrid.

Let me know if anything needs changing.

Thanks,
Andrey Smirnov


Andrey Smirnov (3):
  clk-vf610: Mark all of CCSR muxes with CLK_OPS_PARENT_ENABLE
  i.MX: clk-pllv3: Do not touch PLL_BYPASS bit
  i.MX: clk: Remove imx_clk_pllv3_locked()

 drivers/clk/imx/clk-pllv3.c | 26 --------------------------
 drivers/clk/imx/clk-vf610.c | 28 ++++++++++++++++++++--------
 drivers/clk/imx/clk.h       |  4 ----
 3 files changed, 20 insertions(+), 38 deletions(-)

-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
