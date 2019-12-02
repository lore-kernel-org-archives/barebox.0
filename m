Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUo-0004Yb-3a
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:19 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t21so4219217pjq.1
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:17 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:44 -0800
Message-Id: <20191202151954.16032-3-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/12] mci: imx-esdhc: Drop unused type definition
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There doesn't seem to be any users of struct fsl_esdhc_cfg in the
tree. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 46f592e49..ad05c4c0b 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -69,9 +69,4 @@
 #define ESDHC_DMA_SYSCTL	0x40c /* Layerscape specific */
 #define ESDHC_SYSCTL_DMA_SNOOP 	BIT(6)
 
-struct fsl_esdhc_cfg {
-	u32	esdhc_base;
-	u32	no_snoop;
-};
-
 #endif  /* __FSL_ESDHC_H__ */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
