Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZm-0004du-1q
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:44 +0100
Message-Id: <1328788438-19717-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
References: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/15] mci: Add complete definitions for the card type
To: barebox@lists.infradead.org

Add the different DDR types and also a definition for the card
type mask.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mci.h |   12 ++++++++++--
 1 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/include/mci.h b/include/mci.h
index d3b3082..87c7194 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -155,8 +155,16 @@
 #define EXT_CSD_CMD_SET_SECURE		(1<<1)
 #define EXT_CSD_CMD_SET_CPSECURE	(1<<2)
 
-#define EXT_CSD_CARD_TYPE_26	(1<<0)	/* Card can run at 26MHz */
-#define EXT_CSD_CARD_TYPE_52	(1<<1)	/* Card can run at 52MHz */
+#define EXT_CSD_CARD_TYPE_MASK		0x3f
+#define EXT_CSD_CARD_TYPE_26		(1<<0)	/* Card can run at 26MHz */
+#define EXT_CSD_CARD_TYPE_52		(1<<1)	/* Card can run at 52MHz */
+#define EXT_CSD_CARD_TYPE_DDR_1_8V	(1<<2)	/* Card can run at 52MHz */
+						/* DDR mode @1.8V or 3V I/O */
+#define EXT_CSD_CARD_TYPE_DDR_1_2V	(1<<3)	/* Card can run at 52MHz */
+						/* DDR mode @1.2V I/O */
+#define EXT_CSD_CARD_TYPE_SDR_1_8V	(1<<4)	/* Card can run at 200MHz */
+#define EXT_CSD_CARD_TYPE_SDR_1_2V	(1<<5)	/* Card can run at 200MHz */
+						/* SDR mode @1.2V I/O */
 
 #define EXT_CSD_BUS_WIDTH_1	0	/* Card is in 1 bit mode */
 #define EXT_CSD_BUS_WIDTH_4	1	/* Card is in 4 bit mode */
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
