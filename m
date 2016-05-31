Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7pos-0000o1-6n
 for barebox@lists.infradead.org; Tue, 31 May 2016 19:59:18 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 31 May 2016 19:58:56 +0000
Message-ID: <1464724743.15779.113.camel@rtred1test09.kymeta.local>
References: <1464598872.269538356@f430.i.mail.ru>
 <20160531062649.GA31666@pengutronix.de>
 <1464678168.822037004@f410.i.mail.ru>
 <20160531072305.GE31666@pengutronix.de>
 <1464724586.15779.110.camel@rtred1test09.kymeta.local>
In-Reply-To: <1464724586.15779.110.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <61C63E0BD79BCF41913A94BDEB550DF3@kymetacorp.com>
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
Subject: [PATCH] mci: Fix version numbers again
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

The SD and eMMC version numbers are a pain to print and sort, since
they are inconsistent in if a two digit minor version shdoulde be
treated as a single number or as minor and micro version numbers.

This allows version 1.10 and 4.5 and 4.41, where 41 is less than 5.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/mci/mci-core.c | 14 +++++++++-----
 include/mci.h          |  7 ++++++-
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 59f6675..42dde06 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -949,14 +949,18 @@ out:
 
 static char *mci_version_string(struct mci *mci)
 {
-	static char version[sizeof("x.xx")];
-	unsigned major, minor;
+	static char version[sizeof("xx.xxx")];
+	unsigned major, minor, micro;
+	int n;
 
 	major = (mci->version >> 8) & 0xf;
-	minor = mci->version & 0xff;
+	minor = (mci->version >> 4) & 0xf;
+	micro = mci->version & 0xf;
 
-	/* Shift off last digit of minor if it's 0 */
-	sprintf(version, "%u.%x", major, minor & 0xf ? minor : minor >> 4);
+	n = sprintf(version, "%u.%u", major, minor);
+	/* Omit zero micro versions */
+	if (micro)
+		sprintf(version + n, "%u", micro);
 
 	return version;
 }
diff --git a/include/mci.h b/include/mci.h
index 174d150..001c86c 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -30,11 +30,16 @@
 #include <block.h>
 #include <regulator.h>
 
+/* These codes should be sorted numerically in order of newness.  If the last
+ * nybble is a zero, it will not be printed.  So 0x120 -> "1.2" and 0x123 ->
+ * "1.23", 0x1a0 -> "1.10", 0x1b0 and 0x111 -> "1.11" but sort differently.
+ * It's not possible to create "1.20".  */
+
 /* Firmware revisions for SD cards */
 #define SD_VERSION_SD		0x20000
-#define SD_VERSION_2		(SD_VERSION_SD | 0x200)
 #define SD_VERSION_1_0		(SD_VERSION_SD | 0x100)
 #define SD_VERSION_1_10		(SD_VERSION_SD | 0x1a0)
+#define SD_VERSION_2		(SD_VERSION_SD | 0x200)
 
 /* Firmware revisions for MMC cards */
 #define MMC_VERSION_MMC		0x10000
-- 
2.7.0.25.gfc10eb5.dirty


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
