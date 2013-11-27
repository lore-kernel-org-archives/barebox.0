Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vlefh-0001v5-JW
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 12:56:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2013 13:56:13 +0100
Message-Id: <1385556973-19218-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385556973-19218-1-git-send-email-s.hauer@pengutronix.de>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
 <1385556973-19218-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] scripts: imx-image: Add i.MX25 support
To: barebox@lists.infradead.org

The i.MX25 works like the i.MX51, just add the SoC magic and the USB product
id.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c      | 1 +
 scripts/imx/imx-usb-loader.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index ec571eb..1d935be 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -442,6 +442,7 @@ struct soc_type {
 };
 
 static struct soc_type socs[] = {
+	{ .name = "imx25", .header_version = 1, },
 	{ .name = "imx35", .header_version = 1, },
 	{ .name = "imx51", .header_version = 1, },
 	{ .name = "imx53", .header_version = 2, },
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 7ccfc99..81c0640 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -124,6 +124,13 @@ struct mach_id imx_ids[] = {
 		.header_type = HDR_MX51,
 		.mode = MODE_BULK,
 		.max_transfer = 64,
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x003a,
+		.name = "i.MX25",
+		.header_type = HDR_MX51,
+		.mode = MODE_BULK,
+		.max_transfer = 64,
 	},
 };
 
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
