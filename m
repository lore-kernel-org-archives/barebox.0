Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMY8-0000VF-3I
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:28:58 +0100
Message-Id: <1417184946-16128-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] mci: mxs-mci: add f_min/f_max fields unconditionally
To: barebox@lists.infradead.org

Parts of the driver need these regardless of whether CONFIG_MCI_INFO
is set, so add these fields unconditionally.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 738bde9..d6565ca 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -53,10 +53,8 @@ struct mxs_mci_host {
 	void __iomem	*regs;
 	struct clk	*clk;
 	unsigned	clock;	/* current clock speed in Hz ("0" if disabled) */
-#ifdef CONFIG_MCI_INFO
 	unsigned	f_min;
 	unsigned	f_max;
-#endif
 	unsigned	bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
 };
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
