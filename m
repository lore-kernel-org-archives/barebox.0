Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYOxX-0005ee-3k
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 04:55:56 +0000
Received: by mail-pl0-x243.google.com with SMTP id z9-v6so2153427plo.1
 for <barebox@lists.infradead.org>; Wed, 27 Jun 2018 21:54:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Jun 2018 21:54:34 -0700
Message-Id: <20180628045436.16710-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180628045436.16710-1-andrew.smirnov@gmail.com>
References: <20180628045436.16710-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 08/10] ARM: i.MX: bbu: Allow plain i.MX v1 images as a
 special case
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

If we are passed a plain i.MX v1 image without the usual 1K preamble -
assume a special case and don't try to apply bbu_force() logic.

This is useful in cases where a board specific quirk to make BBU work
is needed.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 7735273b4..8c44d601d 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -133,9 +133,19 @@ err_close:
 
 static int imx_bbu_check_prereq(const char *devicefile, struct bbu_data *data)
 {
+	enum filetype type;
 	int ret;
 
-	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
+	type = file_detect_type(data->image, data->len);
+
+	switch (type) {
+	case filetype_imx_image_v1:
+		pr_debug("Detected %s. Assuming special case\n",
+			 file_type_to_string(type));
+		break;
+	case filetype_arm_barebox:
+		break;
+	default:
 		if (!bbu_force(data, "Not an ARM barebox image"))
 			return -EINVAL;
 	}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
