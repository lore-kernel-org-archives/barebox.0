Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwZoY-0000EW-UG
 for barebox@lists.infradead.org; Sun, 02 Sep 2018 21:21:49 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Sun,  2 Sep 2018 23:21:20 +0200
Message-Id: <20180902212123.16405-2-r.hieber@pengutronix.de>
In-Reply-To: <20180902212123.16405-1-r.hieber@pengutronix.de>
References: <20180902212123.16405-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 1/4] pinctrl: imx-iomux-v3: fix compiler warning
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

Fix a warning while compiling with GCC 5.4.0 (OSELAS.Toolchain 2016.02):

    drivers/pinctrl/imx-iomux-v3.c: In function 'imx_iomux_v3_set_state':
    drivers/pinctrl/imx-iomux-v3.c:153:13: warning: 'share_conf_val' may be used uninitialized in this function [-Wmaybe-uninitialized]
        conf_val &= ~IMX_PAD_SION;
                 ^
The relevant code section at line 153 is:

148:		u32 conf_val = share_conf ?
149:			share_conf_val : be32_to_cpu(*list++);
150:
151:		if (conf_val & IMX_PAD_SION) {
152:			mux_val |= IOMUXC_CONFIG_SION;
153:			conf_val &= ~IMX_PAD_SION;
154:		}

share_conf_val is only initialized in an if branch above that section.

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 drivers/pinctrl/imx-iomux-v3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index d176199c52..0ab97040e0 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -87,7 +87,7 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 	const bool share_conf = iomux->flags & SHARE_CONF;
 	int npins, size, i, fsl_pin_size;
 	const char *name;
-	u32 share_conf_val;
+	u32 share_conf_val = 0;
 
 	dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
