Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haad0-00046M-Dp
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 06:51:32 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 11 Jun 2019 08:51:21 +0200
Message-Id: <20190611065121.9998-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 3/3] nvmem: ocotp: Change TIMING calculation algorithm
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Port of patch from linux-arm-kernel:
| From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
|
| nvmem: imx-ocotp: Change TIMING calculation to u-boot algorithm
|
| The RELAX field of the OCOTP block is turning out as a zero on i.MX8MM.
| This messes up the subsequent re-load of the fuse shadow registers.
|
| After some discussion with people @ NXP its clear we have missed a trick
| here in Linux.
|
| The OCOTP fuse programming time has a physical minimum 'burn time' that is
| not related to the ipg_clk.
|
| We need to define the RELAX, STROBE_READ and STROBE_PROG fields in terms of
| desired timings to allow for the burn-in to safely complete. Right now only
| the RELAX field is calculated in terms of an absolute time and we are
| ending up with a value of zero.
|
| This patch inherits the u-boot timings for the OCOTP_TIMING calculation on
| the i.MX6 and i.MX8. Those timings are known to work and critically specify
| values such as STROBE_PROG as a minimum timing.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 38 ++++++++++++++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index c21327805b..3f9f162860 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -69,7 +69,9 @@
 
 /* Other definitions */
 #define IMX6_OTP_DATA_ERROR_VAL		0xBADABADA
-#define DEF_RELAX			20
+#define TIMING_STROBE_PROG_US		10
+#define TIMING_STROBE_READ_NS		37
+#define TIMING_RELAX_NS			17
 #define MAC_OFFSET_0			(0x22 * 4)
 #define IMX6UL_MAC_OFFSET_1		(0x23 * 4)
 #define MAC_OFFSET_1			(0x24 * 4)
@@ -119,11 +121,39 @@ static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
 	u32 relax, strobe_read, strobe_prog;
 	u32 timing;
 
+	/*
+	 * Note: there are minimum timings required to ensure an OTP fuse burns
+	 * correctly that are independent of the ipg_clk. Those values are not
+	 * formally documented anywhere however, working from the minimum
+	 * timings given in u-boot we can say:
+	 *
+	 * - Minimum STROBE_PROG time is 10 microseconds. Intuitively 10
+	 *   microseconds feels about right as representative of a minimum time
+	 *   to physically burn out a fuse.
+	 *
+	 * - Minimum STROBE_READ i.e. the time to wait post OTP fuse burn before
+	 *   performing another read is 37 nanoseconds
+	 *
+	 * - Minimum RELAX timing is 17 nanoseconds. This final RELAX minimum
+	 *   timing is not entirely clear the documentation says "This
+	 *   count value specifies the time to add to all default timing
+	 *   parameters other than the Tpgm and Trd. It is given in number
+	 *   of ipg_clk periods." where Tpgm and Trd refer to STROBE_PROG
+	 *   and STROBE_READ respectively. What the other timing parameters
+	 *   are though, is not specified. Experience shows a zero RELAX
+	 *   value will mess up a re-load of the shadow registers post OTP
+	 *   burn.
+	 */
 	clk_rate = clk_get_rate(priv->clk);
 
-	relax = clk_rate / (1000000000 / DEF_RELAX) - 1;
-	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
-	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
+	relax = DIV_ROUND_UP(clk_rate * TIMING_RELAX_NS, 1000000000) - 1;
+
+	strobe_read = DIV_ROUND_UP(clk_rate * TIMING_STROBE_READ_NS,
+				   1000000000);
+	strobe_read += 2 * (relax + 1) - 1;
+	strobe_prog = DIV_ROUND_CLOSEST(clk_rate * TIMING_STROBE_PROG_US,
+					1000000);
+	strobe_prog += 2 * (relax + 1) - 1;
 
 	timing = readl(priv->base + OCOTP_TIMING) & OCOTP_TIMING_WAIT_MASK;
 	timing |= BF(relax, OCOTP_TIMING_RELAX);
-- 
2.22.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
