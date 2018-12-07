Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAeB-00017W-Md
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:34:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id y4so1328345pgc.12
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:33:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:33:40 -0800
Message-Id: <20181207073345.5638-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] mci: core: Use alias as a devname by default
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This idiom is repeatead by almost every mci driver, so move it to
mci_of_parse() in order to reduce amount of duplicated code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/mci-core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c8d1d5e16..3efd80a8a 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1858,6 +1858,7 @@ void mci_of_parse_node(struct mci_host *host,
 {
 	u32 bus_width;
 	u32 dsr_val;
+	const char *alias;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return;
@@ -1865,6 +1866,10 @@ void mci_of_parse_node(struct mci_host *host,
 	if (!host->hw_dev || !np)
 		return;
 
+	alias = of_alias_get(np);
+	if (alias)
+		host->devname = xstrdup(alias);
+
 	/* "bus-width" is translated to MMC_CAP_*_BIT_DATA flags */
 	if (of_property_read_u32(np, "bus-width", &bus_width) < 0) {
 		/* If bus-width is missing we get the driver's default, which
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
