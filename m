Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from we-in-x0231.1e100.net ([2a00:1450:400c:c03::231]
 helo=mail-we0-x231.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9g7F-0002k3-7o
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 18:16:02 +0000
Received: by mail-we0-f177.google.com with SMTP id d7so1844194wer.36
 for <barebox@lists.infradead.org>; Sun, 24 Feb 2013 10:15:59 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 24 Feb 2013 19:15:14 +0100
Message-Id: <1361729714-8772-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <[PATCH] fix compiler warnings: use puts() instead of printf()>
References: <[PATCH] fix compiler warnings: use puts() instead of printf()>
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
Subject: [PATCH] OMAP4 USB BOOT: remove double line endings
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

From previous patch that replaced printf with puts:
 puts adds it's own line ending, so do not append it manually

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 scripts/omap4_usbboot.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
index 34e53c0..e521086 100644
--- a/scripts/omap4_usbboot.c
+++ b/scripts/omap4_usbboot.c
@@ -78,7 +78,7 @@ int read_asic_id(struct usb_handle *usb)
 	const uint32_t msg_getid = 0xF0030003;
 	int i, j, k, ret;
 	uint8_t id[81];
-	char line[LINEWIDTH*3+8];
+	char line[LINEWIDTH*3+5];
 
 	printf("reading ASIC ID\n");
 	memset(id , 0xee, sizeof(id));
@@ -96,8 +96,7 @@ int read_asic_id(struct usb_handle *usb)
 		sprintf(line, "%02X: ", i);
 		for (j = 0; j < LINEWIDTH && j < sizeof(id)-i; j++)
 			sprintf(line+4+j*3, "%02X ", id[i+j]);
-		line[4+j*3+0] = '\n';
-		line[4+j*3+1] = 0;
+		line[4+j*3] = 0;
 		puts(line);
 	}
 	ret = 0;
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
