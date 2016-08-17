Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1ba0gN-0007bT-8O
 for barebox@lists.infradead.org; Wed, 17 Aug 2016 13:15:02 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Wed, 17 Aug 2016 15:12:19 +0200
Message-Id: <1471439539-3443-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] mfd mc13xxx: add MC13892_REVISION_2_4
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

An MC13892CJ having REV[4:0]=0x14 can be found in the kindle-d01100.
Add the revision to the list to support this device.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/mfd/mc13xxx.c |  1 +
 include/mfd/mc13xxx.h | 13 +++++++------
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index b2fcd95..f6aa922 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -219,6 +219,7 @@ static struct __init {
 	{ 0x0a, MC13892_REVISION_1_2, "1.2" },
 	{ 0x10, MC13892_REVISION_2_0, "2.0" },
 	{ 0x11, MC13892_REVISION_2_1, "2.1" },
+	{ 0x14, MC13892_REVISION_2_4, "2.4" },
 	{ 0x18, MC13892_REVISION_3_0, "3.0" },
 	{ 0x19, MC13892_REVISION_3_1, "3.1" },
 	{ 0x1a, MC13892_REVISION_3_2, "3.2" },
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index 96a32e4..d351c47 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -127,12 +127,13 @@
 #define MC13892_REVISION_2_0		3
 #define MC13892_REVISION_2_0a		4
 #define MC13892_REVISION_2_1		5
-#define MC13892_REVISION_3_0		6
-#define MC13892_REVISION_3_1		7
-#define MC13892_REVISION_3_2		8
-#define MC13892_REVISION_3_2a		9
-#define MC13892_REVISION_3_3		10
-#define MC13892_REVISION_3_5		11
+#define MC13892_REVISION_2_4		6
+#define MC13892_REVISION_3_0		7
+#define MC13892_REVISION_3_1		8
+#define MC13892_REVISION_3_2		9
+#define MC13892_REVISION_3_2a		10
+#define MC13892_REVISION_3_3		11
+#define MC13892_REVISION_3_5		12
 
 #define MC13783_SWX_VOLTAGE(x)		((x) & 0x3f)
 #define MC13783_SWX_VOLTAGE_DVS(x)	(((x) & 0x3f) << 6)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
