Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4vMP-0000p8-3W
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 22:31:30 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri, 15 Mar 2019 22:31:39 +0000
Message-Id: <20190315223139.11882-1-user@vserver64>
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
Subject: [PATCH v2] mci: imx-esdhc: resolve conflicting flags
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

From: Alexander Kurz <akurz@blala.de>

With commit 3354adee3920 ("mci: imx-esdhc: Add bigendian register access
support") and commit 15b64fd520c2 ("mci: imx-esdhc: Add layerscape support")
two ESDHC_FLAGs got assigned to already existing values. This conflict made
the imx6sl usdhc appear to be big endian.
Resolve this conflict by assign the new flags to the next vacant values.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/mci/imx-esdhc.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index cedfb3db4..2fa097474 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -67,10 +67,6 @@
 #define ESDHC_FLAG_STD_TUNING		BIT(5)
 /* The IP has SDHCI_CAPABILITIES_1 register */
 #define ESDHC_FLAG_HAVE_CAP1		BIT(6)
-/* Need to access registers in bigendian mode */
-#define ESDHC_FLAG_BIGENDIAN		BIT(7)
-/* Enable cache snooping */
-#define ESDHC_FLAG_CACHE_SNOOPING	BIT(8)
 
 /*
  * The IP has errata ERR004536
@@ -83,6 +79,11 @@
 /* The IP supports HS400 mode */
 #define ESDHC_FLAG_HS400		BIT(9)
 
+/* Need to access registers in bigendian mode */
+#define ESDHC_FLAG_BIGENDIAN		BIT(10)
+/* Enable cache snooping */
+#define ESDHC_FLAG_CACHE_SNOOPING	BIT(11)
+
 struct esdhc_soc_data {
 	u32 flags;
 	const char *clkidx;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
