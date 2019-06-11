Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haaco-0003u8-Uj
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 06:51:20 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 11 Jun 2019 08:50:52 +0200
Message-Id: <20190611065052.9479-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/3] nvmem: ocotp: Ensure WAIT bits are preserved
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Port of patch from linux-arm-kernel:
| From Bryan O'Donoghue <pure.logic@nexus-software.ie>
|
| nvmem: imx-ocotp: Ensure WAIT bits are preserved when setting timing
|
| The i.MX6 and i.MX8 both have a bit-field spanning bits 27:22 called the
| WAIT field.
|
| The WAIT field according to the documentation for both parts "specifies
| time interval between auto read and write access in one time program. It is
| given in number of ipg_clk periods."
|
| This patch ensures that the relevant field is read and written back to the
| timing register.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index ab543b475f..c21327805b 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -59,6 +59,7 @@
 #define OCOTP_TIMING_STROBE_READ_MASK	0x003F0000
 #define OCOTP_TIMING_RELAX_MASK		0x0000F000
 #define OCOTP_TIMING_STROBE_PROG_MASK	0x00000FFF
+#define OCOTP_TIMING_WAIT_MASK		0x0FC00000
 
 #define OCOTP_READ_CTRL_READ_FUSE	0x00000001
 
@@ -124,7 +125,8 @@ static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
 	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
 	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
 
-	timing = BF(relax, OCOTP_TIMING_RELAX);
+	timing = readl(priv->base + OCOTP_TIMING) & OCOTP_TIMING_WAIT_MASK;
+	timing |= BF(relax, OCOTP_TIMING_RELAX);
 	timing |= BF(strobe_read, OCOTP_TIMING_STROBE_READ);
 	timing |= BF(strobe_prog, OCOTP_TIMING_STROBE_PROG);
 
-- 
2.22.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
