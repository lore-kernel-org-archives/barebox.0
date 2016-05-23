Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEF-0000K8-IR
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:49 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 33FCCA00CBA
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:22 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:00 +0200
Message-Id: <1463992010-31537-13-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 12/62] UBI: clean-up printing helpers
To: barebox@lists.infradead.org

From: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

Let's prefix UBI messages with 'ubiX' instead of 'UBI-X' - this is more
consistent with the way we name UBI devices.

Also, commit "32608703 UBI: Extend UBI layer debug/messaging capabilities"
added the function name print to 'ubi_msg()' - lets revert this change, since
these messages are supposed to be just informative messages, and not debugging
messages.

Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

Conflicts:
	drivers/mtd/ubi/ubi.h

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/ubi.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 6f93575..aa0b9df 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -38,13 +38,13 @@
 
 #define ubi_debug(fmt, ...) pr_debug("UBI: " fmt "\n", ##__VA_ARGS__)
 /* Normal UBI messages */
-#define ubi_msg(ubi, fmt, ...) pr_info("UBI-%d: %s: " fmt "\n", \
-					ubi->ubi_num, __func__, ##__VA_ARGS__)
+#define ubi_msg(ubi, fmt, ...) pr_notice(UBI_NAME_STR "%d: " fmt "\n", \
+					 ubi->ubi_num, ##__VA_ARGS__)
 /* UBI warning messages */
-#define ubi_warn(ubi, fmt, ...) pr_warn("UBI-%d warning: %s: " fmt "\n", \
+#define ubi_warn(ubi, fmt, ...) pr_warn(UBI_NAME_STR "%d warning: %s: " fmt "\n", \
 					ubi->ubi_num, __func__, ##__VA_ARGS__)
 /* UBI error messages */
-#define ubi_err(ubi, fmt, ...) pr_err("UBI-%d error: %s: " fmt "\n", \
+#define ubi_err(ubi, fmt, ...) pr_err(UBI_NAME_STR "%d error: %s: " fmt "\n", \
 				      ubi->ubi_num, __func__, ##__VA_ARGS__)
 
 /* Background thread name pattern */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
