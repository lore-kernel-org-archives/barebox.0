Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThyVJ-0004cN-AG
 for barebox@lists.infradead.org; Mon, 10 Dec 2012 08:14:23 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 10 Dec 2012 09:14:10 +0100
Message-Id: <1355127255-24797-6-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/10] mtd: utils: apply macros for message printouts
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

mtd-utils have a few macros for printouts. Provide the wrappers to make
it easier to import them.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 include/mtd/utils.h |   27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/include/mtd/utils.h b/include/mtd/utils.h
index 229fb34..05a3405 100644
--- a/include/mtd/utils.h
+++ b/include/mtd/utils.h
@@ -17,6 +17,33 @@
 #ifndef INCLUDE_MTD_UTILS_H
 # define INCLUDE_MTD_UTILS_H
 
+/* Messages as used in mtd-utils */
+
+#define bareverbose(verbose, fmt, ...) do {                        \
+	if (verbose)                                               \
+		printf(fmt, ##__VA_ARGS__);                        \
+} while(0)
+#define verbose(verbose, fmt, ...) \
+	bareverbose(verbose, "%s: " fmt "\n", PROGRAM_NAME, ##__VA_ARGS__)
+
+#define normsg_cont(fmt, ...) do {                                 \
+	printf("%s: " fmt, PROGRAM_NAME, ##__VA_ARGS__);           \
+} while(0)
+
+#define normsg(fmt, ...) do {                                      \
+	normsg_cont(fmt "\n", ##__VA_ARGS__);                      \
+} while(0)
+
+#define errmsg(fmt, ...)  ({                                                \
+	printf("%s: error!: " fmt "\n", PROGRAM_NAME, ##__VA_ARGS__); \
+	-1;                                                                 \
+})
+#define sys_errmsg errmsg
+
+#define warnmsg(fmt, ...) do {                                                \
+	fprintf(stderr, "%s: warning!: " fmt "\n", PROGRAM_NAME, ##__VA_ARGS__); \
+} while(0)
+
 static inline int is_power_of_2(unsigned long n)
 {
 	return (n != 0 && ((n & (n - 1)) == 0));
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
