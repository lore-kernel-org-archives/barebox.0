Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zz9we-0007MY-4o
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 21:07:14 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 18 Nov 2015 21:06:46 +0000
Message-ID: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <92E956148E959A4BAE92D9FA48E1FA72@kymetacorp.com>
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
Subject: [PATCH 1/4] mci: core: bus-width property should override driver
 default
To: barebox <barebox@lists.infradead.org>

The OF code for parsing bus-width would only add the specified width
to those the driver might have already set capability flags for.

Because of this, if the driver had set 8 or 4 bit width, it wasn't
possible for the DT to specify that fewer pins were used on the board
and a smaller width was necessary.

Change this so the width in the DT overrides whatever widths the
driver says it supports.  There is no reason to have an incorrect
device tree and it makes far more sense for the DT to override the
driver default than for the driver default to override the DT.

The widths the driver puts in host_caps before calling mci_of_parse()
are considered the default if the DT doesn't specify bus-width.  This
should cause the least amount of change to existing boards, as despite
a comment that no bus-width meant to use 1 bit, using the driver
default is what was really happening.

Unfortunately, half of existing drivers default to the largest width
they support while the other half default to the smallest.  Boards
should just stick the width in the device tree.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/mci/mci-core.c | 38 ++++++++++++++++++++++----------------
 include/mci.h          |  2 ++
 2 files changed, 24 insertions(+), 16 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 29c0d54..4e6b83b 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1819,23 +1819,29 @@ void mci_of_parse(struct mci_host *host)
 
 	/* "bus-width" is translated to MMC_CAP_*_BIT_DATA flags */
 	if (of_property_read_u32(np, "bus-width", &bus_width) < 0) {
+		/* If bus-width is missing we get the driver's default, which
+		 * is, unfortunately, not consistent from driver to driver.
+		 * Better to specify it in the device tree.  */
 		dev_dbg(host->hw_dev,
-			"\"bus-width\" property is missing, assuming 1 bit.\n");
-		bus_width = 1;
-	}
-
-	switch (bus_width) {
-	case 8:
-		host->host_caps |= MMC_CAP_8_BIT_DATA;
-		/* Hosts capable of 8-bit transfers can also do 4 bits */
-	case 4:
-		host->host_caps |= MMC_CAP_4_BIT_DATA;
-		break;
-	case 1:
-		break;
-	default:
-		dev_err(host->hw_dev,
-			"Invalid \"bus-width\" value %u!\n", bus_width);
+			"\"bus-width\" property missing, default is %d\n",
+			(host->host_caps & MMC_CAP_8_BIT_DATA) ? 8 :
+			(host->host_caps & MMC_CAP_4_BIT_DATA) ? 4 : 1);
+	} else {
+		/* Set data width caps to exactly those specified in the DT.
+		 * bus-width isn't a list, so widths smaller than the specified
+		 * value are implictly supported as well.  */
+		host->host_caps &= ~MMC_CAP_BIT_DATA_MASK;
+		switch (bus_width) {
+		case 8:
+			host->host_caps |= MMC_CAP_8_BIT_DATA;
+		case 4: /* note fall through from above */
+			host->host_caps |= MMC_CAP_4_BIT_DATA;
+		case 1:
+			break;
+		default:
+			dev_err(host->hw_dev,
+				"Invalid \"bus-width\" value %u!\n", bus_width);
+		}
 	}
 
 	/* f_max is obtained from the optional "max-frequency" property */
diff --git a/include/mci.h b/include/mci.h
index 41a757e..174d150 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -56,6 +56,8 @@
 #define MMC_CAP_SD_HIGHSPEED		(1 << 3)
 #define MMC_CAP_MMC_HIGHSPEED		(1 << 4)
 #define MMC_CAP_MMC_HIGHSPEED_52MHZ	(1 << 5)
+/* Mask of all caps for bus width */
+#define MMC_CAP_BIT_DATA_MASK		(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)
 
 #define SD_DATA_4BIT		0x00040000
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
