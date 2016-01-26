Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNwcJ-0004hr-ON
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 05:56:41 +0000
Received: by mail-pf0-x242.google.com with SMTP id 65so7780936pfd.1
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 21:56:19 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Jan 2016 21:55:52 -0800
Message-Id: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/7] include/linux/phy.h: Add MII_ADDR_C45
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

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
