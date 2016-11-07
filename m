Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp63.iad3a.emailsrvr.com ([173.203.187.63]
 helo=smtp101.iad3a.emailsrvr.com)
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3oU0-0007RK-FM
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 18:17:25 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Mon,  7 Nov 2016 18:16:22 +0000
Message-Id: <20161107181624.4262-3-abbotti@mev.co.uk>
In-Reply-To: <20161107181624.4262-1-abbotti@mev.co.uk>
References: <20161107181624.4262-1-abbotti@mev.co.uk>
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
Subject: [PATCH 2/4] net/designware: Do not select MIIPORT for RGMII interface
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

Do not select MIIPORT for RGMII interface

[Original U-Boot patch by Vipin Kumar <vipin.kumar@st.com>]

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/net/designware.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 21fb44e..85e4c58 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -129,7 +129,9 @@ static int mac_reset(struct eth_device *dev)
 	u64 start;
 
 	writel(DMAMAC_SRST, &dma_p->busmode);
-	writel(MII_PORTSELECT, &mac_p->conf);
+
+	if (priv->interface != PHY_INTERFACE_MODE_RGMII)
+		writel(MII_PORTSELECT, &mac_p->conf);
 
 	start = get_time_ns();
 	while (readl(&dma_p->busmode) & DMAMAC_SRST) {
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
