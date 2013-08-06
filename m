Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6hXi-0006Wl-Kc
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:43:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:42:51 +0200
Message-Id: <1375796574-8759-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1375796574-8759-1-git-send-email-s.hauer@pengutronix.de>
References: <1375796574-8759-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: i.MX: bbu-internal: factor out a prereq function
To: barebox@lists.infradead.org

To elminate some code duplication.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index bbc620a..70b7c44 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -103,6 +103,22 @@ err_close:
 	return ret;
 }
 
+static int imx_bbu_check_prereq(struct bbu_data *data)
+{
+	int ret;
+
+	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
+		if (!bbu_force(data, "Not an ARM barebox image"))
+			return -EINVAL;
+	}
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 /*
  * Update barebox on a v1 type internal boot (i.MX25, i.MX35, i.MX51)
  *
@@ -122,12 +138,7 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
 	int ret, image_len;
 	void *buf;
 
-	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
-		if (!bbu_force(data, "Not an ARM barebox image"))
-			return -EINVAL;
-	}
-
-	ret = bbu_confirm(data);
+	ret = imx_bbu_check_prereq(data);
 	if (ret)
 		return ret;
 
@@ -344,12 +355,7 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	int ret, image_len;
 	void *buf;
 
-	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
-		if (!bbu_force(data, "Not an ARM barebox image"))
-			return -EINVAL;
-	}
-
-	ret = bbu_confirm(data);
+	ret = imx_bbu_check_prereq(data);
 	if (ret)
 		return ret;
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
