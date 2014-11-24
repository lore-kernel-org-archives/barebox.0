Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XsrUO-0003Qs-FF
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:29 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTx-0000NZ-51
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:01 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:53 +0100
Message-Id: <1416827220-3103-14-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 13/20] mci: esdhc: add back PIO_TIMEOUT
To: barebox@lists.infradead.org

This got lost during bd1bf53b34c
(mci: imx-esdhc: factor out common sdhci registers). Seems the PIO
option isn't too heavily used.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/imx-esdhc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index ea1cb318e52b..44aff9dc1e43 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -56,6 +56,8 @@
 #define ESDHC_HOSTCAPBLT_DMAS	0x00400000
 #define ESDHC_HOSTCAPBLT_HSS	0x00200000
 
+#define PIO_TIMEOUT		100000
+
 struct fsl_esdhc_cfg {
 	u32	esdhc_base;
 	u32	no_snoop;
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
