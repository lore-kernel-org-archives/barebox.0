Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ4tQ-0007cu-Cf
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 03:11:09 +0000
Received: by mail-pa0-x241.google.com with SMTP id pv5so6573274pac.0
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2016 19:10:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 31 Jan 2016 19:10:06 -0800
Message-Id: <1454296213-12734-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/8] include/linux/phy.h: Add MII_ADDR_C45
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>

Add MII_ADDR_C45 used by bitbanged MDIO

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/phy.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index a64b9b5..58e69da 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -69,6 +69,10 @@ typedef enum {
  */
 #define MII_BUS_ID_SIZE	(20 - 3)
 
+/* Or MII_ADDR_C45 into regnum for read/write on mii_bus to enable the 21 bit
+   IEEE 802.3ae clause 45 addressing mode used by 10GIGE phy chips. */
+#define MII_ADDR_C45 (1<<30)
+
 #define PHYLIB_FORCE_10		(1 << 0)
 #define PHYLIB_FORCE_100	(1 << 1)
 #define PHYLIB_FORCE_LINK	(1 << 2)
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
