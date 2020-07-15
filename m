Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvaP2-0006so-Cu
 for barebox@lists.infradead.org; Wed, 15 Jul 2020 05:56:26 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 15 Jul 2020 07:56:06 +0200
Message-Id: <20200715055608.20993-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20200715055608.20993-1-r.czerwinski@pengutronix.de>
References: <20200715055608.20993-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 3/5] nvmem: ocotp: add new timing function for i.MX7
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Ported from the linux kernel.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 3f475e5b1f..1b842ec0ed 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -48,6 +48,9 @@
 #define OCOTP_READ_CTRL			0x30
 #define OCOTP_READ_FUSE_DATA		0x40
 
+#define DEF_FSOURCE			1001	/* > 1000 ns */
+#define DEF_STROBE_PROG			10000	/* IPG clocks */
+
 /* OCOTP Registers bits and masks */
 #define OCOTP_CTRL_WR_UNLOCK		16
 #define OCOTP_CTRL_WR_UNLOCK_KEY	0x3E77
@@ -171,6 +174,27 @@ static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
 	return 0;
 }
 
+static int imx7_ocotp_set_timing(struct ocotp_priv *priv)
+{
+	unsigned long clk_rate;
+	u64 fsource, strobe_prog;
+	u32 timing;
+
+	clk_rate = clk_get_rate(priv->clk);
+
+	fsource = DIV_ROUND_UP_ULL((u64)clk_rate * DEF_FSOURCE,
+				   NSEC_PER_SEC) + 1;
+	strobe_prog = DIV_ROUND_CLOSEST_ULL((u64)clk_rate * DEF_STROBE_PROG,
+					    NSEC_PER_SEC) + 1;
+
+	timing = strobe_prog & 0x00000FFF;
+	timing |= (fsource << 12) & 0x000FF000;
+
+	writel(timing, priv->base + OCOTP_TIMING);
+
+	return 0;
+}
+
 static int imx6_ocotp_wait_busy(struct ocotp_priv *priv, u32 flags)
 {
 	uint64_t start = get_time_ns();
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
