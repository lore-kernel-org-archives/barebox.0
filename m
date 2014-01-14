Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.29.23])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2z9k-0003qZ-A7
 for barebox@lists.infradead.org; Tue, 14 Jan 2014 08:15:29 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Tue, 14 Jan 2014 09:23:35 +0100
Message-Id: <1389687817-30882-3-git-send-email-list-09_barebox@tqsc.de>
In-Reply-To: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
References: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH 2/4] mci: add device tree support for DSR
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

add optional DSR support. This should go into the kernel, too

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
---
 drivers/mci/mci-core.c |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2c91ff2..b6d7d73 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1746,6 +1746,7 @@ void mci_of_parse(struct mci_host *host)
 {
 	struct device_node *np;
 	u32 bus_width;
+	u32 dsr_val;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return;
@@ -1778,4 +1779,11 @@ void mci_of_parse(struct mci_host *host)
 
 	/* f_max is obtained from the optional "max-frequency" property */
 	of_property_read_u32(np, "max-frequency", &host->f_max);
+
+	if (!of_property_read_u32(np, "dsr", &dsr_val)) {
+		if (dsr_val < 0x10000) {
+			host->use_dsr = 1;
+			host->dsr_val = dsr_val;
+		}
+	}
 }
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
