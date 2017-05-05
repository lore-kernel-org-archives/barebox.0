Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6fUU-0007CA-Qm
 for barebox@lists.infradead.org; Fri, 05 May 2017 15:50:02 +0000
Received: from birne.hi.pengutronix.de ([2001:67c:670:100:feaa:14ff:fe28:e6f5]
 helo=birne) by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1d6fU6-0000bR-PE
 for barebox@lists.infradead.org; Fri, 05 May 2017 17:49:34 +0200
Received: from mgr by birne with local (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1d6fU6-0007Er-H7
 for barebox@lists.infradead.org; Fri, 05 May 2017 17:49:34 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri,  5 May 2017 17:49:18 +0200
Message-Id: <20170505154920.27685-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20170505154920.27685-1-m.grzeschik@pengutronix.de>
References: <20170505154920.27685-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 1/3] i.MX: fec: also enable optional clocks
To: barebox@lists.infradead.org

This will also enable two more optional clocks. They can be found on
mx6ul, mx6sx and mx28.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/net/fec_imx.c | 29 +++++++++++++++++++++++++++++
 drivers/net/fec_imx.h |  8 ++++++++
 2 files changed, 37 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index e2b25fe375..8cf7c4fbda 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -662,6 +662,14 @@ static int fec_clk_enable(struct fec_priv *fec)
 			return err;
 	}
 
+	for (i = 0; i < ARRAY_SIZE(fec->opt_clk); i++) {
+		if (!IS_ERR_OR_NULL(fec->opt_clk[i])) {
+			const int err = clk_enable(fec->opt_clk[i]);
+			if (err < 0)
+				return err;
+		}
+	}
+
 	return 0;
 }
 
@@ -673,6 +681,12 @@ static void fec_clk_disable(struct fec_priv *fec)
 		if (!IS_ERR_OR_NULL(fec->clk[i]))
 			clk_disable(fec->clk[i]);
 	}
+
+	for (i = 0; i < ARRAY_SIZE(fec->opt_clk); i++) {
+		if (!IS_ERR_OR_NULL(fec->opt_clk[i])) {
+			clk_disable(fec->opt_clk[i]);
+		}
+	}
 }
 
 static void fec_clk_put(struct fec_priv *fec)
@@ -683,6 +697,11 @@ static void fec_clk_put(struct fec_priv *fec)
 		if (!IS_ERR_OR_NULL(fec->clk[i]))
 			clk_put(fec->clk[i]);
 	}
+
+	for (i = 0; i < ARRAY_SIZE(fec->opt_clk); i++) {
+		if (!IS_ERR_OR_NULL(fec->opt_clk[i]))
+			clk_put(fec->opt_clk[i]);
+	}
 }
 
 static int fec_clk_get(struct fec_priv *fec)
@@ -691,6 +710,9 @@ static int fec_clk_get(struct fec_priv *fec)
 	static const char *clk_names[ARRAY_SIZE(fec->clk)] = {
 		"ipg", "ahb", "ptp"
 	};
+	static const char *opt_clk_names[ARRAY_SIZE(fec->opt_clk)] = {
+		"enet_clk_ref", "enet_out",
+	};
 
 	for (i = 0; i < ARRAY_SIZE(fec->clk); i++) {
 		fec->clk[i] = clk_get(fec->edev.parent, clk_names[i]);
@@ -701,6 +723,13 @@ static int fec_clk_get(struct fec_priv *fec)
 		}
 	}
 
+	for (i = 0; i < ARRAY_SIZE(fec->opt_clk); i++) {
+		fec->opt_clk[i] = clk_get(fec->edev.parent, opt_clk_names[i]);
+		if (IS_ERR(fec->opt_clk[i])) {
+			fec->opt_clk[i] = NULL;
+		}
+	}
+
 	return err;
 }
 
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 85d51bad60..561de0890b 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -137,6 +137,13 @@ enum fec_clock {
 	FEC_CLK_NUM
 };
 
+enum fec_opt_clock {
+	FEC_OPT_CLK_REF,
+	FEC_OPT_CLK_OUT,
+
+	FEC_OPT_CLK_NUM
+};
+
 /**
  * @brief i.MX27-FEC private structure
  */
@@ -153,6 +160,7 @@ struct fec_priv {
 	struct mii_bus miibus;
 	void (*phy_init)(struct phy_device *dev);
 	struct clk *clk[FEC_CLK_NUM];
+	struct clk *opt_clk[FEC_OPT_CLK_NUM];
 	enum fec_type type;
 };
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
