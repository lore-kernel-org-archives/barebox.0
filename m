Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22c.google.com ([2a00:1450:400c:c09::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8tPv-0004FV-57
 for barebox@lists.infradead.org; Tue, 15 Dec 2015 17:29:40 +0000
Received: by mail-wm0-x22c.google.com with SMTP id n186so105786422wmn.0
 for <barebox@lists.infradead.org>; Tue, 15 Dec 2015 09:29:18 -0800 (PST)
From: Florian Vallee <fvallee@eukrea.fr>
Date: Tue, 15 Dec 2015 18:29:11 +0100
Message-Id: <1450200551-5249-1-git-send-email-fvallee@eukrea.fr>
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
Subject: [PATCH] imx-usb-loader: Add i.MX6ul support
To: barebox@lists.infradead.org
Cc: Florian Vallee <fvallee@eukrea.fr>

Signed-off-by: Florian Vallee <fvallee@eukrea.fr>
---
 scripts/imx/imx-usb-loader.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 94b3763..c1b7be2 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -110,7 +110,14 @@ struct mach_id imx_ids[] = {
 		.header_type = HDR_MX53,
 		.mode = MODE_HID,
 		.max_transfer = 1024,
-	}, {
+	},   {
+		.vid = 0x15a2,
+		.pid = 0x007d,
+		.name = "i.MX6ul",
+		.header_type = HDR_MX53,
+		.mode = MODE_HID,
+		.max_transfer = 1024,
+	},   {
 		.vid = 0x15a2,
 		.pid = 0x0041,
 		.name = "i.MX51",
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
