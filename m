Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtB7-0001E2-RC
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:53:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:52:54 +0200
Message-Id: <1369644775-29887-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] mci: imx-esdhc: allow to specify devicename via OF alias
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 46bd6d2..1e3b307 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -535,8 +535,13 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	else
 		mci->host_caps = MMC_MODE_4BIT;
 
-	if (pdata && pdata->devname)
+	if (pdata && pdata->devname) {
 		mci->devname = pdata->devname;
+	} else if (dev->device_node) {
+		const char *alias = of_alias_get(dev->device_node);
+		if (alias)
+			mci->devname = xstrdup(alias);
+	}
 
 	if (caps & ESDHC_HOSTCAPBLT_HSS)
 		mci->host_caps |= MMC_MODE_HS_52MHz | MMC_MODE_HS;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
