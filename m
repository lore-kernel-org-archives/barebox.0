Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnW-0008Ev-EF
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:03 +0100
Message-Id: <20200217124623.14520-23-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/42] I2C: i.MX: Add early i2c support for i.MX8M
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx-early.c | 12 ++++++++++++
 include/i2c/i2c-early.h            |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
index d67226441e..26922c1044 100644
--- a/drivers/i2c/busses/i2c-imx-early.c
+++ b/drivers/i2c/busses/i2c-imx-early.c
@@ -308,3 +308,15 @@ void *ls1046_i2c_init(void __iomem *regs)
 
 	return &fsl_i2c;
 }
+
+void *imx8m_i2c_early_init(void __iomem *regs)
+{
+	fsl_i2c.regs = regs;
+	fsl_i2c.regshift = 2;
+	fsl_i2c.i2cr_ien_opcode = I2CR_IEN_OPCODE_1;
+	fsl_i2c.i2sr_clr_opcode = I2SR_CLR_OPCODE_W0C;
+	/* Divider for ~100kHz when coming from the ROM */
+	fsl_i2c.ifdr = 0x0f;
+
+	return &fsl_i2c;
+}
diff --git a/include/i2c/i2c-early.h b/include/i2c/i2c-early.h
index 27efd25109..d64c1a4384 100644
--- a/include/i2c/i2c-early.h
+++ b/include/i2c/i2c-early.h
@@ -5,6 +5,7 @@
 
 int i2c_fsl_xfer(void *ctx, struct i2c_msg *msgs, int num);
 
+void *imx8m_i2c_early_init(void __iomem *regs);
 void *ls1046_i2c_init(void __iomem *regs);
 
 #endif /* __I2C_EARLY_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
