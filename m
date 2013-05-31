Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiJXk-0001BP-IL
 for barebox@lists.infradead.org; Fri, 31 May 2013 07:14:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 09:14:03 +0200
Message-Id: <1369984443-8790-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
References: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] mci: i.MX esdhc: get additional parameters from devicetree
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 1e3b307..b1686d3 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -558,6 +558,8 @@ static int fsl_esdhc_probe(struct device_d *dev)
 		host->mci.f_min = 200000;
 	host->mci.f_max = rate;
 
+	mci_of_parse(&host->mci);
+
 	mci_register(&host->mci);
 
 	return 0;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
