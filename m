Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuJE5-000774-2H
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 15:15:01 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 27 Aug 2018 17:14:24 +0200
Message-Id: <20180827151428.3032-2-mkl@pengutronix.de>
In-Reply-To: <20180827151428.3032-1-mkl@pengutronix.de>
References: <20180827151428.3032-1-mkl@pengutronix.de>
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
Subject: [PATCH 1/5] i.MX habv4: properly indent defines and enums
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/hab/habv4.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index ae43bdf0e36b..9ccec7847d9f 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -27,13 +27,13 @@
 #define HABV4_RVT_IMX28 0xffff8af8
 #define HABV4_RVT_IMX6_OLD 0x00000094
 #define HABV4_RVT_IMX6_NEW 0x00000098
-#define HABV4_RVT_IMX6UL   0x00000100
+#define HABV4_RVT_IMX6UL 0x00000100
 
 enum hab_tag {
 	HAB_TAG_IVT = 0xd1,		/* Image Vector Table */
 	HAB_TAG_DCD = 0xd2,		/* Device Configuration Data */
 	HAB_TAG_CSF = 0xd4,		/* Command Sequence File */
-	HAB_TAG_CRT = 0xd7, 		/* Certificate */
+	HAB_TAG_CRT = 0xd7,		/* Certificate */
 	HAB_TAG_SIG = 0xd8,		/* Signature */
 	HAB_TAG_EVT = 0xdb,		/* Event */
 	HAB_TAG_RVT = 0xdd,		/* ROM Vector Table */
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
