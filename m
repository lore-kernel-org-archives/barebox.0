Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxaO-0005O0-O1
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 15:19:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihxaL-0005so-Nj
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 16:19:29 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Dec 2019 16:19:29 +0100
Message-Id: <20191219151929.19521-4-l.stach@pengutronix.de>
In-Reply-To: <20191219151929.19521-1-l.stach@pengutronix.de>
References: <20191219151929.19521-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: nxp-imx8mq-evk: fix bootflow comment
To: barebox@lists.infradead.org

The comment above nxp_imx8mq_evk_start is no longer accurate, as there
is no trampoline in DRAM anymore. Change the comment to reflect the current
boot flow.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 213ab7068271..eb96c0805169 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -48,14 +48,13 @@ static void setup_uart(void)
  * summary:
  *
  * 1. MaskROM uploads PBL into OCRAM and that's where this function is
- *    executed for the first time
+ *    executed for the first time. At entry the exception level is EL3.
  *
- * 2. DDR is initialized and the TF-A trampoline is installed in the
- *    DRAM.
+ * 2. DDR is initialized and the PBL is copied from OCRAM to the TF-A return
+ *    address in DRAM.
  *
- * 3. TF-A is executed and exits into the trampoline in RAM, which enters the
- *    PBL for the second time. DRAM setup done is indicated by a one in register
- *    x0 by the trampoline
+ * 3. TF-A is executed and exits into the PBL code in DRAM. TF-A has taken us
+ *    from EL3 to EL2.
  *
  * 4. The piggydata is loaded from the SD card and copied to the expected
  *    location in the DRAM.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
